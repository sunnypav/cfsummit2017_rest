
<cffunction name="onRESTRequest" returntype="any" output="true"> 
 	
<cfargument type="string" name="cfcname" required=true> 
 	<cfargument type="string" name="method" required=true> 
 	<cfargument type="struct" name="args" required=true> 
 	<cflog text="onRESTRequest() Before">  <!--- Dump request details --->
		
	<cfif isDefined("url.apikey") && url.apikey == "foobared">
		<cfinvoke component = "#cfcname#" method = "#method#" argumentCollection  = "#args#" returnVariable = "resultval"> 
		<cflog text="onRESTRequest() After"> 
		<cfreturn "#resultval#"> 
	<cfelse>
		<cfset response = structnew()>
		<cfset response["status"] = 401>
		<cfset response["content"] = serializeJSON({message="API Key is missing or invalid"})>
		<cfset response["headers"] = {"X-APP-STATUS-CODE"="401"}>
		<cfset restSetResponse(response)>
		<cfreturn response>
	</cfif>  
   
</cffunction>
