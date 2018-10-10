var express = require('express');
var http = require('http');
var mysql = require('mysql');
var app = express();
var bodyParser = require('body-parser');

/**
	parse all data
**/
app.use(bodyParser.urlencoded({ extended: true }));
/**
	used for date format
**/
var dateFormat = require('dateformat');
var now = new Date();
/**
	used for template
**/
app.set('view enjine', 'ejs');

/**

	used for date format
**/
app.use('/js', express.static(__dirname+ '/node_modules/bootstrap/dist/js'));
app.use('/css', express.static(__dirname+ '/node_modules/bootstrap/dist/css'));
app.use('/js', express.static(__dirname+ '/node_modules/jquery/dist'));
app.use('/js', express.static(__dirname+ '/node_modules/tether/dist/js'));
app.use('/css', express.static(__dirname+ '/public/assets/css'));
app.use('/fonts', express.static(__dirname+'./node_modules/font-awesome/fonts'));
app.use('/static', express.static('./node_modules/font-awesome/css'));
app.use('/public', express.static(__dirname + "/public"));
app.use('/vendor', express.static(__dirname + "/vendor"));


const baseURL="http://127.0.0.1:8080";
const con = mysql.createConnection({
  host     : 'http://138.201.49.53',
  user     : 'root',
  password : '*utl488288#',
  database : 'my_db'
});
con.connect(console.log('database connected'));

app.get('/',function(req,res){
	con.query('SELECT * FROM student_info', function (error, results) {
	  if (error) throw error;
	  console.log('The solution is: ', results);
	});
	res.render('./pages/index.ejs');
});
app.get('/form',function(req,res){
	res.render('./pages/form.ejs');
});
app.post('/form',function(req,res){
	console.log(req.body);
	var insertEventData = {
				s_id:req.body.s_id,
				student_name:req.body.student_name,
				blood_group:req.body.blood_group,
				d_birth:req.body.d_birth,
				religion:req.body.religion,
				tel_number:req.body.tel_number,
				image: req.body.image,
				father_name:req.body.father_name,
				mother_name:req.body.mother_name,
				f_occupation:req.body.f_occupation,
				m_occupation:req.body.m_occupation,
				f_income:req.body.f_income,
				g_tel:req.body.g_tel,
				g_name:req.body.g_name,
				v_name:req.body.v_name,
				strt_name:req.body.strt_name,
				post_office:req.body.post_office,
				thana_name:req.body.thana_name,
				tel_num:req.body.tel_num,
				p_village:req.body.p_village,
				p_street:req.body.p_street,
				p_post:req.body.p_post,
				p_thana:req.body.p_thana,
				p_district:req.body.p_district,
				exam_name:req.body.exam_name,
				department:req.body.department,
				board_name:req.body.board_name,
				i_name:req.body.i_name,
				roll_number:req.body.roll_number,
				session:req.body.session,
				exam_center:req.body.exam_center,
				passing_year:req.body.passing_year,
				gpa_number:req.body.gpa_number,
				gpa_num:req.body.gpa_num,
			};
			con.query("INSERT INTO student_info SET ? ", insertEventData , function(err,result){
				if(err)
					throw err;
				res.redirect(baseURL);
			});
});
app.get('/table',function(req,res){
	con.query("SELECT `s_id`, `student_name`,`roll_number` FROM `student_info`", function (error, result) {
		console.log(result);
	  		res.render('./pages/table.ejs',{
	  			items : result
	  		});
	});
});
app.get('/details',function(req,res){
	con.query('SELECT * FROM student_info WHERE s_id = ?',req.params.id, function (error, results) {
	  if (error) throw error;
	  console.log('details: ', results);
	});
	res.render('./pages/details.ejs');
});
app.listen(8080);
console.log('you are on server 8080');
