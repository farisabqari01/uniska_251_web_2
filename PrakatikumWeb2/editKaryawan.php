<?php
include('connection.php');

//print_r($_GET);
$id = $_GET['id'];
$query = mysqli_query($connect, "SELECT * FROM karyawan WHERE id='$id'");
$dataKaryawan = mysqli_fetch_assoc($query);
?>


<!doctype html>
<html lang="en">

<head>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.8/dist/css/bootstrap.min.css" rel="stylesheet"
    integrity="sha384-sRIl4kxILFvY47J16cr9ZwB07vP4J8+LH7qKQnuqkuIAvNWLzeN8tE5YBujZqJLB" crossorigin="anonymous">
  <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.13.1/font/bootstrap-icons.min.css">
  <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.8/dist/js/bootstrap.bundle.min.js"
    integrity="sha384-FKyoEForCGlyvwx9Hj09JcYn3nv7wiPVlz7YYwJrWVcXK/BmnVDxM+D2scQbITxI"
    crossorigin="anonymous"></script>
</head>
<title>Data Karyawano</title>

<body>
  <div class="container">
    <h1>Edit Data Karyawan</h1>
    <hr>

    <form action="updateKaryawan.php" method="post">
    <input type="hidden" name="id" value="<?= $dataKaryawan['id']; ?>">
      <div class="mb-3">
        <label for="nama" class="form-label">Nama</label>
        <input type="text" class="form-control" name="nama" value="<?php echo $dataKaryawan['nama'];?>" readonly>
      </div>

      <div class="mb-3">
        <label for="alamat" class="form-label">Alamat</label>
        <input type="text" class="form-control" name="alamat"  value="<?php echo $dataKaryawan['alamat'];?>">
      </div>

      <div class="mb-3">
        <label for="tempat_lahir" class="form-label">Tempat Lahir</label>
        <input type="text" class="form-control" name="tempat_lahir"  value="<?php echo $dataKaryawan['tempat_lahir'];?>">
      </div>

      <div class="mb-3">
        <label for="tanggal_lahir" class="form-label">Tanggal Lahir</label>
        <input type="date" class="form-control" name="tanggal_lahir"  value="<?php echo $dataKaryawan['tanggal_lahir'];?>">
      </div>

      <div class="mb-3">
        <label for="jenis_kelamin" class="form-label">Jenis Kelamin</label>

        <div class="form-check">
          <input class="form-check-input" type="radio" name="jenis_kelamin" id="Laki-laki" value="Laki-laki" <?php echo $dataKaryawan['jenis_kelamin'] == 'Laki-laki' ? 'checked' : ''; ?>>
          <label class="form-check-label" for="Laki-laki">
            Laki-laki
          </label>
        </div>

        <div class="form-check">
          <input class="form-check-input" type="radio" name="jenis_kelamin" id="Perempuan" value="Perempuan" <?php echo $dataKaryawan['jenis_kelamin'] == 'Perempuan' ? 'checked' : ''; ?>>
          <label class="form-check-label" for="Perempuan">
            Perempuan
          </label>
        </div>

      </div>

      <div class="mb-3">
        <button type="reset" class="btn btn-secondary">Reset</button>
        <button type="submit" name="simpan" class="btn btn-primary">Simpan</button>
      </div>

    </form>
  </div>
</body>

</html>