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
        connection.query("SELECT * FROM extStudents AS st LEFT JOIN teachers AS te ON st.teacher_id = te.teacher_id LEFT JOIN extThemes AS th ON st.theme_id=th.theme_id LEFT JOIN reviewers AS re ON st.reviewer_id=re.reviewer_id;", (err, result) => {
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
        connection.query("SELECT * FROM extStudents AS st JOIN teachers AS te ON st.teacher_id=te.teacher_id LEFT JOIN extThemes AS th ON st.theme_id=th.theme_id WHERE student_name LIKE ? OR teacher_name LIKE ?", ['%' + searchTerm + '%', '%' + searchTerm + '%'], (err, result) => {
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
//View user
exports.extViewAll = (req, res) => {
    pool.getConnection((err, connection) => {
        if (err) throw err;
        console.log("db " + connection.state + "\n");
        connection.query("SELECT * FROM extStudents AS st LEFT JOIN teachers AS te ON st.teacher_id=te.teacher_id LEFT JOIN extThemes AS th ON st.theme_id=th.theme_id LEFT JOIN reviewers AS re ON st.reviewer_id=re.reviewer_id WHERE student_id=?;", [req.params.id], (err, result) => {
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
        connection.query("SELECT * FROM extStudents AS st LEFT JOIN teachers AS te ON st.teacher_id = te.teacher_id LEFT JOIN extThemes AS th ON st.theme_id=th.theme_id LEFT JOIN reviewers AS re ON st.reviewer_id=re.reviewer_id;", (err, result) => {
            connection.release();
            if (!err) {
                res.render("extAdmin", {search: "/etxVkr", result: result});
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
            connection.query("SELECT * FROM extStudents AS st LEFT JOIN teachers AS te ON st.teacher_id=te.teacher_id LEFT JOIN extThemes AS th ON st.theme_id=th.theme_id LEFT JOIN reviewers AS re ON st.reviewer_id=re.reviewer_id WHERE student_id=?;", [req.params.id], (err, result) => {
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
                      connection.query("SELECT * FROM extStudents AS st LEFT JOIN teachers AS te ON st.teacher_id=te.teacher_id LEFT JOIN extThemes AS th ON st.theme_id=th.theme_id LEFT JOIN reviewers AS re ON st.reviewer_id=re.reviewer_id WHERE student_id=?;", [req.params.id], (err, result) => {
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
        connection.query("SELECT * FROM flStudents AS st LEFT JOIN teachers AS te ON st.teacher_id = te.teacher_id LEFT JOIN flThemes AS th ON st.theme_id=th.theme_id LEFT JOIN reviewers AS re ON st.reviewer_id=re.reviewer_id;", (err, result) => {
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
        connection.query("SELECT * FROM flStudents AS st LEFT JOIN teachers AS te ON st.teacher_id=te.teacher_id WHERE student_name LIKE ? OR teacher_name LIKE ?", ['%' + searchTerm + '%', '%' + searchTerm + '%'], (err, result) => {
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
//View user
exports.flViewAll = (req, res) => {
    pool.getConnection((err, connection) => {
        if (err) throw err;
        console.log("db " + connection.state + "\n");
        connection.query("SELECT * FROM flStudents AS st LEFT JOIN teachers AS te ON st.teacher_id=te.teacher_id LEFT JOIN extThemes AS th ON st.theme_id=th.theme_id LEFT JOIN reviewers AS re ON st.reviewer_id=re.reviewer_id WHERE student_id=?;", [req.params.id], (err, result) => {
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
        connection.query("SELECT * FROM flStudents AS st LEFT JOIN teachers AS te ON st.teacher_id = te.teacher_id LEFT JOIN extThemes AS th ON st.theme_id=th.theme_id LEFT JOIN reviewers AS re ON st.reviewer_id=re.reviewer_id;", (err, result) => {
            connection.release();
            if (!err) {
                res.render("flAdmin", {search: "/flVkr", result: result});
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
            connection.query("SELECT * FROM flStudents AS st LEFT JOIN teachers AS te ON st.teacher_id=te.teacher_id LEFT JOIN extThemes AS th ON st.theme_id=th.theme_id LEFT JOIN reviewers AS re ON st.reviewer_id=re.reviewer_id WHERE student_id=?;", [req.params.id], (err, result) => {
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
    const {comment} = req.body;
    pool.getConnection((err, connection) => {
        if (err) throw err;
        console.log("db " + connection.state + "\n");
        connection.query("UPDATE flStudents SET comment=? WHERE student_id=?;", [comment, req.params.id], (err, result) => {
            connection.release();
            if (!err) {
                pool.getConnection((err, connection) => {
                    if (err) throw err;
                    console.log("db " + connection.state + "\n");
                      connection.query("SELECT * FROM flStudents AS st LEFT JOIN teachers AS te ON st.teacher_id=te.teacher_id LEFT JOIN extThemes AS th ON st.theme_id=th.theme_id LEFT JOIN reviewers AS re ON st.reviewer_id=re.reviewer_id WHERE student_id=?;", [req.params.id], (err, result) => {
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

