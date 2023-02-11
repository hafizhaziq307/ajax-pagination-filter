<?php

namespace App\Http\Controllers;

use App\Models\Daerah;
use Illuminate\Http\Request;

class DaerahController extends Controller
{
    public function index()
    {
        return view('index');
    }

    public function getDaerah(Request $request)
    {
        $draw = $request->draw;
        $start = $request->start;
        $rowperpage = $request->length; // Rows display per page

        $columnIndex_arr = $request->order;
        $columnName_arr = $request->columns;
        $order_arr = $request->order;
        $search_arr = $request->search;

        $columnIndex = $columnIndex_arr[0]['column']; // Column index
        $columnName = $columnName_arr[$columnIndex]['data']; // Column name
        $columnSortOrder = $order_arr[0]['dir']; // asc or desc
        $searchValue = $search_arr['value']; // Search value

        // Total records
        $totalRecords = Daerah::select('count(*) as allcount')->count();

        $totalRecordswithFilter = Daerah::select('count(*) as allcount')
            ->when($request->filterByNegeri, function ($query) use ($request) {
                return $query->where('kod_negeri', $request->filterByNegeri);
            })
            ->where('nama', 'like', '%' . $searchValue . '%')
            ->count();

        // Fetch records
        $records = Daerah::orderBy($columnName, $columnSortOrder)
            ->when($request->filterByNegeri, function ($query) use ($request) {
                return $query->where('kod_negeri', $request->filterByNegeri);
            })
            ->where('nama', 'like', '%' . $searchValue . '%')
            ->select('*')
            ->skip($start)
            ->take($rowperpage)
            ->get();

        $data_arr = [];
        foreach ($records as $record) {
            $data_arr[] = [
                "id" => $record->id,
                "nama" => $record->nama,
                "kod_negeri" => $record->kod_negeri,
                "kod_daerah" => $record->kod_daerah
            ];
        }

        $response = [
            "draw" => intval($draw),
            "iTotalRecords" => $totalRecords,
            "iTotalDisplayRecords" => $totalRecordswithFilter,
            "aaData" => $data_arr,
        ];

        return response()->json($response);
    }
}
