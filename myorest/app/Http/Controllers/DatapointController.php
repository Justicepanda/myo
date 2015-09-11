<?php
  
namespace App\Http\Controllers;
  
use App\Datapoint;
use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
  
header("Access-Control-Allow-Origin: *");
  
class DatapointController extends Controller
{
	public function index()
	{
        $Datapoints  = Datapoint::all();
  
        return response()->json($Datapoints);
    }
  
    public function getDatapoint($id)
    {
        $Datapoint  = Datapoint::find($id);
  
        return response()->json($Datapoint);
    }
  
    public function createDatapoint(Request $request)
    {
        $Datapoint = Datapoint::create($request->all());
  
        return response()->json($Datapoint);
    }
  
    public function deleteDatapoint($id)
    {
        $Datapoint  = Datapoint::find($id);
        $Datapoint->dpDeleted = 1;
        $Datapoint->save();
 
        return response()->json('deleted');
    }
  
    public function updateDatapoint(Request $request, $id)
    {
        $Datapoint  = Datapoint::find($id);
        $Datapoint->dpXRotation = $request->input('dpXRotation');
        $Datapoint->dpYRotation = $request->input('dpYRotation');
        $Datapoint->dpZRotation = $request->input('dpZRotation');
        $Datapoint->dpPod1 = $request->input('dpPod1');
        $Datapoint->dpPod2 = $request->input('dpPod2');
        $Datapoint->dpPod3 = $request->input('dpPod3');
        $Datapoint->dpPod4 = $request->input('dpPod4');
        $Datapoint->dpPod5 = $request->input('dpPod5');
        $Datapoint->dpPod6 = $request->input('dpPod6');
        $Datapoint->dpPod7 = $request->input('dpPod7');
        $Datapoint->dpPod8 = $request->input('dpPod8');
        $Datapoint->sessionID = $request->input('sessionID');
        $Datapoint->dpDeleted = 0;
        $Datapoint->save();
  
        return response()->json($Datapoint);
    }
}
?>