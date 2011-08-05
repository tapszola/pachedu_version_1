<!DOCTYPE html>

<html lang="$ContentLocale">
  <head>
		<% base_tag %>
		<title><% if MetaTitle %>$MetaTitle<% else %>$Title<% end_if %> &raquo; $SiteConfig.Title</title>
		$MetaTags(false)
		<link rel="shortcut icon" href="/favicon.ico" />
		
		<% require themedCSS(layout) %> 
		<% require themedCSS(main) %> 
		<% require themedCSS(typography) %> 
		<% require themedCSS(form) %> 
		<% require themedCSS(menu) %> 
		<% require themedCSS(reset) %> 
		<% require themedCSS(style) %> 
	    <link rel="stylesheet" type="text/css" media="screen" href="$ThemeDir/css/colorbox.css" />
		<link rel="stylesheet" type="text/css" media="screen" href="$ThemeDir/css/ddsmoothmenu.css" />	
		<link rel="stylesheet" type="text/css" media="screen" href="$ThemeDir/css/core.css" />
		<link rel="stylesheet" type="text/css" media="screen" href="$ThemeDir/css/fonts.css" />
		<link rel="stylesheet" type="text/css" media="screen" href="$ThemeDir/css/layout.css" />	
		<link rel="stylesheet" type="text/css" media="screen" href="$ThemeDir/css/galleria.css" />
		<link rel="stylesheet" type="text/css" media="screen" href="$ThemeDir/css/minimal.css" />
		<link rel="stylesheet" type="text/css" media="screen" href="$ThemeDir/css/jquery.css" />	
		<link rel="stylesheet" type="text/css" media="screen" href="$ThemeDir/css/nggallery.css" />
		<link rel="stylesheet" type="text/css" media="screen" href="$ThemeDir/css/reset.css" />
		<link rel="stylesheet" type="text/css" media="screen" href="$ThemeDir/css/shutter-reloaded.css" />	
		<link rel="stylesheet" type="text/css" media="screen" href="$ThemeDir/css/skin.css" />
		<link rel="stylesheet" type="text/css" media="screen" href="$ThemeDir/css/jquery.css" />	
		<link rel="stylesheet" type="text/css" media="screen" href="$ThemeDir/css/slickr-flickr.css" />
		<link rel="stylesheet" type="text/css" media="screen" href="$ThemeDir/css/styles.css" />
		<link rel="stylesheet" type="text/css" media="screen" href="$ThemeDir/css/base1.css" />
		
		<!--[if IE 6]>
			<style type="text/css">
			 @import url(themes/blackcandy/css/ie6.css);
			</style> 
		<![endif]-->
	</head>
<body>
	<div id="BgContainer">
	<div class="clear"><!-- --></div>
		<div id="Container">
			<div id="Header">
			</div>		
			<div id="Navigation">
				<% include Navigation %>
		  	</div>	  	
		  	<div class="clear"><!-- --></div>
	<!-- Container Starts -->
		<div id="container-holdera" class="clearfixx">
			<!-- Mainarea Starts -->
			<div id="mainarea">
			    $AboutBanner
				$Layout
			</div>
		<!-- Mainarea Ends -->
		<!-- Sidearea Starts -->
		<div id="sideareah">
			<div id="sidearea">				 
	<% control LatestNews %>	
			  <h1 >$MenuTitle </h1>
			  <span class="post-date">$Date </span><br >
			 <span class="clearfixx"> $Content.LimitWordCount(10) <br ><a href="$Link" class="readmore floatright" >read more...</a></span>
              <% end_control %>
			  <% control TagsCollection %>
     <a href="$Link" title="View all posts tagged '$Tag'" rel="tag" class="clearfixx">$Tag</a><% if Last %><% else %>,<% end_if %>
<% end_control %>
			</div>
			<div class="clearfixx"></div>
			<div id="social">$Sidebar </div>
			<div class="clearfixx"></div>			
			<div id="social-mid"> </div>
			</div>
		<!-- Sidearea Ends -->
		<!-- Content-bottom starts -->
		<div class="clearfixx"></div>
		<div id="content-bottom-slidehold-hold">
						<!-- bottom-mainarea Starts -->
			<div id="bottom-mainarea">
			           <ul>
                         <li> <span><a href="#" title="">pr & publicity</a></span> </li>
                         <li> <a href="#" title=""><span>advisory boards</span></a> </li>
                         <li> <a href="#" title=""><span>patient advocacy</span></a> </li>
                         <li> <a href="#" title=""><span>social media and online strategy</span></a> </li>
                         <li> <a href="#" title=""><span>website development</span></a> </li>
                         <li> <a href="#" title=""><span>tv & radio productions</span></a> </li>
                         <li> <a href="#" title=""><span>apply</span></a> </li>
                      </ul>
				</div>
		<!-- bottom-mainarea Ends -->
		<!-- bootom-sidearea Starts -->
			<div id="bootom-sidearea">
			
					<div><img src="themes/oz/images/image-one.jpg" width="447" height="233"></div>
			</div>
		<!-- bootom-sidearea Ends -->
		</div><!-- Content-bottom Ends -->
		<div class="clearfixx"></div>
		<div id="content-bottom-slidehold-hold">
		<!-- bootom-slide Starts -->
			<div id="bootom-slide">
			
					<div id="botom"></div>
			</div>
		<!-- bootom-sidearea Ends -->
		</div><!-- Content-bottom Ends -->
		<div class="clearfixx"></div>
		</div>
	<!-- Container Ends -->
		   <div class="clear"><!-- --></div>
		</div>
		<div id="Footer">
			<% include Footer %>
		</div> 
	</div>
</body>
</html>