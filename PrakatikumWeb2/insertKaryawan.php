<?php
include('connection.php');
//print_r($_POST);
if (isset($_POST)) {
    $nama = $_POST['nama'];
    $alamat = $_POST['alamat'];
    $tempat_lahir = $_POST['tempat_lahir'];
    $tanggal_lahir = $_POST['tanggal_lahir'];
    $jenis_kelamin = $_POST['jenis_kelamin'];
    $insertData = mysqli_query($connect, "INSERT INTO karyawan (nama, alamat, tempat_lahir, tanggal_lahir, jenis_kelamin) VALUES
    ('$nama','$alamat','$tempat_lahir','$tanggal_lahir','$jenis_kelamin')");

    if ($insertData) {
        echo 'Berhasil disimpan';
    }?>
    <meta http-equiv="refresh" content="2; url=karyawan.php">
    <?php
    } else {
    echo 'Gagal Disimpan';} 
    ?>