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
		if (session.getAttribute("vname") != null && session.getAttribute("vname") != "") {
	%>
	<jsp:include page="vendor-side-header.jsp"></jsp:include>
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
						scrollamount="5" height="630px">
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
				<h2>Bid For The Tendor</h2>
				<%
					String tid = request.getParameter("tid");
					String vid = request.getParameter("vid");
					ResultSet rsBid = DatabaseConnection.getResultFromSqlQuery("select * from tbltender where tid='" + tid + "'");
					while (rsBid.next()) {
				%>
				<form action="BidForTender" method="post">
					<div class="form-group">
						<input type="hidden" class="form-control" id="" name="vendorId"
							value="<%=vid%>">
					</div>
					<div class="form-group">
						<label for="tenderId">Tender Id:</label> <input type="text"
							class="form-control" id="" name="tenderId" value="<%=tid%>" readonly>
					</div>
					<div class="form-group">
						<label for="tenderName">Tender Name:</label> <input type="text"
							class="form-control" id="" value="<%=rsBid.getString("tname")%>"
							name="tenderName" readonly>
					</div>
					<div class="form-group">
						<label for="tenderType">Tender Type:</label> <input type="text"
							class="form-control" id="" value="<%=rsBid.getString("ttype")%>"
							name="tenderType" readonly>
					</div>
					<div class="form-group">
						<label for="strictDeadline">Strict Deadline:</label> <input
							type="text" class="form-control" name="strictDeadline"
							value="<%=rsBid.getString("tdeadline")%>" readonly>
					</div>
					<div class="form-group">
						<label for="basePrice">Base Price:</label> <input type="text"
							class="form-control" id="" value="<%=rsBid.getString("tprice")%>"
							name="basePrice" readonly>
					</div>

					<div class="form-group">
						<label for="location">Location:</label> <input type="text"
							class="form-control" id="" name="location"
							value="<%=rsBid.getString("tloc")%>" readonly>
					</div>
					<div class="form-group">
						<label for="description">Description:</label> <input type="text"
							class="form-control" id="" value="<%=rsBid.getString("tdesc")%>"
							name="description" readonly>
					</div>
					<div class="form-group">
						<label for="bidAmount">Bid Amount:</label> <input type="number"
							class="form-control" id="" name="bidAmount" min="<%=rsBid.getString("tprice")%>" value="<%=rsBid.getString("tprice")%>" required="required">
					</div>
					<button type="submit" class="btn btn-info">Bid Now</button>

				</form>
				<%
					}
				%>
			</div>
		</div>
	</div>
	<br>
	<jsp:include page="footer.jsp"></jsp:include>
	<%
		} else {
	response.sendRedirect("index.jsp");
	}
	%>
</body>
</html>