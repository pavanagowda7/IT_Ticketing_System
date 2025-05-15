<?php session_start();
include_once('includes/config.php');
if (strlen($_SESSION['id']==0)) {
  header('location:logout.php');
  } else{
    
?>
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="utf-8" />
        <meta http-equiv="X-UA-Compatible" content="IE=edge" />
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />
        <meta name="description" content="" />
        <meta name="author" content="" />
        <title>User Dashboard</title>
        <link href="https://cdn.jsdelivr.net/npm/simple-datatables@latest/dist/style.css" rel="stylesheet" />
        <link href="css/styles.css" rel="stylesheet" />
        <script src="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/js/all.min.js" crossorigin="anonymous"></script>
    </head>
    <body class="sb-nav-fixed">
      <?php include_once('includes/navbar.php');?>
        <div id="layoutSidenav">
          <?php include_once('includes/sidebar.php');?>
            <div id="layoutSidenav_content">
                <main>
                    <div class="container-fluid px-4">
                        <h1 class="mt-4">Dashboard</h1>
                        <hr />
                        <ol class="breadcrumb mb-4">
                            <li class="breadcrumb-item active">Dashboard</li>
                        </ol>

<?php 
$userid=$_SESSION['id'];
$query=mysqli_query($con,"select * from users where id='$userid'");
while($result=mysqli_fetch_array($query))
{?>                        
                        <div class="row" >
                            <div class="col-xl-5 col-md-6" >
                                <div class="card bg-primary text-white mb-4">
                                    <div class="card-body">Welcome Back <?php echo $result['fname'].$result['lname'];?></div>
                                    <div class="card-footer d-flex align-items-center justify-content-between">
                                        <a class="small text-white stretched-link" href="profile.php">View Profile</a>
                                        <div class="small text-white"><i class="fas fa-angle-right"></i></div>
                                    </div>
                                </div>
                            </div>
                            </div>
<?php } ?>


                        </div>
              
                        </div>
                   
                    </div>
                </main>
          <?php include('includes/footer.php');?>
            </div>
        </div>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.0/dist/js/bootstrap.bundle.min.js" crossorigin="anonymous"></script>
        <script src="js/scripts.js"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/Chart.js/2.8.0/Chart.min.js" crossorigin="anonymous"></script>
        <script src="assets/demo/chart-area-demo.js"></script>
        <script src="assets/demo/chart-bar-demo.js"></script>
        <script src="https://cdn.jsdelivr.net/npm/simple-datatables@latest" crossorigin="anonymous"></script>
        <script src="js/datatables-simple-demo.js"></script>
    </body>
</html>
<?php } ?>



Here's a basic HTML layout that matches the form structure in your image ("Step 1: Basic Information"). You can expand it with CSS or frameworks like Bootstrap for a polished design.

HTML Code:

<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <title>Employee Form - Basic Information</title>
  <style>
    body { font-family: Arial, sans-serif; padding: 20px; }
    .container { display: flex; flex-wrap: wrap; gap: 40px; }
    .column { flex: 1; min-width: 300px; }
    .form-group { margin-bottom: 15px; }
    label { display: block; font-weight: bold; margin-bottom: 5px; }
    input, select { width: 100%; padding: 6px; box-sizing: border-box; }
    .radio-group { display: flex; gap: 10px; }
    .button-group { margin-top: 20px; }
  </style>
</head>
<body>

<h2>Step 1: Basic Information</h2>
<div class="container">
  <div class="column">
    <div class="form-group">
      <label>Employee Number Series</label>
      <select>
        <option value="">--Select--</option>
      </select>
    </div>
    <div class="form-group">
      <label>Employee No</label>
      <input type="text">
    </div>
    <div class="form-group">
      <label>Name</label>
      <input type="text">
    </div>
    <div class="form-group">
      <label>Date of Birth</label>
      <input type="date">
    </div>
    <div class="form-group">
      <label>Aadhaar Number</label>
      <input type="text">
    </div>
    <div class="form-group">
      <label>Gender</label>
      <div class="radio-group">
        <label><input type="radio" name="gender"> Male</label>
        <label><input type="radio" name="gender"> Female</label>
        <label><input type="radio" name="gender"> Others</label>
      </div>
    </div>
    <div class="form-group">
      <label>Reporting Manager</label>
      <input type="text">
    </div>
    <div class="form-group">
      <label>Status</label>
      <select>
        <option value="">--Select--</option>
      </select>
    </div>
    <div class="form-group">
      <label>Date of Joining</label>
      <input type="date">
    </div>
    <div class="form-group">
      <label>Referred By</label>
      <input type="text">
    </div>
  </div>

  <div class="column">
    <div class="form-group">
      <label>Probation Period (Days)</label>
      <input type="number" value="0" step="1">
    </div>
    <div class="form-group">
      <label>Confirmation Date</label>
      <input type="date">
    </div>
    <div class="form-group">
      <label>Email</label>
      <input type="email">
    </div>
    <div class="form-group">
      <label>Mobile Number</label>
      <input type="text">
    </div>
    <div class="form-group">
      <label>Emergency Contact Name</label>
      <input type="text">
    </div>
    <div class="form-group">
      <label>Emergency Contact Number</label>
      <input type="text">
    </div>
    <div class="form-group">
      <label>Father's Name</label>
      <input type="text">
    </div>
    <div class="form-group">
      <label>Spouse Name</label>
      <input type="text">
    </div>
  </div>
</div>

<div class="button-group">
  <button type="button">Previous</button>
  <button type="button">Next</button>
  <button type="reset">Cancel</button>
</div>

</body>
</html>

This layout mimics the structure shown in your image, with two columns and grouped fields. Let me know if you want this styled with Bootstrap or made responsive.


