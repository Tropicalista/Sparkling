<cfoutput>
<!--- View Arguments --->
<cfparam name="args.print" 		default="false">
<cfparam name="args.sidebar" 	default="true">
<cfset maincol = args.sidebar ? "col-md-8" : "col-md-12">

	<!--- Main Body --->
    <div id="content" class="site-content">

        <div class="container main-content-area">

            <div class="row">

                <!-- blog-contents -->
                <section class="main-content-inner col-sm-12 #maincol#">

				    <article class="hentry">
				        <div class="blog-item-wrap">

				            <div class="post-inner-content">
				                <header class="entry-header page-header">
				                	<small><a href="/">Home</a> #cb.breadCrumbs( separator="<i class='fa fa-angle-right'></i> " )#</small>
				                    <h1 class="entry-title">
				                        #prc.page.getTitle()#
				                    </h1>
				                    <div class="entry-meta">
				                        <span class="posted-on"><i class="fa fa-calendar"></i> 
				                            <time class="entry-date published" datetime="#prc.page.getDisplayPublishedDate()#">#prc.page.getDisplayPublishedDate()#</time>
				                        </span>
				                        <span class="">
				                            <i class="fa fa-user"></i>
				                            <span class="author vcard">
				                                #prc.page.getAuthor().getName()#
				                            </span>
				                        </span>
				                        <span class="cat-links"><i class="fa fa-folder-open-o"></i>
				                            #cb.quickCategoryLinks(prc.page)#            
				                        </span>                        
				                    </div>
				                </header>
				                <div class="entry-content">
				                    <p>#prc.page.renderContent()#</p>
				                </div>
				            </div>
				        </div>
				    </article> <!-- /.blog-item -->

					<!--- Comments Bar --->
					<cfif cb.isCommentsEnabled( prc.page )>

					    <div class="comments-area">
					        <h2 class="comments-title">
					            #len(prc.entry.getComments())# thoughts on #prc.entry.getTitle()#
					        </h2>
					        #cb.quickComments()#
					    </div>

					    <div id="respond" class="comment-respond">
					        <h3 id="reply-title" class="comment-reply-title">Leave a Reply</h3>
					        #cb.widget( "MyCommentForm",{content=#prc.entry#} )#
					    </div>
  
					</cfif>

				</section>

    			<cfif args.sidebar>
					<div id="secondary" class="widget-area col-sm-12 col-md-4">
						<div class="well">
							#cb.quickView(view='_blogsidebar')#
						</div>
					</div>
				</cfif>

				<!--- ContentBoxEvent --->
				#cb.event("cbui_postPageDisplay")#

            </div>
    
        </div>
	
	</div> <!--- end of /.container --->
    
</cfoutput>