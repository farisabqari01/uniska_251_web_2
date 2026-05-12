<?php
include('connection.php');
$cari = $_POST['cari'] ?? NULL;
if ($cari != NULL) {
    $query = mysqli_query($connect, "SELECT * FROM karyawan WHERE status_Id = 1 AND (nama LIKE '%$cari%' OR alamat LIKE '%$cari%')  ORDER BY updated_at DESC");
} else {
    $query = mysqli_query($connect, "SELECT * FROM karyawan WHERE status_Id = 1 ORDER BY updated_at DESC");
}
if($query == FALSE){
    die("Gagal QUery".mysqli_error($connect));
}

$result = mysqli_fetch_all($query, MYSQLI_ASSOC);
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
        <div class="card mt-2">
            <div class="card mt-2">
                <div class="card-header">
                    <h1>Data Karyawan</h1>
                    <hr>

                    <div class="d-flex justify-content-between align-items-center flex-wrap">

                        <!-- Tombol Tambah Data -->
                        <a href="tambahKaryawan.php" class="btn btn-primary">
                            <i class="bi bi-plus-lg"></i> Tambah Data
                        </a>

                        <!-- Search -->
                        <form action="" method="post" class="d-flex gap-2">
                            <input type="text" name="cari" class="form-control" placeholder="Cari.....">
                            <button type="submit" class="btn btn-secondary">Cari</button>
                        </form>

                    </div>
                </div>
            </div>

            <div class="card-body">
                <table class="table table-bordered table-striped table-hover">
                    <thead>
                        <tr>
                            <th>No</th>
                            <th>Nama</th>
                            <th>Alamat</th>
                            <th>Tempat, Tanggal Lahir</th>
                            <th>Umur</th>
                            <th>Jenis Kelamin</th>
                            <th>Opsi</th>

                        </tr>
                    </thead>
                    <tbody>
                        <?php
                        $no = 1;
                        foreach ($result as $data) :
                            $lahir = new DateTime($data['tanggal_lahir']);
                            $harini = new DateTime();
                            $selisih = date_diff($lahir, $harini);
                            $umur = $selisih->y;
                        ?>
                            <tr>
                                <td>
                                    <?= $no++; ?>
                                </td>

                                <td>
                                    <?= $data['nama']; ?>
                                </td>

                                <td>
                                    <?= $data['alamat']; ?>
                                </td>

                                <td>
                                    <?= $data['tempat_lahir']; ?>
                                    <?= indonesiaTgl($data['tanggal_lahir']); ?>
                                </td>

                                <td>
                                    <?= $umur ?> Tahun
                                </td>

                                <td>
                                    <?= $data['jenis_kelamin']; ?>
                                </td>

                                <td>
                                    <div class="row">
                                        <div class="col-sm">
                                            <a class="btn btn-sm btn-warning" type="button" href="editKaryawan.php?id=<?= $data['id']; ?>">Edit</a>
                                        </div>
                                        <div class="col-sm">
                                            <form action="hapusKaryawan.php" method="POST">
                                                <button class="btn btn-sm btn-danger"
                                                    type="submit" name="hapus" value="<?= $data['id']; ?>" \
                                                    onclick="return confirm('Yakin menghapus dengan data nama <?= $data['nama']; ?>?')">
                                                    Hapus
                                                </button>
                                            </form>
                                        </div>
                                    </div>
                                </td>
                            </tr>
                        <?php endforeach; ?>
                    </tbody>
                </table>
            </div>
        </div>
    </div>
</body>

</html>