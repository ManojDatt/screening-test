jQuery(document).on("ready page:load", function(){
	var fiveSeconds = new Date().getTime()+5000;
	$('#until10s').countdown(fiveSeconds, {elapse: false})
	.on('update.countdown', function(event) {
	    var $this = $(this);
	    $this.html(event.strftime('To end: <span>%H:%M:%S</span>'));
	}).on('finish.countdown', function() {
          			 alert("Time Out..");
          			 $("#finish").submit();
    			});; ;

	$("#test-async").steps({
	  headerTag: "h5",
	  bodyTag: "section",
	  transitionEffect: "slide",
	  enableFinishButton: false
	});
})
