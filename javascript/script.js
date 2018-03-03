jQuery.noConflict();

(function($) {
	var main_image = $('.commerce-product .product-main-image');
	var preloader = $('.commerce-product .preloader');

	main_image.zoom({
		url: main_image.attr('data-link'),
		on: 'mouseover'
	});

	$('.commerce-product .product-thumbs img').on("click", function(e) {
		preloader.show();
		var url = $(this).attr("data-image");
		var zoom_url = $(this).attr("data-zoom");
		var image = $(".commerce-product .product-main-image img");

		image.attr("src", url).on("load", function() {
			preloader.hide();
			main_image
				.trigger("zoom.destroy")
				.attr("data-link", zoom_url)
				.zoom({
					url: zoom_url,
					on: 'mouseover'
				});
		});

		return false;
	});
}(jQuery));
