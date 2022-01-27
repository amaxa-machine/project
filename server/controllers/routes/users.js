const userController = require("../userController");
const express = require("express");
const route = express.Router();

// Home page
route.get("/", userController.home);

// Externals
route.get("/extVkr", userController.extVkr);
route.post("/extVkr", userController.extSearch);

route.get("/extVkr/admin", userController.extAdmin);
route.post("/extVkr/admin", userController.extSearch);

route.get("/extVkr/viewuser/:id", userController.extViewAll);

route.get("/extVkr/admin/insert/:id", userController.extInsertPage);
route.post("/extVkr/admin/insert/:id", userController.extInsert);


// Full-times



module.exports = route;

