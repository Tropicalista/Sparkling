<cfoutput>
<header id="masthead" class="site-header" role="banner">
	<nav class="navbar navbar-default" role="navigation">
		<div class="container">
			<div class="row">
				<div class="site-navigation-inner col-sm-12">
					<div class="navbar-header">
						<button type="button" class="btn navbar-toggle" data-toggle="collapse" data-target=".navbar-ex1-collapse">
							<span class="sr-only">Toggle navigation</span>
							<span class="icon-bar"></span>
							<span class="icon-bar"></span>
							<span class="icon-bar"></span>
						</button>

						<div id="logo">
							<span class="site-name">
								<a href="#cb.linkHome()#" class="navbar-brand" title="#cb.siteTagLine()#" data-toggle="tooltip"><strong>#cb.siteName()#</strong></a>
							</span>
						</div><!-- end of logo -->
					</div>
					<div class="collapse navbar-collapse navbar-ex1-collapse">
						<ul class="nav navbar-nav" id="menu-top">
							<cfset menuData = cb.rootMenu( type="data", levels="2" )>

							<!--- Iterate and build pages --->
							<cfloop array="#menuData#" index="menuItem">
								<cfif structKeyExists( menuItem, "subPageMenu" )>
									<li class="dropdown">
										<a href="#menuItem.link#" class="dropdown-toggle" data-toggle="dropdown">#menuItem.title# <b class="caret"></b></a>
										#buildSubMenu( menuItem.subPageMenu )#
									</li>
								<cfelse>
									<cfif cb.isPageView() AND event.buildLink( cb.getCurrentPage().getSlug() ) eq menuItem.link>
										<li class="active">
									<cfelse>
										<li>
									</cfif>
										<a href="#menuItem.link#">#menuItem.title#</a>
									</li>
								</cfif>
							</cfloop>

							<!--- Blog Link, verify active --->
							<cfif ( !prc.cbSettings.cb_site_disable_blog )>
								<cfif cb.isBlogView()><li class="active"><cfelse><li></cfif>
									<a href="#cb.linkBlog()#">Blog</a>
								</li>
							</cfif>
						</ul>
					</div>
				</div>
			</div>
		</div>
	</nav><!-- .site-navigation -->
</header>

<cfscript>
any function buildSubMenu( required menuData ){
	var menu = '<ul class="dropdown-menu">';
	for( var menuItem in arguments.menuData ){
		if( !structKeyExists( menuItem, "subPageMenu" ) ){
			menu &= '<li><a href="#menuItem.link#">#menuItem.title#</a></li>';
		} else {
			menu &= '<li class="dropdown-submenu"><a href="#menuItem.link#" class="dropdown-toggle" data-toggle="dropdown">#menuItem.title#</a>';
			menu &= buildSubMenu( menuItem.subPageMenu );
			menu &= '</li>';
		}
	}
	menu &= '</ul>';

	return menu;
}
</cfscript>
</cfoutput>