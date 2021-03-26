jQuery.noConflict();

(function($) {
	var main_image = $('.commerce-product .product-main-image');

	main_image.zoom({
		url: main_image.attr('data-link'),
		on: 'mouseover'
	});

	$('.match-height').matchHeight();

	$('.match-height').imagesLoaded(function() {
		$.fn.matchHeight._update();
	});

	$('.commerce-product .product-thumbs img').on("click", function(e) {
		var url = $(this).attr("data-image");
		var zoom_url = $(this).attr("data-zoom");
		var image = $(".commerce-product .product-main-image img");

		main_image.css('opacity', 0.5);

		image.attr("src", url).on("load", function() {
			main_image
				.trigger("zoom.destroy")
				.attr("data-link", zoom_url)
				.zoom({
					url: zoom_url,
					on: 'mouseover'
				});

			main_image.css('opacity', 1);
		});

		return;
	});

	$('#Form_PaymentForm').submit(function(e) {
		$form = $(this);
		$button = $('#Form_PaymentForm_action_doSubmitPayment');
		$button.attr('disabled','disabled');
		$button.prepend(
			'<i class="fas fa-spinner fa-pulse"></i>'
		);
		if ($form.hasClass('disabled')) {
			e.preventdefault();
		} else {
			$form.addClass('diabled');
		}
	});

}(jQuery));
