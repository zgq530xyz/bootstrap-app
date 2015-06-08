<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<%@ include file="/app/include/taglib.jsp"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
	<title>登录</title>
	<meta name="decorator" content="default"/>
    <link rel="stylesheet" href="${csspath}/typica-login.css">
	<script type="text/javascript" src="${jspath}/common/jquery-1.11.1.min.js"></script>
    <script type="text/javascript" src="${jspath}/common/backstretch.min.js"></script>

	<script type="text/javascript">
		//验证码请求
		var validateImg = "/bootstrap-app/kaptcha.jpg";
		$(document).ready(function() {
			if("${param.validateCodeError}"=="true"){
				alert("验证码错误！");
			}else if("${param.error}"=="true"){
				//alert("${sessionScope['SPRING_SECURITY_LAST_EXCEPTION'].message}");
				alert("用户名或密码错误!");
			}
			//定时切换背景
			$.backstretch([
 		      "${imgpath}/login/bg1.jpg", 
 		      "${imgpath}/login/bg2.jpg",
 		      "${imgpath}/login/bg3.jpg"
 		  	], {duration: 5000, fade: 2000});
			
			$("#adminValidateImg").click(function(){
				$("#adminValidateImg").attr("src", validateImg + "?" + Math.random());
			});
		});
		// 如果在框架中，则跳转刷新上级页面
		if(self.frameElement && self.frameElement.tagName=="IFRAME"){
			parent.location.reload();
		}
	</script>
</head>
<body>

    <div class="container">
        <div id="login-wraper">
            <form id="loginForm"  class="form login-form"  action="" method="post">
                <legend><span style="color:#08c;">系统登陆</span></legend>
                <div class="body">
					<div class="control-group">
						<div class="controls">
							<span>用户名：</span><input type="text" id="username" name="username" class="required" value="${username}" placeholder="登录名">
						</div>
					</div>
					
					<div class="control-group">
						<div class="controls">
							<span>密&nbsp;码：</span><input type="password" id="password" name="password" class="required" placeholder="密码"/>
						</div>
					</div>
					<div  class="control-group">
						<div class="controls_left">
							<span>验证码：</span><input name="validateCode" id="validateCode" type="text" style="width:55px;height:35px;" placeholder="验证码" />
						</div>
						<div class="controls_right">
							<img src="/bootstrap-app/kaptcha.jpg"  id="adminValidateImg"  title="点击更换验证码" style="margin-bottom:-10px;margin-left: -5px;"/>
						</div>
					</div>
                </div>
                <div class="footer">
                    <label class="checkbox inline">
                        <input type="checkbox" id="rememberMe" name="remember_me"> <span style="color:#08c;">记住我</span>
                    </label>
                    <input class="btn btn-primary" type="submit" value="登 录"/>
                </div>
            </form>
        </div>
    </div>
  </body>
</html>