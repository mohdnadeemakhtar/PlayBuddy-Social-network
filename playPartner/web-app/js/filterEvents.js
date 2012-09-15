jQuery(document).ready(function() {
	jQuery(".filterTab").click(function() {
		jQuery(".filterTab").attr('class', "filterTab filterTabInactive");
		jQuery(this).attr('class', "filterTab filterTabActive");
	});
	
});