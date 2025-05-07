<?php session_start();
include_once('includes/config.php');
$userid=$_SESSION['id'];
if (strlen($_SESSION['id']==0)) {
  header('location:logout.php');
  } else{
if(isset($_POST['createTicket']))
{
$category=$_POST['category']; 
$urgency=$_POST['urgency'];
$description=$_POST['description'];
$additional=$_POST['additional'];
$emailret=mysqli_query($con,"SELECT * FROM users where id='$userid'");
$result=mysqli_fetch_array($emailret);
$email= $result['email'];
$status="Open";
$query="INSERT INTO TICKETS (Description,Category,Urgency,RaisedBY,UserComment,Status)values('$description','$category','$urgency','$email','$additional','$status')";
if(mysqli_query($con,$query))
{
    echo "<script>alert('Ticket Raised Successfull!! We'll get back to you soon');</script>";

}


// if($num>0)
// {

// }
// else
// {
// echo "<script>alert('Old Password not match !!');</script>";
// echo "<script type='text/javascript'> document.location = 'change-password.php'; </script>";
// }
}

    
?>
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="utf-8" />
        <meta http-equiv="X-UA-Compatible" content="IE=edge" />
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />
        <meta name="description" content="" />
        <meta name="author" content="" />
        <title>New Ticket</title>
        <link href="https://cdn.jsdelivr.net/npm/simple-datatables@latest/dist/style.css" rel="stylesheet" />
        <link href="css/styles.css" rel="stylesheet" />
        <script src="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/js/all.min.js" crossorigin="anonymous"></script>
<script language="javascript" type="text/javascript">
function valid()
{
if(document.changepassword.newpassword.value!= document.changepassword.confirmpassword.value)
{
alert("Password and Confirm Password Field do not match  !!");
document.changepassword.confirmpassword.focus();
return false;
}
return true;
}
</script>

    </head>
    <body class="sb-nav-fixed">
        <h1><?php echo $userid; ?></h1>
      <?php include_once('includes/navbar.php');?>
        <div id="layoutSidenav">
          <?php include_once('includes/sidebar.php');?>
            <div id="layoutSidenav_content">
                <main>
                    <div class="container-fluid px-4">
                        

                        <h1 class="mt-4">Raise New Ticket</h1>
                        <div class="card mb-4">
                     <form method="post" name="createTicket" onSubmit="return valid();">
                            <div class="card-body">
                                <table class="table table-bordered">
                                   <tr>
                                    <th>Category</th>
                                       <td> <select id="category" name="category" required>
                                        <option value="">Select</option>
                                        <option value="Software">Software</option>
                                        <option value="Hardware">Hardware</option>
                                        <option value="Network">Network</option>
                                        </select></td>
                                   </tr>
                                   <tr>
                                       <th>New Password</th>
                                       <td><select id="urgency" name="urgency" required>
                                        <option value="">Select</option>
                                        <option value="Critical">Critical</option>
                                        <option value="High">High</option>
                                        <option value="Medium">Medium</option>
                                        <option value="Low">Low</option>
                                        </select></td>
                                   </tr>
                                         <tr>
                                       <th>Problem Description</th>
                                       <td colspan="3"><input class="form-control" id="confirmpassword" name="description" type="text"    required /></td>
                                   </tr>
                                   <tr>
                                       <th>Additional Comments</th>
                                       <td colspan="3"><input class="form-control" id="confirmpassword" name="additional" type="text"    required /></td>
                                   </tr>
                  
                                   <tr>
                                       <td colspan="4" style="text-align:center ;"><button type="submit" class="btn btn-primary btn-block" name="createTicket">Raise Ticket</button></td>

                                   </tr>
                                    </tbody>
                                </table>
                            </div>
                            </form>
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
