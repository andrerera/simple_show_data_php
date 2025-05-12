<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Data Mahasiswa</title>
    <script src="https://cdn.tailwindcss.com"></script>
</head>
<body class="bg-gray-100 font-sans">
    <div class="container mx-auto px-4 py-8">
        <h1 class="text-3xl font-bold text-center text-blue-700 mb-6">📘 Data Mahasiswa Universitas</h1>
        <div class="overflow-x-auto">
            <table class="min-w-full bg-white rounded shadow">
                <thead class="bg-blue-600 text-white">
                    <tr>
                        <th class="py-3 px-4 text-left">ID</th>
                        <th class="py-3 px-4 text-left">Nama</th>
                        <th class="py-3 px-4 text-left">NIM</th>
                        <th class="py-3 px-4 text-left">Jenis Kelamin</th>
                        <th class="py-3 px-4 text-left">Kelas</th>
                        <th class="py-3 px-4 text-left">Program Studi</th>
                        <th class="py-3 px-4 text-left">Angkatan</th>
                    </tr>
                </thead>
                <tbody class="text-gray-700">
                    <?php
                    include 'koneksi.php';
                    $result = pg_query($conn, "SELECT * FROM mahasiswa");
                    while ($row = pg_fetch_assoc($result)) {
                        echo "<tr class='border-b hover:bg-gray-100'>
                            <td class='py-2 px-4'>{$row['id']}</td>
                            <td class='py-2 px-4'>{$row['nama']}</td>
                            <td class='py-2 px-4'>{$row['nim']}</td>
                            <td class='py-2 px-4'>{$row['jenis_kelamin']}</td>
                            <td class='py-2 px-4'>{$row['kelas']}</td>
                            <td class='py-2 px-4'>{$row['program_studi']}</td>
                            <td class='py-2 px-4'>{$row['angkatan']}</td>
                        </tr>";
                    }
                    ?>
                </tbody>
            </table>
        </div>
    </div>
</body>
</html>