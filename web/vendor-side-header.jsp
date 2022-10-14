<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<div class="w3l-headers-9">
	<header>
		<div class="wrapper">
			<div class="header">
				<div>
					<h1>
						<a href="index.jsp" class="logo">TMS</a>
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
							<li><a href="vendor-dashboard.jsp" class="link-nav">Home</a></li>
							<li><label for="drop-3" class="toggle toogle-2">Tenders
									<span class="fa fa-angle-down" aria-hidden="true"></span>
							</label> <a href="#blog" class="link-nav dropdown-toggle">Tenders <span
									class="fa fa-angle-down" aria-hidden="true"></span></a> <input
								type="checkbox" id="drop-3" />
								<ul>
									<li><a href="view-all-tenders.jsp">View All Tenders</a></li>
									<li><a href="bidForTender.jsp">Bid For A Tender</a></li>
									<li><a href="bid-history.jsp">Bidding History</a></li>
									<li><a href="bid-status.jsp">Bid Status</a></li>
								</ul></li>
							<li><label for="drop-3" class="toggle toogle-2">Account
									<span class="fa fa-angle-down" aria-hidden="true"></span>
							</label> <a href="#blog" class="link-nav dropdown-toggle">Account <span
									class="fa fa-angle-down" aria-hidden="true"></span></a> <input
								type="checkbox" id="drop-3" />
								<ul>
									<li><a href="vendor-profile.jsp">Vendor Profile</a></li>
									<li><a href="vendor-profile-update.jsp">Update Profile</a></li>
									<li><a href="vendor-change-password.jsp">Change Password</a></li>
									<li><a href="logout.jsp">Log Out</a></li>
								</ul></li>
							<li class="nav-right-sty"><a href="" class="actionbg"><%=session.getAttribute("vname") %></a></li>
						</ul>
					</nav>
				</div>
			</div>
		</div>
	</header>
</div>