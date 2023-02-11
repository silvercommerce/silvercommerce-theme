<div class="container typography">
	<div class="row">
		<% if $Menu(2) || $SideBarView.Widgets %>
			<% include SideBar %>
		<% end_if %>
		<div class="col-sm content" role="main">
			<div class="row">
				<div class="col">
					$Content
				</div>
				<% if $Form %>
					<div class="col-sm-6">
						$Form
					</div>
				<% end_if %>
			</div>
			$PageComments
		</div>
	</div>
</div>