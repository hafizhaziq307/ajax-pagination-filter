<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">

    <!-- Datatable CSS -->
    <link rel="stylesheet" type="text/css" href="https://cdn.datatables.net/1.10.25/css/jquery.dataTables.min.css" />

    <!-- jQuery Library -->
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>

    <!-- Datatable JS -->
    <script src="https://cdn.datatables.net/1.10.25/js/jquery.dataTables.min.js"></script>
</head>

<body>
    <div>
        <select id="filterNegeri">
            <option value="">All</option>
            <option value="01">Johor</option>
            <option value="02">Kedah</option>
        </select>
    </div>

    <br>

    <table id='daerahTable' width='100%' border="1" style='border-collapse: collapse;'></table>

    <script type="text/javascript">
        $(document).ready(function() {
            let tbl = $('#daerahTable').DataTable({
                processing: true,
                serverSide: true,
                ajax: {
                    url: "ajaxDatatable.php",
                    type: "GET",
                    data: (data) => {
                        data.filterByNegeri = $('#filterNegeri').val();
                    },
                    // success: (success) => console.log(success),
                    error: (error) => console.error(error.responseText),
                },
                columns: [{
                        title: "ID",
                        data: 'id'
                    },
                    {
                        title: "NAMA",
                        data: 'nama'
                    },
                    {
                        title: "KOD NEGERI",
                        data: 'kod_negeri'
                    },
                    {
                        title: "KOD DAERAH",
                        data: 'kod_daerah'
                    },
                ],
            });

            $('#filterNegeri').change(function() {
                tbl.ajax.reload();
            });
        });
    </script>

</body>

</html>