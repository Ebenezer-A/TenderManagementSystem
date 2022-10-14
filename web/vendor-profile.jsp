<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ page import="com.connection.*"%>
<%@ page import="java.sql.*"%>
<!DOCTYPE html>
<html lang="en">


<!-- Mirrored from demo.w3layouts.com/demosWTR/Freedom/19-02-2020/traveling-freedom-demo_Free/1171185230/web/signup.html by HTTrack Website Copier/3.x [XR&CO'2014], Sat, 17 Oct 2020 04:37:51 GMT -->
<!-- Added by HTTrack -->
<meta http-equiv="content-type" content="text/html;charset=UTF-8" />
<!-- /Added by HTTrack -->
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta http-equiv="X-UA-Compatible" content="ie=edge">
<title>Tender Management System</title>
<link rel="stylesheet" href="assets/css/style-freedom.css">
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
	<!-- inner banner -->
	
	<!-- //covers -->
	<!-- form 34-2 -->
	<section class="w3l-form-34-main">
		<div class="w3l-book-9">
			<div class="main-top">
				<div class="wrapper padding-bord">
					<p class="form-para">
						<strong>My Profile.</strong>
					</p>
					<%
						ResultSet rs = DatabaseConnection.getResultFromSqlQuery("select * from tblvendor where vid='" + session.getAttribute("vid") + "'");
						if (rs.next()) {
					%>
					<form action="" method="">
						<div class="d-grid grid-col-2">
							<div class="ele-9its_grid">
								<p class="text-left"><strong>Vendor Id</p>
								<input type="text" name="vid" class="input"
									value="<%=rs.getString("vid")%>" readonly />
							</div>
							<div class="ele-9its_grid">
								<p class="text-left"><strong>Vendor Name</strong></p>
								<input type="text" name="vname" class="input"
									value="<%=rs.getString("vname")%>" readonly/>
							</div>
							
						</div>
						<div class="d-grid grid-col-2">
						<div class="ele-9its_grid">
								<p class="text-left"><strong>Email</strong></p>
								<input type="email" name="vemail" class="input"
									value="<%=rs.getString("vemail")%>" readonly/>
							</div>
							<div class="ele-9its_grid">
								<p class="text-left"><strong>Mobile No</strong></p>
								<input type="text" name="vmobile" class="input"
									value="<%=rs.getString("vmob")%>" readonly/>
							</div>
							
						</div>
						<div class="d-grid grid-col-2">
							<div class="ele-9its_grid">
								<p class="text-left"><strong>Company</strong></p>
								<input type="text" name="vcompany" class="input"
									value="<%=rs.getString("company")%>" readonly/>
							</div>
							<div class="ele-9its_grid">
								<p class="text-left"><strong>Address</strong></p>
								<input type="text" name="vaddress" class="input"
									value="<%=rs.getString("address")%>" readonly/>
							</div>
							
						</div>
						<div class="d-grid grid-col-2">
							<div class="ele-9its_grid">
								<p class="text-left"><strong>Password</strong></p>
								<input type="password" name="vpassword" class="input"
									value="<%=rs.getString("password")%>" readonly/>
							</div>
							<div class="ele-9its_grid">
								<p class="text-left"><strong>Created Date</strong></p>
								<input type="text" name="vendor_create" class="input"
									value="<%=rs.getString("vendor_create")%>" readonly/>
							</div>
						</div>
					</form>
					<%
						}
					%>
				</div>
			</div>
		</div>
	</section>
	<jsp:include page="footer.jsp"></jsp:include>
	<%
		} else {
	response.sendRedirect("index.jsp");
	}
	%>
</body>
</html>