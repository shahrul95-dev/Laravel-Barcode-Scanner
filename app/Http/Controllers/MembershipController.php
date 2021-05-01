<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;

use App\Models\Membership;
use App\Models\Scan_log;

class MembershipController extends Controller
{
    public function show()
    {
        $memberships = Membership::all();
        
        foreach($memberships as $membership)
        {
            $membership['status'] = $this->status_msg($membership['status']);
        }

        $count = 1;

        return view('membership')->with(compact('memberships','count')); 
    }

    public function status_msg($status)
    {
        
        if($status == 1)
        {
            return 'Active';
        }
        else
        {
            return 'Deactive';
        }
    }

}
