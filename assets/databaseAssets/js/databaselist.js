$(document).ready(function(){
	$('#databaseList').dataTable();
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
	$('#createDatabase').on('click',function(){
		$('#addDB').modal({backdrop:'static'});
	});
	
	$('#createDB').on('click',function(){
		
		$.ajax({
		 	url:'createDatabase',
		 	type:"get",
		 	dataType:"json",
		 	async:false,
		 	data:{
		 		dbname:$('#dbname').val(),
		 		dbtype:$('#dbtype').val(),
		 		time:Date.parse(new Date()),
		 	},
		 	error: function(){
		 		alert('获取数据失败');
		 		},
		 	success: function(data){
		 		data = $.parseJSON(data);
		 		if (data.retCode == 0){
		 			toastr.success('创建成功！');
		 			setTimeout(function(){
		 				$('#addDB').modal('hide');
		 				if ($('#nullInfo')){
		 					$('#nullInfo').attr('class','row hide');
		 					$('#nullToHaveChange').attr('class','row');
		 				}
		 				var dataTable = $('#databaseList').DataTable();
		 				dataTable.fnAddData([
		 				    data.dbid,
		 					data.dbName,
		 					data.createTime,
		 					data.dbType,
		 					'正常',
		 					'<a href=\"database?dbid='+data.dbid+'\">查看详细</a>'
		 					],true);
		 			},1000);
		 			
		 		}else{
		 			
		 			toastr.error('错误代码：'+data.retCode+' 错误原因：'+data.reason);
		 			setTimeout(function(){
		 				$('#addDB').modal('hide');
		 			},1000);
		 		}
		 	}
		 });

	});
});