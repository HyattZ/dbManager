$(document).ready(function(){
	
	$('#createDBUserBtn').on('click',function(){
		$('#addDBUser').modal({backdrop:'static'});
	});
	
	toastr.options = {
			"positionClass" : "toast-top-full-width",
			"showDuration": 300,
			"hideDuration": "1000",//消失的动画时间
	        "timeOut": "1000", //展现时间
	        "extendedTimeOut": "2000",//加长展示时间
	        "showEasing": "swing",//显示时的动画缓冲方式
	        "hideEasing": "linear",//消失时的动画缓冲方式
	        "showMethod": "fadeIn",//显示时的动画方式
	        "hideMethod": "fadeOut" //消失时的动画方式
	};
	
	$('#createDBUser').on('click',function(){
		$.ajax({
			url:'createDBUser',
			type:"get",
			dataType:"json",
			async:false,
			data:{
				username:$('#username').val(),
				password:$('#password').val(),
				passwordAgain:$('#passwordAgain').val(),
				time:Date.parse(new Date()),
			},
			error: function(){
				toastr.error('发送请求失败');
				},
			success: function(data){
				data = $.parseJSON(data);
				if ( 0 == data.retCode ){
					toastr.success('创建成功！');
					setTimeout(function(){
						$('#addDBUser').modal('hide');
						$('#createDBUserInfo').attr('class','hide col-md-12');
						$('#dbUserDD').text(data.dbUserName);
						$('#dbUserDT').attr('class','');
						$('#dbUserDD').attr('class','');

					},1000);
				}else{
					toastr.error('错误代码：'+data.retCode+' 错误原因：'+data.reason);
		 			setTimeout(function(){
		 				$('#addDBUser').modal('hide');
		 			},1000);
				}
			}
		});

	});
});