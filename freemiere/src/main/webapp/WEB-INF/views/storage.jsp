<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>

<head>

<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta name="description" content="">
<meta name="author" content="">
<!--파일 폴더 클릭시 배경색 변경  -->
<style type="text/css">
	.highlight{
 		background: '#ccebff';
		}
</style>

<title>FREEMIERE STORAGE</title>


 <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
 
<!-- 새폴더 modal CSS -->
<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">

<!-- Bootstrap Core CSS -->
<link href="resources/vendor/bootstrap/css/bootstrap.css"
	rel="stylesheet">

<!-- MetisMenu CSS -->
<link href="resources/vendor/metisMenu/metisMenu.min.css"
	rel="stylesheet">

<!-- Custom CSS -->
<link href="resources/dist/css/sb-admin-2.css" rel="stylesheet">

<!-- Custom Fonts -->
<link href="resources/vendor/font-awesome/css/font-awesome.min.css"
	rel="stylesheet" type="text/css">

<!-- Storage CSS -->
<link href="resources/css/storage/storage.css" rel="stylesheet">
<!-- Storage context -->
<link href="resources/css/storage/context.css" rel="stylesheet">

<link href="resources/vendor/colorBox/colorbox.css" rel="stylesheet">
<!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
<!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
<!--[if lt IE 9]>
        <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
        <script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>
    <![endif]-->

</head>

<body>
<!-- 새폴더 id resources/js/storage 자바스크립트 처리 ===========-->
<div id="newFolder" class="w3-modal"></div>
<!-- ========================================================== -->
<div id="sharedSet"></div>
<!-- ========================================================== -->
	<div id="wrapper">

		<!-- Navigation -->
		<nav class="navbar navbar-default navbar-static-top" role="navigation"
			style="margin-bottom: 0">
			<div class="navbar-header">
				<button type="button" class="navbar-toggle" data-toggle="collapse"
					data-target=".navbar-collapse">
					<span class="sr-only">Toggle navigation</span> <span
						class="icon-bar"></span> <span class="icon-bar"></span> <span
						class="icon-bar"></span>
				</button>
				<a class="navbar-brand">Freemiere - Storage :</a>
				<span id="navigator"> </span>
							<span id="navigator"> </span>
					
			</div>
			<!-- /.navbar-header -->
			

			<ul class="nav navbar-top-links navbar-right">
				<li class="dropdown"><a class="dropdown-toggle"
					data-toggle="dropdown" href="#"> <i
						class="fa fa-envelope fa-fw"></i> <i class="fa fa-caret-down"></i>
				</a>
					<ul class="dropdown-menu dropdown-messages">
						<li><a href="#">
								<div>
									<strong>John Smith</strong> <span class="pull-right text-muted">
										<em>Yesterday</em>
									</span>
								</div>
								<div>Lorem ipsum dolor sit amet, consectetur adipiscing
									elit. Pellentesque eleifend...</div>
						</a></li>
						<li class="divider"></li>
						<li><a href="#">
								<div>
									<strong>John Smith</strong> <span class="pull-right text-muted">
										<em>Yesterday</em>
									</span>
								</div>
								<div>Lorem ipsum dolor sit amet, consectetur adipiscing
									elit. Pellentesque eleifend...</div>
						</a></li>
						<li class="divider"></li>
						<li><a href="#">
								<div>
									<strong>John Smith</strong> <span class="pull-right text-muted">
										<em>Yesterday</em>
									</span>
								</div>
								<div>Lorem ipsum dolor sit amet, consectetur adipiscing
									elit. Pellentesque eleifend...</div>
						</a></li>
						<li class="divider"></li>
						<li><a class="text-center" href="#"> <strong>Read
									All Messages</strong> <i class="fa fa-angle-right"></i>
						</a></li>
					</ul> <!-- /.dropdown-messages --></li>
				<!-- /.dropdown -->
				<li class="dropdown"><a class="dropdown-toggle"
					data-toggle="dropdown" href="#"> <i class="fa fa-tasks fa-fw"></i>
						<i class="fa fa-caret-down"></i>
				</a>
					<ul class="dropdown-menu dropdown-tasks">
						<li><a href="#">
								<div>
									<p>
										<strong>Task 1</strong> <span class="pull-right text-muted">40%
											Complete</span>
									</p>
									<div class="progress progress-striped active">
										<div class="progress-bar progress-bar-success"
											role="progressbar" aria-valuenow="40" aria-valuemin="0"
											aria-valuemax="100" style="width: 40%">
											<span class="sr-only">40% Complete (success)</span>
										</div>
									</div>
								</div>
						</a></li>
						<li class="divider"></li>
						<li><a href="#">
								<div>
									<p>
										<strong>Task 2</strong> <span class="pull-right text-muted">20%
											Complete</span>
									</p>
									<div class="progress progress-striped active">
										<div class="progress-bar progress-bar-info" role="progressbar"
											aria-valuenow="20" aria-valuemin="0" aria-valuemax="100"
											style="width: 20%">
											<span class="sr-only">20% Complete</span>
										</div>
									</div>
								</div>
						</a></li>
						<li class="divider"></li>
						<li><a href="#">
								<div>
									<p>
										<strong>Task 3</strong> <span class="pull-right text-muted">60%
											Complete</span>
									</p>
									<div class="progress progress-striped active">
										<div class="progress-bar progress-bar-warning"
											role="progressbar" aria-valuenow="60" aria-valuemin="0"
											aria-valuemax="100" style="width: 60%">
											<span class="sr-only">60% Complete (warning)</span>
										</div>
									</div>
								</div>
						</a></li>
						<li class="divider"></li>
						<li><a href="#">
								<div>
									<p>
										<strong>Task 4</strong> <span class="pull-right text-muted">80%
											Complete</span>
									</p>
									<div class="progress progress-striped active">
										<div class="progress-bar progress-bar-danger"
											role="progressbar" aria-valuenow="80" aria-valuemin="0"
											aria-valuemax="100" style="width: 80%">
											<span class="sr-only">80% Complete (danger)</span>
										</div>
									</div>
								</div>
						</a></li>
						<li class="divider"></li>
						<li><a class="text-center" href="#"> <strong>See
									All Tasks</strong> <i class="fa fa-angle-right"></i>
						</a></li>
					</ul> <!-- /.dropdown-tasks --></li>
				<!-- /.dropdown -->
				<li class="dropdown"><a class="dropdown-toggle"
					data-toggle="dropdown" href="#"> <i class="fa fa-bell fa-fw"></i>
						<i class="fa fa-caret-down"></i>
				</a>
					<ul class="dropdown-menu dropdown-alerts">
						<li><a href="#">
								<div>
									<i class="fa fa-comment fa-fw"></i> New Comment <span
										class="pull-right text-muted small">4 minutes ago</span>
								</div>
						</a></li>
						<li class="divider"></li>
						<li><a href="#">
								<div>
									<i class="fa fa-twitter fa-fw"></i> 3 New Followers <span
										class="pull-right text-muted small">12 minutes ago</span>
								</div>
						</a></li>
						<li class="divider"></li>
						<li><a href="#">
								<div>
									<i class="fa fa-envelope fa-fw"></i> Message Sent <span
										class="pull-right text-muted small">4 minutes ago</span>
								</div>
						</a></li>
						<li class="divider"></li>
						<li><a href="#">
								<div>
									<i class="fa fa-tasks fa-fw"></i> New Task <span
										class="pull-right text-muted small">4 minutes ago</span>
								</div>
						</a></li>
						<li class="divider"></li>
						<li><a href="#">
								<div>
									<i class="fa fa-upload fa-fw"></i> Server Rebooted <span
										class="pull-right text-muted small">4 minutes ago</span>
								</div>
						</a></li>
						<li class="divider"></li>
						<li><a class="text-center" href="#"> <strong>See
									All Alerts</strong> <i class="fa fa-angle-right"></i>
						</a></li>
					</ul> <!-- /.dropdown-alerts --></li>
				<!-- /.dropdown -->
				<li class="dropdown"><a class="dropdown-toggle"
					data-toggle="dropdown" href="#"> <i class="fa fa-user fa-fw"></i>
						<i class="fa fa-caret-down"></i>
				</a>
					<ul class="dropdown-menu dropdown-user">
						<li><a href="#"><i class="fa fa-user fa-fw"></i> User
								Profile</a></li>
						<li><a href="#"><i class="fa fa-gear fa-fw"></i> Settings</a>
						</li>
						<li class="divider"></li>
						<li><a href="login.html"><i class="fa fa-sign-out fa-fw"></i>
								Logout</a></li>
					</ul> <!-- /.dropdown-user --></li>
				<!-- /.dropdown -->
			</ul>
			<!-- /.navbar-top-links -->

			<div class="navbar-default sidebar" role="navigation">
				<div class="sidebar-nav navbar-collapse">
					<ul class="nav" id="side-menu">
						<li class="sidebar-search">
							<div class="input-group custom-search-form">
								<input type="text" class="form-control" placeholder="Search...">
								<span class="input-group-btn">
									<button class="btn btn-default" type="button">
										<i class="fa fa-search"></i>
									</button>
								</span>
							</div> <!-- /input-group -->
						</li>
						<li><a id='myStorage' class='sideMenu'><i class="fa fa-dashboard fa-fw"></i> 내 저장소</a></li>
						<li><a id='shared' class='sideMenu'><i
								class="fa fa-sitemap fa-fw"></i> 공유 저장소</a></li>
						<li><a id='recent' class='sideMenu'><i class="fa fa-bar-chart-o fa-fw"></i> 최근 사용 저장소</a></li>
						<li><a id='bookMark' class='sideMenu'><i
								class="fa fa-edit fa-fw"></i> 즐겨찾기</a></li>
						<li><a id='trash' class='sideMenu'><i class="fa fa-trash fa-fw"></i> 휴지통</a></li>
						
							
					</ul>
				</div>
				<!-- /.sidebar-collapse -->
			</div>
			<!-- /.navbar-static-side -->
		</nav>

		<!-- Page Content -->
		<div id="page-wrapper">
			<div class="container-fluid">
				<div class="row">
					<div class="col-lg-12">
						<div class="container-fluid" id = "setNavTop">
						</div>
						</nav>
					</div>
				</div>
				<!-- /.row -->
				<div id="dragDropZone">
					<div id="outputList"></div>
				<!-- 
					하단메뉴
					<nav class="navbar navbar-inverse navbar-fixed-bottom">
						<div class="container-fluid">
						<ul class="nav navbar-nav">
								<li class="active"><a href="#"> <input type="button"
										class="btn btn-primary" id="btn-all" value="전체선택">
								</a></li>
								<li><a href="#"> <input type="button"
										class="btn btn-primary" id="btn-del" value="삭제">
								</a></li>
								<li><a href="#"> <input type="button"
										class="btn btn-primary" id="btn-add" value="새폴더">
								</a></li>
								<li><a href="#"> <input type="button"
										class="btn btn-primary" value="다운로드">
								</a></li>
										</form>

								</a></li>
					</nav> -->

				</div>
						<!--/#dragDropZone  -->
				</div>
				<!-- /#page-wrapper -->
			</div>

			<!-- /#wrapper -->
	
			<!-- MODAL -->
			<div class="modal fade" id="modal-register" tabindex="-1"
				role="dialog" aria-labelledby="modal-register-label"
				aria-hidden="true">
				<div class="modal-dialog">
					<div class="modal-content">
						<div class="modal-header">
							<button type="button" class="close" data-dismiss="modal">
								<span aria-hidden="true">&times;</span><span class="sr-only">Close</span>
							</button>
							<h3 class="modal-title" id="modal-register-label">새 폴더 만들기</h3>
						</div>
						<div class="modal-body">
							<form role="form" action="" method="post"
								class="registration-form">
								<div class="form-group">
									<label class="sr-only" for="form-first-name">새폴더</label> <input
										type="text" name="form-first-name" placeholder="폴더명을 입력하세요"
										class="form-first-name form-control" id="form-first-name">
								</div>
								<button type="submit" class="btn">확인</button>
							</form>
						</div>
					</div>
				</div>
			</div>
	
			<script>
				var loginMem = '${loginMem}';
			</script>
			
			<div id="test2"></div>
			<div id="test"></div>
	
	
			
			<!-- jQuery -->
			<script src="resources/vendor/jquery/jquery.min.js"></script>

			<!-- Bootstrap Core JavaScript -->
			<script src="resources/vendor/bootstrap/js/bootstrap.min.js"></script>

			<!-- Metis Menu Plugin JavaScript -->
			<script src="resources/vendor/metisMenu/metisMenu.min.js"></script>

			<script src="resources/vendor/colorBox/jquery.colorbox-min.js"></script>

			<!-- Custom Theme JavaScript -->
			<script src="resources/dist/js/sb-admin-2.js"></script>

			<!-- Storage JavaScript -->
			<script src="resources/js/storage/storage.js"></script>
			<!-- Storage 우클릭 이벤트 -->
			<script src="resources/js/storage/rightMouse.js"></script>
			
			<script src="resources/newDirModal/js/jquery.backstretch.min.js"></script>
			<script src="resources/newDirModal/js/scripts.js"></script>
</body>

</html>
