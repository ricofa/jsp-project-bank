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
  	<script src="jquery/jquery.js"></script>
  	<script src="js/bootstrap.min.js"></script>
        <style>
            body{
                background: #778899
            }
        </style>
</head>
<body>
	<div id="tambahNasabah" class="modal fade" role="dialog">
	  <div class="modal-dialog">
	    <div class="modal-content">
	      <div class="modal-header">
	        <button type="button" class="close" data-dismiss="modal">&times;</button>
	        <h4 class="modal-title">Tambah Nasabah</h4>
	      </div>
	      <div class="modal-body">
	        <form action="add-tabungan.jsp" method="post">
                        <div class="form-group">
	        		<input class="form-control" type="text" name="nama" placeholder="Nama
	        		">
	        	</div>
	        	<button type="submit" class="btn btn-info">TAMBAH</button>
	        </form>
	      </div>
	    </div>
	  </div>
	</div>
	<div id="hapusNasabah" class="modal fade" role="dialog">
	  <div class="modal-dialog">
	    <div class="modal-content">
	      <div class="modal-header">
	        <button type="button" class="close" data-dismiss="modal">&times;</button>
	        <h4 class="modal-title">Hapus Nasabah</h4>
	      </div>
	      <div class="modal-body">
	        <form action="add-tabungan.jsp" method="post">
	        	<div class="form-group">
	        		<input class="form-control" type="text" name="id" placeholder="ID Nasabah
	        		">
	        	</div>
	        	<button type="submit" class="btn btn-info">HAPUS</button>
	        </form>
	      </div>
	    </div>
	  </div>
	</div>
        <br>
	<button type="button" class="btn btn-info" data-toggle="modal" data-target="#tambahNasabah">
  Tambah Nasabah</button>
    
  <div class="content mt-3">
            <div class="animated fadeIn">
                <div class="row">

                <div class="col-md-12">
                    <div class="card">
                        <div class="card-header">
                            <strong class="card-title">Nasabah Details</strong>
                        </div>
                        <div class="card-body">
                  <table id="bootstrap-data-table" class="table table-striped table-bordered">
                    <thead>
                      <tr>
                        <th>Id Nasabah</th>
                        <th>Nama Nasabah</th>
                        <th>List Tabungan</th>
                        <th>Actions</th>
                        
                      </tr>
                    </thead>
                    <tbody>
                      <tr>
                        <td>Tiger Nixon</td>
                        <td>System Architect</td>
                        <td><a href="">Lihat</a></td>
                        <td><button type="button" class="btn btn-info" data-toggle="modal" data-target="">
                                Hapus</button></td>
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
