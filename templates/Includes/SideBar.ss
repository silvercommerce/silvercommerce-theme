<aside class="col-sm-3" role="complementary">
	<% if $Menu(2) %>
		<nav class="secondary card">
			<% with $Level(1) %>
				<ul class="nav nav-pills flex-column">
					<% include SidebarMenu %>
				</ul>
			<% end_with %>
		</nav>
	<% end_if %>

	<% if $AllTags && $AllTags.exists %>
		<p class="lead"><%t CatalogueFrontend.FilterByTags "Filter By Tags" %></p>
		<nav class="secondary card">
			<ul class="nav nav-pills flex-column">
				<% loop $AllTags %>
					<li class="nav-item">
						<a href="{$Up.Link}?t={$URLSegment}" class="nav-link<% if $isCurrent %> active<% end_if %>">
							<span class="text">$Title</span>
						</a>
					</li>
				<% end_loop %>
			</ul>
		</nav>
	<% end_if %>
</aside>