<div class="category-summary card">
    <% if $Image && $Image.exists %>
        <a href="{$Link}">
            <img
                class="img-fluid category-img"
                src="$Image.Fill(400,400).Link"
                alt="$Image.Title"
            >
        </a>
    <% end_if %>

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