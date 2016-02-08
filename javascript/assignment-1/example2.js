/*
Write a JavaScript program to find duplicate values in a JavaScript array.....
*/

var arr=[1,2,3,1,2];
var dis="";
var dup=0;
for(var i=0;i<arr.length;i++)
	{
	if(typeof arr[i] === "string")
	{
	for(var j=i+1;j<arr.length;j++)
		{
		if(arr[i].toupperCase==arr[j].toUpperCase)
			{
				dup=1;
				dis=dis+"Duplicate value "+arr[i]+" found at " +(i+1)+" & "+(j+1)+"\n";
			}
			
		}
	}
	else
	{
	for(var j=i+1;j<arr.length;j++)
		{
		if(arr[i]==arr[j])
			{
				dup=1;
				dis=dis+"Duplicate value "+arr[i]+" found at " +(i+1)+" & "+(j+1)+"\n";
			}
			
		}
	}
	
	}
if(dup==1)
{
	alert(""+dis);
}
else
{
alert("No duplicate records");
} 
