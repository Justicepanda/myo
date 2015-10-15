<?php
  
namespace App\Http\Controllers;
  
use App\AccelerationDatapoint;
use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
  
header("Access-Control-Allow-Origin: *");
  
class AccelerationDatapointController extends Controller
{
	public function index()
	{
        $AccelerationDatapoints  = AccelerationDatapoint::all();
  
        return response()->json($AccelerationDatapoints);
    }
  
    public function getAccelerationDatapoint($id)
    {
        $AccelerationDatapoint  = AccelerationDatapoint::find($id);
  
        return response()->json($AccelerationDatapoint);
    }
  
    public function createAccelerationDatapoint(Request $request)
    {
        $AccelerationDatapoint = AccelerationDatapoint::create($request->all());
  
        return response()->json($AccelerationDatapoint);
    }
  
    public function deleteAccelerationDatapoint($id)
    {
        $AccelerationDatapoint  = AccelerationDatapoint::find($id);
        $AccelerationDatapoint->dpDeleted = 1;
        $AccelerationDatapoint->save();
 
        return response()->json('deleted');
    }
  
    public function updateAccelerationDatapoint(Request $request, $id)
    {
        $AccelerationDatapoint  = AccelerationDatapoint::find($id);
        $AccelerationDatapoint->adpXAcceleration = $request->input('adpXAcceleration');
        $AccelerationDatapoint->adpYAcceleration = $request->input('adpYAcceleration');
        $AccelerationDatapoint->adpZAcceleration = $request->input('adpZAcceleration');
        $AccelerationDatapoint->adpDateTime = $request->input('adpDateTime');
        $AccelerationDatapoint->sessionID = $request->input('sessionID');
        $AccelerationDatapoint->adpDeleted = 0;
        $AccelerationDatapoint->save();
  
        return response()->json($AccelerationDatapoint);
    }
}
?>