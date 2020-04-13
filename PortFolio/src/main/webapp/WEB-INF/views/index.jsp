<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>	
	<meta charset="UTF-8">
	<meta name="viewport" content="width-device-width, initial-scale=1, shring-to-fit=no"/>
	<meta name="description" content=""/>
	<meta name="author" content=""/>
	
	<title>PortFolio</title>
	<!-- Font Awesome icons (free version)-->
	<script src="https://use.fontawesome.com/releases/v5.12.1/js/all.js" crossorigin="anonymous"></script>
	
	
	<script src="http://code.jquery.com/jquery-latest.js"></script>
	
	<!-- Google fonts-->
	<link href="https://fonts.googleapis.com/css?family=Merriweather+Sans:400,700" rel="stylesheet" />
	<link href="https://fonts.googleapis.com/css?family=Merriweather:400,300,300italic,400italic,700,700italic" rel="stylesheet" type="text/css" />
	
	<!-- Third party plugin CSS-->
	<link href="https://cdnjs.cloudflare.com/ajax/libs/magnific-popup.js/1.1.0/magnific-popup.min.css" rel="stylesheet" />
	
	<!-- Core theme CSS (includes Bootstrap)-->
	<link href="./resources/css/styles.css" rel="stylesheet" />
	<link href="./resources/css/dimLayerPopup.css" rel="stylesheet" />
	
	<script type="text/javascript">
	$(document).ready(function(){
		
		$('.btn-popup').click(function(){
			var $href = $(this).attr('href');
			layer_popup($href);
		});
		
		function layer_popup(el){
			
			var $el = $(el);		// 레이어의 id를 $el 변수에 저장
			var isDim = $(".dimBg").find("div");		//dimmed 레이어를 감지하기 위한 boolean 변수
			
			if(isDim){
				$('.dim-layer').fadeIn();
				$el.fadeIn();
			}
			
			var $elWidth = ~~($el.outerWidth()),
				$elHeight = ~~($el.outerHeight()),
				docWidth = $(document).width(),
				docHeight = $(document).height();
			
			//화면의 중앙에 레이어를 띄운다.
			if($elHeight < docHeight || $elWidth < docWidth){
				$el.css({
					marginTop : -$elHeight / 2,
					marginLeft : -$elWidth / 2
				})
			}else{
				$el.css({top: 0, left: 0});
			}
			
			$el.find('a.btn-layerClose').click(function(){
				if(isDim){
					$('.dim-layer').fadeOut();
					$el.fadeOut();
				}
				return false;
			});
			
			$('.layer .dimBg').click(function(){
				$('.dim-layer').fadeOut();
				return false;
			});
		}
		
		$(".language_icon").hover(function(){
			$(this).children('.img-label').css("visibility","visible");
		}, function(){
			$(".img-label").css("visibility","hidden");			
		});
		
	});
	</script>
</head>
<body id="page-top">
	<!-- Navigation -->
	<nav class="navbar navbar-expand-lg navbar-light fixed-top py-3" id="mainNav">
		<div class="container">
			<a class="navbar-brand js-scroll-trigger" href="#page-top">Home</a>
			<button class="navbar-toggler navbar-toggler-right" type="button" data-toggle="collapse" data-target="#navbarResponsive" aria-controls="navbarResponsive" aria-expanded="false" aria-label="Toggle navigation">
				<span class="navbar-toggler-icon"></span>
			</button>
		</div>
		<div class="collapse navbar-collapse" id="navbarResponsive">
			<ul class="navbar-nav ml-auto my-2 my-lg-0">
				<li class="nav-item"><a class="nav-link js-scroll-trigger" href="#about">About</a></li>
				<li class="nav-item"><a class="nav-link js-scroll-trigger" href="#services">Skills</a></li>
				<li class="nav-item"><a class="nav-link js-scroll-trigger" href="#portfolio">Project</a></li>
				<li class="nav-item"><a class="nav-link js-scroll-trigger" href="#contact">Contact</a></li>
			</ul>
		</div>
	</nav>
	
	<!-- Masthead-->
	<header class="masthead">
		<div class="container h-100">
			<div class="row h-100 align-items-center justify-content-center text-center">
				<div class="col-lg-10 align-self-end">
					<h1 class="text-uppercase text-white font-weight-bold">PortFolio</h1>
					<hr class="divider my-4" />
				</div>
				<div class="col-lg-8 align-self-baseline">
					<p class="text-white-75 font-weight-light mb-5">Start Bootstrap can help you build better websites using the Bootstrap framework! Just download a theme and start customizing, no strings attached!</p>
					<a class="btn btn-primary btn-xl js-scroll-trigger" href="#about">Find Out More</a>
				</div>
			</div>
		</div>
	</header>
	
	<!-- About section-->
	<section class="page-section bg-primary" id="about">
		<div class="container">
			<div class="row justify-content-center">
				<div class="col-lg-8 text-center">
					<h2 class="text-white mt-0">About Me</h2>
					<hr class="divider light my-4" />
					<p class="text-white-50 mb-4 text-left">
						어릴때부터 컴퓨터를 만지는걸 좋아하였고, 개인 홈페이지를 만들어보는 서비스를 접하고 이를 이용해보면서 개발자라는 직업에 매력을 느끼게되었습니다.<br/>
						그래서 대학도 컴퓨터전공으로 선택하게 되었고 자연스럽게 개발에 대해 많은것을 배우고 직접 개발해 볼 수 있었습니다.<br/> 
						그 중 Java가 가지고 있는 가능성과 다양성에 매력을 느끼게 되어 Java에 좀 더 집중해서 Java 개발자가 되기 위해 노력을 해왔습니다.
						<br/><br/>
						계속해서 발전하는 개발자가 되고 싶습니다.<br/>
						기술의 발전, 트렌드의 변화 등 여러가지 요소들에 의해 개발이라는 분야는 끊임없이 공부해야하는 분야라고 생각합니다.<br/>
						이러한 변화에 뒤쳐지지 않기 위해 끊임없이 공부하며, 변화를 뒤따라가는것만이 아닌 앞장서서 그 변화를 이끌어가는 개발자가 되고싶습니다.
					</p>
					<a class="btn btn-light btn-xl js-scroll-trigger" href="#services">Get Started!</a>
				</div>
			</div>
		</div>
	</section>
	
	<!-- Services section-->
	<section class="page-section" id="services">
		<div class="container">
			<h2 class="text-center mt-0">Skills</h2>
			<hr class="divider my-4" />
			<div class="row">
				<div class="col-lg-3 col-md-6 text-center">
					<a href="#language" class="btn-popup" >
						<div class="mt-5">
							<i class="fas fa-4x fa-globe text-primary mb-4"></i>
							<h3 class="h4 mb-2">Language</h3>
						</div>
					</a>
				</div>
				<div class="col-lg-3 col-md-6 text-center">
					<a href="#web" class="btn-popup">
						<div class="mt-5">
							<i class="fab fa-4x fa-internet-explorer text-primary mb-4"></i>
							<h3 class="h4 mb-2">Web Skills</h3>
						</div>
					</a>
				</div>
				<div class="col-lg-3 col-md-6 text-center">
					<a href="#database" class="btn-popup">
						<div class="mt-5">
							<i class="fas fa-4x fa-database text-primary mb-4"></i>
							<h3 class="h4 mb-2">DataBase</h3>
						</div>
					</a>
				</div>
				<div class="col-lg-3 col-md-6 text-center">
					<a href="#etc" class="btn-popup">
						<div class="mt-5">
							<i class="fas fa-4x fa-ellipsis-h text-primary mb-4"></i>
							<h3 class="h4 mb-2">etc</h3>
						</div>
					</a>
				</div>
			</div>
		</div>
		
		<div class="dim-layer">
			<div class="dimBg"></div>
				
			<!-- language -->
			<div id="language" class="pop-layer">
				<div class="pop-container">
					<div class="pop-conts">
						<div class="language_icon" style="background-image: url('./resources/assets/img/portfolio/Icon/C.png');">
							<div class="img-label">Basic</div>
						</div>
						&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
						<div class="language_icon" style="background-image: url('./resources/assets/img/portfolio/Icon/Cpp.png')">
							<div class="img-label">Basic</div>
						</div>
						&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
						<div class="language_icon" style="background-image: url('./resources/assets/img/portfolio/Icon/Java.png')">
							<div class="img-label">Intermediate</div>
						</div>
						&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
						<div class="language_icon" style="background-image: url('./resources/assets/img/portfolio/Icon/Javascript.png')">
							<div class="img-label">Intermediate</div>
						</div>
						<div class="btn-r"><a href="#" class="btn-layerClose">Close</a></div>
					</div>
				</div>
			</div>
			
			<!-- Web Skills -->
			<div id="web" class="pop-layer">
				<div class="pop-container">
					<div class="pop-conts">
						<div class="language_icon" style="background-image: url('./resources/assets/img/portfolio/Icon/html.png')">
							<div class="img-label">Intermediate</div>
						</div>
						&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
						<div class="language_icon" style="background-image: url('./resources/assets/img/portfolio/Icon/css.png')">
							<div class="img-label">Intermediate</div>
						</div>
						&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
						<div class="language_icon" style="background-image: url('./resources/assets/img/portfolio/Icon/Javascript.png')">
							<div class="img-label">Intermediate</div>
						</div>
						&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
						<div class="language_icon" style="background-image: url('./resources/assets/img/portfolio/Icon/jQuery.png')">
							<div class="img-label">Intermediate</div>
						</div>
						<div class="btn-r"><a href="#" class="btn-layerClose">Close</a></div>
					</div>
				</div>
			</div>
				
			<!-- Database -->
			<div id="database" class="pop-layer">
				<div class="pop-container">
					<div class="pop-conts">
						<div class="language_icon" style="background-image: url('./resources/assets/img/portfolio/Icon/mssql.png')">
							<div class="img-label">Intermediate</div>
						</div>
						&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
						<div class="language_icon" style="background-image: url('./resources/assets/img/portfolio/Icon/mysql.png')">
							<div class="img-label">Basic</div>
						</div>
						<div class="btn-r"><a href="#" class="btn-layerClose">Close</a></div>
					</div>
				</div>
			</div>
			
			<!-- etc -->
			<div id="etc" class="pop-layer">
				<div class="pop-container">
					<div class="pop-conts">
						<div class="language_icon" style="background-image: url('./resources/assets/img/portfolio/Icon/spring.png')">
							<div class="img-label">Intermediate</div>
						</div>
						&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
						<div class="language_icon" style="background-image: url('./resources/assets/img/portfolio/Icon/github.png')">
							<div class="img-label">basic</div>
						</div>
						<div class="btn-r"><a href="#" class="btn-layerClose">Close</a></div>
					</div>
				</div>
			</div>
			
		</div>
	</section>
	
	<!-- Portfolio section-->
	<section id="portfolio">
		<div class="container-fluid p-0">
			<div class="row no-gutters">
				<div class="col-lg-4 col-sm-6">
					<a class="portfolio-box" href="./resources/assets/img/portfolio/fullsize/1.jpg">
						<img class="img-fluid" src="./resources/assets/img/portfolio/thumbnails/1.jpg" alt="" />
						<div class="portfolio-box-caption">
							<div class="project-category text-white-50">Category</div>
							<div class="project-name">Project Name</div>
						</div>
					</a>
				</div>
				<div class="col-lg-4 col-sm-6">
					<a class="portfolio-box" href="./resources/assets/img/portfolio/fullsize/2.jpg">
						<img class="img-fluid" src="./resources/assets/img/portfolio/thumbnails/2.jpg" alt="" />
						<div class="portfolio-box-caption">
							<div class="project-category text-white-50">Category</div>
							<div class="project-name">Project Name</div>
						</div>
					</a>
				</div>
				<div class="col-lg-4 col-sm-6">
					<a class="portfolio-box" href="./resources/assets/img/portfolio/fullsize/3.jpg">
					<img class="img-fluid" src="./resources/assets/img/portfolio/thumbnails/3.jpg" alt="" />
						<div class="portfolio-box-caption">
							<div class="project-category text-white-50">Category</div>
							<div class="project-name">Project Name</div>
						</div>
					</a>
				</div>
				<div class="col-lg-4 col-sm-6">
					<a class="portfolio-box" href="./resources/assets/img/portfolio/fullsize/4.jpg">
						<img class="img-fluid" src="./resources/assets/img/portfolio/thumbnails/4.jpg" alt="" />
						<div class="portfolio-box-caption">
							<div class="project-category text-white-50">Category</div>
							<div class="project-name">Project Name</div>
						</div>
					</a>
				</div>
				<div class="col-lg-4 col-sm-6">
					<a class="portfolio-box" href="./resources/assets/img/portfolio/fullsize/5.jpg">
						<img class="img-fluid" src="./resources/assets/img/portfolio/thumbnails/5.jpg" alt="" />
						<div class="portfolio-box-caption">
							<div class="project-category text-white-50">Category</div>
							<div class="project-name">Project Name</div>
						</div>
					</a>
				</div>
				<div class="col-lg-4 col-sm-6">
					<a class="portfolio-box" href="./resources/assets/img/portfolio/fullsize/6.jpg">
						<img class="img-fluid" src="./resources/assets/img/portfolio/thumbnails/6.jpg" alt="" />
						<div class="portfolio-box-caption p-3">
							<div class="project-category text-white-50">Category</div>
							<div class="project-name">Project Name</div>
						</div>
					</a>
				</div>
			</div>
		</div>
	</section>
	
	<!-- Call to action section
	<section class="page-section bg-dark text-white">
		<div class="container text-center">
			<h2 class="mb-4">Free Download at Start Bootstrap!</h2>
			<a class="btn btn-light btn-xl" href="https://startbootstrap.com/themes/creative/">Download Now!</a>
		</div>
	</section>
	 -->
	 
	<!-- Contact section-->
	<section class="page-section" id="contact">
		<div class="container">
			<div class="row justify-content-center">
				<div class="col-lg-8 text-center">
					<h2 class="mt-0">Contact!</h2>
					<hr class="divider my-4" />
				</div>
			</div>
			<div class="row">
				<div class="col-lg-4 ml-auto text-center mb-5 mb-lg-0">
					<i class="fas fa-phone fa-3x mb-3 text-muted"></i>
					<div>010-5125-5525</div>
				</div>
				<div class="col-lg-4 mr-auto text-center">
					<i class="fas fa-envelope fa-3x mb-3 text-muted"></i>
					<!-- Make sure to change the email address in BOTH the anchor text and the link target below!-->
					<a class="d-block" href="mailto:jinwoo0608@naver.com@yourwebsite.com">jinwoo0608@naver.com</a>
				</div>
			</div>
		</div>
	</section>
	<!-- Footer-->
	<footer class="bg-light py-5">
	</footer>
	
	<!-- Bootstrap core JS-->
	<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
	<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.bundle.min.js"></script>
	<!-- Third party plugin JS-->
	<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery-easing/1.4.1/jquery.easing.min.js"></script>
	<script src="https://cdnjs.cloudflare.com/ajax/libs/magnific-popup.js/1.1.0/jquery.magnific-popup.min.js"></script>
	<!-- Core theme JS-->
	<script src="./resources/js/scripts.js"></script>
</body>
</html>
