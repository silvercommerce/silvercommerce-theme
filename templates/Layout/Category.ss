<div class="row commerce-category">
	<% if $Menu(2) || $SideBarView.Widgets %>
		<aside class="col-sm col-md-3" role="complementary">
			<% include SideBar %>
		</aside>
	<% end_if %>
	
	<div class="col-sm" role="main">
		<article class="content">
			$Content
		</article>

		<% if $PaginatedAllProducts(24).exists %>
			<div class="row">
				<% loop $PaginatedAllProducts(24) %>
					<div class="col-sm-4 catalogue-list-child">
						<% include ProductSummary %>
					</div>

					<% if $MultipleOf(4) %></div><div class="row"><% end_if %>
				<% end_loop %>
			</div>

			<% with $PaginatedAllProducts(24) %>
				<div class="text-center">
					<% include Pagination %>
				</div>
			<% end_with %>
		<% else %>
			<p class="text-center">
				<%t CatalogueFrontend.NoProducts "No products found" %>
			</p>
		<% end_if %>
	</div>
</div>