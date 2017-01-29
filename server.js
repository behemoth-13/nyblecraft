var express  = require('express'),
    path     = require('path'),
    bodyParser = require('body-parser'),
    app = express(),
    expressValidator = require('express-validator'),
    easyimg = require('imagemagick');//

/*Set EJS template Engine*/
app.set('views','./views');
app.set('view engine','ejs');

app.use(express.static(path.join(__dirname, 'public')));
app.use(bodyParser.urlencoded({ extended: true })); //support x-www-form-urlencoded
app.use(bodyParser.json());
app.use(expressValidator());

/*MySql connection*/
var connection  = require('express-myconnection'),
    mysql = require('mysql');

app.use(

    connection(mysql,{
        host     : 'localhost',
        user     : 'root',
        password : 'root',
        database : 'nyblecraft',
        debug    : false //set true if you wanna see debug logger
    },'request')

);

app.get('/',function(req,res){
    res.send('Welcome');
});

var router = express.Router();

router.use(function(req, res, next) {
    console.log(req.method, req.url);
    next();
});

var curut1 = router.route('/user');


curut1.all(function(req,res,next){
    console.log("You need to smth about curut1 Route ? Do it here");
    console.log(req.params);
    next();
});

//get data
curut1.get(function(req,res,next){

    req.getConnection(function(err,conn){

        if (err) return next("Cannot Connect");

        var query = conn.query('SELECT * FROM t_users',function(err,rows){

            if(err){
                console.log(err);
                return next("Mysql error, check your query");
            }

            res.render('user',{title:"MY PAGE",data:rows});

        });

    });

});



var curut2 = router.route('/user/:firstName');

curut2.all(function(req,res,next){
    console.log("You need to smth about curut2 Route ? Do it here");
    console.log(req.params);
    next();
});

//update data(creating pdf)
curut2.post(function(req,res,next){

    var firstName = req.params.firstName;

    req.getConnection(function (err, conn) {

        conn.query("SELECT * FROM t_users WHERE t_first_name = ? ",[firstName],function(err,rows){
            if(err){
                res.status(500).json({ msg: false });
                return next("Mysql error, check your query");
            }

            //if user not found
            if(rows.length < 1) {
                res.status(500).json({ msg: false });
                return next("User Not found");
            }

            var tempFolder = '/tempFile/';
            var fileNameImage = tempFolder + firstName;
            var fileNamePdf = tempFolder + firstName + rows[0].t_last_name + '.pdf';
            var fs = require('fs');
            var isPdfInDb = rows[0].t_pdf != null;
            //if pdf exist in db and disc
            if ((isPdfInDb) && (fs.existsSync(fileNamePdf)) ) {
                res.status(400).json({ msg: false });
                return next("Pdf already exist in disc and db");
            }

            //write image into disc
            fs.writeFile(fileNameImage, rows[0].t_image, 'binary', function(err) {
                if(err) {
                    res.status(500).json({ msg: false });
                    return next("Image not found in db");
                }
                console.log("The ImageFile was saved!");

                //convert Image to pdf
                easyimg.convert([fileNameImage, fileNamePdf], function(err) {
                    if (err) {
                        res.status(500).json({ msg: false });
                        return next("Chech your disc");
                    }
                    console.log('Converted Image to pdf');

                    //delete image from disc
                    fs.unlinkSync(fileNameImage);

                    //read pdf file from disc
                    var contents = fs.readFileSync(fileNamePdf);

                    //write pdf file into db
                    if (!isPdfInDb) {
                        conn.query('UPDATE t_users SET t_pdf = ? WHERE t_first_name = ?', [contents, firstName],  function(err){
                            if(err) {
                                res.status(500).json({ msg: false });
                                return next("Chech your disc");
                            }
                            console.log('PDF saved in db');
                            res.status(201).json({ msg: true });
                        });
                    } else {
                        res.status(201).json({ msg: true });
                    }
                });
            });
        });
    });
});

//now we need to apply our router here
app.use('/api', router);

//start Server
var server = app.listen(3000,function(){
    console.log("Listening to port %s",server.address().port);
});