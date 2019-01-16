var express = require('express');
var http = require('http');
var mysql = require('mysql');
var app = express();
var bodyParser = require('body-parser');
var multer = require('multer');
var storage = multer.diskStorage({
  destination: function (req, file, cb) {
    cb(null, 'uploads');
  },
  filename: function (req, file, cb) {
    cb(null, file.originalname );
  }
});
var fileFilter =function (req, file, cb) {
 
  if(file.mimetype=== 'image/jpeg'){
  	cb(null, true)
  }
  else{
  	cb(null, false)
  }
};
var upload = multer({ storage: storage, fileFilter: fileFilter });

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
app.use('/uploads', express.static('uploads'));
app.set('port', (process.env.PORT || 5000))
const con = mysql.createConnection({
  host     : 'localhost',
  user     : 'root',
  password : '',
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
app.get('/department',function(req,res){
	con.query("SELECT * FROM department", function (error, result) {
	  		res.render('./pages/department.ejs',{
	  			items : result
	  		});
	});
});
app.get('/department/delete/:id',function(req,res){
	con.query('DELETE FROM department WHERE id = ?',req.params.id,function(error,results){
		if(error) throw error;

		console.log('deleted the item');

	});
	res.redirect('/department');
});

app.post('/department',function(req,res){
	console.log(req.body);
	var insertDeptData = {
				id:req.body.id,
				department_name:req.body.department_name,
				
			};
			con.query("INSERT INTO department SET ? ", insertDeptData , function(err,result){
				if(err)
					throw err;
				res.redirect('/department');
			});
});
app.get('/form',function(req,res){
	res.render('./pages/form.ejs');
});
app.post('/form',upload.single('Stdnt_image'),function(req,res){
	 console.log(req.file);
	var insertEventData = {
				s_id:req.body.s_id,
				form_details: req.body.form_details,
				student_name:req.body.student_name,
				blood_group:req.body.blood_group,
				d_birth:req.body.d_birth,
				religion:req.body.religion,
				maritial_status:req.body.maritial_status,
				tel_number:req.body.tel_number,
				Stdnt_image: req.file.path,
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
				res.redirect('/table');
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
app.get('/:id',function(req,res){
	con.query('SELECT * FROM student_info WHERE s_id = ?',[req.params.id], function (error, results) {
	  if (error) throw error;
	  
	  res.render('./pages/details.ejs',{
	  	item:results
	  });
	});
	// res.render('./pages/details.ejs');
	
});
app.get('/pages/delete/:id',function(req,res){
	con.query('DELETE FROM student_info WHERE s_id = ?',req.params.id,function(error,results){
		if(error) throw error;

		console.log('deleted the item');

	});
	res.redirect('/table');
});
app.listen(app.get('port'), function() {
  console.log("Node app is running at localhost:" + app.get('port'))
})
