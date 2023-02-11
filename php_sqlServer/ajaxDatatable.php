<?php
include 'config.php';

## Read value
$draw = $_GET['draw'];
$row = $_GET['start'];
$rowperpage = $_GET['length']; // Rows display per page
$columnIndex = $_GET['order'][0]['column']; // Column index
$columnName = $_GET['columns'][$columnIndex]['data']; // Column name
$columnSortOrder = $_GET['order'][0]['dir']; // asc or desc
$searchValue = $_GET['search']['value']; // Search value

## filter
$filterByNegeri = $_GET['filterByNegeri'];


// Total records
$result = odbc_exec($odbc, "SELECT count(*) AS allcount FROM daerah");
$rows = odbc_fetch_array($result);
$totalRecords = $rows['allcount'];

$query = "SELECT count(*) AS allcount FROM daerah WHERE nama LIKE '%$searchValue%'";
if ($filterByNegeri) {
    $query = $query . " AND kod_negeri = $filterByNegeri";
}
$result = odbc_exec($odbc, $query);
$rows = odbc_fetch_array($result);
$totalRecordwithFilter = $rows['allcount'];


// Fetch records
$qtest = " SELECT * FROM "
    . " ("
    . " SELECT ROW_NUMBER() OVER (ORDER BY " . $columnName . " " . $columnSortOrder . ") rowNum, *"
    . " FROM daerah WHERE nama LIKE '%$searchValue%'";
if ($filterByNegeri) {
    $qtest = $qtest . " AND kod_negeri = $filterByNegeri";
}
$qtest = $qtest . " ) newtbl"
    . " WHERE newtbl.rowNum"
    . " BETWEEN " . $row . " AND " . $row + $rowperpage;
$result = odbc_exec($odbc, $qtest);

$data_arr = [];
while ($rows = odbc_fetch_array($result)) {
    $data_arr[] = [
        "id" => $rows['id'],
        "nama" => $rows['nama'],
        "kod_negeri" => $rows['kod_negeri'],
        "kod_daerah" => $rows['kod_daerah']
    ];
}


## Response
$response = array(
    "draw" => intval($draw),
    "iTotalRecords" => $totalRecords,
    "iTotalDisplayRecords" => $totalRecordwithFilter,
    "aaData" => $data_arr,
    "fetch" => $qtest
);
echo json_encode($response);
