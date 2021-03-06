<!DOCTYPE html>
<html lang="en">

<head>
  <meta charset="utf-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
  <meta name="description" content="">
  <meta name="author" content="">
  <title>eskapei</title>
  <!-- Bootstrap core CSS-->
  <link href="/vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">
  <!-- Custom fonts for this template-->
  <link href="/vendor/font-awesome/css/font-awesome.min.css" rel="stylesheet" type="text/css">
  <!-- Page level plugin CSS-->
  <link href="/vendor/datatables/dataTables.bootstrap4.css" rel="stylesheet">
  <!-- Custom styles for this template-->
  <link href="/css/sb-admin.css" rel="stylesheet">
</head>

<body class="fixed-nav sticky-footer bg-dark" id="page-top">
  <!-- Navigation-->
  <nav class="navbar navbar-expand-lg navbar-dark bg-dark fixed-top" id="mainNav">
    <a class="navbar-brand" href="{{ url('/home') }}">ESKAPEI</a>
    <button class="navbar-toggler navbar-toggler-right" type="button" data-toggle="collapse" data-target="#navbarResponsive" aria-controls="navbarResponsive" aria-expanded="false" aria-label="Toggle navigation">
      <span class="navbar-toggler-icon"></span>
    </button>
    <div class="collapse navbar-collapse" id="navbarResponsive">

        <ul class="navbar-nav navbar-sidenav" id="exampleAccordion">
          <li class="nav-item" data-toggle="tooltip" data-placement="right" title="Dashboard">
            <a class="nav-link" href="{{ url('/index_mahasiswa') }}">
              <i class="fa fa-fw fa-dashboard"></i>
              <span class="nav-link-text">Dashboard</span>
            </a>
          </li>

          <li class="nav-item" data-toggle="tooltip" data-placement="right" title="Profil">
            <a class="nav-link" href="{{ url('/profil_mahasiswa') }}">
              <i class="fa fa-fw fa-address-book"></i>
              <span class="nav-link-text">Profil</span>
            </a>
          </li>
          </li>
          <li class="nav-item" data-toggle="tooltip" data-placement="right" title="Softskill">
            <a class="nav-link" href="{{ url('/softskill_mahasiswa') }}">
              <i class="fa fa-fw fa-files-o"></i>
              <span class="nav-link-text">Softskill</span>
            </a>
          </li>
          <li class="nav-item" data-toggle="tooltip" data-placement="right" title="Kegiatan">
            <a class="nav-link" href="{{ url('/kegiatan_mahasiswa') }}">
              <i class="fa fa-fw fa-files-o"></i>
              <span class="nav-link-text">Kegiatan</span>
            </a>
          </li>
          <li class="nav-item" data-toggle="tooltip" data-placement="right" title="Penilaian">
            <a class="nav-link" href="{{ url('/penilaian_mahasiswa') }}">
              <i class="fa fa-fw fa-file"></i>
              <span class="nav-link-text">Penilaian</span>
            </a>
          </li>

        </ul>
        </li>
        
      <!--punya logout-->  
      </ul>
      <ul class="navbar-nav sidenav-toggler">
        <li class="nav-item">
          <a class="nav-link text-center" id="sidenavToggler">
            <i class="fa fa-fw fa-angle-left"></i>
          </a>
        </li>
      </ul>
      <ul class="navbar-nav ml-auto">   
        <li class="nav-item">
          <a class="nav-link" data-toggle="modal" data-target="#exampleModal">
            <i class="fa fa-fw fa-sign-out"></i>Logout</a>
        </li>
      </ul>
    </div>
  </nav>
  <div class="content-wrapper">
    <div class="container-fluid">
      <!-- Breadcrumbs-->
      <ol class="breadcrumb">
        <li class="breadcrumb-item">
          <a href="#">Penilaian</a>
        </li>
        <li class="breadcrumb-item active"></li>
      </ol>
    
      <div class="card mb-3">
        <div class="card-header">
          <i class="fa fa-table"></i> Data Penilaian</div>
          <div class="card-body">
            <div class="card-header">
              <table border="0" cellspacing="0" cellpadding="0">
                <tbody>
                <tr><td width="150">
                    &nbsp;
                  </td>
                  <td width="8">
                  </td>
                  <td>
                  </td>
                </tr>
                <tr><td width="150">
                    <b>Nama
                    </b>
                  </td>
                  <td width="8">:
                  </td>
                  <td><b>SINTA EKA FITRIYANTI</b>
                  </td>
                </tr>
                <tr><td width="150">
                    <b>NIM
                    </b>
                  </td>
                  <td width="8">:
                  </td>
                  <td><b>132410101065</b>
                  </td>
                </tr>
                <tr><td width="150">
                    <b>Fakultas / Jurusan
                    </b>
                  </td>
                  <td width="8">:
                  </td>
                  <td><b>PSSI / Sistem informasi</b></td>
                </tr>


                </tbody></table>
          </div>
          <div class="col-sm-12 col-md-6">
            <table><tr>
            <td><br><a  href="{{url('/tambahpenilaian')}}">
            <button class="btn btn-primary" type="button" data-dismiss="modal">Tambah Data</button></a></br></td>
                       <td><br> <a  href="">
            <button class="btn btn-primary kanan" type="button" data-dismiss="modal">Cetak</button></a></br></td>
            </tr></table>
          </div>
          <br>
          <div class="table-responsive">
            <table class="table table-bordered" id="dataTable" width="100%" cellspacing="0">
              <thead>
                <tr>
                  <th>Bidang Kegiatan</th>
                  <th>Nama Kegiatan</th>
                  <th>Keterangan Softskill</th>
                  <th>Jenis Kepesertaan</th>
                  <th>Aproval</th>
                  <th>Aksi</th>
                </tr>
              </thead>
              <tfoot>
                <tr>
                  <th>Bidang Kegiatan</th>
                  <th>Nama Kegiatan</th>
                  <th>Keterangan Softskill</th>
                  <th>Jenis Kepesertaan</th>
                  <th>Aproval</th>
                  <th>Aksi</th>
                </tr>
              </tfoot>
              <tbody>

                <tr>
                  <td></td>
                  <td></td>
                  <td></td>
                  <td></td>
                  <td></td>
                  <td></td>
                </tr>

              </tbody>
            </table>
          </div>
        </div>
        <div class="card-footer small text-muted"></div>
      </div>
    </div>
       
    </div>
    <!-- /.container-fluid-->
    <!-- /.content-wrapper-->
    <footer class="sticky-footer">
      <div class="container">
        <div class="text-center">
          <small>Copyright © ESKAPEI 2017</small>
        </div>
      </div>
    </footer>
    <!-- Scroll to Top Button-->
    <a class="scroll-to-top rounded" href="#page-top">
      <i class="fa fa-angle-up"></i>
    </a>
    <!-- Logout Modal-->
    <div class="modal fade" id="exampleModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
      <div class="modal-dialog" role="document">
        <div class="modal-content">
          <div class="modal-header">
            <h5 class="modal-title" id="exampleModalLabel">Ready to Leave?</h5>
            <button class="close" type="button" data-dismiss="modal" aria-label="Close">
              <span aria-hidden="true">×</span>
            </button>
          </div>
          <div class="modal-body">Select "Logout" below if you are ready to end your current session.</div>
          <div class="modal-footer">
            <button class="btn btn-secondary" type="button" data-dismiss="modal">Cancel</button>
            <a class="btn btn-primary" href="/logout">Logout</a>
          </div>
        </div>
      </div>
    </div>
    <!-- Bootstrap core JavaScript-->
    <script src="vendor/jquery/jquery.min.js"></script>
    <script src="vendor/popper/popper.min.js"></script>
    <script src="vendor/bootstrap/js/bootstrap.min.js"></script>
    <!-- Core plugin JavaScript-->
    <script src="vendor/jquery-easing/jquery.easing.min.js"></script>
    <!-- Page level plugin JavaScript-->
    <script src="/vendor/chart.js/Chart.min.js"></script>
    <script src="/vendor/datatables/jquery.dataTables.js"></script>
    <script src="/vendor/datatables/dataTables.bootstrap4.js"></script>
    <!-- Custom scripts for all pages-->
    <script src="js/sb-admin.min.js"></script>
    <!-- Custom scripts for this page-->
    <script src="js/sb-admin-datatables.min.js"></script>
    <script src="js/sb-admin-charts.min.js"></script>
  </div>
</body>
</html>
