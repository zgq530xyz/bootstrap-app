<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="/app/include/taglib.jsp"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
	<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1" />
	<meta charset="utf-8" />
	<title>WMS</title>

	<meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0" />

	<!-- bootstrap & fontawesome -->
	<link rel="stylesheet" href="${ace}/css/bootstrap.min.css" />
	<link rel="stylesheet" href="${ace}/css/font-awesome.min.css" />

	<!-- page specific plugin styles -->

	<!-- text fonts -->
	<link rel="stylesheet" href="${ace}/css/ace-fonts.css" />

	<!-- ace styles -->
	<link rel="stylesheet" href="${ace}/css/ace.min.css" />

	<!--[if lte IE 9]>
		<link rel="stylesheet" href="${ace}/css/ace-part2.min.css" />
	<![endif]-->
	<link rel="stylesheet" href="${ace}/css/ace-skins.min.css" />
	<link rel="stylesheet" href="${ace}/css/ace-rtl.min.css" />

	<!--[if lte IE 9]>
	  <link rel="stylesheet" href="${ace}/css/ace-ie.min.css" />
	<![endif]-->

	<!-- inline styles related to this page -->

	<!-- ace settings handler -->
	<script src="${ace}/js/ace-extra.min.js"></script>

	<!-- HTML5 shim and Respond.js IE8 support of HTML5 elements and media queries -->

	<!--[if lte IE 8]>
	<script src="${ace}/js/html5shiv.js"></script>
	<script src="${ace}/js/respond.min.js"></script>
	<![endif]-->
</head>

<body class="no-skin">
	<!-- #section:basics/navbar.layout -->
	<%@ include file="/app/include/head.jsp"%>
	<div class="main-container" id="main-container">
		<!-- #section:basics/sidebar -->
	<%@ include file="/app/include/left_menu.jsp"%>
		<!-- /section:basics/sidebar -->
		<div class="main-content">
			<div class="page-content">
				<div class="row">
					<div class="col-xs-12">
						<!-- PAGE CONTENT BEGINS -->

						<!-- PAGE CONTENT ENDS -->
					</div><!-- /.col -->
				</div><!-- /.row -->
			</div><!-- /.page-content -->
		</div><!-- /.main-content -->
	</div><!-- /.main-container -->

	<!-- basic scripts -->

	<!--[if !IE]> -->
	<script type="text/javascript">
		window.jQuery || document.write("<script src='${ace}/js/jquery.min.js'>"+"<"+"/script>");
	</script>

	<!-- <![endif]-->

	<!--[if IE]>
<script type="text/javascript">
 window.jQuery || document.write("<script src='${ace}/js/jquery1x.min.js'>"+"<"+"/script>");
</script>
<![endif]-->
	<script type="text/javascript">
		if('ontouchstart' in document.documentElement) document.write("<script src='${ace}/js/jquery.mobile.custom.min.js'>"+"<"+"/script>");
	</script>
	<script src="${ace}/js/bootstrap.min.js"></script>

	<!-- page specific plugin scripts -->

	<!-- ace scripts -->
	<script src="${ace}/js/ace-elements.min.js"></script>
	<script src="${ace}/js/ace.min.js"></script>

	<!-- inline scripts related to this page -->
	<link rel="stylesheet" href="${ace}/css/ace.onpage-help.css" />
	<link rel="stylesheet" href="${acebase}/docs/assets/js/themes/sunburst.css" />

	<script type="text/javascript"> ace.vars['base'] = '..'; </script>
	<script src="${ace}/js/ace/ace.onpage-help.js"></script>
	<script src="${acebase}/docs/assets/js/rainbow.js"></script>
	<script src="${acebase}/docs/assets/js/language/generic.js"></script>
	<script src="${acebase}/docs/assets/js/language/html.js"></script>
	<script src="${acebase}/docs/assets/js/language/css.js"></script>
	<script src="${acebase}/docs/assets/js/language/javascript.js"></script>
</body>
</html>