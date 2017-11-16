

<cfcomponent>
<cfset this.name = "complex">
<cfset this.restsettings.restenabled="true">

<cffunction name="onApplicationStart" returnType="boolean"> 
<cfscript>
    import student;
	import address;
    var student = createobject("component","student");
	var address = createobject("component","address");
	address.streetname="Prestige TechPark";
	address.pincode=123456;
	
	student.name = "Joe";
	student.age = 22;
	student.address=address;
	Application.std = student;
	return true;
</cfscript>
 
</cffunction>

</cfcomponent>



