<?php
include('connection.php');
//print_r($_POST);
if (isset($_POST)) {
    $id = $_POST['id'];
    $nama = $_POST['nama'];
    $alamat = $_POST['alamat'];
    $tempat_lahir = $_POST['tempat_lahir'];
    $tanggal_lahir = $_POST['tanggal_lahir'];
    $jenis_kelamin = $_POST['jenis_kelamin'];
   
   $updateData = mysqli_query($connect, "UPDATE karyawan SET nama='$nama', alamat='$alamat', tempat_lahir='$tempat_lahir', tanggal_lahir='$tanggal_lahir', jenis_kelamin='$jenis_kelamin'
    WHERE id='$id'");

    if ($updateData) {
        echo 'Berhasil disimpan';
    }?>
    <meta http-equiv="refresh" content="2; url=karyawan.php">
    <?php
    } else {
    echo 'Gagal Disimpan';} 
    ?>