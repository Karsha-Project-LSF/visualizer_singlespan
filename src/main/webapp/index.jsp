<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta name="description" content="">
<meta name="author" content="">

<title>GCVisualizer - Karsha project</title>
<link href="css/bootstrap.min.css" rel="stylesheet">
<link href="css/sb-admin.css" rel="stylesheet">
<link href="css/plugins/morris.css" rel="stylesheet">
<link href="font-awesome-4.1.0/css/font-awesome.min.css"
	rel="stylesheet" type="text/css">
<link href="css/jquery-ui.css" rel="stylesheet">
<style>
.link {
	fill: none;
	stroke: #666;
	stroke-width: 1.5px;
}

.node circle {
	stroke: #fff;
	stroke-width: 1.5px;
}

text {
	font: 10px sans-serif;
	pointer-events: none;
}

.demoHeaders {
	margin-top: 2em;
}

#dialog-link {
	padding: .4em 1em .4em 20px;
	text-decoration: none;
	position: relative;
}

#dialog-link span.ui-icon {
	margin: 0 5px 0 0;
	position: absolute;
	left: .2em;
	top: 50%;
	margin-top: -8px;
}

#icons {
	margin: 0;
	padding: 0;
}

#icons li {
	margin: 2px;
	position: relative;
	padding: 4px 0;
	cursor: pointer;
	float: left;
	list-style: none;
}

#icons span.ui-icon {
	float: left;
	margin: 0 4px;
}

.fakewindowcontain .ui-widget-overlay {
	position: absolute;
}

select {
	width: 300px;
}
</style>
</head>

<body>
	<div id="wrapper">
		<nav class="navbar navbar-inverse navbar-fixed-top" role="navigation">
			<div class="navbar-header">
				<button type="button" class="navbar-toggle" data-toggle="collapse"
					data-target=".navbar-ex1-collapse">
					<span class="sr-only">Toggle navigation</span> <span
						class="icon-bar"></span> <span class="icon-bar"></span> <span
						class="icon-bar"></span>
				</button>
				<a class="navbar-brand" href="index.jsp"><font color="white">GCVisualizer - Karsha
					project</font></a>
			</div>
			<div class="collapse navbar-collapse navbar-ex1-collapse">
				<ul class="nav navbar-nav side-nav">
					<li class="active"><a href="index.jsp"><i
							class="fa fa-fw fa-dashboard"></i> GCVisualizer</a></li>
					<li><a ><i class="fa fa-fw fa-arrows-v"></i>
							GC-Analysis </a>
						<ul id="accordion">
						<% for(int i = 2005;i < 2013;i++) {%>
							<li>
								<h3><a href="view_graph.jsp?filename=data<%=i%>.json&year=data<%=i%>.json&year=<%=i%>"><%=i%></a></h3>
								<ul>
									<li><a href="view_graph.jsp?filename=data<%=i%>.json&year=<%=i%>&Q=0"><i class="fa fa-fw fa-table"></i> Overall </a></li>
									<li><a href="Quater_view.jsp?filename=data<%=i%>.json&year=<%=i%>&Q=1"><i class="fa fa-fw fa-table"></i> Quarter 1</a></li>
									<li><a href="Quater_view.jsp?filename=data<%=i%>.json&year=<%=i%>&Q=2"><i class="fa fa-fw fa-table"></i> Quarter 2</a></li>
									<li><a href="Quater_view.jsp?filename=data<%=i%>.json&year=<%=i%>&Q=3"><i class="fa fa-fw fa-table"></i> Quarter 3</a></li>
									<li><a href="Quater_view.jsp?filename=data<%=i%>.json&year=<%=i%>&Q=4"><i class="fa fa-fw fa-table"></i> Quarter 4</a></li>
								</ul>
							</li>
							<%} %>
						</ul>               
                
                       </li>
                       <li><a href="DataAnalysis.jsp"><i class="fa fa-fw fa-table"></i>
                            Data-Analysis</a></li>
                       <li><a href=""><i class="fa fa-fw fa-file"></i>
                            More About</a></li>
                            
               		   </ul>
                    <%--  <li><a href="javascript:;" data-toggle="collapse"
                        data-target="#demo2"><i class="fa fa-fw fa-arrows-v"></i>
                            GC-Analysis 2 <i class="fa fa-fw fa-caret-down"></i></a>
                        
                        <ul id="demo2" name="demo" class="collapse">
                            <% for(int j = 2004;j < 2014;j++) {%>
                            <li><a href="view_graph.jsp?filename=data<%=j%>.json"><%=j%></a></li>                            
                            <%}%>
                        </ul></li> --%>
                   
                   <!--  <li><a href="Overall.html"><i
                            class="fa fa-fw fa-bar-chart-o"></i> Overall</a></li>
                    <li><a href="RowData.html"><i class="fa fa-fw fa-table"></i>
                            Row Data</a></li>
                    <li><a href="blank-page.html"><i class="fa fa-fw fa-file"></i>
                            More About</a></li> -->
                    
           </div>
		</nav>
		<div id="page-wrapper">
			<div class="container-fluid">
				<div class="row">
					<div class="col-lg-12">
						<h1 class="page-header">
							Granger Causality Visualizer<small></small>
						</h1>
						<ol class="breadcrumb">
							<li class="active"><i class="fa fa-dashboard"></i>
								Visualizer</li>
						</ol>
					</div>
				</div>
				<!-- /.row -->
				<div class="row">
					<center>
						<h2>Instructions to use the system</h2>
					</center>
					<ul>
						<ul>1) click the drop down 'GC-Analysis" tab then you can see
							the new tabs for last 10 years.
						</ul>
						<ul>2) you can click the respective year and see the gc graph
						</ul>
						<br />
						<ul>In the graph,
						</ul>
						<ul>you can move your mouce pointer to the node, then it will
							indicate the corresponding node with input and output edges in
							different colors.
						</ul>

						<ul>
						</ul>
					</ul>

				</div>
				<center>
					<h3>
						<b>Please Note that :</b>
					</h3>
					<h4>fallowing analysis graphs are on under construction.</h4>
				</center>
				<div class="row">
					<div style="opacity: 0.2;">
						<div class="col-lg-3 col-md-6">
							<div class="panel panel-primary">
								<div class="panel-heading">
									<div class="row">
										<div class="col-xs-3">
											<i class="fa fa-comments fa-5x"></i>
										</div>
										<div class="col-xs-9 text-right">
											<div class="huge">10yr</div>
											<div>GC Overview</div>
										</div>
									</div>
								</div>
								<a href="#">
									<div class="panel-footer">
										<span class="pull-left">View Details</span> <span
											class="pull-right"><i class="fa fa-arrow-circle-right"></i></span>
										<div class="clearfix"></div>
									</div>
								</a>
							</div>
						</div>
						<div class="col-lg-3 col-md-6">
							<div class="panel panel-green">
								<div class="panel-heading">
									<div class="row">
										<div class="col-xs-3">
											<i class="fa fa-tasks fa-5x"></i>
										</div>
										<div class="col-xs-9 text-right">
											<div class="huge">Row</div>
											<div>Source Data</div>
										</div>
									</div>
								</div>
								<a href="#">
									<div class="panel-footer">
										<span class="pull-left">View Details</span> <span
											class="pull-right"><i class="fa fa-arrow-circle-right"></i></span>
										<div class="clearfix"></div>
									</div>
								</a>
							</div>
						</div>
						<div class="col-lg-3 col-md-6">
							<div class="panel panel-yellow">
								<div class="panel-heading">
									<div class="row">
										<div class="col-xs-3">
											<i class="fa fa-shopping-cart fa-5x"></i>
										</div>
										<div class="col-xs-9 text-right">
											<div class="huge">#</div>
											<div>More..</div>
										</div>
									</div>
								</div>
								<a href="#">
									<div class="panel-footer">
										<span class="pull-left">View Details</span> <span
											class="pull-right"><i class="fa fa-arrow-circle-right"></i></span>
										<div class="clearfix"></div>
									</div>
								</a>
							</div>
						</div>
						<div class="col-lg-3 col-md-6">
							<div class="panel panel-red">
								<div class="panel-heading">
									<div class="row">
										<div class="col-xs-3">
											<i class="fa fa-support fa-5x"></i>
										</div>
										<div class="col-xs-9 text-right">
											<div class="huge">#</div>
											<div>More..</div>
										</div>
									</div>
								</div>
								<a href="#">
									<div class="panel-footer">
										<span class="pull-left">View Details</span> <span
											class="pull-right"><i class="fa fa-arrow-circle-right"></i></span>
										<div class="clearfix"></div>
									</div>
								</a>
							</div>
						</div>
					</div>
				</div>
				<!-- /.row -->

				<div class="row">
					<div style="opacity: 0.2;">
						<div class="col-lg-12">
							<div class="panel panel-default">
								<div class="panel-heading">
									<h3 class="panel-title">
										<i class="fa fa-bar-chart-o fa-fw"></i>Behavior of industrial
										sectors in last 10 years
									</h3>
								</div>
								<div class="panel-body">
									<div id="morris-area-chart"></div>
								</div>
							</div>
						</div>
					</div>
					<!-- /.row -->

					<div class="row">
						<div style="opacity: 0.2;">
							<div class="col-lg-4">
								<div class="panel panel-default">
									<div class="panel-heading">
										<h3 class="panel-title">
											<i class="fa fa-long-arrow-right fa-fw"></i>Chart 2
										</h3>
									</div>
									<div class="panel-body">
										<div id="morris-donut-chart"></div>
										<div class="text-right">
											<a href="#">View Details <i
												class="fa fa-arrow-circle-right"></i></a>
										</div>
									</div>
								</div>
							</div>
							<div class="col-lg-4">
								<div class="panel panel-default">
									<div class="panel-heading">
										<h3 class="panel-title">
											<i class="fa fa-long-arrow-right fa-fw"></i>Chart 3
										</h3>
									</div>
									<div class="panel-body">
										<div id="morris-donut-chart"></div>
										<div class="text-right">
											<a href="#">View Details <i
												class="fa fa-arrow-circle-right"></i></a>
										</div>
									</div>
								</div>

							</div>
							<div class="col-lg-4">
								<div class="panel panel-default">
									<div class="panel-heading">
										<h3 class="panel-title">
											<i class="fa fa-long-arrow-right fa-fw"></i>Chart 4
										</h3>
									</div>
									<div class="panel-body">
										<div id="morris-donut-chart"></div>
										<div class="text-right">
											<a href="#">View Details <i
												class="fa fa-arrow-circle-right"></i></a>
										</div>
									</div>
								</div>

							</div>
						</div>
					</div>
					<!-- /.row -->

				</div>
				<!-- /.container-fluid -->

			</div>
			<!-- /#page-wrapper -->
		</div>


		<!-- /#wrapper -->

		<!-- jQuery Version 1.11.0 -->
		<script src="js/jquery-1.11.0.js"></script>

		<!-- Bootstrap Core JavaScript -->
		<script src="js/bootstrap.min.js"></script>

		<!-- Morris Charts JavaScript -->
		<script src="js/plugins/morris/raphael.min.js"></script>
		<script src="js/plugins/morris/morris.min.js"></script>
		<script src="js/plugins/morris/morris-data.js"></script>
		<script src="js/jquery.js"></script>
		<script src="js/jquery-ui.js"></script>
		<script>
	$( "#accordion" ).accordion();
	</script>
</body>

</html>
