$(document).ready(function(){
	$('#tableList').dataTable();
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
	
	//删除数据库的js代码
	$('#delDBBtn').on('click',function(){
		bootbox.confirm("你确定删除数据库？",function(result){
			if ( result ){
				$.ajax({
					url:'deleteDatabase?dbid='+$('#dbid').text(),
					type:"get",
					dataType:"json",
					async:false,
					error: function(){
						toastr.error('连接服务器失败');
					},
					success: function(data){
						data = $.parseJSON(data);
						if ( data.retCode == 0){
							toastr.clear()
							toastr.success('删除成功！');
							setTimeout(function(){
								window.location.href="databases";
							},2000);
						}else{
							toastr.clear()
							toastr.error('错误代码'+data.retCode+' 错误原因：'+data.reason);
						}
					}
				});
			}
		});
	});
	
	//备份数据库的js代码
	$('#backupDBBtn').on('click',function(){
		bootbox.confirm("现在开始备份？",function(result){
			if ( result ){
				$.ajax({
					url:'backupDatabase?dbid='+$('#dbid').text(),
					type:"get",
					dataType:"json",
					async:false,
					error: function(){
						toastr.error('连接服务器失败');
					},
					success: function(data){
						data = $.parseJSON(data);
						if ( data.retCode == 0){
							toastr.clear()
							toastr.success('备份成功');
							
							$('#downloadURL').attr('href',data.downloadURL);
							$('#backupSuccessPanel').modal({backdrop:'static'});
						}else{
							toastr.clear()
							toastr.error('错误代码'+data.retCode+' 错误原因：'+data.reason);
						}
					}
				});
			}
		});
	});
	
	//控制还原方式的form表单格式
	$('#recoverType').change(function(){
		var choice = $(this).children('option:selected').val();
		if (choice == 'system'){
			$('#inputSQLFileContainer').hide();
		}else if(choice == 'custom'){
			$('#inputSQLFileContainer').show();
		}
	});
	
	//数据库还原js代码
	$('#recoverDBBtn').on('click',function(){
		$('#recoverFormContainer').modal({backdrop:'static'});
	});
	
	$('#recoverDBOpBtn').on('click',function(){
		alert('hehe');
//		$.ajax({
//			url:'recover',
//			type:"post",
//			dataType:"json",
//			contentType:"multipart/form-data",
//			async:false,
//			data:$('#recoverDBForm').serialize(),
//			error: function(){
//				toastr.error('连接服务器失败');
//			},
//			success: function(data){
//				data = $.parseJSON(data);
//				if ( data.retCode == 0){
//					toastr.clear()
//					toastr.success('恢复成功');
//					setTimeout(function(){
//						$('#recoverFormContainer').modal('hide');
//						location.reload(true);
//					},2000);
//				}else{
//					toastr.clear()
//					toastr.error('错误代码'+data.retCode+' 错误原因：'+data.reason);
//				}
//			}
//		});
	});
	
});
