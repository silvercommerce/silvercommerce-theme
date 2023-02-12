(function ($) {
  const mainImage = $('.commerce-product .product-main-image')

  mainImage.zoom({
    url: mainImage.attr('data-link'),
    on: 'mouseover',
  })

  $('.commerce-product .product-thumbs img').on(
    'click',
    (e) => {
      const thumb = e.target
      const url = thumb.dataset.image
      const zoomURL = thumb.dataset.zoom
      const image = $('.commerce-product .product-main-image img')

      mainImage.css('opacity', 0.5)

      image.attr('src', url).on(
        'load',
        () => {
          mainImage
            .trigger('zoom.destroy')
            .attr('data-link', zoomURL)
            .zoom({
              url: zoomURL,
              on: 'mouseover',
            })

          mainImage.css('opacity', 1)
        },
      )
    },
  )

  $('#Form_PaymentForm').submit((e) => {
    const form = $(this)
    const button = $('#Form_PaymentForm_action_doSubmitPayment')
    button
      .attr('disabled', 'disabled')
      .prepend(
        '<i class="fas fa-spinner fa-pulse"></i>',
      )

    if (form.hasClass('disabled')) {
      e.preventdefault()
    } else {
      form.addClass('diabled')
    }
  })
}(jQuery))
