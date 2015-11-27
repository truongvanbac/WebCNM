// Ajax for all
$(document).ready(function(){
	// Load form create Certificate from Browser
	// http://www.w3schools.com/jquery/event_delegate.asp
	// Su dung delegate cho viec dinh nghia cac su kien tương lai
	$("#lienrollbrowser").click(function(){
		$('#result').load("formgeneratecert.html #createbrowser");

		$("#result").delegate("#btCreateCert", "click", function(){
			// alert("Thanks");
   			// 1. Ajax check authenticate username/password
   			var username = $("#exampleInputUsername").val();
			var password = $("#exampleInputPassword1").val();
			var jsondata = {
				"username": username,
	        	"password": password
			};
			//alert(username);
   			$.ajax({
			type: "get",
			url: "GenerateCertificateAndKey", // url servlet 
			data: {jsondata: JSON.stringify(jsondata)}, // gia trị được select
			dataType: 'json',
			// Nếu thành công fill dữ liệu vào select Profile
			success: function(data){
				// alert(data);
				if($.trim(data) == 'false'){
					$('#result').load('formgeneratecert.html #error', function(){
						$('#goback').click(function(){
							$('#result').load("formgeneratecert.html #createbrowser");
						});
					});
				} else {
					var output = "<option>" + data.chooseprofile + "</option>"
					$('#result').load('formgeneratecert.html #success', function(){
						$('#chooseprofile').append(output);
						$("input:hidden[name=password]").val(data.password);
						$("input:hidden[name=user]").val(data.username);
					});
				}
			},
			//If there was no resonse from the server
            error: function(jqXHR, textStatus, errorThrown){
				console.log("Something really bad happened " + textStatus);
           	 }
           });
		});
   	});
	
	// Load Form Create Certificate From CSR File
	// Edit by AnhVH: Chuyển sang dùng jsp file
	/*
		$("#lienrollcsr").click(function(){	
			// alert("Thanks for visiting!");
		   	$('#result').load('formgeneratecert.html #createcsr');
		});
	*/

	// Check OCSP Form
	$("#licheckoscp").click(function(){
		// alert("Thanks for visiting!");
	   	$('#result').load('userinfomation.html #checkocspform');
   });

	// Check infomation user
	$("#lisearchuser").click(function(){
		// alert("Thanks for visiting!");
	   	$('#result').load('userinfomation.html #infouserform');
   });

	// Ajax with form registration
	$("#liregform").click(function(){
		$( "#result" ).load("registration.html #regform", function() {
		   	// Event select Entity Profile
			$("#entityprofile").change(function(){
				var entityprofile = $("#entityprofile").val();
				// Get entity profile from server
				$.ajax({
				type: "get",
				url: "AddEndEntity", // url servlet 
				data: "data=" + entityprofile, // gia trị được select
				// Nếu thành công fill dữ liệu vào select Profile
				success: function(data){
					var json_obj = data.profilename;
					var output = "<option disabled selected>--- Select one profile ---</option>";

					// lấy dữ liệu và nhét vào form
					for(var i in json_obj){
						output = output + "<option>" + json_obj[i] + "</option>";
					}
					// Set empty cho element select profile trước khi append giá trị mới
					$("#selectprofile").empty();
					$("#selectprofile").append(output);
					$("#rginfo").css('display', 'none');
				},
				//If there was no resonse from the server
                error: function(jqXHR, textStatus, errorThrown){
					console.log("Something really bad happened " + textStatus);
					$("#rginfo").empty();
					$("#rginfo").append("Có lỗi trong quá trình load profiles");
					$("#rginfo").css({"background-color": "#E03C3C", "display": "inline"});
					$("#selectprofile").empty();
               	}
               });
			});

			// Event click button Add -> thực hiện đóng gói dữ liệu Json và gửi lên server
			$("#btnadd").click(function(){
				alert("Hello AnhVH");
				// 1. Lấy dữ liệu từ form
				var entityprofile = $("#entityprofile").val();
				var username = $("#username").val();
				var password = $("#password").val();
				var confirmpassword = $("#confirmpassword").val();
				var CN = $("#CN").val();
				var OU = $("#OU").val();
				var O = $("#O").val();
				var ST = $("#ST").val();
				var C = $("#C").val();
				var profile = $("#selectprofile").val();
				var tokentype = $("#tokentype").val();
				// 2. Valid dữ liệu nhập form
				if(password!=confirmpassword){
					alert("password does not match");
				} else {
					// 3. Đóng gói data -> Json
					var jsondata = {
				        "entityprofile": entityprofile,
				        "username": username,
				        "password": password,
				        "CN": CN,
				        "OU": OU,
				        "O" : O,
				        "ST": ST,
				        "C": C,
				        "profile": profile,
				        "tokentype": tokentype
				    };
					// 4. Bắn request
					$.ajax({
						type: "post",
						url: "AddEndEntity",
						dataType: 'json', // dinh nghia kieu du lieu tra ve
						data: {jsondata: JSON.stringify(jsondata)},
						success: function(data){
							var returncode = data.returncode;
							var username = data.username;
							if (returncode == 0) {
								alert(username + "Add success!!");
								$("#rginfo").empty();
								$("#rginfo").append("Add success!!");
								$("#rginfo").css({"background-color": "#598DE1", "display": "inline"});
							} else {
								alert(username + "Add false!!");
							}
						},
						error: function(jqXHR, textStatus, errorThrown){
							console.log("Something really bad happened " + textStatus);
						}
					});
				}
			});

	   	});
   });
	
	// Form download Certificate CA
	$("#lidownloadcertform").click(function(){
		// alert("Thanks for visiting!");
	   	$('#result').load('download_certcrl.html #dowloadcertform');
   });
	// Form download CRL CA
	$("#lidownloadcrlform").click(function(){
		// alert("Thanks for visiting!");
	   	$('#result').load('download_certcrl.html #downloadcrlform');
   });
});