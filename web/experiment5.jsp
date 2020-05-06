<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>我喜欢的电影</title>
    <link rel="stylesheet" href="layui/css/layui.css">
    <style>
		.layui-container{
            display: flex;
            flex-direction: column;
            border-radius: 5px;
            margin-top: 5%;
            width: 50%;
            background: #ffffff;
            align-items: center;
        }
        .layui-card-header{
        	text-align:center;
        	font-size:25px;
        	font-weight:800;
        }
        .the-question{
		    font-size: 18px;
		    font-weight: 600;
		    color: #666;
        }
        .layui-input-block{
        	margin-left:30px;
        }
    	</style>
</head>
<body>
<div class="layui-container">
	<div class="layui-card">
		<div class="layui-card-header">网上答卷评测系统</div>
		<div class="layui-card-body">
			<form class="layui-form" action="background5.jsp" method="post">
				<div class="layui-form-item">
					<div class="the-question">一，2+3=？</div>
				    <div class="layui-input-block">
				      <input type="radio" name="q1" value="2" title="2">
				      <input type="radio" name="q1" value="3" title="3">
				      <input type="radio" name="q1" value="4" title="4">
				      <input type="radio" name="q1" value="4" title="4">
				      <input type="radio" name="q1" value="5" title="5">
				    </div>
				  </div>
				  <div class="layui-form-item">
					<div class="the-question">二，下面那些是偶数？</div>
				  	<div class="layui-input-block">
				      <input type="checkbox" name="q2-1" value="2" title="2">
				      <input type="checkbox" name="q2-2" value="3" title="3">
				      <input type="checkbox" name="q2-3" value="4" title="4">
				      <input type="checkbox" name="q2-4" value="5" title="5">
				    </div>
				  </div>
				  <div class="layui-form-item">
					<div class="the-question">三，下面那些是动态网页？</div>
				   	<div class="layui-input-block">
					   	<input type="checkbox" name="q3-1" value="ASP"  title="ASP" lay-skin="primary">
						<input type="checkbox" name="q3-2" value="JSP"  title="PHP" lay-skin="primary">
						<input type="checkbox" name="q3-3" value="HTML"  title="HTML" lay-skin="primary">
						<input type="checkbox" name="q3-4" value="JSP"  title="JSP" lay-skin="primary">
				    </div>
				  </div>
				<div class="layui-form-item">
					<div class="the-question">四，下列哪个组件是服务端的？</div>
					<div class="layui-input-block">
						<select name="q4">
					       <option value=""></option>
					       <option value="jsp">JSP</option>
					       <option value="servlet">servlet</option>
					       <option value="javabean">JavaBean</option>
					  	</select>
					 </div>
				 </div>
				<div class="layui-form-item">
					<div class="the-question">五，在服务器端采用接收用户请求的对象是？</div>
				  	<div class="layui-input-block">
			 			<input type="text" name="q5" placeholder="请输入答案" class="layui-input">
				   </div>
				</div>
				<div class="layui-form-item">
				   <div class="layui-input-block">
				     <button class="layui-btn" lay-submit lay-filter="formDemo">立即提交</button>
				     <button type="reset" class="layui-btn layui-btn-primary">重置</button>
				   </div>
				</div>
			</form>
		</div>
	</div>
</div>
<script src="layui/layui.js"></script>
<script>
    layui.use('form',function () {
        var form = layui.form;
    });
</script>
</body>
</html>
