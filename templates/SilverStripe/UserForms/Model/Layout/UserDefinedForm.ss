<div class="row">
	<% if $Menu(2) || $SideBarView.Widgets %>
		<aside class="col-sm col-sm-auto" role="complementary">
			<% include SideBar %>
		</aside>
	<% end_if %>
	<div class="col-sm content" role="main">
		<div class="row">
			<div class="col-sm-6">
				$Content
			</div>
			<div class="col-sm-6">
				$Form
			</div>
		</div>
		$PageComments
	</div>
</div>