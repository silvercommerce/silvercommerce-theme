<div class="product-summary card h-100">
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
        <% if $Tags.exists %>
            <p><% loop $Tags %>
                    <a href="{$Up.Parent.Link}?t={$URLSegment}" class="badge badge-light">
                        $Title
                    </a><% if not $Last %>&nbsp;<% end_if %>
            <% end_loop %></p>
        <% end_if %>

        <p class="product-price">
            $NicePrice
        </p>
    </div>

    <a class="btn btn-primary btn-block" href="{$Link}">
        <%t CatalogueFrontend.View "View" %>
    </a>
</div>