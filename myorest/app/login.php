<?php namespace App;
  
use Illuminate\Database\Eloquent\Model;
  
class Login extends Model
{
     
     protected $fillable = ['loginID', 'loginUsername', 'loginPassword', 'loginFirstName', 'loginLastName', 'loginEmail', 'loginDeleted'];
     
}
?>