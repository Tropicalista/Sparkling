<cfoutput>
<div id="footer-area">

    <cfif cb.themeSetting( 'footerWidget' )>
        <div class="container footer-inner">
            <div class="row">
                <div class="footer-widget-area">
                    <div class="col-sm-4 footer-widget widget sparkling-popular-posts">

                        <h3 class="widget-title">Popular Posts</h3>

                        <!-- popular posts -->
                        <div class="popular-posts-wrapper">

                            #cb.widget('MyRecentEntries')#

                        </div> <!-- end posts wrapper -->
                    </div>

                    <div class="col-sm-4 footer-widget widget sparkling-popular-posts">

                        <h3 class="widget-title">Categories</h3>
                        <!-- social icons -->
                        <div class="cats-widget">
                            <ul>
                                #cb.quickCategories()#
                            </ul>
                        </div><!-- end social icons -->

                    </div>
                    <div class="col-sm-4 footer-widget"></div>
                </div>
            </div>
        </div>
    </cfif>

    <footer id="colophon" class="site-footer" role="contentinfo">

        <div class="site-info container">

            <div class="row">

                <cfif cb.themeSetting( 'footerSocial' )>
                    <nav id="menu-social" class="social-icons">
                        <!-- footer social buttons -->
                        <ul id="menu-social-items" class="social-menu">
                            <cfif Len(cb.themeSetting( 'twitter' ))>
                                <li><a href="#cb.themeSetting( 'twitter' )#"><i class="fa fa-twitter"><span>Twitter</span></i></a></li>
                            </cfif>
                            <cfif Len(cb.themeSetting( 'google' ))>
                                <li><a href="#cb.themeSetting( 'google' )#"><i class="fa fa-google-plus"></i></a></li>
                            </cfif>
                            <cfif Len(cb.themeSetting( 'facebook' ))>
                                <li><a href="#cb.themeSetting( 'facebook' )#"><i class="fa fa-facebook"></i></a></li>
                            </cfif>
                            <cfif Len(cb.themeSetting( 'pinterest' ))>
                                <li><a href="#cb.themeSetting( 'pinterest' )#"><i class="fa fa-pinterest"></i></a></li>
                            </cfif>
                            <cfif Len(cb.themeSetting( 'instagram' ))>
                                <li><a href="#cb.themeSetting( 'instagram' )#"><i class="fa fa-instagram"></i></a></li>
                            </cfif>
                        </ul>
                    </nav>
                </cfif>

                <!-- footer-nav -->
                <nav role="navigation" class="col-md-6">
                    <ul id="menu-flat-footer" class="nav footer-nav clearfix">
                        <li><a href="about.html">About</a></li>
                        <li><a href="privacy.html">Privacy</a></li>
                        <li><a href="contact.html">Contact</a></li>
                    </ul>
                </nav>

                <div class="copyright col-md-6">
Copyright &copy; #cb.siteName()#.  All rights reserved - Powered by 
                        <a href="index.html">ContentBox v#cb.getContentBoxVersion()#</a>
                </div>

            </div>

        </div>

    </footer>

</div>
</cfoutput>