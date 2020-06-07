(function($)
{
	'use strict'; // Start of use strict
	
    $("#importform").submit(function()
	{
		var filecheck = $("#filefield").val();
		if(!filecheck)
		{
			alert("not file");
			return false;
		}
	});
	

})(jQuery); // End of use strict