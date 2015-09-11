<?php
  
namespace App\Http\Controllers;
  
use App\Login;
use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
  
  
class LoginController extends Controller
{
	public function index()
	{
        $Logins  = Login::all();
  
        return response()->json($Logins);
    }
  
    public function getLogin($id)
    {
        $Login  = Login::find($id);
  
        return response()->json($Login);
    }
  
    public function createLogin(Request $request)
    {
        $Login = Login::create($request->all());
  
        return response()->json($Login);
    }
  
    public function deleteLogin($id)
    {
        $Login  = Login::find($id);
        $Login->loginDeleted = 1;
        $Login->save();
 
        return response()->json('deleted');
    }
  
    public function updateLogin(Request $request, $id)
    {
        $Login  = Login::find($id);
        $Login->loginUsername = $request->input('loginUsername');
        $Login->loginPassword = $request->input('loginPassword');
        $Login->loginFirstName = $request->input('loginFirstName');
        $Login->loginLastName = $request->input('loginLastName');
        $Login->loginEmail = $request->input('loginEmail');
        $Login->loginDeleted = 0;
        $Login->save();
  
        return response()->json($Login);
    }
}
?>