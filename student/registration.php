<?php
    require_once ("../include/connection.php");
    include("include/registerfunction.php");

?>

<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <title>Student | Registration Page</title>
    <!-- Tell the browser to be responsive to screen width -->
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <!-- Font Awesome -->
    <link rel="stylesheet" href="../asset/plugins/fontawesome-free/css/all.min.css">
    <!-- Ionicons -->
    <link rel="stylesheet" href="https://code.ionicframework.com/ionicons/2.0.1/css/ionicons.min.css">
    <!-- icheck bootstrap -->
    <link rel="stylesheet" href="../asset/plugins/icheck-bootstrap/icheck-bootstrap.min.css">
    <!-- Theme style -->
    <link rel="stylesheet" href="../asset/dist/css/adminlte.min.css">
    <!-- Google Font: Source Sans Pro -->
    <link href="https://fonts.googleapis.com/css?family=Source+Sans+Pro:300,400,400i,700" rel="stylesheet">
    <link rel="stylesheet" href="include/css/signup-style.css">
</head>
<body>
<main>
        <div class="background">
            <div class="text">
                <h1>Signup</h1>
                <p>Have Account? <a href="login.php">Login</a></p>
            </div>
            <?php
                if(isset($success)){
            ?>
                    <div class="alert alert-success alert-dismissible fade show msg" role="alert">
                        <strong><?= $success;?></strong>
                        <button type="button" class="close" data-dismiss="alert" aria-label="Close">
                            <span aria-hidden="true">&times;</span>
                        </button>
                    </div>
            <?php
                }
            ?>
            <?php
                if(isset($error)){
            ?>
                    <div class="alert alert-danger alert-dismissible fade show msg" role="alert">
                        <strong><?= $error;?></strong>
                        <button type="button" class="close" data-dismiss="alert" aria-label="Close">
                            <span aria-hidden="true">&times;</span>
                        </button>
                    </div>
            <?php
                }
            ?>


            <form class="form" action="<?= $_SERVER['PHP_SELF'] ?>" method="post">
            <div class="box">
                
                    <input type="text" name ="f_name" class="fname" placeholder="Your first Name" autocomplete="off" value="<?= isset($f_name) ? $f_name :'' ?>">
                    <?php
                                if (isset($errors['f_name'])) {
                                    echo '<span class="text-danger">'. $errors['f_name'] .'</span>';
                                }
                            ?>

                    <input type="text" name="l_name" class="lname" placeholder="Your last name" autocomplete="off" value="<?= isset($l_name) ? $l_name:'' ?>">
                    <?php
                                if (isset($errors['l_name'])) {
                                    echo "<span class='text-danger'>".$errors['l_name']."</span>";
                                }
                            ?>
                    <select name="department" id="department" class="department">
                                <option value="">--Select--</option>
                                <?php
                                $query = mysqli_query($conn, "SELECT * FROM departments ORDER BY department_name");
                                while($result = mysqli_fetch_assoc($query)):
                                ?>
                                <option value="<?= $result['id']?>"><?= $result['department_name']?></option>
                                <?php
                                    endwhile;
                                ?>
                            </select>
                           <?php
                                if (isset($errors['department'])) {
                                   echo "<span class='text-danger'>".$errors['department']."</span>";
                               }
                           ?>        
                    <input type="number" name="roll" class="rollno" placeholder="your roll no" autocomplete="off" value="<?= isset($roll) ? $roll : ''?>">
                    <?php
                                if (isset($errors['roll'])) {
                                    echo "<span class='text-danger'>".$errors['roll']."</span>";
                                }
                            ?>
                    <input type="text" name="usn" class="usn" placeholder="Your usn" autocomplete="off" value="<?= isset($usn) ? $usn : ''?>">
                    <?php
                                if (isset($errors['usn'])) {
                                    echo "<span class='text-danger'>".$errors['usn']."</span>";
                                }
                            ?>
                    <input type="email" name="email" class="email" placeholder="Your Email" autocomplete="off" value="<?= isset($email) ? $email : ''?>">
                    <?php
                                if (isset($errors['email'])) {
                                    echo "<span class='text-danger'>".$errors['email']."</span>";
                                }
                            ?>
                    <input type="text" name="user_name" class="username" placeholder="Your username" autocomplete="off" value="<?= isset($user_name) ? $user_name : ''?>">
                    <?php
                                if (isset($errors['user_name'])) {
                                    echo "<span class='text-danger'>".$errors['user_name']."</span>";
                                }
                            ?> 
                    <input type="password" name="password" class="password" placeholder="Your password" autocomplete="off" >
                    <?php
                                if (isset($errors['password'])) {
                                    echo "<span class='text-danger'>".$errors['password']."</span>";
                                }
                            ?> 
                    <input type="number" name="phone_no" class="phone" placeholder="Your phone no" autocomplete="off" value="<?= isset($phone_no) ? $phone_no : ''?>">
                    <?php
                                if (isset($errors['phone_no'])) {
                                    echo "<span class='text-danger'>".$errors['phone_no']."</span>";
                                }
                            ?>                              
                    <input type="submit" name="register" class="button" value="register">
                </form>
            </div>
        </div>
    </main>
    <!-- jQuery -->
<script src="../asset/plugins/jquery/jquery.min.js"></script>
<!-- Bootstrap 4 -->
<script src="../asset/plugins/bootstrap/js/bootstrap.bundle.min.js"></script>
<!-- AdminLTE App -->
<script src="../asset/dist/js/adminlte.min.js"></script>
</body>
</html>

