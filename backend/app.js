const express = require('express');
const bodyParser = require('body-parser');
const database = require('mysql');
const upload = require('express-fileupload');
// const crypto = require('crypto');
var koneksi = require('cors');
var app = express();

const dbs = database.createConnection({
    host: 'localhost',
    user: 'root',
    password: '',
    database: 'wisemonkey',
    port: '3306'
});
dbs.connect();


var port = 8002;

app.use(koneksi());
app.use(upload());

app.use(bodyParser.json());
app.use(bodyParser.urlencoded({extended: false}));

// fungsi tampilkan data
app.get('/', (req, res) => {
    var panggilData = 'SELECT * FROM  data_nasabah';
    dbs.query(panggilData, (kaloError, hasilQuery) => {
        if(kaloError)
        {
            throw kaloError;
        } 
        else 
        {
            res.send(hasilQuery);
        }
    });
});

//fungsi edit
app.post('/tambahData', (req, res) => {
   var nama_nasabah = req.body.inputSatu;
   var email = req.body.inputDua;
   var alamat = req.body.inputTiga;
   var nomor_hp = req.body.inputEmpat;
   var gender = req.body.inputLima;
   var birthday = req.body.inputEnam;
   

   var sql = `INSERT INTO data_nasabah VALUES("${''}", "${nama_nasabah}", "${email}", "${alamat}", "${nomor_hp}", "${gender}", "${birthday}")`; 
    dbs.query(sql, (kaloError, hasilnya) => {
        if(kaloError){
            throw kaloError;
        } else {
            res.end('Data berhasil disimpan')
        }
    });
});



// fungsi upload
/** Untuk mengambil data per baris */
app.get('/getdata/:id', (req, res) => {
    /** Menyiapkan query untuk ke MySQL */
    var grabData = `SELECT * FROM data_nasabah WHERE id = ${req.params.id}`;
    /** Mengeksekusi query dengan syntax nodeJS */
    dbs.query(grabData, (err, hasilquery) => {
        if(err){
            /** Mengeluarkan pesan error apabila terjadi kesalahan */
            throw err;
        } else {
            /** Menyiapkan hasil query untuk siap dikirim */
            res.send(hasilquery);
        }
    })
});
app.get('/delet/:id', (req, res) => {
    /** Menyiapkan query untuk ke MySQL */
    var delet = `DELETE FROM data_nasabah WHERE data_nasabah. id = ${req.params.id}`
    /** Mengeksekusi query dengan syntax nodeJS */
    dbs.query(detel, (err, delet) => {
        if(err){
            /** Mengeluarkan pesan error apabila terjadi kesalahan */
            throw err;
        } else {
            /** Menyiapkan hasil query untuk siap dikirim */
            res.send(delet);
        }
    })
});

/** Untuk mengupdate data */
app.post('/ubahData', (req, res) => {
    var idnasabah = req.body.id;
    var namanasabah = req.body.nama_nasabah;
    var email = req.body.email;
    var alamat = req.body.alamat;
    var nomor = req.body.nomor_hp;
    var gender = req.body.gender;
    var birthday = req.body.birthday;
    var fileName = req.files.file.name;

// Ketika dapat kiriman yang berbentuk files maka akan dijalankan fungsi ini
    if(req.files){
        
        var fungsiFile = req.files.file;

        fungsiFile.mv("./tampunganFile/"+fileName, (kaloError) => {
            if(kaloError){
                console.log(kaloError);
                res.send('Upload failed');
            } else {
                res.send('Upload berhasil');
            }
        })
    }

    var queryUpdate = `UPDATE data_nasabah SET nama_nasabah = "${namanasabah}", 
    email = "${email}", alamat = "${alamat}", nomor_hp = "${nomor}", gender = "${gender}", birthday = "${birthday}", foto_produk = "${fileName}" WHERE id="${idnasabah}"`;
    dbs.query(queryUpdate, (err, result) => {
        if(err){
            throw err;
        } else {
            res.send('Update berhasil !');
        }
    });

});

app.post('/login', (req, res) => {
    var sql = `SELECT * FROM data_admin`;
    dbs.query(sql, (error, result) => {
        if(error) {
            throw error;
        } else {
            var username = req.body.username;
            var password = req.body.password;

            for(var i=0; i < result.length; i++ ){
                if(username === result[i].username && password === result[i].password){
                    var status = 'oke';
                    res.send(status);
                    break;
                } else if(i === result.length - 1) {
                    res.send('gagal');
                }
            }
        }
    });
});

app.listen(port, () => {
    console.log('Server berjalan di port '+port+' ....')
});