<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;

use App\Models\Scan_log;
use Carbon\Carbon;

use Response;

class BarcodeController extends Controller
{
    public function barcode()
	{
	    return view('barcode');
	}

    public function show()
	{
	    return view('scan');
	}

    public function scan($id)
	{
        $memberships = DB::table('memberships')->where('scan_id', $id)->first();

        if($memberships != NULL)
        {
            echo response()->json($memberships)->getContent();
        }
        else
        {
            echo response()->json('2')->getContent();
        }
	}

    public function insert_log($id)
	{

        $scan_log = DB::table('scan_logs')->where('scan_id', '=', $id)->orderBy('id', 'desc')->first();
        
        $current = Carbon::now('Asia/Kuala_Lumpur');
        
        if($scan_log != NULL)
        {
            $sub = (new Carbon($current))->subSeconds(60);

            if((int)strtotime($scan_log->created_at) < (int)strtotime($sub))
            {
                $memberships = DB::table('memberships')->where('scan_id', $id)->first();

                DB::table('scan_logs')->insert([
                    'memberships_id' => $memberships->id,
                    'scan_id' => $id,
                    'created_at' => Carbon::now('Asia/Kuala_Lumpur'),
                    'updated_at' => Carbon::now('Asia/Kuala_Lumpur'),
                ]);
                
                echo 'Success';
            }
        }
        else
        {
            $memberships = DB::table('memberships')->where('scan_id', $id)->first();

            DB::table('scan_logs')->insert([
                'memberships_id' => $memberships->id,
                'scan_id' => $id,
                'created_at' => Carbon::now('Asia/Kuala_Lumpur'),
                'updated_at' => Carbon::now('Asia/Kuala_Lumpur'),
            ]);
        }
	}

    public function show_log($id)
    {
        $memberships = DB::table('memberships')->where('id', $id)->first();
        
        $scan_log = DB::table('scan_logs')->where('memberships_id', '=', $id)->orderBy('id', 'desc')->get();

        $count = 1;

        if($memberships != NULL)
        return view('membership_log')->with(compact('memberships','count','scan_log')); 
    }
}
