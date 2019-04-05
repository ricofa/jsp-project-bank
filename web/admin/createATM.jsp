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
<!--        <link rel="stylesheet" href="css/style.css">*/-->
  	<script src="jquery/jquery.js"></script>
  	<script src="js/bootstrap.min.js"></script>
        <style>
            body{
                background: #778899
            }
        </style>
</head>
<body>
	<div id="createATM" class="modal fade" role="dialog">
	  <div class="modal-dialog">
	    <div class="modal-content">
	      <div class="modal-header">
	        <button type="button" class="close" data-dismiss="modal">&times;</button>
	        <h4 class="modal-title">Create ATM</h4>
	      </div>
	      <div class="modal-body">
	        <form action="add-tabungan.jsp" method="post">
	        	<div class="form-group">
	        		<input class="form-control" type="text" name="norek" placeholder="No Rekenening
	        		">
	        	</div>
<!--                    no rekening generator jd null-->
                        <div class="form-group">
                            <select name="jenis" class="form-control">
                                    <option value="">Jenis Kartu</option>
                                    <option value="silver">Silver</option>
                                    <option value="gold">Gold</option>
                                    <option value="platinum">Platinum</option>
                              </select>
	        	</div>
                        <div class="form-group">
                            <input class="form-control" type="text" name="pin" placeholder="PIN">
                        </div>
	        	
	        	<button type="submit" class="btn btn-info">CREATE</button>
	        </form>
	      </div>
	    </div>
	  </div>
        </div>
        <br>
	<button type="button" class="btn btn-info" data-toggle="modal" data-target="#createATM">
  Creat ATM</button>
    
  <div class="content mt-3">
            <div class="animated fadeIn">
                <div class="row">

                <div class="col-md-12">
                    <div class="card">
                        <div class="card-header">
                            <strong class="card-title">ATM</strong>
                        </div>
                        <div class="card-body">
                  <table id="bootstrap-data-table" class="table table-striped table-bordered">
                    <thead>
                      <tr>
                        <th>Id Nasabah</th>
                        <th>Nama Nasabah</th>
                        <th>No Rekening</th>
                        <th>No Kartu ATM</th> 
<!--                        no kartu atm generate urut-->
                        <th>PIN Kartu ATM</th>
                        <th>Jenis Kartu</th>
                        <th>Saldo</th>
                      </tr>
                    </thead>
                    <tbody>
                      <tr>
                          <td>1</>
                          <td>AAA</td>
                          <td>9279274</td>
                          <td>1</> 
                          <td>2344</td>
                          <td>silver</td>
                          <td>9279274</td>
                          
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
