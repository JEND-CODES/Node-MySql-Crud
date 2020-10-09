const express = require('express');
const app = express();
const cors = require('cors');
const dotenv = require('dotenv');
dotenv.config();

const dbService = require('./dbService');

app.use(cors());
app.use(express.json());
app.use(express.urlencoded({ extended : false }));

app.post('/insert', (request, response) => {
    const { name, descriptions, images } = request.body;
    const db = dbService.getDbServiceInstance();
    
    const result = db.insertNewName(name, descriptions, images);

    result
    .then(data => response.json({ data: data}))
    .catch(err => console.log(err));
});


// Lire
app.get('/getAll', (request, response) => {
    const db = dbService.getDbServiceInstance();

    const result = db.getAllData();
    
    result
    .then(data => response.json({data : data}))
    .catch(err => console.log(err));
})


// Modifier
app.patch('/update', (request, response) => {
    const { id, name, descriptions, images } = request.body;
    const db = dbService.getDbServiceInstance();

    const result = db.updateNameById(id, name, descriptions, images);
    
    result
    .then(data => response.json({success : data}))
    .catch(err => console.log(err));
});


// Supprimer
app.delete('/delete/:id', (request, response) => {
    const { id } = request.params;
    const db = dbService.getDbServiceInstance();

    const result = db.deleteRowById(id);
    
    result
    .then(data => response.json({success : data}))
    .catch(err => console.log(err));
});

// Rechercher
app.get('/search/:name', (request, response) => {
    const { name } = request.params;
    const db = dbService.getDbServiceInstance();

    const result = db.searchByName(name);
    
    result
    .then(data => response.json({data : data}))
    .catch(err => console.log(err));
})


app.listen(process.env.PORT, () => console.log('app is running'));