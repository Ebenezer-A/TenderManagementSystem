<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ page import="com.connection.*"%>
<%@ page import="java.sql.*"%>
<!DOCTYPE html>
<html lang="en">


<!-- Mirrored from demo.w3layouts.com/demosWTR/Freedom/19-02-2020/traveling-freedom-demo_Free/1171185230/web/single.html by HTTrack Website Copier/3.x [XR&CO'2014], Sat, 17 Oct 2020 04:37:51 GMT -->
<!-- Added by HTTrack -->
<meta http-equiv="content-type" content="text/html;charset=UTF-8" />
<!-- /Added by HTTrack -->
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta http-equiv="X-UA-Compatible" content="ie=edge">
<title>Tender Management System</title>
<link rel="stylesheet" href="assets/css/style-freedom.css">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
</head>

<body>
	<script
		src='../../../../../../../ajax.googleapis.com/ajax/libs/jquery/1.10.2/jquery.min.js'></script>
	<script
		src="../../../../../../../m.servedby-buysellads.com/monetization.js"
		type="text/javascript"></script>
	<script>
		(function() {
			if (typeof _bsa !== 'undefined' && _bsa) {
				// format, zoneKey, segment:value, options
				_bsa.init('flexbar', 'CKYI627U', 'placement:w3layoutscom');
			}
		})();
	</script>
	<script>
		(function() {
			if (typeof _bsa !== 'undefined' && _bsa) {
				// format, zoneKey, segment:value, options
				_bsa.init('fancybar', 'CKYDL2JN', 'placement:demo');
			}
		})();
	</script>
	<script>
		(function() {
			if (typeof _bsa !== 'undefined' && _bsa) {
				// format, zoneKey, segment:value, options
				_bsa.init('stickybox', 'CKYI653J', 'placement:w3layoutscom');
			}
		})();
	</script>
	<!--<script>(function(v,d,o,ai){ai=d.createElement("script");ai.defer=true;ai.async=true;ai.src=v.location.protocol+o;d.head.appendChild(ai);})(window, document, "//a.vdo.ai/core/w3layouts_V2/vdo.ai.js?vdo=34");</script>-->
	<div id="codefund">
		<!-- fallback content -->
	</div>
	<script src="https://ethicalads.io/?ref=codefund" async="async"></script>

	<!-- Global site tag (gtag.js) - Google Analytics -->
	<script async
		src='https://www.googletagmanager.com/gtag/js?id=UA-149859901-1'></script>
	<script>
		window.dataLayer = window.dataLayer || [];
		function gtag() {
			dataLayer.push(arguments);
		}
		gtag('js', new Date());

		gtag('config', 'UA-149859901-1');
	</script>

	<script>
		window.ga = window.ga || function() {
			(ga.q = ga.q || []).push(arguments)
		};
		ga.l = +new Date;
		ga('create', 'UA-149859901-1', 'demo.w3layouts.com');
		ga('require', 'eventTracker');
		ga('require', 'outboundLinkTracker');
		ga('require', 'urlChangeTracker');
		ga('send', 'pageview');
	</script>
	<script async src='../../../../../../js/autotrack.js'></script>

	<meta name="robots" content="noindex">
<body>
	<link rel="stylesheet"
		href="../../../../../../images/demobar_w3_4thDec2019.css">
	<%
		if (session.getAttribute("uname") != null && session.getAttribute("uname") != "") {
	%>
	<jsp:include page="admin-side-header.jsp"></jsp:include>
	<div class="container-fluid">
		<br> <br> <br> <br> <br>
		<div class="row">
			<div class="panel-group col-sm-3">
				<div class="panel panel-primary">
					<div class="panel-heading">
						<i class="glyphicon glyphicon-volume-up"></i> Latest Updates and
						Notice
					</div>
					<marquee onmouseover="stop()" onmouseout="start()" direction="up"
						scrollamount="5" height="480px">
						<div class="panel-body">
							<%
								String noticeTitle = null;
								String noticeInfo = null;
								ResultSet rsNotice = DatabaseConnection.getResultFromSqlQuery("select * from tblnotice order by sysdate() asc");
								while (rsNotice.next()) {
									noticeTitle = rsNotice.getString("title");
									noticeInfo = rsNotice.getString("info");
							%>
							<p style="font-weight: bold;">
								<span class="glyphicon glyphicon-hand-right"
									style="color: #3743fa;"> <strong style="color: red"><%=noticeTitle%></strong><br>
									<br><%=noticeInfo%>
								</span>
							</p>
							<%
								}
							%>
						</div>
					</marquee>
				</div>
			</div>
			<div class="col-sm-9">
				<h2><center>Edit Notice</center></h2>
				<table class="table table-bordered">
					<thead>
						<tr>
							<th>Id</th>
							<th>Mobile Title</th>
							<th>Description</th>
							<th>Updated Date & Time</th>
							<th>Action</th>
						</tr>
					</thead>
					<%
						ResultSet rs = DatabaseConnection.getResultFromSqlQuery("select * from tblnotice order by id");
						while (rs.next()) {
					%>
					<tbody>
						<tr>
							<td><%=rs.getInt("id")%></td>
							<td><%=rs.getString("title")%></td>
							<td><%=rs.getString("info")%></td>
							<td><%=rs.getString("notice_update")%></td>
							<td><a href="edit-notice-process.jsp?id=<%=rs.getInt("id")%>" class="btn btn-info">Edit Notice</a></td>
						</tr>
					</tbody>
					<%
						}
					%>
				</table>
			</div>
		</div>
	</div>
	<jsp:include page="footer.jsp"></jsp:include>
	<%
		} else {
	response.sendRedirect("index.jsp");
	}
	%>
</body>
</html>