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
            $countryName = $this->_request['country'];
            $sql="SELECT * FROM states s";
            if($countryName!='' && $countryName!='undefined')
            {
                $sql.=" join country c on s.CountryID = c.ContryID where c.CountryName = '".$countryName."'";
            }
            //echo $sql;
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
            $stateName = $this->_request['state'];
            	$sql="SELECT * FROM city c ";
                if($stateName!='' && $stateName!='undefined')
                {
                    $sql.=" join states s on c.StateID = s.StateID where s.StateName='".$stateName."'";
                }
                //echo $sql;
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
          
        public function getCityIdByName($cityName)
        {
             $sql = "select * from city where CityName ='".$cityName."'";
              $rows = $this->executeGenericDQLQuery($sql);
              $cityId = $rows[0]['CityID'];
              return  $cityId;    
        }
        /* stay  service starts */
        public function getHotelDetails()
        {

         $startPrice = intval ($this->_request['startPrice']);
         $endPrice = $this->_request['endPrice'] != "undefined" ? intval ($this->_request['endPrice']) : -1;
         
          $sql="select distinct h.id hotelId , h.Name hotelName , h.Address address , h.Phone1 phone1 , h.Phone2 phone2, h.Phone3 phone3 ,".
                "h.Mobile mobile , h.Fax fax , h.Email email , h.Website webSite , h.reservation_authority reservationAuthority ,".
                "h.Category category , h.Facilities facilitites , h.CityId cityId , h.icon_image iconImg, h.home_image homeImg , c.CityName".
                 " from hotels h" .
                 " join city c on c.CityID = h.CityId  ".
                 "  join hotel_rooms hr on hr.hotel_id= h.id";
               //echo $sql;
         if($startPrice!="undefined")
         {

           $sql .= "  where hr.PriceStarts>=$startPrice ";
           if($endPrice > 0) // in case of out bound condition
              $sql .=" and hr.PriceEnds<= $endPrice";
         }
          //echo $sql;
         $hotelDetails = array();
          $rows = $this->executeGenericDQLQuery($sql);
          for($i=0;$i<sizeof($rows);$i++)
          {
            $hotelDetails[$i]['hotelId'] = $rows[$i]['hotelId'];
            $hotelDetails[$i]['hotelName'] = $rows[$i]['hotelName'];
            $hotelDetails[$i]['address'] = $rows[$i]['address'];
            $hotelDetails[$i]['phone1'] = $rows[$i]['phone1'];
            $hotelDetails[$i]['phone2'] = $rows[$i]['phone2'];
            $hotelDetails[$i]['phone3'] = $rows[$i]['phone3'];
            $hotelDetails[$i]['mobile'] = $rows[$i]['mobile'];
            $hotelDetails[$i]['fax'] = $rows[$i]['fax'];
            $hotelDetails[$i]['email'] = $rows[$i]['email'];
            $hotelDetails[$i]['webSite'] = $rows[$i]['webSite'];
            $hotelDetails[$i]['reservationAuthority'] = $rows[$i]['reservationAuthority'];
            $hotelDetails[$i]['category'] = $rows[$i]['category'];
            $hotelDetails[$i]['cityId'] = $rows[$i]['cityId'];
            $hotelDetails[$i]['iconImg'] = $rows[$i]['iconImg'];
            $hotelDetails[$i]['homeImg'] = $rows[$i]['homeImg'];
            $hotelDetails[$i]['facilitites'] = $this->getFacilitiesByIds($rows[$i]['facilitites']);
            $hotelDetails[$i]['roomDetails'] = $this->getRoomDetailsById($rows[$i]['hotelId']);

            
          }
          //echo $sql;
          $this->response($this->json($hotelDetails), 200); 

    			
        }
        public function getRoomDetailsById($hotelId){
          $sql = "select * from hotel_rooms r where r.hotel_id = $hotelId  ";
          $rows = $this->executeGenericDQLQuery($sql);
          $rooms = array();
          for($i=0;$i<sizeof($rows);$i++)
          {
            $rooms[$i]['room_type'] = $rows[$i]['room_type'];
            $rooms[$i]['NoOfRooms'] = $rows[$i]['NoOfRooms'];
            $rooms[$i]['PriceStarts'] = $rows[$i]['PriceStarts'];
            $rooms[$i]['PriceEnds'] = $rows[$i]['PriceEnds'];
          }
          return $rooms;
        }
        public function getFacilitiesByIds($facilityIdArr){
            $arr = array();
            $sql = "select * from facilities where id in($facilityIdArr) ";
            //echo $sql;
            $rows = $this->executeGenericDQLQuery($sql);
            for($i=0;$i<sizeof($rows);$i++)
            {
              array_push($arr, $rows[$i]['facility']);
            }
            return $arr;
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

        public function emailSubmit(){
          $emailData = $this->_request['emailData'];
         // echo json_encode($emailData);
          $subject=$emailData['emailSubject'];
          $enquiryName=$emailData['enquiryName'];
          $enquiryContact=$emailData['enquiryContact'];
          $enquiryQuery=$emailData['enquiryQuery'];
          $toEmail=$emailData['toEmail'];
          
          //echo "Name: $name \n\nContact no: $mobile \n\nAddress: $address\n\nEmail: $email ";

            // $sender = "nabakalebara@goappsolutions.com";
            // $receiver = $toEmail;
           $sender = "cet.rajendra2010@gmail.com";
            $receiver = "rajendrasahoo@riaxe.com";
             

          //  $client_ip = $_SERVER['REMOTE_ADDR'];
            
            $email_body = "Name: $enquiryName \n\nContact no: $enquiryContact \n\Query : $enquiryQuery ";
            
            $email_body_auto_reply = "Hello $enquiryName, \nThank you for sending us message. Your message is highly valuble and essential for us.We will contact you soon . \n\n\nThanks & Regards, \n $sender ";
            
            // $extra = "From: $sender\r\n" . "Reply-To: $sender \r\n" . "X-Mailer: PHP/" . phpversion();
            // $extra_auto_reply = "From: $receiver\r\n" . "Reply-To: $receiver \r\n" . "X-Mailer: PHP/" . phpversion();

            if(mail($receiver,$subject,$email_body))
            {
                  $response = array();
                  $response['status'] = "success";
                  $response['message'] = " message successfully received";
                  $this->response($this->json($response), 200);
                // echo "mail sent !!!";
                 // exit;
            }
            else
            {
              //header("location:index.html");
                // echo "mail falied !!!";
              $response = array();
                  $response['status'] = "error";
                  $response['message'] = " error occured in sending mail";
                  $this->response($this->json($response), 200);
              exit;
            }
        }
        public function getTempleSchedule(){
          $day =  $this->_request['day'];
            $sql="select * from schedule";
          if($day!='')
            $sql.=" where day = '$day'";
          $rows = $this->executeGenericDQLQuery($sql);
          $scheduleDetails['schedule']= array();
          for($i=0;$i<sizeof($rows);$i++)
          {
            $scheduleDetails['schedule'][$i]['id'] = $rows[$i]['id'];
            $scheduleDetails['schedule'][$i]['schedule_name'] = $rows[$i]['schedule_name'];
            $scheduleDetails['schedule'][$i]['schedule_content'] = $rows[$i]['schedule_content'];
            $scheduleDetails['schedule'][$i]['start_time'] = $rows[$i]['start_time'];
            $scheduleDetails['schedule'][$i]['end_time'] = $rows[$i]['end_time'];
            $scheduleDetails['schedule'][$i]['day'] = $day;
          }
          $this->response($this->json($scheduleDetails), 200);
        }
        public function postTrainDetails(){
           $trainNumber =  $this->_request['trainNumber'];
           $trainName =  $this->_request['trainName'];
           $fromCity =  $this->_request['fromCity'];
           $toCity =  $this->_request['toCity'];
           $depValue =  $this->_request['depValue'];
           $arrValue =  $this->_request['arrValue'];
           $days =  $this->_request['days'];
           $trainUrl =  $this->_request['trainUrl'];
           $days = explode(",", $days);
           $sql="select * from  train where TrainNumber=$trainNumber";
           $rows = $this->executeGenericDQLQuery($sql);
           $response = array();
          if(sizeof($rows)>0)
           {
                $response['status'] = "already exist";

           }
           else
           {
             $sql="insert into train(TrainNumber,TrainName,FromStation,ToStation,StartAt,ReachesAt,WebLink,Monday,Tuesday,Wednesday,Thursday,Friday,Saturday,Sunday)".
             "values('$trainNumber','$trainName','$fromCity','$toCity','$depValue','$arrValue','$trainUrl',$days[0],$days[1],$days[2],$days[3],$days[4],$days[5],$days[6])";             $this->executeGenericDMLQuery($sql);
             $response['status'] = "success";
           }
           $this->response($this->json($response), 200);
            
        }
        public function postFlightDetails(){
           $flightNumber =  $this->_request['flightNumber'];
           $flightName =  $this->_request['flightName'];
           $fromCity =  $this->_request['fromCity'];
           $toCity =  $this->_request['toCity'];
           $depValue =  $this->_request['depValue'];
           $arrValue =  $this->_request['arrValue'];
           $days =  $this->_request['days'];
           $days = explode(",", $days);
           $sql="select * from  flight where FlightNumber=$flightNumber";
           $rows = $this->executeGenericDQLQuery($sql);
           $response = array();
          if(sizeof($rows)>0)
           {
                $response['status'] = "already exist";

           }
           else
           {
             $sql="insert into flight(FlightNumber,FlightName,FromAirport,ToAirport,StartsAt,ReachesAt,Monday,Tuesday,Wednesday,Thursday,Friday,Saturday,Sunday)".
             "values('$flightNumber','$flightName','$fromCity','$toCity','$depValue','$arrValue',$days[0],$days[1],$days[2],$days[3],$days[4],$days[5],$days[6])";             $this->executeGenericDMLQuery($sql);
             $response['status'] = "success";
           }
           $this->response($this->json($response), 200);
            
        }
        public function postBusDetails(){
           $busNumber =  $this->_request['busNumber'];
           $busName =  $this->_request['busName'];
           $fromCity =  $this->_request['fromCity'];
           $toCity =  $this->_request['toCity'];
           $depValue =  $this->_request['depValue'];
           $duration =  $this->_request['duration'];
           $sql="select * from  bus where BusNumber=$busNumber";
           $rows = $this->executeGenericDQLQuery($sql);
           $response = array();
          if(sizeof($rows)>0)
           {
                $response['status'] = "already exist";

           }
           else
           {
             $sql="insert into bus(BusNumber,BusName,FromStation,ToStation,StartsAt,  Duration)".
             "values('$busNumber','$busName','$fromCity','$toCity','$depValue','$duration')";             
             $this->executeGenericDMLQuery($sql);
             $response['status'] = "success";
           }
           $this->response($this->json($response), 200);
            
        }
        public function postScheduleDetails(){
           $scheduleName =  $this->_request['scheduleName'];
           $scheduleContent =  $this->_request['scheduleContent'];
           $startTime =  $this->_request['startTime'];
           $endTime =  $this->_request['endTime'];
           $day =  $this->_request['day'];
           $sql="select * from  schedule where schedule_name='$scheduleName'";
           $rows = $this->executeGenericDQLQuery($sql);
           $response = array();
          if(sizeof($rows)>0)
           {
                $response['status'] = "already exist";

           }
           else
           {
             $sql="insert into schedule(schedule_name,schedule_content,start_time,end_time,day)".
             "values('$scheduleName','$scheduleContent','$startTime','$endTime','$day')";
             $this->executeGenericDMLQuery($sql);
             $response['status'] = "success";
           }
           $this->response($this->json($response), 200);
            
        }

        public function postHotelDetails(){
           $hotelData =  $this->_request['hotelData'];
           //print_r($hotelData);
           $facilitiesIds ='';
           $failedIndex='';
           for($i=0 ; $i<sizeof($hotelData['facilities']);$i++)
           {
              if($hotelData['facilities'][$i]['check']=="true")
              {

                $facilitiesIds.=$hotelData['facilities'][$i]['id'].",";
              } 
           }
           $facilitiesIds = substr($facilitiesIds,0,strlen($facilitiesIds)-1);

           $sql="select * from hotels where Name="."'".$hotelData['hotelName']."'";//.$hotelData['hotelName'];
           //echo $sql;
           $rows = $this->executeGenericDQLQuery($sql);

           if(sizeof($rows) > 0)
           {
            // hotel exists activate update
           
           }
           else
           {
              // get cityId
              // $sql = "select * from city where CityName ='".$hotelData['city']."'";
              // $rows = $this->executeGenericDQLQuery($sql);
              $cityId = $this->getCityIdByName($hotelData['city']);
              // insert hotel details
              $sql = "insert into hotels(Name,Address,Phone1,Phone2,Phone3,Mobile,Fax,Email,Website,reservation_authority,Category,Facilities,CityId,icon_image,home_image) values('".$hotelData['hotelName']."','".$hotelData['hotelAddress']."' , ".$hotelData['phone1'].",".$hotelData['phone2'].",".$hotelData['phone3'].",".$hotelData['mobile'].",".$hotelData['fax'].",'".$hotelData['mail']."','".$hotelData['webSite']."','".$hotelData['reserv_auth']."',".$hotelData['starCount'].",'".$facilitiesIds."',".$cityId.",'".$hotelData['iconImgPath']."','".$hotelData['homeImgPath']."')";

              $hotelId= $this->executeGenericInsertQuery($sql);
             
              // insert into hotel rooms with hotel id as foreign key
              for($i=0;$i<sizeof($hotelData['roomFacilities']);$i++)
              {
                $sql="insert into hotel_rooms(room_type,NoOfRooms,PriceStarts,PriceEnds,hotel_id) values('".$hotelData['roomFacilities'][$i]['room_type']."',".$hotelData['roomFacilities'][$i]['NoOfRooms'].",".$hotelData['roomFacilities'][$i]['PriceStarts'].",".$hotelData['roomFacilities'][$i]['PriceEnds'].",".$hotelId.")";
                $this->executeGenericInsertQuery($sql);

              }
           }
        }

        public function postGuestHouseDetails(){
           $guestHouseData =  $this->_request['guestHouseData'];
           //print_r($guestHouseData);
           $facilitiesIds ='';
           $failedIndex='';
           for($i=0 ; $i<sizeof($guestHouseData['facilities']);$i++)
           {
              if($guestHouseData['facilities'][$i]['check']=="true")
              {

                $facilitiesIds.=$guestHouseData['facilities'][$i]['id'].",";
              } 
           }
           $facilitiesIds = substr($facilitiesIds,0,strlen($facilitiesIds)-1);

           $sql="select * from guest_house where Name="."'".$guestHouseData['name']."'";//.$guestHouseData['hotelName'];
           //echo $sql;
           $rows = $this->executeGenericDQLQuery($sql);

           if(sizeof($rows) > 0)
           {
            // echo "guest house exists activate update";
           
           }
           else
           {
              
              $cityId = $this->getCityIdByName($guestHouseData['city']);
              //$cityId = 1;
              // insert guest_house details
              $sql = "insert into guest_house(Name,Address,Phone1,Phone2,Phone3,Mobile,Website,Category,Facilities,CityId,icon_image,home_image) values('".$guestHouseData['name']."','".$guestHouseData['address']."' , ".$guestHouseData['phone1'].",".$guestHouseData['phone2'].",".$guestHouseData['phone3'].",".$guestHouseData['mobile'].",'".$guestHouseData['webSite']."',".$guestHouseData['starCount'].",'".$facilitiesIds."',".$cityId.",'".$guestHouseData['iconImgPath']."','".$guestHouseData['iconImgPath']."')";

              $guestHouseId = $this->executeGenericInsertQuery($sql);
             //echo $sql;
              
           }
        }

        public function postResturantDetails(){
           $resturantData =  $this->_request['resturantData'];
           //print_r($resturantData);
           $facilitiesIds ='';
           $failedIndex='';
           for($i=0 ; $i<sizeof($resturantData['facilities']);$i++)
           {
              if($resturantData['facilities'][$i]['check']=="true")
              {

                $facilitiesIds.=$resturantData['facilities'][$i]['id'].",";
              } 
           }
           $facilitiesIds = substr($facilitiesIds,0,strlen($facilitiesIds)-1);

           $sql="select * from resturants where Name="."'".$resturantData['name']."'";//.$resturantData['hotelName'];
           //echo $sql;
           $rows = $this->executeGenericDQLQuery($sql);

           if(sizeof($rows) > 0)
           {
            // echo "guest house exists activate update";
           
           }
           else
           {
              
              $cityId = $this->getCityIdByName($resturantData['city']);
              //$cityId = 1;
              // insert resturants details
              $sql = "insert into resturants(Name,Address,Phone1,Phone2,Phone3,Mobile,Website,Category,Facilities,CityId,icon_image,home_image) values('".$resturantData['name']."','".$resturantData['address']."' , ".$resturantData['phone1'].",".$resturantData['phone2'].",".$resturantData['phone3'].",".$resturantData['mobile'].",'".$resturantData['webSite']."',".$resturantData['starCount'].",'".$facilitiesIds."',".$cityId.",'".$resturantData['iconImgPath']."','".$resturantData['iconImgPath']."')";

              $guestHouseId = $this->executeGenericInsertQuery($sql);
             //echo $sql;
              
           }
        }
        public function postCofeeShopDetails(){
           $cofeeShopData =  $this->_request['cofeeShopData'];
           //print_r($cofeeShopData);
           $facilitiesIds ='';
           $failedIndex='';
           for($i=0 ; $i<sizeof($cofeeShopData['facilities']);$i++)
           {
              if($cofeeShopData['facilities'][$i]['check']=="true")
              {

                $facilitiesIds.=$cofeeShopData['facilities'][$i]['id'].",";
              } 
           }
           $facilitiesIds = substr($facilitiesIds,0,strlen($facilitiesIds)-1);

           $sql="select * from coffee_shops where Name="."'".$cofeeShopData['name']."'";//.$cofeeShopData['hotelName'];
           //echo $sql;
           $rows = $this->executeGenericDQLQuery($sql);

           if(sizeof($rows) > 0)
           {
            // echo "guest house exists activate update";
           
           }
           else
           {
              
              $cityId = $this->getCityIdByName($cofeeShopData['city']);
              //$cityId = 1;
              // insert coffee_shops details
              $sql = "insert into coffee_shops(Name,Address,Phone1,Phone2,Phone3,Mobile,Website,Category,Facilities,CityId,icon_image,home_image) values('".$cofeeShopData['name']."','".$cofeeShopData['address']."' , ".$cofeeShopData['phone1'].",".$cofeeShopData['phone2'].",".$cofeeShopData['phone3'].",".$cofeeShopData['mobile'].",'".$cofeeShopData['webSite']."',".$cofeeShopData['starCount'].",'".$facilitiesIds."',".$cityId.",'".$cofeeShopData['iconImgPath']."','".$cofeeShopData['iconImgPath']."')";

              $guestHouseId = $this->executeGenericInsertQuery($sql);
             //echo $sql;
              
           }
        }
        public function getGuestHouseDetails(){
          $startPrice = intval ($this->_request['startPrice']);
          $endPrice = $this->_request['endPrice'] != "undefined" ? intval ($this->_request['endPrice']) : -1;

          $sql = "select * from guest_house g join city c on g.CityId = c.CityID";
          if($startPrice!="undefined")
          {
            $sql.="  where g.start_price>=$startPrice ";
            if($endPrice != -1 )
              $sql.=" and g.end_price<=$endPrice";
          }

          $rows = $this->executeGenericDQLQuery($sql);
          $guestHouseDetails = array();
          for($i=0;$i<sizeof($rows);$i++)
          {
      
            $guestHouseDetails[$i]['Name'] =$rows[$i]['Name'] ;
            $guestHouseDetails[$i]['Address'] =$rows[$i]['Address'] ;
            $guestHouseDetails[$i]['Phone1'] =$rows[$i]['Phone1'] ;
            $guestHouseDetails[$i]['Phone2'] =$rows[$i]['Phone2'] ;
            $guestHouseDetails[$i]['Phone3'] =$rows[$i]['Phone3'] ;
            $guestHouseDetails[$i]['Mobile'] =$rows[$i]['Mobile'] ;
            $guestHouseDetails[$i]['Website'] =$rows[$i]['Website'] ;
            $guestHouseDetails[$i]['Category'] =$rows[$i]['Category'] ;

            $guestHouseDetails[$i]['Facilities'] =$this->getFacilitiesByIds($rows[$i]['Facilities']);
            $guestHouseDetails[$i]['CityId'] =$rows[$i]['CityId'] ;
            $guestHouseDetails[$i]['icon_image'] =$rows[$i]['icon_image'] ;
            $guestHouseDetails[$i]['home_image'] =$rows[$i]['home_image'] ;

          
          }
          $this->response($this->json($guestHouseDetails), 200);

        }
        public function getResturantDetails(){

          $startPrice = intval ($this->_request['startPrice']);
          $endPrice = $this->_request['endPrice'] != "undefined" ? intval ($this->_request['endPrice']) : -1;
         
          $sql = "select * from resturants r join city c on r.CityId = c.CityID";
         if($startPrice!="undefined")
          {
            $sql.="  where r.start_price>=$startPrice ";
            if($endPrice != -1 )
              $sql.=" and r.end_price<=$endPrice";
          }
          $rows = $this->executeGenericDQLQuery($sql);
          $resturantDetails = array();
          for($i=0;$i<sizeof($rows);$i++)
          {
      
            $resturantDetails[$i]['Name'] =$rows[$i]['Name'] ;
            $resturantDetails[$i]['Address'] =$rows[$i]['Address'] ;
            $resturantDetails[$i]['Phone1'] =$rows[$i]['Phone1'] ;
            $resturantDetails[$i]['Phone2'] =$rows[$i]['Phone2'] ;
            $resturantDetails[$i]['Phone3'] =$rows[$i]['Phone3'] ;
            $resturantDetails[$i]['Mobile'] =$rows[$i]['Mobile'] ;
            $resturantDetails[$i]['Website'] =$rows[$i]['Website'] ;
            $resturantDetails[$i]['Category'] =$rows[$i]['Category'] ;
            $resturantDetails[$i]['Facilities'] =$this->getFacilitiesByIds($rows[$i]['Facilities']);
            $resturantDetails[$i]['CityId'] =$rows[$i]['CityId'] ;
            $resturantDetails[$i]['icon_image'] =$rows[$i]['icon_image'] ;
            $resturantDetails[$i]['home_image'] =$rows[$i]['home_image'] ;
            
          
          }
          $this->response($this->json($resturantDetails), 200);

        }


        public function fetchCoffeeShops(){

          $startPrice = intval ($this->_request['startPrice']);
         $endPrice = $this->_request['endPrice'] != "undefined" ? intval ($this->_request['endPrice']) : -1;
         

          $sql = "select distinct * from coffee_shops cf join city c on cf.CityId = c.CityID ";
          if($startPrice!="undefined")
          {
            $sql.="  where cf.start_price>=$startPrice ";
            if($endPrice != -1 )
              $sql.=" and cf.end_price<=$endPrice";
          }
          $rows = $this->executeGenericDQLQuery($sql);
          $coffeeShops = array();
          for($i=0;$i<sizeof($rows);$i++)
          {
      
            $coffeeShops[$i]['Name'] =$rows[$i]['Name'] ;
            $coffeeShops[$i]['Address'] =$rows[$i]['Address'] ;
            $coffeeShops[$i]['Phone1'] =$rows[$i]['Phone1'] ;
            $coffeeShops[$i]['Phone2'] =$rows[$i]['Phone2'] ;
            $coffeeShops[$i]['Phone3'] =$rows[$i]['Phone3'] ;
            $coffeeShops[$i]['Mobile'] =$rows[$i]['Mobile'] ;
            $coffeeShops[$i]['Website'] =$rows[$i]['Website'] ;
            $coffeeShops[$i]['Category'] =$rows[$i]['Category'] ;
            $coffeeShops[$i]['Facilities'] =$this->getFacilitiesByIds($rows[$i]['Facilities']);
            $coffeeShops[$i]['CityId'] =$rows[$i]['CityId'] ;
            $coffeeShops[$i]['icon_image'] =$rows[$i]['icon_image'] ;
            $coffeeShops[$i]['home_image'] =$rows[$i]['home_image'] ;
            
          
          }
          $this->response($this->json($coffeeShops), 200);

        }
        public function fetchAccomodations(){
          $sql = "select * from temp_accomodation ta";
          if(isset($cityId))
            $sql=" join city c on ta.CityId = c.CityID";

          $startPrice = intval ($this->_request['startPrice']);
          $endPrice = $this->_request['endPrice'] != "undefined" ? intval ($this->_request['endPrice']) : -1;
         

          if($startPrice!="undefined")
          {
            $sql.="  where ta.start_price>=$startPrice ";
            if($endPrice != -1 )
              $sql.=" and ta.end_price<=$endPrice";
          }

          $rows = $this->executeGenericDQLQuery($sql);
          $tempAccm = array();
          for($i=0;$i<sizeof($rows);$i++)
          {
      
            $tempAccm[$i]['id'] =$rows[$i]['id'] ;
            $tempAccm[$i]['name'] =$rows[$i]['name'] ;
            $tempAccm[$i]['address'] =$rows[$i]['address'] ;
            $tempAccm[$i]['contact'] =$rows[$i]['contact'] ;
            $tempAccm[$i]['authority'] =$rows[$i]['authority'] ;
            $tempAccm[$i]['icon_image'] =$rows[$i]['icon_image'] ;
            $tempAccm[$i]['cityId'] =$rows[$i]['cityId'] ;
           }
          $this->response($this->json($tempAccm), 200);

        }
        public function fetchToilets(){
          $sql = "select * from toilet t";
          if(isset($cityId))
            $sql=" join city c on t.CityId = c.CityID";
          $rows = $this->executeGenericDQLQuery($sql);
          $tiolets = array();
          for($i=0;$i<sizeof($rows);$i++)
          {
      
            $tiolets[$i]['id'] =$rows[$i]['id'] ;
            $tiolets[$i]['name'] =$rows[$i]['name'] ;
            $tiolets[$i]['address'] =$rows[$i]['address'] ;
            $tiolets[$i]['contact'] =$rows[$i]['contact'] ;
            $tiolets[$i]['authority'] =$rows[$i]['authority'] ;
            $tiolets[$i]['icon_image'] =$rows[$i]['icon_image'] ;
            $tiolets[$i]['cityId'] =$rows[$i]['cityId'] ;
           }
          $this->response($this->json($tiolets), 200);

        }
        public function fetchDrinkingWater(){
          $sql = "select * from drinking_water d";
          if(isset($cityId))
            $sql=" join city c on d.CityId = c.CityID";
          $rows = $this->executeGenericDQLQuery($sql);
          $tiolets = array();
          for($i=0;$i<sizeof($rows);$i++)
          {
      
            $tiolets[$i]['id'] =$rows[$i]['id'] ;
            $tiolets[$i]['name'] =$rows[$i]['name'] ;
            $tiolets[$i]['address'] =$rows[$i]['address'] ;
            $tiolets[$i]['contact'] =$rows[$i]['contact'] ;
            $tiolets[$i]['authority'] =$rows[$i]['authority'] ;
            $tiolets[$i]['icon_image'] =$rows[$i]['icon_image'] ;
            $tiolets[$i]['cityId'] =$rows[$i]['cityId'] ;
           }
          $this->response($this->json($tiolets), 200);

        }
        /* stay  service ends */

        /* TRAVEL service starts  */
        public function getTrainDetails(){
            $day =  $this->_request['day'];
            $sourceCity =  $this->_request['sourceCity'];
            $destinationCity =  $this->_request['destinationCity'];
            if ($day=='' && $sourceCity=='' && $destinationCity=='')
              $sql="select * from train";
            else if($day=='' && $sourceCity!='' && $destinationCity=='')
              $sql="select * from train where FromStation = '$sourceCity'";
            else if($day=='' && $sourceCity!='' && $destinationCity!='')
              $sql="select * from train where FromStation = '$sourceCity' AND ToStation = '$destinationCity'";
            else if($day=='' && $sourceCity=='' && $destinationCity!='')
              $sql="select * from train where ToStation = '$destinationCity' ";
            else if($day!='' && $sourceCity!='' && $destinationCity!='')
              $sql="select * from train where $day = 1 AND FromStation = '$sourceCity' AND ToStation = '$destinationCity' ";
            else if($day!='' && $sourceCity=='' && $destinationCity!='')
              $sql="select * from train where $day = 1 AND ToStation = '$destinationCity' ";
            else if($day!='' && $sourceCity!='' && $destinationCity=='')
              $sql="select * from train where FromStation = '$sourceCity' AND $day = 1";
            else if($day!='' && $sourceCity=='' && $destinationCity=='')
              $sql="select * from train where $day = 1";
            $rows = $this->executeGenericDQLQuery($sql);
            $trainDetails= array();
            for($i=0 ; $i<sizeof($rows);$i++)
           {
              $trainDetails[$i]['TrainID'] = $rows[$i]['TrainID'];
              $trainDetails[$i]['TrainNumber'] = $rows[$i]['TrainNumber'];
              $trainDetails[$i]['TrainName'] = $rows[$i]['TrainName'];
              $trainDetails[$i]['FromStation'] = $rows[$i]['FromStation'];
              $trainDetails[$i]['ToStation'] = $rows[$i]['ToStation'];
              $trainDetails[$i]['StartAt'] = $rows[$i]['StartAt'];
              $trainDetails[$i]['ReachesAt'] = $rows[$i]['ReachesAt'];
              $trainDetails[$i]['Monday'] = $rows[$i]['Monday'];
              $trainDetails[$i]['Tuesday'] = $rows[$i]['Tuesday'];
              $trainDetails[$i]['Wednesday'] = $rows[$i]['Wednesday'];
              $trainDetails[$i]['Thursday'] = $rows[$i]['Thursday'];
              $trainDetails[$i]['Friday'] = $rows[$i]['Friday'];
              $trainDetails[$i]['Saturday'] = $rows[$i]['Saturday'];
              $trainDetails[$i]['Sunday'] = $rows[$i]['Sunday'];
              $trainDetails[$i]['CityID'] = $rows[$i]['CityID'];
              $trainDetails[$i]['WebLink'] = $rows[$i]['WebLink'];
           }
            $this->response($this->json($trainDetails), 200);

        }
        public function getFlightDetails(){

            $day =  $this->_request['day'];
            $sourceCity =  $this->_request['sourceCity'];
            $destinationCity =  $this->_request['destinationCity'];
            if ($day=='' && $sourceCity=='' && $destinationCity=='')
              $sql="select * from flight";
            else if($day=='' && $sourceCity!='' && $destinationCity=='')
              $sql="select * from flight where FromAirport = '$sourceCity'";
            else if($day=='' && $sourceCity!='' && $destinationCity!='')
              $sql="select * from flight where FromAirport = '$sourceCity' AND ToAirport = '$destinationCity'";
            else if($day=='' && $sourceCity=='' && $destinationCity!='')
              $sql="select * from flight where ToAirport = '$destinationCity' ";
            else if($day!='' && $sourceCity!='' && $destinationCity!='')
              $sql="select * from flight where $day = 1 AND FromAirport = '$sourceCity' AND ToAirport = '$destinationCity' ";
            else if($day!='' && $sourceCity=='' && $destinationCity!='')
              $sql="select * from flight where $day = 1 AND ToAirport = '$destinationCity' ";
            else if($day!='' && $sourceCity!='' && $destinationCity=='')
              $sql="select * from flight where FromAirport = '$sourceCity' AND $day = 1";
            else if($day!='' && $sourceCity=='' && $destinationCity=='')
              $sql="select * from flight where $day = 1";
            $rows = $this->executeGenericDQLQuery($sql);
            $flightDetails= array();
            for($i=0 ; $i<sizeof($rows);$i++)
           {
              $flightDetails[$i]['FlightID'] = $rows[$i]['FlightID'];
              $flightDetails[$i]['FlightNumber'] = $rows[$i]['FlightNumber'];
              $flightDetails[$i]['FlightName'] = $rows[$i]['FlightName'];
              $flightDetails[$i]['FromAirport'] = $rows[$i]['FromAirport'];
              $flightDetails[$i]['ToAirport'] = $rows[$i]['ToAirport'];
              $flightDetails[$i]['StartsAt'] = $rows[$i]['StartsAt'];
              $flightDetails[$i]['ReachesAt'] = $rows[$i]['ReachesAt'];
              $flightDetails[$i]['Sunday'] = $rows[$i]['Sunday'];
              $flightDetails[$i]['Monday'] = $rows[$i]['Monday'];
              $flightDetails[$i]['Tuesday'] = $rows[$i]['Tuesday'];
              $flightDetails[$i]['Wednesday'] = $rows[$i]['Wednesday'];
              $flightDetails[$i]['Thursday'] = $rows[$i]['Thursday'];
              $flightDetails[$i]['Friday'] = $rows[$i]['Friday'];
              $flightDetails[$i]['Saturday'] = $rows[$i]['Saturday'];     
           }
            $this->response($this->json($flightDetails), 200);
        }

         public function getBusDetails(){

            $source = $this->_request['source'];
            $destination = $this->_request['destination'];
            if($source == '' && $destination == '')
              $sql="select * from bus b ";
            else if($source != '' && $destination == '') 
              $sql="select * from bus b where b.FromStation='".$source."'";
            else if($source == '' && $destination != '') 
              $sql="select * from bus b where b.ToStation='".$destination."'";
            else if($source != '' && $destination != '') 
              $sql="select * from bus b where b.FromStation='".$source."' AND b.ToStation='".$destination."'";
            $rows = $this->executeGenericDQLQuery($sql);
            $busDetails= array();
            for($i=0 ; $i<sizeof($rows);$i++)
           {
              $busDetails[$i]['BusID'] = $rows[$i]['BusID'];
              $busDetails[$i]['BusNumber'] = $rows[$i]['BusNumber'];
              $busDetails[$i]['BusName'] = $rows[$i]['BusName'];
              $busDetails[$i]['FromStation'] = $rows[$i]['FromStation'];
              $busDetails[$i]['ToStation'] = $rows[$i]['ToStation'];
              $busDetails[$i]['StartsAt'] = $rows[$i]['StartsAt'];
              $busDetails[$i]['Duration'] = $rows[$i]['Duration'];
              $busDetails[$i]['CityId'] = $rows[$i]['CityId'];
              
           }
            $this->response($this->json($busDetails), 200);

        }

        public function getTrafficInfo(){
          $dayType =  $this->_request['dayType'];
          $travelType =  $this->_request['travelType'];

          $sql = "select Details_Info from traffic_mobility where Day_Type = '$dayType' AND Travel_Mode = '$travelType'";
          $rows = $this->executeGenericDQLQuery($sql);
          $trafficInfo = array();
          $trafficInfo['Info'] = $rows[0]['Details_Info'];
          $this->response($this->json($trafficInfo), 200);
        }

        public function postTrafficDetails(){
           $dayType =  $this->_request['dayType'];
           $travelMode =  $this->_request['travelMode'];
           $city =  $this->_request['city'];
           $info =  $this->_request['info'];
           $sql="select * from  traffic_mobility where Travel_Mode='".$travelMode."' AND Day_Type='".$dayType."'";
           //$rows = $this->executeGenericDQLQuery($sql);
           $response = array();
          if(sizeof($rows)>0)
           {
                $response['status'] = "already exist";

           }
           else
           {
             $sql="insert into traffic_mobility(Day_Type,Travel_Mode,Details_Info,City_id)".
             "values('".$dayType."','".$travelMode."','".$info."',$city)"; 
             //$this->executeGenericDMLQuery($sql);
             $response['status'] = "success";
           }
           //echo $sql;
           $this->response($this->json($response), 200);
            
        }



        /*money service starts  */

        public function postBranchDetails(){
           $branchName =  $this->_request['branchName'];
           $address =  $this->_request['address'];
           $city =  $this->_request['city'];
           $branchMng =  $this->_request['branchMng'];
           $contact =  $this->_request['contact'];
           $forexMng =  $this->_request['forexMng'];
           $sql="insert into branches(Name,address,contact_number,branch_manager,forex_manager,city_id)".
             "values('".$branchName."','".$address."','".$contact."','".$branchMng."','".$forexMng."',$city)"; 
             $this->executeGenericDMLQuery($sql);
            $response['status'] = "success";
           $this->response($this->json($response), 200);  
        }
        public function postForexDetails(){
           $branchName =  $this->_request['branchName'];
           $address =  $this->_request['address'];
           $city =  $this->_request['city'];
           $branchMng =  $this->_request['branchMng'];
           $contact =  $this->_request['contact'];
           $forexMng =  $this->_request['forexMng'];
           $sql="insert into forex_branch(Name,address,contact_number,branch_manager,forex_manager,city_id)".
             "values('".$branchName."','".$address."','".$contact."','".$branchMng."','".$forexMng."',$city)"; 
             $this->executeGenericDMLQuery($sql);
            $response['status'] = "success";
           $this->response($this->json($response), 200);  
        }

        public function getBranches(){
          $cityId =  $this->_request['cityId'];
          $sql = "select * from branches b";
          if(isset($cityId))
          {
            $sql=" join city c on c.CityID = b.city_id where c.CityID = $cityId";
          }
          $rows = $this->executeGenericDQLQuery($sql);
          $branches = array();
          for($i=0 ; $i<sizeof($rows);$i++)
           {
              $branches[$i]['id'] = $rows[$i]['id'];
              $branches[$i]['Name'] = $rows[$i]['Name'];
              $branches[$i]['address'] = $rows[$i]['address'];
              $branches[$i]['contact_number'] = $rows[$i]['contact_number'];
              $branches[$i]['branch_manager'] = $rows[$i]['branch_manager'];
              $branches[$i]['forex_manager'] = $rows[$i]['forex_manager'];
              $branches[$i]['city_id'] = $rows[$i]['city_id'];

           }
          $this->response($this->json($branches), 200);
        }
        public function getForexBranches(){
          $cityId =  $this->_request['cityId'];
          $sql = "select * from forex_branch f";
          if(isset($cityId))
          {
            $sql=" join city c on c.CityID = f.city_id where c.CityID = $cityId";
          }
          $rows = $this->executeGenericDQLQuery($sql);
          $branches = array();
          for($i=0 ; $i<sizeof($rows);$i++)
           {
              $branches[$i]['id'] = $rows[$i]['id'];
              $branches[$i]['Name'] = $rows[$i]['Name'];
              $branches[$i]['address'] = $rows[$i]['address'];
              $branches[$i]['contact_number'] = $rows[$i]['contact_number'];
              $branches[$i]['branch_manager'] = $rows[$i]['branch_manager'];
              $branches[$i]['forex_manager'] = $rows[$i]['forex_manager'];
              $branches[$i]['city_id'] = $rows[$i]['city_id'];
              
           }
          $this->response($this->json($branches), 200);
          
        }
        public function addNotification(){
          /*$title =  $this->_request['title'];
          $detail =  $this->_request['detail'];*/
          $title =  "Demo title ";
          $detail =  "Demo detail";
          $date =  date('Y-m-d');
          // $time =  time();
          //*$dateTime =  date('Y-m-d H:i:s')."";
          /*$dateTime = explode(" ", $dateTime);
          $date = $dateTime[0];
          $time = strtotime($dateTime[1]);*/
          $sql = "Insert into notification(title,detail) values ".
          " ('".$title."' , '".$detail."')";
          $this->executeGenericInsertQuery($sql);
          //echo $date."  ...............  ".$time;
          
        }
        public function getNotification(){
          $sql = "select * from notification order by id desc";
          $rows = $this->executeGenericDQLQuery($sql);
          $notifications = array();
          for($i=0 ; $i < 10 && $i<sizeof($rows);$i++) // to get upto 10 latest notifications
           {
              $notifications[$i]['id'] = $rows[$i]['id'];
              $notifications[$i]['title'] = $rows[$i]['title'];
              $notifications[$i]['detail'] = $rows[$i]['detail'];

           }
          $this->response($this->json($notifications), 200);

        }
        /*money service Ends */


        /*parking service starts */

        public function getParkingDetails(){
          $parkingType =  $this->_request['parkingType'];
          $sql = "select * from parking p ";
          if(isset($parkingType) && $parkingType!="undefined")
            $sql .= "  where p.vehicle_name = '".$parkingType."'";
        $rows = $this->executeGenericDQLQuery($sql);
        $parkingDetails = array();
          for($i=0 ; $i<sizeof($rows);$i++)
           {
              $parkingDetails[$i]['id'] = $rows[$i]['id'];
              $parkingDetails[$i]['vehicle_name'] = $rows[$i]['vehicle_name'];
              $parkingDetails[$i]['content'] = $rows[$i]['content'];
              $parkingDetails[$i]['address'] = $rows[$i]['address'];

           }
           //echo $sql;
          $this->response($this->json($parkingDetails), 200);
        }
        /*parking service ends*/


        /*codes for emergency contact starts*/

        // used to get selected emergency contact deatils that would be selected from 
        // health care and sanitation options
        // possible values - hospitals, trauma care , toilets etc.
        // the type of table to be accessed would be come from the request itself
        public function fetchSelectedEmergencyContact(){
            $tableType =  $this->_request['tableType'];
            $sql = "select * from $tableType join city c on $tableType.cityId = c.CityID";
            $rows  = $this->executeGenericDQLQuery($sql);
            for($i=0 ; $i<sizeof($rows);$i++)
           {
              $parkingDetails[$i]['id'] = $rows[$i]['id'];
              $parkingDetails[$i]['name'] = $rows[$i]['name'];
              $parkingDetails[$i]['address'] = $rows[$i]['address'];
              $parkingDetails[$i]['contact'] = $rows[$i]['contact'];
              $parkingDetails[$i]['authority'] = $rows[$i]['authority'];
              $parkingDetails[$i]['CityName'] = $rows[$i]['CityName'];
              $parkingDetails[$i]['icon_image'] = $rows[$i]['icon_image'];

           }
            $this->response($this->json($parkingDetails), 200);

        }
        public function fetchLocalAuthorities(){
          // $sql = "select * from local_authorities join city c on local_authorities.cityId = 1";
          $sql = "select * from local_authorities";
            $rows  = $this->executeGenericDQLQuery($sql);
            $localAuthorities = array();
            for($i=0 ; $i<sizeof($rows);$i++)
           {
              $localAuthorities[$i]['id'] = $rows[$i]['id'];
              $localAuthorities[$i]['designation'] = $rows[$i]['designation'];
              $localAuthorities[$i]['name'] = $rows[$i]['name'];
              $localAuthorities[$i]['contact'] = $rows[$i]['contact_no'];
              // $localAuthorities[$i]['CityName'] = $rows[$i]['CityName'];
              
           }
            $this->response($this->json($localAuthorities), 200);
        }
        public function fetchTempleAdmin(){
          // here city id set to 1 for to fetch data from city 1 i.e puri
          // $sql = "select * from local_authorities join city c on local_authorities.cityId = 1";
          $sql = "select * from temple_admin ";
            $rows  = $this->executeGenericDQLQuery($sql);
            $localAuthorities = array();
            for($i=0 ; $i<sizeof($rows);$i++)
           {
              $localAuthorities[$i]['id'] = $rows[$i]['id'];
              $localAuthorities[$i]['designation'] = $rows[$i]['designation'];
              $localAuthorities[$i]['name'] = $rows[$i]['name'];
              $localAuthorities[$i]['contact'] = $rows[$i]['contact_no'];
              // $localAuthorities[$i]['CityName'] = $rows[$i]['CityName'];
              
           }
            $this->response($this->json($localAuthorities), 200);
        }
        /*codes for emergency contact ends*/

	}
	
	$api = new API;
	$api->processApi();
?>