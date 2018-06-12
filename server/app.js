var express = require('express');
var path = require('path');
var mysql = require('mysql');
var bodyparser = require('body-parser');
var axios = require('axios');

var app = express();
app.use(function (req, res, next) {
    res.setHeader('Access-Control-Allow-Origin', '*');
    res.setHeader('Access-Control-Allow-Methods', 'GET, POST, OPTIONS, PUT, PATCH, DELETE');

    // Request headers you wish to allow
    res.setHeader('Access-Control-Allow-Headers', 'X-Requested-With,content-type');

    // Set to true if you need the website to include cookies in the requests sent
    // to the API (e.g. in case you use sessions)
    res.setHeader('Access-Control-Allow-Credentials', true);
    next();
})

app.use(bodyparser.urlencoded({
    extented: false
}))
app.use(bodyparser.json())
// Créer une connexion aver le serveur
var databaseConnect = () => {
    return mysql.createPool({
        host: 'localhost',
        port: 3306,
        user: 'root',
        password: '',
        database: 'recette'
    })
}

// Se connecte au serveur
databaseConnect().getConnection((err, connection) => {
    if (err)
        console.log(err)
    else
        console.log('db connect')
})

// db = variable exemple :
// db.query('REQUETTE SQL', (err, result, fields) => {
// 	console.log(result)
// })
// pas besoin du db.connect() parcequ'il le fait automatiquement plus haut
const db = databaseConnect()


app.post('/recette', function (req, res) {
    console.log(req.body)
        db.query('INSERT INTO recette_liste SET ?;', [req.body], (err, result, fields) => {
            console.log(err)
            console.log(fields)
            console.log(result)
        })
    res.redirect('http://localhost:8080/liste')
})

app.get('/liste-recette', (req, res) => {
        db.query('SELECT * FROM recette_liste', (err, result, fields) => {
            res.send(result)
            console.log(result)
        })
})
app.get('/delete/:id', (req, res) => {
    db.query('DELETE FROM recette_liste WHERE id = "'+req.params.id+'";', (err, result, fields) => {
        console.log(req.params.id)
        res.send('delete')
        console.log(result)
    })
})
app.listen(3000, function () {
    console.log('Example app listening on port 3000!')
})



