<?php
$odbc = odbc_connect("Driver={SQL Server};Server=localhost\SQLExpress;Database=ajaxfilterpagination;", "sa", "admin@234");
if (!$odbc) {
    die("Connection Failed: - " . $odbc . "<br>" .  odbc_error());
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
$query = "SELECT count(*) AS allcount FROM daerah";
$rows = odbc_fetch_array(odbc_exec($odbc, $query));
$totalRecords = $rows['allcount'];

$query = "SELECT count(*) AS allcount FROM daerah WHERE nama LIKE '%$searchValue%'";
if ($filterByNegeri) {
    $query .= " AND kod_negeri = $filterByNegeri";
}
$rows = odbc_fetch_array(odbc_exec($odbc, $query));
$totalRecordwithFilter = $rows['allcount'];

// Fetch records
$query = " SELECT * FROM ("
    . " SELECT ROW_NUMBER() OVER (ORDER BY $columnName $columnSortOrder) rowNum, * FROM daerah"
    . " WHERE nama LIKE '%$searchValue%'";
if ($filterByNegeri) {
    $query .= " AND kod_negeri = $filterByNegeri";
}
$query .= " ) newtbl WHERE newtbl.rowNum BETWEEN $row AND " . $row + $rowperpage;
$result = odbc_exec($odbc, $query);

$data_arr = [];
while ($rows = odbc_fetch_array($result)) {
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
