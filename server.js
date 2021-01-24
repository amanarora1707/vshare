const express =require('express');
const request = require('request');
const app = express();
const path =require('path');

const PORT =process.env.PORT || 3000;
app.use((req, res, next) => {
  res.header('Access-Control-Allow-Origin', '*');
  next();
});
app.use(express.static('public'));
app.use(express.json());

const connectDB =require('./config/db');
connectDB();


//template engine
app.set('views', path.join(__dirname,'/views'));
app.set('view engine','ejs');

//routes

app.get('/', function (req, res) {



   
    return res.render('home'); 
});
app.use('/api/files',require('./routes/files'));

app.use('/files',require('./routes/show'));
app.use('/files/download',require('./routes/download'));
app.listen(PORT ,()=>{
    console.log(`Listening on port ${PORT}`);
})