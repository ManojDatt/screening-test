jQuery(document).on("ready page:load", function(){
	  $(function () 
		  { $('#until10s').countdown({until: '30m',}); 
		}); 

	$("#test-async").steps({
	  headerTag: "h5",
	  bodyTag: "section",
	  transitionEffect: "slide"
	});
})
