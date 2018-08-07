<div class="category-summary card">
    <% with $PrimaryImage %>
        <a href="{$Up.Link}">
            $Fill(400,400)
        </a>
    <% end_with %>

    <div class="card-body">
        <p class="h4 category-title">
            <a href="{$Link}" title="{$Title}">
                {$Title}
            </a>
        </p>
    </div>

    <a class="btn btn-primary btn-block" href="{$Link}">
        <%t CatalogueFrontend.View "View" %>
    </a>
</div>