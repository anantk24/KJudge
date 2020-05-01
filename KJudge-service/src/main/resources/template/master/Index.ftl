<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="UTF-8">
	<meta content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0"
	      name="viewport">
	<meta content="ie=edge" http-equiv="X-UA-Compatible">
	<title>${pageTitle}</title>
	<link href="/resources/bootstrap/css/bootstrap.min.css" rel="stylesheet"/>
	<link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.8.2/css/all.min.css" rel="stylesheet"/>
	<link href="https://fonts.googleapis.com/css?family=Merriweather&display=swap" rel="stylesheet"/>
	<style type="text/css">
			*:not(i) {
				font-family: 'Merriweather', serif !important;
				outline: none !important;
			}
			.navbar-brand {
				margin-right: 50px;
			}

	</style>
</head>
<body>
<nav class="navbar navbar-expand-lg navbar-light bg-light">
	<a class="navbar-brand" href="#">
		<img height="30" src="img/logo_color.svg">
	</a>
	<button aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation"
	        class="navbar-toggler" data-target="#navbarSupportedContent" data-toggle="collapse" type="button">
		<span class="navbar-toggler-icon"></span>
	</button>

	<div class="collapse navbar-collapse" id="navbarSupportedContent">
		<ul class="navbar-nav mr-auto">
			<li class="nav-item active">
				<a class="nav-link" href="#">Home <span class="sr-only">(current)</span></a>
			</li>
			<li class="nav-item">
				<a class="nav-link" href="#">Product</a>
			</li>

			<li class="nav-item dropdown">
				<a aria-expanded="false" aria-haspopup="true" class="nav-link dropdown-toggle" data-toggle="dropdown"
				   href="#" id="navbarDropdown" role="button">
					Solutions
				</a>
				<div aria-labelledby="navbarDropdown" class="dropdown-menu">
					<a class="dropdown-item" href="#">Retail</a>
					<a class="dropdown-item" href="#">Banking</a>
					<a class="dropdown-item" href="#">QSRs</a>
					<a class="dropdown-item" href="#">Convenience stores</a>
					<a class="dropdown-item" href="#">Hospitality</a>
					<div class="dropdown-divider"></div>
					<a class="dropdown-item" href="#">Others</a>
				</div>
			</li>

			<li class="nav-item dropdown">
				<a aria-expanded="false" aria-haspopup="true" class="nav-link dropdown-toggle" data-toggle="dropdown"
				   href="#" id="navbarDropdown" role="button">
					About
				</a>
				<div aria-labelledby="navbarDropdown" class="dropdown-menu">
					<a class="dropdown-item" href="#">About us</a>
					<a class="dropdown-item" href="#">Careers</a>
					<a class="dropdown-item" href="#">Management</a>
				</div>
			</li>

			<li class="nav-item dropdown">
				<a aria-expanded="false" aria-haspopup="true" class="nav-link dropdown-toggle" data-toggle="dropdown"
				   href="#" id="navbarDropdown" role="button">
					Resources
				</a>
				<div aria-labelledby="navbarDropdown" class="dropdown-menu">
					<a class="dropdown-item" href="#">Blogs</a>
					<a class="dropdown-item" href="#">Case studies</a>
					<a class="dropdown-item" href="#">Datasheets</a>
					<a class="dropdown-item" href="#">Events</a>
					<a class="dropdown-item" href="#">Use cases</a>
					<a class="dropdown-item" href="#">Videos</a>
					<a class="dropdown-item" href="#">Whitepapers</a>
				</div>
			</li>

			<li class="nav-item">
				<a class="nav-link" href="#">Press</a>
			</li>

			<li class="nav-item dropdown">
				<a aria-expanded="false" aria-haspopup="true" class="nav-link dropdown-toggle" data-toggle="dropdown"
				   href="#" id="navbarDropdown" role="button">
					Others
				</a>
				<div aria-labelledby="navbarDropdown" class="dropdown-menu">
					<a class="dropdown-item">
						<button class="btn btn-block btn-primary" type="button">Gartner reports</button>
					</a>
					<a class="dropdown-item">
						<button class="btn btn-block btn-primary" type="button">Request demo</button>
					</a>
				</div>
			</li>
		</ul>
		<form class="form-inline my-2 my-lg-0">
			<input aria-label="Search" class="form-control mr-sm-2" placeholder="Search" type="search">
			<button class="btn btn-success my-2 my-sm-0" type="submit">
				<i class="fa fa-search"></i>
			</button>
		</form>
	</div>
</nav>

<div class="container">
	${pageBody}
</div>

</body>
<script src="/resources/jquery/jquery.min.js" type="text/javascript"></script>
<script src="/resources/bootstrap/js/bootstrap.min.js" type="text/javascript"></script>
</html>