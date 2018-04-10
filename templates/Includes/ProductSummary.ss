<div class="product-summary card">
    <% with $PrimaryImage %>
        <a href="{$Top.Link}">
            <img
                class="img-fluid product-img"
                src="$Pad(400,400).Link"
                alt="$Title"
            >
        </a>
    <% end_with %>

    <div class="card-body">
        <p class="h4 product-title match-height">
            <a href="{$Link}" title="{$Title}">
                {$Title}
            </a>
        </p>

        <p class="product-price">
            <strong class="price">                            
                <% if $IncludesTax %>
                    {$PriceAndTax.nice}
                <% else %>
                    {$Price.nice}
                <% end_if %>
            </strong>                
            <% if TaxString %>
                <small class="tax"> 
                    {$TaxString}
                </small>
            <% end_if %>
        </p>
    </div>

    <a class="btn btn-primary btn-block" href="{$Link}">
        <%t CatalogueFrontend.View "View" %>
    </a>
</div>