<% if $MicroImage %>
    <img src="$MicroImage.URL.ATT" alt="$Title.ATT" data-src="$URL.ATT" class="img-fluid w-100" />
<% else %>
    <img src="$URL.ATT" alt="$Title.ATT" class="img-fluid w-100" />
<% end_if %>