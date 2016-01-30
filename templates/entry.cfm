<cfoutput>

    <article class="hentry">
        <div class="blog-item-wrap">
            <cfif false>
                <a href="single_blog_page.html">
                    <img src="assets/img/corporate.jpg" class="img-thumbnail center-block" alt="Blog Post Thumbnail">
                </a>                
            </cfif>

            <div class="post-inner-content">
                <header class="entry-header page-header">
                    <h1 class="entry-title">
                        <a href="#cb.linkEntry(entry)#" rel="bookmark" title="#entry.getTitle()#">#entry.getTitle()#</a>
                    </h1>
                    <div class="entry-meta">
                        <span class="posted-on"><i class="fa fa-calendar"></i> 
                            <time class="entry-date published" datetime="#entry.getDisplayPublishedDate()#">#entry.getDisplayPublishedDate()#</time>
                        </span>
                        <span class="">
                            <i class="fa fa-user"></i>
                            <span class="author vcard">
                                #entry.getAuthor().getName()#
                            </span>
                        </span>
                        <span class="cat-links"><i class="fa fa-folder-open-o"></i>
                            #cb.quickCategoryLinks(entry)#            
                        </span>                        
                    </div>
                </header>
                <div class="entry-content">
                    <p>#entry.renderExcerpt()#</p>
                    <p>
                        <a class="btn btn-default read-more" href="#cb.linkEntry(entry)#" title="#entry.getTitle()#">Read More</a>
                    </p>
                </div>
            </div>
        </div>
    </article> <!-- /.blog-item -->

</cfoutput>