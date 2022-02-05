const mysql = require("mysql");
const pool = mysql.createPool({
    connectionLimit: 100,
    host: process.env.DB_HOST,
    user: process.env.DB_USER,
    password: process.env.DB_PASS,
    database: process.env.DB_NAME,
//    port: process.env.PORT
});


exports.home = (req, res) => {
    res.render("home");
}
// Extrams
exports.extVkr = (req, res) => {
    pool.getConnection((err, connection) => {
        if (err) throw err;
        console.log("db " + connection.state + "\n");
        connection.query("SELECT * FROM extStudents;", (err, result) => {
            connection.release();
            if (!err) {
                res.render("extVkr", {search: "/extVkr", result: result});
            } else {
                console.log(err);
            }
            console.log("database data: \n", result);
        });
    });
}
//Search
exports.extSearch = (req, res) => {
    let searchTerm = req.body.search;
    console.log(searchTerm);
    pool.getConnection((err, connection) => {
        if (err) throw err;
        console.log("db " + connection.state + "\n");
        connection.query("SELECT * FROM extStudents WHERE student_name LIKE ? OR teacher_name LIKE ?", ['%' + searchTerm + '%', '%' + searchTerm + '%'], (err, result) => {
            connection.release();
            if (!err) {
                res.render("extVkr", {result: result});
            } else {
                console.log(err);
            }
            console.log("database data: \n", result);
        });
    });
}

//Search
exports.extAdminSearch = (req, res) => {
    let searchTerm = req.body.search;
    console.log(searchTerm);
    pool.getConnection((err, connection) => {
        if (err) throw err;
        console.log("db " + connection.state + "\n");
        connection.query("SELECT * FROM extStudents WHERE student_name LIKE ? OR teacher_name LIKE ?", ['%' + searchTerm + '%', '%' + searchTerm + '%'], (err, result) => {
            connection.release();
            if (!err) {
                res.render("extAdmin", {result: result});
            } else {
                console.log(err);
            }
            console.log("database data: \n", result);
        });
    });
}




//View user
exports.extViewAll = (req, res) => {
    pool.getConnection((err, connection) => {
        if (err) throw err;
        console.log("db " + connection.state + "\n");
        connection.query("SELECT * FROM extStudents WHERE student_id=?;", [req.params.id], (err, result) => {
            connection.release();
            if (!err) {
                res.render("extViewAll", {result: result});
            } else {
                console.log(err);
            }
            console.log("database data: \n", result);
        });
    });
}
//Admin page
exports.extAdmin = (req, res) => {
    pool.getConnection((err, connection) => {
        if (err) throw err;
        console.log("db " + connection.state + "\n");
        connection.query("SELECT * FROM extStudents;", (err, result) => {
            connection.release();
            if (!err) {
                res.render("extAdmin", {search: "/extVkr/admin", result: result});
            } else {
                console.log(err);
            }
            console.log(req.body);
            console.log("database data: \n", result);
        });
    });
}
//Page for add comment       admin/insert 
exports.extInsertPage = (req, res) => {
    pool.getConnection((err, connection) => {
        if (err) throw err;
        console.log("db " + connection.state + "\n");
            connection.query("SELECT * FROM extStudents WHERE student_id=?;", [req.params.id], (err, result) => {
            connection.release();
            if (!err) {
                res.render("extInsert", {result: result});
            } else {
                console.log(err);
            }
            console.log("database data: \n", result);
        });
    });
}
//Insert comment into database
exports.extInsert = (req, res) => {
    const {comment} = req.body;
    pool.getConnection((err, connection) => {
        if (err) throw err;
        console.log("db " + connection.state + "\n");
        connection.query("UPDATE extStudents SET comment=? WHERE student_id=?;", [comment, req.params.id], (err, result) => {
            connection.release();
            if (!err) {
                pool.getConnection((err, connection) => {
                    if (err) throw err;
                    console.log("db " + connection.state + "\n");
                      connection.query("SELECT * FROM extStudents WHERE student_id=?;", [req.params.id], (err, result) => {
                        connection.release();
                        if (!err) {
                            res.render("extInsert", {result, alert: "Запись обновлена."});
                        } else {
                            console.log(err);
                        }
                        console.log(req.params);
                        console.log("database data: \n", result);
                    });
                });
            } else {
                console.log(err);
            }
            console.log("database data: \n", result);
        });
    });
}


// Full-timers
exports.flVkr = (req, res) => {
    console.log(req.params);
    pool.getConnection((err, connection) => {
        if (err) throw err;
        console.log("db " + connection.state + "\n");
        connection.query("SELECT * FROM flStudents;", (err, result) => {
            connection.release();
            if (!err) {
                res.render("flVkr", {search: "/flVkr", result: result});
            } else {
                console.log(err);
            }
            console.log("database data: \n", result);
        });
    });
}
// Search
exports.flSearch = (req, res) => {
    let searchTerm = req.body.search;
    console.log(searchTerm);
    pool.getConnection((err, connection) => {
        if (err) throw err;
        console.log("db " + connection.state + "\n");
        connection.query("SELECT * FROM flStudents WHERE student_name LIKE ? OR teacher_name LIKE ?;", ['%' + searchTerm + '%', '%' + searchTerm + '%'], (err, result) => {
            connection.release();
            if (!err) {
                res.render("flVkr", {result: result});
            } else {
                console.log(err);
            }
            console.log("database data: \n", result);
        });
    });
}

exports.flAdminSearch = (req, res) => {
    let searchTerm = req.body.search;
    console.log(searchTerm);
    pool.getConnection((err, connection) => {
        if (err) throw err;
        console.log("db " + connection.state + "\n");
        connection.query("SELECT * FROM flStudents WHERE student_name LIKE ? OR teacher_name LIKE ?;", ['%' + searchTerm + '%', '%' + searchTerm + '%'], (err, result) => {
            connection.release();
            if (!err) {
                res.render("flAdmin", {result: result});
            } else {
                console.log(err);
            }
            console.log("database data: \n", result);
        });
    });
}

//View user
exports.flViewAll = (req, res) => {
    pool.getConnection((err, connection) => {
        if (err) throw err;
        console.log("db " + connection.state + "\n");
        connection.query("SELECT * FROM flStudents WHERE student_id=?;", [req.params.id], (err, result) => {
            connection.release();
            if (!err) {
                res.render("flViewAll", {result: result});
            } else {
                console.log(err);
            }
            console.log("database data: \n", result);
        });
    });
}

//Admin page
exports.flAdmin = (req, res) => {
    pool.getConnection((err, connection) => {
        if (err) throw err;
        console.log("db " + connection.state + "\n");
        connection.query("SELECT * FROM flStudents;", (err, result) => {
            connection.release();
            if (!err) {
                res.render("flAdmin", {search: "/flVkr/admin", result: result});
            } else {
                console.log(err);
            }
            console.log(req.body);
            console.log("database data: \n", result);
        });
    });
}
//Page for add comment       admin/insert 
exports.flInsertPage = (req, res) => {
    pool.getConnection((err, connection) => {
        if (err) throw err;
        console.log("db " + connection.state + "\n");
            connection.query("SELECT * FROM flStudents WHERE student_id=?;", [req.params.id], (err, result) => {
            connection.release();
            if (!err) {
                res.render("flInsert", {result: result});
            } else {
                console.log(err);
            }
            console.log("database data: \n", result);
        });
    });
}
//Insert comment into database
exports.flInsert = (req, res) => {
    const { comment, theme_name, reviewer_name } = req.body;
    pool.getConnection((err, connection) => {
        if (err) throw err;
        console.log("db " + connection.state + "\n");
        connection.query("UPDATE flStudents SET comment=?, theme_name=?, reviewer_name=? WHERE student_id=?;", [comment, theme_name, reviewer_name, req.params.id], (err, result) => {
            connection.release();
            if (!err) {
                pool.getConnection((err, connection) => {
                    if (err) throw err;
                    console.log("db " + connection.state + "\n");
                      connection.query("SELECT * FROM flStudents WHERE student_id=?;", [req.params.id], (err, result) => {
                        connection.release();
                        if (!err) {
                            res.render("flInsert", {result, alert: "Запись обновлена."});
                        } else {
                            console.log(err);
                        }
                        console.log(req.params);
                        console.log("database data: \n", result);
                    });
                });
            } else {
                console.log(err);
            }
            console.log("database data: \n", result);
        });
    });
}

// Term Paper
exports.tpVkr = (req, res) => {
    pool.getConnection((err, connection) => {
        if (err) throw err;
        console.log("db " + connection.state + "\n");
        connection.query("SELECT * FROM tpStudents;", (err, result) => {
            connection.release();
            if (!err) {
                res.render("tpVkr", {search: "/tpVkr", result: result});
            } else {
                console.log(err);
            }
            console.log("database data: \n", result);
        });
    });
}
//Search
exports.tpSearch = (req, res) => {
    let searchTerm = req.body.search;
    console.log(searchTerm);
    pool.getConnection((err, connection) => {
        if (err) throw err;
        console.log("db " + connection.state + "\n");
        connection.query("SELECT * FROM tpStudents WHERE student_name LIKE ?", ['%' + searchTerm + '%'], (err, result) => {
            connection.release();
            if (!err) {
                res.render("tpVkr", {result: result});
            } else {
                console.log(err);
            }
            console.log("database data: \n", result);
        });
    });
}

//Search
exports.tpAdminSearch = (req, res) => {
    let searchTerm = req.body.search;
    console.log(searchTerm);
    pool.getConnection((err, connection) => {
        if (err) throw err;
        console.log("db " + connection.state + "\n");
        connection.query("SELECT * FROM tpStudents WHERE student_name LIKE", ['%' + searchTerm + '%'], (err, result) => {
            connection.release();
            if (!err) {
                res.render("tpAdmin", {result: result});
            } else {
                console.log(err);
            }
            console.log("database data: \n", result);
        });
    });
}


//View user
exports.tpViewAll = (req, res) => {
    pool.getConnection((err, connection) => {
        if (err) throw err;
        console.log("db " + connection.state + "\n");
        connection.query("SELECT * FROM tpStudents WHERE student_id=?;", [req.params.id], (err, result) => {
            connection.release();
            if (!err) {
                res.render("tpViewAll", {result: result});
            } else {
                console.log(err);
            }
            console.log("database data: \n", result);
        });
    });
}
//Admin page
exports.tpAdmin = (req, res) => {
    pool.getConnection((err, connection) => {
        if (err) throw err;
        console.log("db " + connection.state + "\n");
        connection.query("SELECT * FROM tpStudents;", (err, result) => {
            connection.release();
            if (!err) {
                res.render("tpAdmin", {search: "/tpVkr/admin", result: result});
            } else {
                console.log(err);
            }
            console.log(req.body);
            console.log("database data: \n", result);
        });
    });
}
//Page for add comment       admin/insert 
exports.tpInsertPage = (req, res) => {
    pool.getConnection((err, connection) => {
        if (err) throw err;
        console.log("db " + connection.state + "\n");
            connection.query("SELECT * FROM tpStudents WHERE student_id=?;", [req.params.id], (err, result) => {
            connection.release();
            if (!err) {
                res.render("tpInsert", {result: result});
            } else {
                console.log(err);
            }
            console.log("database data: \n", result);
        });
    });
}
//Insert comment into database
exports.tpInsert = (req, res) => {
    const {comment} = req.body;
    pool.getConnection((err, connection) => {
        if (err) throw err;
        console.log("db " + connection.state + "\n");
        connection.query("UPDATE tpStudents SET comment=? WHERE student_id=?;", [comment, req.params.id], (err, result) => {
            connection.release();
            if (!err) {
                pool.getConnection((err, connection) => {
                    if (err) throw err;
                    console.log("db " + connection.state + "\n");
                      connection.query("SELECT * FROM tpStudents WHERE student_id=?;", [req.params.id], (err, result) => {
                        connection.release();
                        if (!err) {
                            res.render("tpInsert", {result, alert: "Запись обновлена."});
                        } else {
                            console.log(err);
                        }
                        console.log(req.params);
                        console.log("database data: \n", result);
                    });
                });
            } else {
                console.log(err);
            }
            console.log("database data: \n", result);
        });
    });
}



