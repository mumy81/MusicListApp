<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">
<link rel='stylesheet'
	href='${pageContext.request.contextPath}/webjars/bootstrap/3.1.0/css/bootstrap.min.css'>

<link rel="stylesheet"
	href="${pageContext.request.contextPath}/css/style.css">
<title>Albüm Oluşturma</title>
</head>
<body>
	<div class="container">

		<!-- Static navbar -->
		<div class="navbar navbar-default" role="navigation">
			<div class="container-fluid">
				<div class="navbar-header">
					<a class="navbar-brand" href="${pageContext.request.contextPath}">MusicList</a>
				</div>
				<div class="navbar-collapse collapse">
					<ul class="nav navbar-nav">
						<li class="active"><a
							href="${pageContext.request.contextPath}">Ana Panel</a></li>
						<li><a href="#">Albümler</a></li>


					</ul>
					<ul class="nav navbar-nav navbar-right">
						<li class="active"><a href="#">Panel</a></li>
						<li><a href="/MusicListApp">Hesabım</a></li>
					</ul>
				</div>
				<!--/.nav-collapse -->
			</div>
			<!--/.container-fluid -->
		</div>

		<!-- /container -->


		<div class="col-sm-3 col-md-2 sidebar">
			<ul class="nav nav-sidebar">
				<li><a href="${pageContext.request.contextPath}/albums">Albümler</a></li>
				<li><a href="${pageContext.request.contextPath}/create_album">Albüm
						Ekle</a></li>

			</ul>
		</div>

		<div class="col-sm-9 col-md-10 main">

			<div class="row">
				<form action="${pageContext.request.contextPath}/do_create_album"
					role="form" method="POST" class="col-md-9 go-right">
					<h2>Albüm Oluşturma</h2>
					<p></p>
					<div class="form-group">
						Albüm Adı: <br> <input id="name" name="name" type="text"
							class="form-control" required>
					</div>
					<div class="form-group">
						Sanatçı Adı: <br> <input id="artist" name="artist"
							type="text" class="form-control" required>

					</div>
					<div class="form-group">
						Tarihi: <br> <input id="date" name="date" type="text"
							class="form-control" required>

					</div>
					<div class="form-group">
						<input type="submit" value="Gönder">
					</div>
				</form>

			</div>


		</div>
	</div>



</body>
</html>