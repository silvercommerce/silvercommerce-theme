<%--Include recursively --%>
<% if LinkOrSection == section %>
	<% if $Children %>
		<a href="$Link" class="<% if $isCurrent || $isSection %>dropdown-header active<% end_if %>" title="Go to the $Title.XML page">
			<%t CatalogueFrontend.All "All {title}" title=$Level(1).Title %>
		</a>
		<span class="dropdown-divider"></span>
		<% loop $Children %>
				<a href="$Link" class="dropdown-item px-4<% if $isCurrent || $isSection %> active<% end_if %>" title="Go to the $Title.XML page">
					$MenuTitle.XML
				</a>

				<% if $Children.exists && LinkOrSection == section %>
					<div class="px-4">
						<% include RecursiveMenu %>
					</div>
				<% end_if %>

		<% end_loop %>
	<% end_if %>
<% end_if %>
