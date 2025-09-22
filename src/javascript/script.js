import ImageZoom from 'js-image-zoom'

(function ($) {
  const mainImage = document
    .querySelector('.commerce-product .product-main-image')

  if (document.body.contains(mainImage)) {
    mainImage
      .querySelector('img')
      .style
      .display = 'none'

    const options = {
      img: mainImage.dataset.link,
      width: mainImage.clientWidth,
      height: mainImage.clientHeight,
      offset: { vertical: 0, horizontal: 10 },
      zoomPosition: 'original',
    }

    window.imageZoom = new ImageZoom(mainImage, options)

    document
      .querySelectorAll('.commerce-product .product-thumbs img')
      .forEach((thumb) => {
        thumb.addEventListener('click', () => {
          const url = thumb.dataset.image
          const zoomURL = thumb.dataset.zoom
          const image = mainImage.querySelector('img')

          mainImage.style.opacity = 0.5
          image.src = url
          image.onload = () => {
            options.img = zoomURL
            window.imageZoom.kill()
            window.imageZoom = new ImageZoom(mainImage, options)
            mainImage.style.opacity = 1
          }
        })
      })
  }

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
      form.addClass('disabled')
    }
  })
}(jQuery))