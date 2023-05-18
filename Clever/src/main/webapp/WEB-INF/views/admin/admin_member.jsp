<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width,initial-scale=1">
    <title>Focus - Bootstrap Admin Dashboard </title>
    <!-- Favicon icon -->
    <link rel="icon" type="image/png" sizes="16x16" href="${pageContext.request.contextPath }/resources/images/favicon.png">
    <!-- Summernote -->
    <link href="${pageContext.request.contextPath }/resources/vendor/summernote/summernote.css" rel="stylesheet">
    <!-- Custom Stylesheet -->
    <link href="${pageContext.request.contextPath }/resources/css/style.css" rel="stylesheet">

</head>

<body>

    <!--*******************
        Preloader start
    ********************-->
    <div id="preloader">
        <div class="sk-three-bounce">
            <div class="sk-child sk-bounce1"></div>
            <div class="sk-child sk-bounce2"></div>
            <div class="sk-child sk-bounce3"></div>
        </div>
    </div>
    <!--*******************
        Preloader end
    ********************-->


    <!--**********************************
        Main wrapper start
    ***********************************-->
    <div id="main-wrapper">

		<!-- 네비게이션 헤더 시작 -->
		<header>
			<jsp:include page="../inc/admin_nav_header.jsp"></jsp:include>
		</header>
		<!-- 네비게이션 헤더 끝 -->

		<!-- 상단 헤더 시작 -->
        <header>
			<jsp:include page="../inc/admin_header.jsp"></jsp:include>
        </header>
		<!-- 상단 헤더 끝 -->


		<!-- 사이드바 시작 -->
		<header>
			<jsp:include page="../inc/admin_sidebar.jsp"></jsp:include>
		</header>
		<!-- 사이드바 끝 -->


        <!--**********************************
            Content body start
        ***********************************-->
        <div class="content-body">
            <div class="container-fluid">
                <div class="row page-titles mx-0">
                    <div class="col-sm-6 p-md-0">
                        <div class="welcome-text">
                            <h4>Hi, welcome back!</h4>
                            <p class="mb-0">Your business dashboard template</p>
                        </div>
                    </div>
                    <div class="col-sm-6 p-md-0 justify-content-sm-end mt-2 mt-sm-0 d-flex">
                        <ol class="breadcrumb">
                            <li class="breadcrumb-item"><a href="javascript:void(0)">Form</a></li>
                            <li class="breadcrumb-item active"><a href="javascript:void(0)">Summernote</a></li>
                        </ol>
                    </div>
                </div>
                <!-- row -->
                <div class="row">
                    <div class="col-xl-12 col-xxl-12">
                        <div class="card">
                            <div class="card-header">
                                <h4 class="card-title">Summernote Editor</h4>
                            </div>
                            <div class="card-body">
                                <div class="summernote"></div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!--**********************************
            Content body end
        ***********************************-->


		<!-- footer 시작 -->
		<footer>
			<jsp:include page="../inc/admin_footer.jsp"></jsp:include>
		</footer>
		<!-- footer 끝 -->


        <!--**********************************
           Support ticket button start
        ***********************************-->

        <!--**********************************
           Support ticket button end
        ***********************************-->

        
    </div>
    <!--**********************************
        Main wrapper end
    ***********************************-->

    <!--**********************************
        Scripts
    ***********************************-->
    <!-- Required vendors -->
    <script src="${pageContext.request.contextPath }/resources/vendor/global/global.min.js"></script>
    <script src="${pageContext.request.contextPath }/resources/js/quixnav-init.js"></script>
    <script src="${pageContext.request.contextPath }/resources/js/custom.min.js"></script>
    

    <!-- Summernote -->
    <script src="${pageContext.request.contextPath }/resources/vendor/summernote/js/summernote.min.js"></script>
    <!-- Summernote init -->
    <script src="${pageContext.request.contextPath }/resources/js/plugins-init/summernote-init.js"></script>

</body>

</html>