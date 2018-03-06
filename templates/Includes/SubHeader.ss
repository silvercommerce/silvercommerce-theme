<div class="sub-header mb-3">
    <div class="container px-lg-0">
        <nav class="navbar navbar-expand-lg navbar-dark py-0 px-lg-0">
            <ul class="navbar-nav mr-sm-auto">
                $SiteConfig.ContactPage.ID
                <% if $SiteConfig.ContactPage %>
                    <% with $SiteConfig.ContactPage %>
                        <% if $PhoneNumber %>
                            <li class="nav-item">
                                <a class="nav-link" href="tel:{$PhoneNumber}" rel="nofollow">
                                    <span class="d-block d-sm-none"><i class="fas fa-phone"></i></span>
                                    <span class="d-none d-sm-block">$PhoneNumber</span>
                                </a>
                            </li>
                        <% end_if %>
                        <% if $Email %>
                            <li class="nav-item">
                                <a class="nav-link" href="mailto:{$Email}" rel="nofollow">
                                    <span class="d-block d-sm-none"><i class="fas fa-envelope"></i></span>
                                    <span class="d-none d-sm-block">$Email</span>
                                </a>
                            </li>
                        <% end_if %>
                    <% end_with %>
                <% end_if %>
                <% if $SocialNav %>
                    <% with $SocialNav %>
                        <% loop $MenuItems %>
                            <li class="nav-item {$ConvertedService}">
                                <a class="nav-link" href="{$URL}" <% if $Title %>title="{$Title}"<% end_if %>>
                                    <span class="{$ConvertedService} {$ExtraClasses} fa-lg">
                                        <img
                                            src="{$Top.BaseHref}socialnav/images/{$ConvertedService}.png"
                                            alt="{$Service}"
                                        />
                                    </span>
                                </a>
                            </li>
                        <% end_loop %>
                    <% end_with %>
                <% end_if %>
            </ul>

            <div class="collapse navbar-collapse" id="UserNav">
                <ul class="navbar-nav ml-sm-auto">
        
                        <% if $CurrentMember %>
                        <li class="details nav-item">
                            <span class="navbar-text">
                                <% _t("Users.HELLO", "Hi") %>
                                $CurrentMember.FirstName
                            </span>
                        </li>
                        <li class="account nav-item">
                            <a class="nav-link" href="{$BaseHref}users/account">
                                <% _t("Users.MYACCOUNT", "My account") %>
                            </a>
                        </li>
                        <li class="logout nav-item">
                            <a class="nav-link" href="{$BaseHref}Security/logout?BackURL={$BaseHref}">
                                <% _t("Users.LOGOUT", "Logout") %>
                            </a>
                        </li>
                    <% else %>
                        <li class="signin nav-item">
                            <a class="nav-link" href="{$BaseHref}Security/login?BackURL={$Link}">
                                <% _t("Users.LOGIN", "Log in") %>
                            </a>
                        </li>
                        <li class="register nav-item">
                            <a class="nav-link" href="{$BaseHref}users/register">
                                <% _t("Users.REGISTER", "Register") %>
                            </a>
                        </li>
                    <% end_if %>
                </ul>
            </div>
        </nav>
    </div>
</div>