<% if $IncludeFormTag %>
<form $AttributesHTML>
<% end_if %>
	<% if $Message %>
	<p id="{$FormName}_error" class="message $MessageType">$Message</p>
	<% else %>
	<p id="{$FormName}_error" class="message $MessageType" style="display: none"></p>
	<% end_if %>

	<fieldset class="input-group mb-3">
		<% if $Legend %><legend>$Legend</legend><% end_if %>
		<% loop $Fields %>
            <% if $Name != "Quantity" %>
			    $FieldHolder
            <% end_if %>
		<% end_loop %>

		<% if $Actions %>
			<div class="input-group-append">
				<% loop $Fields %>
					<% if $Name == "Quantity" %>
						$FieldHolder
					<% end_if %>
				<% end_loop %>
				<% loop $Actions %>
					$Field
				<% end_loop %>
			</div>
		<% end_if %>
	</fieldset>
<% if $IncludeFormTag %>
</form>
<% end_if %>
