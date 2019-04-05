<%-- 
    Document   : nasabah
    Created on : Apr 16, 2018, 9:44:31 PM
    Author     : Amel
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<title>Admin</title>
	<meta charset="utf-8">
  	<meta name="viewport" content="width=device-width, initial-scale=1">
  	<link rel="stylesheet" href="css/bootstrap.min.css">
        <link rel="stylesheet" href="css/styles.css">
  	<script src="jquery/jquery.js"></script>
  	<script src="js/bootstrap.min.js"></script>
        <style>
            body{
                background: #778899
            }
        </style>
</head>
<body>
	<div id="tambahTabungan" class="modal fade" role="dialog">
	  <div class="modal-dialog">
	    <div class="modal-content">
	      <div class="modal-header">
	        <button type="button" class="close" data-dismiss="modal">&times;</button>
	        <h4 class="modal-title">Tambah Tabungan</h4>
	      </div>
	      <div class="modal-body">
	        <form action="add-tabungan.jsp" method="post">
                        <div class="form-group">
	        		<input class="form-control" type="text" name="idnas" placeholder="Id Nasabah
	        		">
	        	</div>
                        <div class="form-group">
	        		<input class="form-control" type="text" name="norek" placeholder="No Rekening
	        		">
                        </div>
	        	<div class="form-group">
	        		<input class="form-control" type="text" name="username" placeholder="Username
	        		">
	        	</div>
	        	<div class="form-group">
	        		<input class="form-control" type="password" name="password" placeholder="Password
	        		">
                        </div>
                        <div class="form-group">
	        		<input class="form-control" type="text" name="saldo" placeholder="Saldo
	        		">
	        	</div>                          
	        	<button type="submit" class="btn btn-info">TAMBAH</button>
	        </form>
	      </div>
	    </div>
	  </div>
        </div>
        <br>
	<button type="button" class="btn btn-info" data-toggle="modal" data-target="#tambahTabungan">
  Tambah Tabungan</button>
    
  <div class="content mt-3">
            <div class="animated fadeIn">
                <div class="row">

                <div class="col-md-12">
                    <div class="card">
                        <div class="card-header">
                            <strong class="card-title">Tabungan Details</strong>
                        </div>
                        <div class="card-body">
                  <table id="bootstrap-data-table" class="table table-striped table-bordered">
                    <thead>
                      <tr>
                        <th>Id Nasabah</th>
                        <th>Nama Nasabah</th>
                        <th>No Rekening</th>
                        <th>Username</th>
                        <th>Password</th>
                        <th>Saldo</th>
                        <th>Actions</th>
                        
                      </tr>
                    </thead>
                    <tbody>
                      <tr>
                          <td>1</td>
                        <td>Tiger Nixon</td>
                        <td>System Architect</td>
                        <td>Edinburgh</td>
                        <td>$320,800</td>
                        <td>$320,800</td>
                        <td><button type="button" class="btn btn-info" data-toggle="modal" data-target="#editTabungan">
                                Edit</button>
                            <button type="button" class="btn btn-info" data-toggle="modal" data-target="">
                                Hapus</button>
                        </td>
                        
                      </tr>
                      </tbody>
                  </table>
                        </div>
                    </div>
                </div>


                </div>
            </div><!-- .animated -->
        </div>

</body>
</html>
