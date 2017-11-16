component rest="true" restpath="setresponse" 
{

 remote void function voidreturn() httpmethod="GET" restpath="voidreturn" produces="application/json" 
 {
   var response = {status=502, content=serializeJSON({message="Using the response set in void return function"}), headers={myheader="cfsummitheader"}};

   restSetResponse(response);

 }
 

 remote struct function nonvoidreturn() httpmethod="GET" restpath="nonvoidreturn" produces="application/json" 
 {
   var response = {status=502, content=serializeJSON({message="Using the rest response set in non-void return function"}), headers={myheader="cfsummitheader"}};

   restSetResponse(response);
  
   var responseforNonRest = {message="Response set in non-void return function for non-REST usage"};
  
   return responseforNonRest;
 }
}