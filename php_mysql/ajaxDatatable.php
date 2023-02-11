<?php
$conn = mysqli_connect("localhost", "root", "", "ajaxfilterpagination");
if (!$conn) {
    die("Connection Failed: " . mysqli_connect_error());
}

$draw = $_GET['draw'];
$row = $_GET['start'];
$rowperpage = $_GET['length']; // Rows display per page
$columnIndex = $_GET['order'][0]['column']; // Column index
$columnName = $_GET['columns'][$columnIndex]['data']; // Column name
$columnSortOrder = $_GET['order'][0]['dir']; // asc or desc
$searchValue = $_GET['search']['value']; // Search value

// filter
$filterByNegeri = $_GET['filterByNegeri'];

// Total records
$query = "SELECT COUNT(*) AS allcount FROM daerah";
$result = mysqli_query($conn, $query);
$rows = mysqli_fetch_array($result);
$totalRecords = $rows['allcount'];

$query = "SELECT COUNT(*) AS allcount FROM daerah WHERE nama LIKE '%$searchValue%'";
if ($filterByNegeri) {
    $query .= " AND kod_negeri = $filterByNegeri";
}
$result = mysqli_query($conn, $query);
$rows = mysqli_fetch_array($result);
$totalRecordwithFilter = $rows['allcount'];

// Fetch records
$query = "SELECT * FROM daerah WHERE nama LIKE '%$searchValue%'";
if ($filterByNegeri) {
    $query .= " AND kod_negeri = $filterByNegeri";
}
$query .= " ORDER BY $columnName $columnSortOrder LIMIT $row, $rowperpage";
$result = mysqli_query($conn, $query);

$data_arr = [];
while ($rows = mysqli_fetch_array($result)) {
    $data_arr[] = [
        "id" => $rows['id'],
        "nama" => $rows['nama'],
        "kod_negeri" => $rows['kod_negeri'],
        "kod_daerah" => $rows['kod_daerah']
    ];
}

$response = [
    "draw" => intval($draw),
    "iTotalRecords" => $totalRecords,
    "iTotalDisplayRecords" => $totalRecordwithFilter,
    "aaData" => $data_arr,
];

echo json_encode($response);
