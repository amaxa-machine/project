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

exports.extVkr = (req, res) => {
    console.log(req.params);
    pool.getConnection((err, connection) => {
        if (err) throw err;
        console.log("db " + connection.state + "\n");
        connection.query("SELECT st.student_id, st.student_name, te.teacher_name, th.theme_name FROM extStudents AS st INNER JOIN teachers AS te ON st.teacher_id = te.teacher_id INNER JOIN extThemes AS th ON st.theme_id=th.theme_id;", (err, result) => {
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
exports.extSearch = (req, res) => {
    let searchTerm = req.body.search;
    console.log(searchTerm);
    pool.getConnection((err, connection) => {
        if (err) throw err;
        console.log("db " + connection.state + "\n");
        connection.query("SELECT * FROM extStudents AS st INNER JOIN teachers AS te ON st.teacher_id=te.teacher_id INNER JOIN extThemes AS th ON st.theme_id=th.theme_id WHERE student_name LIKE ? OR teacher_name LIKE ?", ['%' + searchTerm + '%', '%' + searchTerm + '%'], (err, result) => {
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
        connection.query("SELECT * FROM extStudents AS st INNER JOIN teachers AS te ON st.teacher_id=te.teacher_id INNER JOIN extThemes AS th ON st.theme_id=th.theme_id WHERE student_id=?;", [req.params.id], (err, result) => {
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
        connection.query("SELECT st.student_id, st.student_name, te.teacher_name, th.theme_name FROM extStudents AS st INNER JOIN teachers AS te ON st.teacher_id = te.teacher_id INNER JOIN extThemes AS th ON st.theme_id=th.theme_id;", (err, result) => {
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


//Page for add comment       admin/insert 
exports.extInsertPage = (req, res) => {
    pool.getConnection((err, connection) => {
        if (err) throw err;
        console.log("db " + connection.state + "\n");
//        connection.query("SELECT * FROM extStudents AS st INNER JOIN teachers AS te ON st.teacher_id=te.teacher_id INNER JOIN extThemes AS th ON st.theme_id=th.theme_id WHERE st.student_id=?;", [req.params.student_id], (err, result) => {
          connection.query("SELECT * FROM extStudents" , [req.params.student_id], (err, result) => {
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
    console.log(req.body);
    const {comment, theme} = req.body;
    pool.getConnection((err, connection) => {
        if (err) throw err;
        console.log("db " + connection.state + "\n");
        connection.query("UPDATE extStudents SET comment=? WHERE student_id=?", [comment, req.params.student_id], (err, result) => {
            connection.release();
            if (!err) {
                pool.getConnection((err, connection) => {
                    if (err) throw err;
                    console.log("db " + connection.state + "\n");
                    connection.query("SELECT * FROM extStudents AS st INNER JOIN teachers AS te ON st.teacher_id=te.teacher_id INNER JOIN extThemes AS th ON st.theme_id=th.theme_id WHERE student_id=?;", [req.params.id], (err, result) => {
                        connection.release();
                        if (!err) {
                            res.render("extInsert", {result, alert: "Запись обновлена."});
                        } else {
                            console.log(err);
                        }
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
