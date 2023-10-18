<?php
include 'connect.php';

// Periksa apakah koneksi database berhasil
if (!$conn) {
    die("Koneksi gagal: " . mysqli_connect_error());
}

echo '<select name="id_petugas">';
echo '<option>--Pilih id penjaga--</option>';

$sqlpetugas = "SELECT id_petugas from petugas ORDER BY id_petugas ASC";
$result = mysqli_query($conn, $sqlpetugas);

if ($result) {
    while ($data = mysqli_fetch_assoc($result)) {
        echo '<option>' . $data['id_petugas'] . '</option>';
    }
    mysqli_free_result($result);
} else {
    die("Error: " . mysqli_error($conn));
}

echo '</select>';
?>
