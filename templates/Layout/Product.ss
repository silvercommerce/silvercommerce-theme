<% include Banner %>

<div class="col-md-6 commerce-product">
	<div class="product-images">
		<% with $PrimaryImage %>
			<div class="preloader" style="">
				<i class="fa fa-circle-notch fa-3x fa-spin"></i>
			</div>
		
			<div class="product-main-image" data-link="$Pad(1200,1200).Link">
				<img
					class="img-fluid"
					src="$Pad(600,600).Link"
					alt="$Title"
				>
			</div>
		<% end_with %>

		<% if $SortedImages.exists %>
			<div class="product-thumbs">
				<% loop $SortedImages %>
					<img
						class="img-responsive"
						src="{$Pad(75,75).Link}"
						alt="{$Title}"
						data-image="{$Pad(600,600).Link}"
						data-zoom="{$Pad(1200,1200).Link}"
					>
				<% end_loop %>
			</div>
		<% end_if %>
	</div>
</div>

<div class="col-md-6 commerce-product">
	<div class="catalogue-product-summary">
		<p class="h3 price">
			<strong class="value">
				<% if $IncludesTax %>
					{$PriceAndTax.nice}
				<% else %>
					{$Price.nice}
				<% end_if %>
			</strong>
			<% if TaxString %>
				<small class="tax"> 
					&nbsp;{$TaxString}
				</small>
			<% end_if %>
		</p>

		<p>$Content.FirstParagraph</p>
	</div>

	$AddToCartForm
</div>

<div class="col-sm-12 mt-3 mb-3 product-description">
	<h2><%t CatalogueFrontend.Descriptiion "Description" %></h2>
	<div class="content">$Content</div>
</div>

<%-- Related Products: Only loaded when added through the CMS --%>
<% if $SortedRelatedProducts.exists %>
	<div class="col-sm-12 mt-3 mb-3 product-related">
		<h2><%t CatalogueFrontend.RelatedProducts "Related Products" %></h2>

		<div class="row">
			<% loop $SortedRelatedProducts %>
				<div class="col-sm-3 product-related-item">
					<% include ProductSummary %>
				</div>

				<% if $MultipleOf(4) && not $Last %>
					</div><div class="row product-related">
				<% end_if %>
			<% end_loop %>
		</div>
	</div>
<% end_if %>
