# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/
	function my_submit() 
	{
	    var x = document.getElementsByClassName("my_submit");
	    for (var i = 0; i < x.length; i++) {
	    	x[i].submit();
	   	}
	}