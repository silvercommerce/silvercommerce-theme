<footer role="contentinfo">
    <div class="container px-lg-0">
        <div class="row">
            <div class="col-sm">
                <h2 class="h5"><%t SilverCommerce.Links "Links" %></h2>
                <ul class="nav flex-column">
                    <% if $CustomMenu('footer-menu') %>
                        <% loop $CustomMenu('footer-menu') %>
                            <li class="$LinkingMode nav-item<% if $isCurrent || $isSection %> active<% end_if %>">
                                <a class="nav-link" href="$Link" title="$Title.XML">$MenuTitle.XML</a>
                            </li>
                        <% end_loop %>
                    <% else %>
                        <% loop $Menu(1) %>
                            <li class="$LinkingMode nav-item<% if $isCurrent || $isSection %> active<% end_if %>">
                                <a class="nav-link" href="$Link" title="$Title.XML">$MenuTitle.XML</a>
                            </li>
                        <% end_loop %>
                    <% end_if %>
                </ul>
            </div>
            <div class="col-sm">
                <h2 class="h5"><%t SilverCommerce.Categories "Categories" %></h2>
                <ul class="nav flex-column">
                    <% loop $CatalogueMenu %>
                        <li class="$LinkingMode nav-item<% if $isCurrent || $isSection %> active<% end_if %>">
                            <a class="nav-link" href="$Link" title="$Title.XML">$MenuTitle.XML</a>
                        </li>
                    <% end_loop %>
                </ul>
            </div>

            <div class="col-sm">
                <h2 class="h5"><%t SilverCommerce.MyAccount "My Account" %></h2>
                <ul class="nav flex-column">
                    <% if $CurrentMember %>
                        <li class="nav-item">
                            <a class="nav-link" href="{$BaseHref}users/account">
                                <% _t("Users.MYACCOUNT", "My account") %>
                            </a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" href="{$BaseHref}Security/logout?BackURL={$BaseHref}">
                                <% _t("Users.LOGOUT", "Logout") %>
                            </a>
                        </li>
                    <% else %>
                        <li class="nav-item">
                            <a class="nav-link" href="{$BaseHref}Security/login?BackURL={$Link}">
                                <% _t("Users.LOGIN", "Log in") %>
                            </a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" href="{$BaseHref}users/register">
                                <% _t("Users.REGISTER", "Register") %>
                            </a>
                        </li>
                    <% end_if %>
                </ul>
            </div>

            <div class="col-sm">
                <h2 class="h5"><%t SilverCommerce.Contact "Contact" %></h2>
                <% with $SiteConfig %>
                    <% if $ContactNumber || $ContactEmail || $ContactAddress %>
                        <ul class="nav flex-column justify-content-end">
                            <% if $ContactAddress %>
                                <li class="nav-item mb-4">
                                    $ContactAddress
                                </li>
                            <% end_if %>
                            <% if $ContactPhone %>
                                <li class="nav-item">
                                    $ContactPhone
                                </li>
                            <% end_if %>
                            <% if $ContactEmail %>
                                <li class="nav-item">
                                    <a href="mailto:$ContactEmail">$ContactEmail</a>
                                </li>
                            <% end_if %>
                        </ul>
                    <% end_if %>
                <% end_with %>

                <% if $SocialNav %>
                    <ul class="nav">
                        <% loop $SocialNav.MenuItems %>
                            <li class="nav-item {$ConvertedService}">
                                <a class="nav-link" href="{$URL}" <% if $Title %>title="{$Title}"<% end_if %>>
                                    <span class="{$ConvertedService} {$ExtraClasses} fa-lg"></span>
                                </a>
                            </li>
                        <% end_loop %>
                    </ul>
                <% end_if %>
            </div>
        </div>
        <% include FooterDisclaimer %>

        <% if $SiteConfig.CardLogos %>
            <div class="row justify-content-md-center">
                <div class="supported-card-logos col-md-3">
                    $SiteConfig.CardLogos
                </div>
            </div>
        <% end_if %>
    </div>
</footer>