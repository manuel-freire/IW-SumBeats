<%@ taglib prefix="s" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="sec"
	uri="http://www.springframework.org/security/tags"%>
<!DOCTYPE html>

<html>
<head>
<%@ include file="../jspf/head.jspf"%>
<link rel="stylesheet" type="text/css" href="../static/css/main.css">
</head>
<body>
	<%@ include file="../jspf/navbar.jspf"%>
	<div class="container-fluid illust-container">
		<sec:authorize access="isAnonymous()">
			<div class="row something-bad">
				<p>Necesitas Registrarte</p>
			</div>
		</sec:authorize>
		<sec:authorize access="isAuthenticated()">
			<div class="row">
				<div class="col-sm-12 user-profile">
					<div style="text-align: center; margin-bottom: 50px;">
						<img alt="user_profile_pic" src="../static/img/logUsu.png">
						<h3>${user.name}</h3>
						<p>${user.description}</p>
						<hr width="50%">
					</div>
				</div>
			</div>
			<div class="row">
				<div class="col-sm-3">
					<div class="project-view">
						<a href="/SumBeats/project"><img alt="pr1"
							src="../static/img/logPro.png"></a>
						<div class="caption">
							<p>Project Name #1</p>
						</div>
					</div>
				</div>
				<div class="col-sm-3">
					<div class="project-view">
						<a href="/SumBeats/project"><img alt="pr1"
							src="../static/img/logPro.png"></a>
						<div class="caption">
							<p>Project Name #1</p>
						</div>
					</div>
				</div>
				<div class="col-sm-3">
					<div class="project-view">
						<a href="/SumBeats/project"><img alt="pr1"
							src="../static/img/logPro.png"></a>
						<div class="caption">
							<p>Project Name #1</p>
						</div>
					</div>
				</div>
				<div class="col-sm-3">
					<div class="project-view">
						<a href="/SumBeats/project"><img alt="pr1"
							src="../static/img/logPro.png"></a>
						<div class="caption">
							<p>Project Name #1</p>
						</div>
					</div>
				</div>
				<div class="col-sm-3">
					<div class="project-view">
						<a href="/SumBeats/project"><img alt="pr1"
							src="../static/img/logPro.png"></a>
						<div class="caption">
							<p>Project Name #1</p>
						</div>
					</div>
				</div>
				<div class="col-sm-3">
					<div class="project-view">
						<a href="/SumBeats/project"><img alt="pr1"
							src="../static/img/logPro.png"></a>
						<div class="caption">
							<p>Project Name #1</p>
						</div>
					</div>
				</div>
				<div class="col-sm-3">
					<div class="project-view">
						<a href="/SumBeats/project"><img alt="pr1"
							src="../static/img/logPro.png"></a>
						<div class="caption">
							<p>Project Name #1</p>
						</div>
					</div>
				</div>
				<div class="col-sm-3">
					<div class="project-view">
						<a href="/SumBeats/project"><img alt="pr1"
							src="../static/img/logPro.png"></a>
						<div class="caption">
							<p>Project Name #1</p>
						</div>
					</div>
				</div>
				<div class="col-sm-3">
					<div class="project-view">
						<a href="/SumBeats/project"><img alt="pr1"
							src="../static/img/logPro.png"></a>
						<div class="caption">
							<p>Project Name #1</p>
						</div>
					</div>
				</div>
				<div class="col-sm-3">
					<div class="project-view">
						<a href="/SumBeats/project"><img alt="pr1"
							src="../static/img/logPro.png"></a>
						<div class="caption">
							<p>Project Name #1</p>
						</div>
					</div>
				</div>

			</div>
		</sec:authorize>
	</div>
</body>
</html>