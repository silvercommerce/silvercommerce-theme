<% if $UseButtonTag %>
	<button $AttributesHTML>
		<% if $ButtonContent %>$ButtonContent<% else %><span>$Title.XML</span><% end_if %>
	</button>
<% else %>
	<input $addExtraClass('btn').AttributesHTML />
<% end_if %>
