<div class="line row child child-{$Pos} mb-4">
    <% if $FeaturedImage.exists %>
        <div class="unit size1of3 col-sm-4">
            <p>
                <a href="{$Link}">
                    <span class="d-none d-md-block">$FeaturedImage.Fill(600,400)</span>
                    <span class="d-md-none">$FeaturedImage.Fill(400,175)</span>
                </a>
            </p>
        </div>
    <% end_if %>
    
    <div class="unit<% if $FeaturedImage.exists %> size2of3 col-sm-8<% else %> col-md-12<% end_if %>">
        <h2>
            <a href="{$Link}">{$Title}</a>
        </h2>

        <p>$Content.FirstParagraph</p>
        
        <p>
            <a class="btn btn-primary" href="{$Link}"> 
                <%t ChildHubPage.More "More" %>
            </a>
        </p>
    </div>
</div>
