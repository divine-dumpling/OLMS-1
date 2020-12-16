<?php
require_once ('connection.php');

if(isset($_POST['edit_profile'])){
    $id = $_POST['id'];
    $fname = $_POST['fname'];
    $lname = $_POST['lname'];
    $department = $_POST['department'];
    $roll = $_POST['roll'];
    $usn = $_POST['usn'];
    $email = $_POST['email'];
    $user_name = $_POST['user_name'];
    $password = $_POST['password'];
    $phone = $_POST['phone_no'];
    $image = $_FILES['img']['name'];
    $t_image = $_FILES['img']['tmp_name'];

    $password_hash = password_hash($password, PASSWORD_DEFAULT);
    $image_extension = explode('.',$image);
    $image_end = end($image_extension);
    $image_name = md5(time().$image).'.'.$image_end;
//    print_r($_POST);
//    echo $password_hash;
//    print_r($_FILES);
//    exit();

    $data = mysqli_query($conn, "SELECT * FROM students WHERE id = '$id' ");
    while ($get_img = mysqli_fetch_assoc($data)) {
        if (file_exists('../../dist/images/students/'.$get_img['img'])) {
            unlink('../../dist/images/students/'.$get_img['img']);
        }
    }

    $result = mysqli_query($conn, "UPDATE students SET fname ='$fname', lname = '$lname', department = '$department', roll = '$roll', usn = '$usn', email = '$email', user_name = '$user_name', password = '$password_hash',  phone_no = '$phone', img = '$image_name', status = '1' WHERE id = '$id'");

    if($result)
    {
        move_uploaded_file($t_image, '../../dist/images/students/'.$image_name);
        header('location:../profile.php');
        $success = "Settings Updated Successfully.";
    }else
    {
        $error = "Something Went Wrong";
    }
}
