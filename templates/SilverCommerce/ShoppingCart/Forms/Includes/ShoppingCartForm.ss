<form $FormAttributes>
	<% if $Message %>
		<p id="{$FormName}_error" class="message $MessageType">$Message</p>
	<% else %>
		<p id="{$FormName}_error" class="message $MessageType" style="display: none"></p>
	<% end_if %>
    <fieldset class="shoppingcart-items">
		$Fields.dataFieldByName(SecurityID)
		
		<% loop $Controller.Items %>
			<div class="row mb-4 justify-content-end justify-content-md-between">
				<div class="col-2 mb-3">
					<% if $FindStockItem %>
						{$FindStockItem.PrimaryImage}
					<% end_if %>
				</div>

				<div class="col-10 col-md mb-3">
					<div class="row">
						<div class="col-12 col-md mb-2">
							<strong>
								<% if $FindStockItem %><a href="{$FindStockItem.Link}">$Title</a>
								<% else %>$Title<% end_if %>
							</strong><br/>
							<% if $Content %>$Content.Summary(10)<br/><% end_if %>                            
							<% if $Customisations && $Customisations.exists %><div class="small">
								<% loop $Customisations %><div class="{$ClassName}">
									<strong>{$Title}:</strong> {$Value}
									<% if not $Last %></br><% end_if %>
									</div>
								<% end_loop %>
							</div><% end_if %>
						</div>
						<div class="col-4 col-md-auto quantity">
							<div class="row mx-n-2 align-items-center">
								<div class="col-auto px-2 d-none d-md-block">
									<strong><%t ShoppingCart.Qty "Qty" %></strong>
								</div>
								<div class="col px-2">
									<input
										class="w-100"
										type="text"
										name="Quantity_{$Key}"
										value="{$Quantity}"
										<% if $Locked %>
										title="<%t ShoppingCart.ItemCannotBeEdited "This item cannot be edited" %>"
										readonly
										<% end_if %>
									/>
								</div>
							</div>
						</div>
						<div class="col-4 col-md-auto price py-2">
							<strong>$getFormattedPrice($ShowPriceWithTax)</strong>
						</div>
						<div class="col-4 col-md-auto remove">
							<a href="{$Top.Controller.Link('remove')}/{$Key}" class="btn btn-red btn-outline-danger">
								x
							</a>
						</div>
					</div>
				</div>
			</div>
		<% end_loop %>
    </fieldset>

    <fieldset class="shoppingcart-actions Actions row justify-content-end">
		<div class="btn-group justify-content-end d-flex col-md-6 align-self-end">
			<a href="$Controller.Link('emptycart')" class="btn btn-outline-danger">
				<%t ShoppingCart.CartEmpty "Empty Cart" %>
			</a>
			
			$Actions.dataFieldByName(action_doUpdate).addExtraClass('btn btn-outline-info').removeExtraClass('btn-primary').Field
		</div>
    </fieldset>
</form>
