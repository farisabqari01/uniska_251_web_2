<?php  
$connect = mysqli_connect('localhost','root','','uniska_praktikum');


if (!$connect)
    exit('Gagal Terkoneksi');

function indonesiaTgl($tanggal){
    try{
    $date = new DateTime($tanggal);
    return $date->format('d-m-y');
    }catch (Exception $e){
        return "-";
    }
}



?>