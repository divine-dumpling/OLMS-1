<?php 
    require_once ("include/connection.php");
    include('include/loginfunction.php');

    if(isset($_SESSION['student_login'])){
        header("location:index.php");
    }
?>

<!DOCTYPE html>
    <html>
        <head>
            <meta charset="utf-8">
            <meta http-equiv="X-UA-Compatible" content="IE=edge">
            <title>Student | Log in</title>
            <!-- Tell the browser to be responsive to screen width -->
            <meta name="viewport" content="width=device-width, initial-scale=1">
            <!-- Font Awesome -->
            <link rel="stylesheet" href="../asset/plugins/fontawesome-free/css/all.min.css">
            <!-- icheck bootstrap -->
            <link rel="stylesheet" href="../asset/plugins/icheck-bootstrap/icheck-bootstrap.min.css">
            <!-- Theme style -->
            <link rel="stylesheet" href="../asset/dist/css/adminlte.min.css">
            <!-- Google Font: Source Sans Pro -->
            <link href="https://fonts.googleapis.com/css?family=Source+Sans+Pro:300,400,400i,700" rel="stylesheet">
            <link rel="stylesheet" href="include/css/login-style.css">
            <link href="https://fonts.googleapis.com/css?family=Raleway:300,400,700&display=swap" rel="stylesheet">         
        
        </head>

            <body>
            <main>
            <div class="background">
            <div class="text">
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
                <h1>Student Login</h1>
                <p>Register a new membership
                <a href="registration.php">Sign up</a></p>
            </div>
            <form action="<?= $_SERVER['PHP_SELF'] ?>" method="post">
            <div class="box" >
                    <input type="Email" name="email "class="email" placeholder="Your Email" autocomplete="off" value="<?= isset($email) ? $email : ''?>">
                    <!--                            --><?php
//                            if (isset($errors['email'])) {
//                                echo "<span class='text-danger'>".$errors['email']."</span>";
//                            }
//                            ?>
                    <input type="password" class="password" placeholder="Your Password" autocomplete="off">
                    <?php
//                            if (isset($errors['email'])) {
//                                echo "<span class='text-danger'>".$errors['email']."</span>";
//                            }
//                            ?>

                                <div class="col-8">
                            <div class="icheck-danger">
                                <input type="checkbox" id="remember">
                                <label for="remember">
                                    Remember Me
                                </label>
                            </div>
                        </div>
                    <input type="submit" name="submit" class="button" value="Sign In">
                    
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