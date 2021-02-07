<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
 <style type="text/css">
 
 .layout-boxed .wrapper, .layout-boxed .wrapper::before {
  margin: 0 auto;
  max-width:1850px !important; /*1250px*/
}
 #fh5co-logo {
    font-size: 31px;
    margin-left: 20px;
    margin-top: 10px;
    padding: 0;
    text-transform: uppercase;
    font-weight: 700;
    font-family: 'Noto Sans KR', sans-serif;
    display: block;
}
 
 
 </style>
<head>

  <meta charset="utf-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <title>AdminLTE 3 | Boxed Layout</title>
  <!-- Tell the browser to be responsive to screen width -->
  <meta name="viewport" content="width=device-width, initial-scale=1">
 <!-- ����
 --> 	<%-- <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/el/css/bootstrap.min.css" type="text/css"> 
    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/el/css/YS_css/newstyle.css" type="text/css"> --%>
 <!--    ���� -->
  <!-- Font Awesome :�ʿ�-->
  <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/el/Admin_plugins/fontawesome-free/css/all.min.css">
  <!-- Ionicons -->
  <link rel="stylesheet" href="https://code.ionicframework.com/ionicons/2.0.1/css/ionicons.min.css">
   <!-- DataTables -->
  <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/el/Admin_plugins/datatables-bs4/css/dataTables.bootstrap4.min.css">
  <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/el/Admin_plugins/datatables-responsive/css/responsive.bootstrap4.min.css">
  
  <!-- Theme style :�߿�-->
  <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/el/Admin_dist/css/adminlte.min.css">
  <!-- Google Font: Source Sans Pro -->
  <link href="https://fonts.googleapis.com/css?family=Source+Sans+Pro:300,400,400i,700" rel="stylesheet">
  <script src="https://code.jquery.com/jquery-3.4.1.min.js"></script> 
 <script type="text/javascript">
	$(document).ready(function(){
	 $('#output').empty();
	 adjustmentList();
	 
	 
 });
 
	
 function adjustmentList(){
	 
     $('#output').empty();
    
     var form ='<thead><tr>'
     		+'<th>�۹�ȣ</th>'
     		+'<th>���δ�</th>'
     		+'<th>�ŷ�����</th>'
     		+'<th>�ŷ��Ϸ���</th>'
     		+'<th>���� �ݾ�</th>'
     		+'<th>���� ����</th>'
     		+'<th>����</th>'
     		+'<th>������</th>'
     		+'<th>���� ����</th>'
     	
     		+'</tr></thead><tbody>';
    
     $('#output').append(form);
    
     $.ajax({
        url : '/imfind/getAdjustmentList2',
       contentType : 'application/x-www-form-urlencoded:charset=utf-8',
       success : function(data){
           $.each(data, function(index, item){
              console.log(item)
              
            if(item.lost_PostNum == null || item.lost_PostNum ==0){
              postnum = item.pet_PostNum
              adjustment_state = '������' + '<button type="button" class="btn btn-outline-primary" value="����"  onclick="giveMoenyPet()">����</button></td>';

           }
           else{
              postnum = item.lost_PostNum
              adjustment_state = '������' + '<button type="button" class="btn btn-outline-primary" value="����"  onclick="giveMoeny()">����</button></td>';
           }
            
              var output='';
              output += '<tr>'; 
              output += '<td>' + postnum+ '</td>';
              output += '<td>' + item.f_ID+ '</td>';
              output += '<td>' + item.deal_State + '</td>';
              output += '<td>' + item.Deal_Date + '</td>';
              output += '<td>' + item.pay_Amount + '</td>';
              output += '<td>' + item.account_Num + '</td>';
              output += '<td>' + item.bank + '</td>';
              output += '<td>' + item.account_holder + '</td>';
              output += '<td>' + adjustment_state + '</td>';
            
              
              output += '</tr>'
              $('#output').append(output); //�߰�
           }); //each �� 
           }, //success ��
           error:function(){
                alert("ajax��� ����!!!");
       },
          
     });// ajax ��
 };
 
 function giveMoeny(){
     
     document.querySelector('#output').addEventListener('click', function(e){
          console.log(e.target)
          var postNum = e.target.parentElement.parentElement.childNodes[0].innerText
          var finder = e.target.parentElement.parentElement.childNodes[1].innerText
        
        
         $.ajax({
            url : '/imfind/giveMoney',
            contentType : 'application/x-www-form-urlencoded:charset=utf-8',
            data : {"Lost_PostNum" : postNum, "F_ID" : finder},
            success : function(data){
               console.log(data)
               adjustmentList();
            },
            error : function(){
              
            } 
        
         });
     });
  };
  
  function giveMoenyPet(){
	     
	     document.querySelector('#output').addEventListener('click', function(e){
	          console.log(e.target)
	          var postNum = e.target.parentElement.parentElement.childNodes[0].innerText
	          var finder = e.target.parentElement.parentElement.childNodes[1].innerText
	         
	        
	         $.ajax({
	            url : '/imfind/giveMoneyPet',
	            contentType : 'application/x-www-form-urlencoded:charset=utf-8',
	            data : {"pet_PostNum" : postNum, "F_ID" : finder},
	            success : function(data){
	               console.log(data)
	               adjustmentList();
	            },
	            error : function(){
	              
	            } 
	        
	         });
	     });
	  };
 </script>
</head>
<%-- 
 <script>
      var user = '${loginUser}';
   </script>
   <!-- Page Preloder -->
   <div id="preloder">
      <div class="loader"></div>
   </div>


   <%
      if (session.getAttribute("loginUser") == null && session.getAttribute("kakaoLoginUser") == null) {
   %>
   <jsp:include page="${request.contextPath}/el/header"></jsp:include>
   <%
      } else {
   %>
   <jsp:include page="${request.contextPath}/el/afterLoginHeader"></jsp:include>
   <%
      }
   %> --%>
   
<body class="hold-transition sidebar-mini layout-boxed">
<!-- Site wrapper -->
<div class="wrapper">
		<!-- Navbar -->
		<nav
			class="main-header navbar navbar-expand navbar-white navbar-light">
			<!-- Left navbar links -->
			
		</nav>
		<!-- /.navbar -->

		<!-- Main Sidebar Container -->
		<aside class="main-sidebar sidebar-dark-primary elevation-4">
			<!-- Brand Logo -->
			<div id="fh5co-logo"><a href="./home.do">ImFind<span>.</span></a></div>

			<!-- Sidebar -->
			<div class="sidebar">
				<!-- Sidebar user (optional) -->
				<div class="user-panel mt-3 pb-3 mb-3 d-flex">
					<div class="image">
						<img
							src="${pageContext.request.contextPath}/resources/el/Admin_dist/img/user1.png"
							class="img-circle elevation-2" alt="User Image">
					</div>
					<div class="info">
						<a href="#" class="d-block">Admin</a>
					</div>
				</div>

				<!-- Sidebar Menu -->
				<nav class="mt-2">
					<ul class="nav nav-pills nav-sidebar flex-column"
						data-widget="treeview" role="menu" data-accordion="false">
						<li class="nav-header">������ �޴�</li>

						<li class="nav-item has-treeview"><a href="./admintest"
							class="nav-link"> <i class="nav-icon fas fa-tree"></i>
								<p>ȸ������</p>
						</a></li>
						<li class="nav-item has-treeview"><a
							href="./admintest_payList" class="nav-link"> <i
								class="nav-icon fas fa-table"></i>
								<p>
									�������� <i class="fas fa-angle-left right"></i>
								</p>
						</a>
							<ul class="nav nav-treeview">
								<li class="nav-item"><a href="./admintest_payList"
									class="nav-link"> <i class="far fa-circle nav-icon"></i>
										<p>�������� ����Ʈ</p>
								</a></li>
								<li class="nav-item"><a href="./admintest_paidList"
									class="nav-link"> <i class="far fa-circle nav-icon"></i>
										<p>�����Ϸ� ����Ʈ</p>
								</a></li>
								<li class="nav-item"><a href="./admintest_refundList"
									class="nav-link"> <i class="far fa-circle nav-icon"></i>
										<p>ȯ�Ұŷ� ����Ʈ</p>
								</a></li>
								<li class="nav-item"><a href="./admintest_cancelList"
									class="nav-link"> <i class="far fa-circle nav-icon"></i>
										<p>ȯ�ҿϷ� ����Ʈ</p>
								</a></li>
							</ul></li>
						<!-- ���� ���̵� �޴� �߰�  -->
						<li class="nav-item has-treeview"><a
							href="./admintest_payList" class="nav-link"> <i
								class="nav-icon fas fa-table"></i>
								<p>
									������� <i class="fas fa-angle-left right"></i>
								</p>
						</a>
						<ul class="nav nav-treeview">
								<li class="nav-item"><a href="./admintest_adjustmentList2"
									class="nav-link"> <i class="far fa-circle nav-icon"></i>
										<p>������ ����Ʈ</p>
								</a></li>
								<li class="nav-item"><a href="./admintest_adjustmentList"
									class="nav-link"> <i class="far fa-circle nav-icon"></i>
										<p>����Ϸ� ����Ʈ</p>
								</a></li>
							</ul></li>
						<!-- ���� ����Ʈ �޴� ���� -->
				</nav>
				<!-- /.sidebar-menu -->
			</div>
    <!-- /.sidebar -->
  </aside>
 
  <!-- Content Wrapper. Contains page content -->
  <div class="content-wrapper">
    <!-- Content Header (Page header) -->
    <section class="content-header">
      <div class="container-fluid">
        <div class="row mb-2">
          <div class="col-sm-6">
            <h1>������������</h1>
          </div>
          <div class="col-sm-6">
            <ol class="breadcrumb float-sm-right">
              <li class="breadcrumb-item"><a href="#">������������</a></li>
              <li class="breadcrumb-item"><a href="#">��������</a></li>
              <li class="breadcrumb-item active">�����긮��Ʈ</li>
            </ol>
          </div>
        </div>
      </div><!-- /.container-fluid -->
    </section>

    <!-- Main content -->
    <section class="content">
      <div class="container-fluid">
        <div class="row">
          <div class="col-12">
            <!-- Default box -->
            <div class="card">
              <div class="card-header">
                	<h3 class="card-title">������ ����</h3>
				</div>
                <div class="card-tools">
                
              <!-- /.card-header -->
              <div class="card-body">
                <table id="output" class="table table-bordered table-hover">
                  <!-- <table id="output" class="table table-bordered table-hover"> -->
             	<!--   <thead>
                  <tr>
                    <th>id</th>
                    <th>payCode</th>
                    <th>pay_Amount</th>
                    <th>pay_State</th>
                    <th>pay_Date</th>                    
                  </tr>
                  </thead>
                  <tbody></tbody>-->
                  <!-- <tbody></tbody>                  
                  <tbody id="output"> 
                  </tbody>
                  <tfoot>
                  <tr>
                    <th>id</th>
                    <th>name</th>
                    <th>contact</th>
                    <th>email</th>
                    <th>account_Num</th>
                    <th>bank</th>
                    <th>account_holder</th>
                    <th>join_date</th>
                  </tr>
                  </tfoot> -->
                </table>
           
                
              </div>
              <!-- /.card-body -->
            </div>
            <!-- /.card -->
<!-- </div> -->





<!-- ���� ���̺� ������ ��. -->

<!-- Site wrapper -->
            <!--   </div> -->
              <!-- /.card-body -->
             
              <!-- /.card-footer-->
            </div>
            <!-- /.card -->
           </div>
        </div>
      </div>
    </section> 
    <!-- /.content -->
    </div>
  <!-- /.content-wrapper -->
</div>

  
  
<!-- jQuery -->
<script src="${pageContext.request.contextPath}/resources/el/Admin_plugins/jquery/jquery.min.js"></script>
<!-- Bootstrap 4 -->
<script src="${pageContext.request.contextPath}/resources/el/Admin_plugins/bootstrap/js/bootstrap.bundle.min.js"></script>
<!-- DataTables -->
<script src="${pageContext.request.contextPath}/resources/el/Admin_plugins/datatables/jquery.dataTables.min.js"></script>
<script src="${pageContext.request.contextPath}/resources/el/Admin_plugins/datatables-bs4/js/dataTables.bootstrap4.min.js"></script>
<script src="${pageContext.request.contextPath}/resources/el/Admin_plugins/datatables-responsive/js/dataTables.responsive.min.js"></script>
<script src="${pageContext.request.contextPath}/resources/el/Admin_plugins/datatables-responsive/js/responsive.bootstrap4.min.js"></script>
<!-- AdminLTE App -->
<script src="${pageContext.request.contextPath}/resources/el/Admin_dist/js/adminlte.min.js"></script>
<!-- AdminLTE for demo purposes -->
<script src="${pageContext.request.contextPath}/resources/el/Admin_dist/js/demo.js"></script>
 </body>
<!-- ���ۿ� �ִ� (�Ʒ�) -->
    <!-- Js Plugins -->
   <%--  <script src="${pageContext.request.contextPath}/resources/el/js/jquery-3.3.1.min.js"></script>
    <script src="${pageContext.request.contextPath}/resources/el/js/bootstrap.min.js"></script>
    <script src="${pageContext.request.contextPath}/resources/el/js/jquery-ui.min.js"></script>
    <script src="${pageContext.request.contextPath}/resources/el/js/jquery.countdown.min.js"></script>
    <script src="${pageContext.request.contextPath}/resources/el/js/jquery.nice-select.min.js"></script>
    <script src="${pageContext.request.contextPath}/resources/el/js/jquery.zoom.min.js"></script>
    <script src="${pageContext.request.contextPath}/resources/el/js/jquery.dd.min.js"></script>
    <script src="${pageContext.request.contextPath}/resources/el/js/jquery.slicknav.js"></script>
    <script src="${pageContext.request.contextPath}/resources/el/js/owl.carousel.min.js"></script>
    <script src="${pageContext.request.contextPath}/resources/el/js/main.js"></script>
     --%>
    <!-- jQuery -->
  <!--   <script src="https://code.jquery.com/jquery-3.5.1.js"></script> -->
    <!-- DataTables -->
   <!--  <script src="https://cdn.datatables.net/1.10.23/js/jquery.dataTables.js"></script> -->
    
<%--    <script src="${pageContext.request.contextPath}/resources/el/YH/adminlte/plugins/datatables/jquery.dataTables.min.js"></script>
   <script src="${pageContext.request.contextPath}/resources/el/YH/adminlte/plugins/datatables-bs4/js/dataTables.bootstrap4.min.js"></script>
   <script src="${pageContext.request.contextPath}/resources/el/YH/adminlte/plugins/datatables-responsive/js/dataTables.responsive.min.js"></script>
   <script src="${pageContext.request.contextPath}/resources/el/YH/adminlte/plugins/datatables-responsive/js/responsive.bootstrap4.min.js"></script> --%>
   
    
     <!-- Header Section Begin -->
     <%--  <jsp:include page="${request.contextPath}/NewFooter_JS"></jsp:include> --%>
    <!-- Header End -->
   


<script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/moment.js/2.24.0/moment.min.js"></script>



</html>
