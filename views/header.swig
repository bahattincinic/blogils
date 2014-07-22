
<span class="mobile btn-mobile-menu">
        <i class="icon icon-list btn-mobile-menu__icon"></i>
        <i class="icon icon-x-circle btn-mobile-close__icon hidden"></i>
    </span>

<header class="panel-cover {% if post %} panel-cover--collapsed {% endif %}">
    <div class="panel-main">

        <div class="panel-main__inner panel-inverted">
            <div class="panel-main__content">


                <a href="/" title="link to homepage for {{ config.blogger.name }}">
                    <img src="{{ config.blogger.avatar }}" width="80" alt="{{ config.blogger.name }} logo" class="panel-cover__logo logo"/>
                </a>

                <h1 class="panel-cover__title panel-title">
                    <a href="/" title="link to homepage for {{ config.blogger.name }}">
                        {{ config.blogger.name }}
                    </a>
                </h1>
                <span class="panel-cover__subtitle panel-subtitle">
                    {{ config.blogger.subTitle }}
                </span>
                <hr class="panel-cover__divider"/>
                <p class="panel-cover__description">{{ config.blogger.biography }}</p>
                <hr class="panel-cover__divider panel-cover__divider--secondary"/>

                <div class="navigation-wrapper">

                    <nav class="cover-navigation cover-navigation--primary">
                        <ul class="navigation">
                            <li class="navigation__item"><a href="#blog"
                                                            title="link to Dale-Anthony blog"
                                                            class="blog-button">Blog</a>
                            </li>
                        </ul>
                    </nav>


                    <nav class="cover-navigation navigation--social">
                        <ul class="navigation">
                            {% for account in config.accounts  %}
                            <li class="navigation__item">
                                <a href="{{ account.link }}" target="_blank"
                                   title="{{ account.title }}">
                                    <i class='icon icon-social-{{ account.title }}'></i>
                                    <span class="label">{{ account.title }}</span>
                                </a>
                            </li>
                            {% endfor %}

                        </ul>
                    </nav>

                </div>

            </div>

        </div>

        <div class="panel-cover--overlay cover-green"></div>
    </div>
</header>