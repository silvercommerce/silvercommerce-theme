<% include Banner %>

<div class="col-md-6 commerce-product">
	<div class="product-images">
		<% with $PrimaryImage %>
			<div class="product-main-image" data-link="$Pad(1200,1200).Link">
				$Pad(600,600)
			</div>
		<% end_with %>

		<% if $SortedImages.exists %>
			<div class="product-thumbs">
				<% loop $SortedImages %>
					<img
						class="img-fluid"
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
		<p class="h3 price catalogue-product-price">
			$NicePrice
		</p>

		<% if $ContentSummary %>
			<p>$ContentSummary</p>
		<% else %>
			<p>$Content.FirstParagraph</p>
		<% end_if %>
	</div>

	$AddToCartForm
	<% if $Tags %>
		<p>
			<strong><%t CatalogueFrontend.Tags "Tags" %>:</strong> 
			<span class="lead">
				<% loop $Tags %>
					<a href="{$Up.Parent.Link}?t={$URLSegment}" class="badge badge-light">$Title</a><% if not $Last %>&nbsp;<% end_if %>
				<% end_loop %>
			</span>
		</p>
	<% end_if %>
</div>

<div class="col-sm-12 mt-3 mb-3 product-description">
	<h2><%t CatalogueFrontend.Description "Description" %></h2>
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
