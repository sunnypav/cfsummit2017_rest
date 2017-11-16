component restpath="complexarg" rest="true"
{
    	
    remote any function setstudent(struct x) httpmethod="POST" restpath="setstudent" 
    {
		var student = Application.std;
        student.name = x.name;
	    student.age = x.age;
        student.address.pincode = x.address.pincode;
        student.address.streetname = x.address.streetname;
		
        return student;
    }
        remote any function getstudent() httpmethod="GET" restpath="getstudent" 
    {
       return Application.std;
    }
	
}
