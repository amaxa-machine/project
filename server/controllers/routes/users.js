const userController = require("../userController");
const express = require("express");
const route = express.Router();

// Home page
route.get("/", userController.home);


// Extramulars 
route.get("/extVkr", userController.extVkr);
route.post("/extVkr", userController.extSearch);

route.get("/extVkr/admin", userController.extAdmin);
route.post("/extVkr/admin", userController.extSearch);

route.get("/extVkr/viewuser/:id", userController.extViewAll);

route.get("/extVkr/admin/insert/:id", userController.extInsertPage);
route.post("/extVkr/admin/insert/:id", userController.extInsert);

route.get("/extVkr/comment/:id", userController.extComment);
route.post("/extVkr/comment/:id", userController.extCommentInsert);


// Full-timers
route.get("/flVkr", userController.flVkr);
route.post("/flVkr", userController.flSearch);

route.get("/flVkr/admin", userController.flAdmin);
route.post("/flVkr/admin", userController.flSearch);

route.get("/flVkr/viewuser/:id", userController.flViewAll);

route.get("/flVkr/admin/insert/:id", userController.flInsertPage);
route.post("/flVkr/admin/insert/:id", userController.flInsert);

route.get("/flVkr/comment/:id", userController.flComment);
route.post("/flVkr/comment/:id", userController.flCommentInsert);


// Temp Papper 
route.get("/tpVkr", userController.tpVkr);
route.post("/tpVkr", userController.tpSearch);

route.get("/tpVkr/admin", userController.tpAdmin);
route.post("/tpVkr/admin", userController.tpSearch);

route.get("/tpVkr/viewuser/:id", userController.tpViewAll);

route.get("/tpVkr/admin/insert/:id", userController.tpInsertPage);
route.post("/tpVkr/admin/insert/:id", userController.tpInsert);

route.get("/tpVkr/comment/:id", userController.tpComment);
route.post("/tpVkr/comment/:id", userController.tpCommentInsert);


module.exports = route;
