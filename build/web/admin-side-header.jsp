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
							<li><a href="admin-dashboard.jsp" class="link-nav">Home</a></li>
							<li><a href="view-all-venders.jsp" class="link-nav">Vendors</a></li>
							<li><label for="drop-3" class="toggle toogle-2">Tenders
							<span class="fa fa-angle-down" aria-hidden="true"></span>
							</label> <a href="#blog" class="link-nav dropdown-toggle">Tenders <span
									class="fa fa-angle-down" aria-hidden="true"></span></a> <input
								type="checkbox" id="drop-3" />
								<ul>
									<li><a href="view-admin-all-tenders.jsp">All Tenders</a></li>
									<li><a href="create-new-tender.jsp">Create New Tender</a></li>
									<li><a href="view-tender-bids.jsp">Approve Tender Bids</a></li>
									<li><a href="view-assigned-tenders.jsp">Assigned Tenders</a></li>
								</ul></li>
							<li><label for="drop-3" class="toggle toogle-2">Notice
							<span class="fa fa-angle-down" aria-hidden="true"></span>
							</label> <a href="#blog" class="link-nav dropdown-toggle">Notice <span
									class="fa fa-angle-down" aria-hidden="true"></span></a> <input
								type="checkbox" id="drop-3" />
								<ul>
									<li><a href="add-notice.jsp">Add Notice</a></li>
									<li><a href="remove-notice.jsp">Remove Notice</a></li>
									<li><a href="edit-notice.jsp">Update Notice</a></li>
									<li><a href="view-all-notice.jsp">View All Notice</a></li>
								</ul></li>
							<li><label for="drop-3" class="toggle toogle-2">Admin
							<span class="fa fa-angle-down" aria-hidden="true"></span>
							</label> <a href="#blog" class="link-nav dropdown-toggle">Admin <span
									class="fa fa-angle-down" aria-hidden="true"></span></a> <input
								type="checkbox" id="drop-3" />
								<ul>
									<li><a href="view-admin-profile.jsp">View Profile</a></li>
									<li><a href="admin-change-password.jsp">Change Password</a></li>
									<li><a href="logout.jsp">Log Out</a></li>
								</ul></li>
							<li class="nav-right-sty"><a href="" class="actionbg"><%=session.getAttribute("uname")%></a></li>
						</ul>
					</nav>
				</div>
			</div>
		</div>
	</header>
</div>