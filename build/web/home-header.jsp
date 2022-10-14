<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<div class="w3l-headers-9">
	<header>
		<div class="wrapper">
			<div class="header">
				<div>
					<h1>
						<a href="index.jsp" class="logo">Tender Management System</a>
						<!-- if logo is image enable this   
						<a class="logo" href="index.html">
							<img src="image-path" alt="Your logo" title="Your logo" style="height:35px;" />
						</a> -->
					</h1>
				</div>
				<div class="bottom-menu-content">
					<input type="checkbox" id="nav" /> <label for="nav"
						class="menu-bar"></label>
					<nav>
						<ul class="menu">
							<li><a href="index.jsp" class="link-nav">Home</a></li>
							<li><a href="about.jsp" class="link-nav">About</a></li>
							<li><label for="drop-3" class="toggle toogle-2">Sign In
									<span class="fa fa-angle-down" aria-hidden="true"></span>
							</label> <a href="#blog" class="link-nav dropdown-toggle">Sign In <span
									class="fa fa-angle-down" aria-hidden="true"></span></a> <input
								type="checkbox" id="drop-3" />
								<ul>
									<li><a href="vendor-Login.jsp">Vendor Login</a></li>
									<li><a href="admin-Login.jsp">Admin Login</a></li>
									<li><a href="vendor-register.jsp">Vendor Register</a></li>
								</ul></li>
							<li><a href="contact.jsp" class="link-nav">Contact Us</a></li>
						</ul>
					</nav>
				</div>
			</div>
		</div>
	</header>
</div>