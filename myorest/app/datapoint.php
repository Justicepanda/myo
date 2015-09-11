<?php namespace App;
  
use Illuminate\Database\Eloquent\Model;
  
class DataPoint extends Model
{
     
     protected $fillable = ['dpXRotation', 'dpYRotation', 'dpZRotation', 'dpPod1', 'dpPod2', 'dpPod3', 'dpPod4', 'dpPod5', 'dpPod6', 'dpPod7', 'dpPod8', 'sessionID', 'dpDeleted'];
     
}
?>