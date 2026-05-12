<?php 
include ('connection.php');
//print_r($_POST['hapus']);
if (isset($_POST['hapus'])) {
    $id = $_POST['hapus'];
    $insertData = mysqli_query($connect, "UPDATE karyawan SET status_id=0 WHERE id='$id' ");

    if ($insertData){
        echo'Data berhasil Dihapus';
        ?>
<meta http-equiv="refresh" content="1; url=karyawan.php">
    <?php    
    }else{
        echo"Data Gagal Dihapus";
    }
}


?>