<?php
header('Access-Control-Allow-Origin: *'); 

	require_once("Rest.inc.php");
	//require_once('generatePDF.php');
	//include('simple_html_dom.php'); 
	//require_once('CaptureService.php');  
	//require_once('config/config.php');
	//require 'QueryPath/qp.php';
	
	class API extends REST {
	
		public $data = "";
		
		const DB_SERVER = "localhost";
		const DB_USER = "root";
		const DB_PASSWORD = "";
		//const DB = "magentod_html5tshirtapp_5sept";
		const DB = "nabakalebara";
	
	
  
		private $db = NULL;
		private $proxy = NULL;
		private $storeApiLogin = false;
	
		public function __construct(){
			parent::__construct();
			$this->dbConnect();
		}
		
		private function dbConnect(){
			$this->db = mysql_connect(self::DB_SERVER,self::DB_USER,self::DB_PASSWORD);
			if($this->db)
                mysql_select_db(self::DB, $this->db) or die('ERRROR:'.mysql_error());
		}
		
		public function processApi(){
			$func='';
			if(isset($_REQUEST['service']))
				$func = strtolower(trim(str_replace("/", "", $_REQUEST['service'])));
			else if(isset($_REQUEST['reqmethod']))
				$func = strtolower(trim(str_replace("/", "", $_REQUEST['reqmethod'])));
				
			if($func){	
				//if(function_exists($func))
				if (method_exists($this, $func)) {
					$this->$func();
				} else{
					$this->log('invalid service:'.$func, true, 'log_invalid.txt');
					$this->response('invalid service', 406);
				}
			}
			//$this->response('invalid', 406);
		}
		public function json($data){
                if(is_array($data))
                {
                        $formatted= json_encode($data);
                        return $this->formatJson($formatted);
                }
        }
        private function formatJson($jsonData)
        {
            $formatted = $jsonData;
            $formatted = str_replace('"{', '{', $formatted);
            $formatted = str_replace('}"', '}', $formatted);
            
            $formatted = str_replace('\\', '', $formatted);
            
            
            return $formatted;
        }
		private function isValidCall($apiKey)
		{
			$flag=false;
			$apiKey = mysql_real_escape_string($apiKey);
			
			$sql="SELECT api_key  FROM ".self::TABLE_API_DATA." WHERE api_key ='$apiKey' ";
			$result = mysql_query($sql, $this->db);
			if(mysql_num_rows($result) > 0)
                        {
                            $rows =  mysql_fetch_array($result,MYSQL_ASSOC);
                            $apiKeyDB=$rows['api_key'];
                            $flag =true;
			}
			return $flag;
		}
		
		/*
		START  :: 28.2.15 :: Rajendra kumar sahoo
		*/
        public function executeGenericDQLQuery($query){
                try{
                    if(!$this->db)
                    {
                        $this->db = mysql_connect(self::DB_SERVER,self::DB_USER,self::DB_PASSWORD);
                    }
                    $result = mysql_query($query, $this->db);
                    /* if(mysqli_errno($con) != 0){
                        throw new Exception("Error   :".mysqli_errno($con)."   :  ".mysqli_error($con));
                    } */
                    $rows = array();
                    while($row = mysql_fetch_array($result)){
                        array_push($rows,$row);
                    }
                    //mysqli_close($con);
                    return $rows;
                    
                }
                catch(Exception $e){
                    $response = array();
                    $response['status'] = false;
                    $response['message'] = $e->getMessage();
                    $this->response($this->json($response), 200);
                }
                
            }
            public function executeGenericDMLQuery($query){
                try{
                    $result = mysql_query($query, $this->db);
                    if(mysql_errno($this->db) != 0){
                        throw new Exception("Error   :".mysql_errno($this->db)."   :  ".mysql_error($this->db));
                    }
                }
                catch(Exception $e){
                    $response = array();
                    $response['status'] = false;
                    $response['message'] = $e->getMessage();
                    //echo json_encode($response);
                    $this->response($this->json($response), 200);
                }
            }
            public function executeGenericInsertQuery($query){
                try{
                    $result = mysql_query($query, $this->db);
                    if(mysql_errno($this->db) != 0){
                        throw new Exception("Error   :".mysql_errno($this->db)."   :  ".mysql_error($this->db));
                    }
                    return mysql_insert_id($this->db);
                }
                catch(Exception $e){
                    $response = array();
                    $response['status'] = false;
                    $response['message'] = $e->getMessage();
                    //echo json_encode($response);
                    $this->response($this->json($response), 200);
                }
            }
            public function clearArray($arr){
                unset($arr);
                $arr = array();
                return $arr;
            }
        public function getCountries()
        {	
        	$sql="SELECT * FROM country";
   			$rows = $this->executeGenericDQLQuery($sql);
			$countryDetails = array();
			for($i=0;$i<sizeof($rows);$i++)
			{
				$countryDetails[$i]['id'] = $rows[$i]['ContryID'];
				$countryDetails[$i]['CountryName'] = $rows[$i]['CountryName'];
				$countryDetails[$i]['ISDCode'] = $rows[$i]['ISDCode'];
				$countryDetails[$i]['Currency'] = $rows[$i]['Currency'];

			}
			$this->response($this->json($countryDetails), 200);
        }
        public function getStates()
        {	
        	$sql="SELECT * FROM states";
   			$rows = $this->executeGenericDQLQuery($sql);
			$statesDetails = array();
			for($i=0;$i<sizeof($rows);$i++)
			{
				$statesDetails[$i]['StateID'] = $rows[$i]['StateID'];
				$statesDetails[$i]['StateName'] = $rows[$i]['StateName'];
				$statesDetails[$i]['CountryID'] = $rows[$i]['CountryID'];
				

			}
			$this->response($this->json($statesDetails), 200);
        }
        public function getCity()
        {	
        	$sql="SELECT * FROM city";
            $rows = $this->executeGenericDQLQuery($sql);
			$cityDetails = array();
			for($i=0;$i<sizeof($rows);$i++)
			{
				$cityDetails[$i]['CityID'] = $rows[$i]['CityID'];
				$cityDetails[$i]['CityName'] = $rows[$i]['CityName'];
				$cityDetails[$i]['StateID'] = $rows[$i]['StateID'];
				$cityDetails[$i]['CountryID'] = $rows[$i]['CountryID'];
				
			}
			$this->response($this->json($cityDetails), 200);
        }
        public function getHotelDetails()
        {
			$sql="SELECT * FROM hotels";
			$rows = $this->executeGenericDQLQuery($sql);
			$hotelDetails = array();
			for($i=0;$i<sizeof($rows);$i++)
			{
				$hotelDetails[$i]['id'] = $rows[$i]['id'];
				$hotelDetails[$i]['Name'] = $rows[$i]['Name'];
				$hotelDetails[$i]['Address'] = $rows[$i]['Address'];
				$hotelDetails[$i]['Phone1'] = $rows[$i]['Phone1'];
				$hotelDetails[$i]['Phone2'] = $rows[$i]['Phone2'];
				$hotelDetails[$i]['Phone3'] = $rows[$i]['Phone3'];
				$hotelDetails[$i]['Fax'] = $rows[$i]['Fax'];
				$hotelDetails[$i]['Mobile'] = $rows[$i]['Mobile'];
				$hotelDetails[$i]['Email'] = $rows[$i]['Email'];
				$hotelDetails[$i]['Website'] = $rows[$i]['Website'];
				$hotelDetails[$i]['Category'] = $rows[$i]['Category'];
				$hotelDetails[$i]['Facilities'] = $rows[$i]['Facilities'];
				$hotelDetails[$i]['CityId'] = $rows[$i]['CityId'];
				$hotelDetails[$i]['icon_image'] = $rows[$i]['icon_image'];
				$hotelDetails[$i]['home_image'] = $rows[$i]['home_image'];
				
			}
			$this->response($this->json($hotelDetails), 200);
        }

        public function getFacilities(){
        	$sql="select * from facilities";
        	$rows = $this->executeGenericDQLQuery($sql);
        	$hotelFacilities= array();
        	for($i=0;$i<sizeof($rows);$i++)
        	{
        		$hotelFacilities[$i]['id'] = $rows[$i]['id'];
        		$hotelFacilities[$i]['facility'] = $rows[$i]['facility'];
        	}
        	$this->response($this->json($hotelFacilities), 200);
        }
        public function getHotelRoomDetails(){
        	$sql="select * from hotel_rooms";
        	$rows = $this->executeGenericDQLQuery($sql);
        	$hotelDetails= array();
        	for($i=0;$i<sizeof($rows);$i++)
        	{
        		$hotelDetails[$i]['id'] = $rows[$i]['id'];
        		$hotelDetails[$i]['room_type'] = $rows[$i]['room_type'];
        		$hotelDetails[$i]['NoOfRooms'] = $rows[$i]['NoOfRooms'];
        		$hotelDetails[$i]['PriceStarts'] = $rows[$i]['PriceStarts'];
        		$hotelDetails[$i]['PriceEnds'] = $rows[$i]['PriceEnds'];
        		
        		
        	}
        	$this->response($this->json($hotelDetails), 200);
        }
        public function getTempleSchedule(){
        	$sql="select * from hotel_rooms";
        	$rows = $this->executeGenericDQLQuery($sql);
        	$this->response($this->json($rows), 200);
        }
	}
	
	$api = new API;
	$api->processApi();
?>