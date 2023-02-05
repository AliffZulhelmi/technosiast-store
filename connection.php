<?php
# Nama host
$nama_host = "localhost";

# Username bagi SQL
$nama_sql = "root";

# Password bagi SQL
$pass_sql = "";

# Nama database
$nama_db = "technosiast";

#membuka hubungan antara pangkalan data dan sistem.
$condb = mysqli_connect($nama_host, $nama_sql, $pass_sql, $nama_db);

#menguji adakah hubungan berjaya
if (!$condb)
{
    die("Sambungan ke pangkalan data gagal");
}
else
{
    #echo "Sambungan ke pangkalan data berjaya";
}
?>