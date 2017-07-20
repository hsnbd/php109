<?php

namespace App\Http\Controllers;
use App\product;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;

class BaseController extends Controller
{
   public function index(){
       $alldata = $this->CallRaw("home");
       //return $alldata;
       return view('home')->with("alldata",$alldata);
               
   }
   public function contact(){
       return view('contact');
   }
   public function womens(){
       return view('womens');
   }
//   public function single(){
//       return view('single');
//   }
   public function mens(){
       return view('mens');
   }
   public function checkout(Request $request){
     $spdtid = $request->session()->get('pdtid');
     $sqtyid = $request->session()->get('qtyid');
     
      $selPdt = DB::table('products')
                    ->whereIn('id', $spdtid)
                    ->get();
      
//      echo "<pre>";
//      print_r($selPdt);
//      echo "</pre>";
      
       return view('checkout', compact('selPdt'));
   }
   public function electronics(){
       return view('electronics');
   }
   public function singleView($cname,$scname,$id){
       $allpdt = product::where('id',$id)->first();
       return view('single',compact('allpdt'));
  }
   
   
   
   
   
   
   
  public static function CallRaw($procName, $parameters = null, $isExecute = false) {
    $syntax = '';
    for ($i = 0; $i < count($parameters); $i++) {
      $syntax .= (!empty($syntax) ? ',' : '') . '?';
    }
    $syntax = 'CALL ' . $procName . '(' . $syntax . ');';

    $pdo = DB::connection()->getPdo();
    $pdo->setAttribute(\PDO::ATTR_EMULATE_PREPARES, true);
    $stmt = $pdo->prepare($syntax, [\PDO::ATTR_CURSOR => \PDO::CURSOR_SCROLL]);
    for ($i = 0; $i < count($parameters); $i++) {
      $stmt->bindValue((1 + $i), $parameters[$i]);
    }
    $exec = $stmt->execute();
    if (!$exec)
      return $pdo->errorInfo();
    if ($isExecute)
      return $exec;

    $results = [];
    do {
      try {
        $results[] = $stmt->fetchAll(\PDO::FETCH_OBJ);
      } catch (\Exception $ex) {
        
      }
    } while ($stmt->nextRowset());


    if (1 === count($results))
      return $results[0];
    return $results;
  }
  

            
}
