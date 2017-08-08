var express = require('express');
var bodyParser = require('body-parser');
var app = express();

app.all('/*', function(req, res, next) {
        res.header("Access-Control-Allow-Origin", "*");
        res.header("Access-Control-Allow-Headers", "X-Requested-With", "Content-Type, Accept");
        res.header("Access-Control-Allow-Methods", "POST, GET");
        next();
});

app.use(bodyParser.json());
app.use(bodyParser.urlencoded({extended: false}));

var tutorials = [
{
                 id: 1,
                 title: "Swift 3 Tutorial",
                 description: "Learn Swift with one video",
                 iframe: '<iframe width="560" height="315" src="https://www.youtube.com/embed/dKaojOZ-az8" frameborder="0" allowfullscreen></iframe>'
},
                 {
                 id: 2,
                 title: "Swift 3 Tutorial",
                 description: "Learn Swift with one video",
                 iframe: '<iframe width="560" height="315" src="https://www.youtube.com/embed/dKaojOZ-az8" frameborder="0" allowfullscreen></iframe>'
                 }
                 ];

app.get('/tutorials', function(req, res) {
        console.log("GET from server");
        res.send(tutorials);
        });

app.listen(6070);
