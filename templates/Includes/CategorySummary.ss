<div class="section my-6<% if $Last %> mb-0<% end_if %>">
    <div class="category-summary row mb-6 align-items-center">
        <h2 class="col-12 category-title text-center">
            <a href="{$Link}" title="{$Title}">
                <span>{$Title}</span>
            </a>
        </h2>
        <div class="col-sm-6 order-sm-2">
            <% with $PrimaryImage %>
                <a href="{$Up.Link}">
                    $FocusFill(600,300)
                </a>
            <% end_with %>
        </div>
        <div class="col-sm-6<% if $Even %> order-sm-1<% else %> order-sm-3<% end_if %>">
            <p>
                $Content.FirstParagraph()
                <a href="{$Link}">
                    View all $Title
                </a>
            </p>

        </div>
    </div>
</div>