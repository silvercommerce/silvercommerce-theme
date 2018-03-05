<%-- Add the view cart button --%>
<% with $Estimate %>
    <a id="view-shoppingcart-button" class="shoppingcart-link nav-link" href="{$Up.Link}" data-toggle="dropdown" data-target="#shoppingcart-summary" role="button" aria-haspopup="true" aria-expanded="false">
        <i class="fa fa-shopping-basket fa-lg"></i>
        <span class="hidden-xs">&nbsp;{$Total.Nice}</span>
        <span class="caret hidden-xs"></span>
    </a>
<% end_with %>