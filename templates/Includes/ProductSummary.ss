<div class="product-summary card">
    <% with $PrimaryImage %>
        <a href="{$Top.Link}">
            $Pad(400,400)
        </a>
    <% end_with %>

    <div class="card-body">
        <p class="h4 product-title match-height">
            <a href="{$Link}" title="{$Title}">
                {$Title}
            </a>
        </p>

        <p class="product-price">
            $NicePrice
        </p>
    </div>

    <a class="btn btn-primary btn-block" href="{$Link}">
        <%t CatalogueFrontend.View "View" %>
    </a>
</div>