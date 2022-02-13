
const express = require("express");
const app = express();

const {engine} = require('express-handlebars');
app.engine("hbs", engine({extname: ".hbs"}));
app.set("view engine", "hbs");
app.set("views", "../views");

require("dotenv").config();
const port = 5000;

const mysql = require("mysql");

app.use(express.json());
app.use(express.urlencoded({extended: false}));

/////////////////////////////////

const routes = require("./controllers/routes/users");
app.use("/", routes);

//Templatine Engine
app.listen(port, () => console.log(`Server listeting on port ${port}`));

