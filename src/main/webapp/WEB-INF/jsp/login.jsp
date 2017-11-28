<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
	<head>
		<meta http-equiv="pragma" content="no-cache">
		<meta http-equiv="cache-control" content="no-cache">
		<meta http-equiv="expires" content="0">
		<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
		<meta http-equiv="description" content="This is my page">
	</head>

	<body>
	
		<div style="color: red; font-size: 22px;" class="error">${message_login}</div>
	
		<form id="loginForm" action="" method="POST">
			姓名：<input type="text" name="username" /><br /> 
			密码：<input type="text"	name="password" /><br /> 
			<%-- 验证：<input type="text" name="verifyCode" />	&nbsp;&nbsp; <img id="verifyCodeImage" src="${pageContext.request.contextPath}/main/getVerifyCodeImage" /><br /> --%>
			<input type="button" id="sub-btn" value="确认" />
		</form>
	
	</body>
	
	<script type="text/javascript" src="${pageContext.request.contextPath}/sfile/js/jquery-1.10.1.min.js"></script>
	<script type="text/javascript">
		var baseUrl = "${pageContext.request.contextPath}";
		//form表单ajax提交
		$("#sub-btn").click(function() {
			$.ajax({
				type : "post",
				dataType : "json",
				url : baseUrl + "/main/dologin",
				data : $("#loginForm").serialize(),
				success : function(ret) {
					if (ret.msg == 0) {
						$(".error").text(ret.msgbox);
						return;
					}
					window.location.href = ret.data;
				}
			});
		});

		$(document).on("click", "#verifyCodeImage", function() {
			$(this).attr("src", baseUrl + "/mydemo/getVerifyCodeImage?v" + Math.random());
		});
	</script>
	
</html>



