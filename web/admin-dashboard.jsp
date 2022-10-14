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
				<div class="panel panel-danger">
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
			<div class="col-sm-6">
				<div class="panel panel-default">
					<div class="panel-body">
						<div style="text-transform: uppercase">
							<strong>Admin Management</strong><br>
						</div>
						<br>
						<div class="col-md-3 col-sm-3 col-xs-6">
							<div class="shadow p-3 mb-5 bg-white rounded text-center">
								<i class="fa fa-users fa-5x"></i>
								<%
									ResultSet rsVendors = DatabaseConnection.getResultFromSqlQuery("select count(*) from tblvendor");
									rsVendors.next();
									int totalVendors = rsVendors.getInt(1);
								%>
								<h3>
									<font color="#FF9933"><span class="counter"><%=totalVendors%></span></font>
								</h3>
								<strong style="text-transform: uppercase; font-size: 12px;"><a
									href="view-all-venders.jsp" class="text-dark" target="_blank">Total
										Venders</a></strong>
							</div>
						</div>
						<div class="col-md-3 col-sm-3 col-xs-6">
							<div class="shadow p-3 mb-5 bg-white rounded text-center">
								<i class="fa fa-ticket fa-5x"></i>
								<%
									ResultSet resultSet = DatabaseConnection.getResultFromSqlQuery("select count(*) from tbltender");
									resultSet.next();
									int totalTenders = resultSet.getInt(1);
								%>
								<h3>
									<font color="#FF9933"><span class="counter"><%=totalTenders%></span></font>
								</h3>
								<strong style="text-transform: uppercase; font-size: 12px;"><a
									href="view-admin-all-tenders.jsp" class="text-dark"
									target="_blank">Total Tenders</a></strong>
							</div>
						</div>
						<div class="col-md-3 col-sm-3 col-xs-6">
							<div class="shadow p-3 mb-5 bg-white rounded text-center">
								<i class="fa fa-gavel fa-5x"></i>
								<%
									ResultSet resultBid = DatabaseConnection.getResultFromSqlQuery("select count(*) from tblbidder");
									resultBid.next();
									int totalBid = resultBid.getInt(1);
								%>
								<h3>
									<font color="#FF9933"><span class="counter"><%=totalBid%></span></font>
								</h3>
								<strong style="text-transform: uppercase; font-size: 12px;"><a
									href="view-tender-bids.jsp" class="text-dark"
									target="_blank">Total Bids</a></strong>
							</div>
						</div>
						<div class="col-md-3 col-sm-3 col-xs-6">
							<div class="shadow p-3 mb-5 bg-white rounded text-center">
								<i class="fa fa-user fa-5x"></i>
								<%
									ResultSet resultAdmin = DatabaseConnection.getResultFromSqlQuery("select count(*) from tbladmin");
									resultAdmin.next();
									int totalAdmin = resultAdmin.getInt(1);
								%>
								<h3>
									<font color="#FF9933"><span class="counter"><%=totalAdmin%></span></font>
								</h3>
								<strong style="text-transform: uppercase; font-size: 12px;"><a
									href="view-admin-profile.jsp" class="text-dark"
									target="_blank">Admin</a></strong>
							</div>
						</div>
						<div class="col-md-3 col-sm-3 col-xs-6">
							<div class="shadow p-3 mb-5 bg-white rounded text-center">
								<i class="fa fa-check-square fa-5x"></i>
								<%
									ResultSet resultAccepted = DatabaseConnection.getResultFromSqlQuery("select count(*) from tblbidder where status='Accepted'");
									resultAccepted.next();
									int acceptedBids = resultAccepted.getInt(1);
								%>
								<h3>
									<font color="#FF9933"><span class="counter"><%=acceptedBids%></span></font>
								</h3>
								<strong style="text-transform: uppercase; font-size: 12px;"><a
									href="" class="text-dark"
									target="_blank">Accepted Bids</a></strong>
							</div>
						</div>
						<div class="col-md-3 col-sm-3 col-xs-6">
							<div class="shadow p-3 mb-5 bg-white rounded text-center">
								<i class="fa fa-ban fa-5x"></i>
								<%
									ResultSet resultRejected = DatabaseConnection.getResultFromSqlQuery("select count(*) from tblbidder where status='Rejected'");
									resultRejected.next();
									int rejectedBids = resultRejected.getInt(1);
								%>
								<h3>
									<font color="#FF9933"><span class="counter"><%=rejectedBids%></span></font>
								</h3>
								<strong style="text-transform: uppercase; font-size: 12px;"><a
									href="" class="text-dark"
									target="_blank">Rejected Bids</a></strong>
							</div>
						</div>
						<div class="col-md-3 col-sm-3 col-xs-6">
							<div class="shadow p-3 mb-5 bg-white rounded text-center">
								<i class="fa fa-bell fa-5x"></i>
								<%
									ResultSet resultNotice = DatabaseConnection.getResultFromSqlQuery("select count(*) from tblnotice");
									resultNotice.next();
									int totalNotice = resultNotice.getInt(1);
								%>
								<h3>
									<font color="#FF9933"><span class="counter"><%=totalNotice%></span></font>
								</h3>
								<strong style="text-transform: uppercase; font-size: 12px;"><a
									href="view-all-notice.jsp" class="text-dark"
									target="_blank">Total Notice</a></strong>
							</div>
						</div>
						<div class="col-md-3 col-sm-3 col-xs-6">
							<div class="shadow p-3 mb-5 bg-white rounded text-center">
								<i class="fa fa-address-book fa-5x"></i>
								<%
									ResultSet resultContact = DatabaseConnection.getResultFromSqlQuery("select count(*) from tblcontact");
									resultContact.next();
									int totalContact = resultContact.getInt(1);
								%>
								<h3>
									<font color="#FF9933"><span class="counter"><%=totalContact%></span></font>
								</h3>
								<strong style="text-transform: uppercase; font-size: 12px;"><a
									href="admin-dashboard.jsp" class="text-dark"
									target="_blank">Total Contacts</a></strong>
							</div>
						</div>
					</div>
				</div>
			</div>
			<div class="panel-group col-sm-3">
				<div class="panel panel-info">
					<div class="panel-heading">
						<i class="glyphicon glyphicon-volume-up"></i> Recently Approved
						Tenders
					</div>
					<marquee onmouseover="stop()" onmouseout="start()" direction="up"
						scrollamount="5" height="480px">
						<div class="panel-body">
							<%
								try {
								ResultSet rs = DatabaseConnection.getResultFromSqlQuery("select * from tbltenderstatus order by sysdate() asc limit 6");
								while (rs.next()) {
									String bid = rs.getString("bid");
									String tid = rs.getString("tid");
							%>
							<hr>
							<p style="color: red;">
								Application
								Id:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
								<%=bid%></p>
							<pstyle"color:black">Assigned Project Id: &nbsp;&nbsp;<%=tid%></p>

							<%
								}
							} catch (SQLException e) {
							e.printStackTrace();
							}
							%>
							
						</div>
					</marquee>
				</div>
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