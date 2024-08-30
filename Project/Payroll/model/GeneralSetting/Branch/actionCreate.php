<?php
    include '../../../Config/conect.php';
    session_start();

    $code=$_POST['branchcode'];
    $branchName=$_POST['branchName'];
    $branchNameKH=$_POST['branchNameKH'];
    $status=$_POST['status'];
    $sql="INSERT INTO `tbl_branch` (`BrachCode`, `BranchName`, `BranchKH`, `status`) 
    VALUES ('$code', '$branchName', '$branchNameKH', '$status')";
    $res=$con->query($sql);
    if($res==true){
        $_SESSION['msg']="Data have been saved.";
        header("location:../../../view/GeneralSetting/index.php");
    }
?>