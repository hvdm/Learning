# Use the Invoke-Webrequest with the GET option to retrieve data from a webserver
Invoke-WebRequest -Method Get -Uri www.mattallford.com 
# Output:
# StatusCode        : 200
# StatusDescription : OK
# Get-Content           : <!DOCTYPE html>
# <html lang="en" itemscope itemtype="http://schema.org/WebPage">
# <head>
# <meta charset="utf-8" />
# <meta http-equiv="X-UA-Compatible" content="IE=edge">
# <meta name="viewport" content="wid…
# RawContent        : HTTP/1.1 200 OK
#                     Date: Sun, 22 Sep 2024 11:46:43 GMT
#                     Transfer-Encoding: chunked
#                     Connection: keep-alive
#                     x-ms-request-id: cdce81cb-601e-0060-75e5-0c01b6000000
#                     x-ms-version: 2018-03-28
#                     CF-Cache-Stat…
# Headers           : {[Date, System.String[]], [Transfer-Encoding, System.String[]], [Connection, System.Str 
#                     ing[]], [x-ms-request-id, System.String[]]…}
# Images            : {@{outerHTML=<img class="avatar-img" src="https://www.mattallford.com/img/avatar-icon.p 
# ng" alt="Matt Allford" />; tagName=IMG; class=avatar-img; src=https://www.mattallford.c 
#                     om/img/avatar-icon.png; alt=Matt Allford}}
# InputFields       : {}
# Links             : {@{outerHTML=<a class="navbar-brand" href="https://www.mattallford.com">Matt Allford</a 
#                     >; tagName=A; class=navbar-brand; href=https://www.mattallford.com}, @{outerHTML=<a tit 
#                     le="Content Portfolio" href="/content-portfolio/">Content Portfolio</a>; tagName=A; tit 
#                     le=Content Portfolio; href=/content-portfolio/}, @{outerHTML=<a title="About" href="/ab 
# out/">About</a>; tagName=A; title=About; href=/about/}, @{outerHTML=<a title="Matt Allf 
# ord" href="https://www.mattallford.com">
#                     <img class="avatar-img" src="https://www.mattallford.com/img/avatar-icon.png" alt="Matt 
# Allford" />
#                     </a>; tagName=A; title=Matt Allford; href=https://www.mattallford.com}…}
# RawContentLength  : 22467
# RelationLink      : {}



# Place the same request in a variable to explore the properties in detail
$result = Invoke-WebRequest -Method Get -Uri www.mattallford.com 


# Links
# outerHTML
# -------- -                                                                                                   
# <a class="navbar-brand" href="https://www.mattallford.com">Matt Allford</a>
# <a title="Content Portfolio" href="/content-portfolio/">Content Portfolio</a>
# <a title="About" href="/about/">About</a>
# <a title="Matt Allford" href="https://www.mattallford.com">…
# <a href="https://www.mattallford.com/2024/azure-bicep-linting-and-validation/">…
# <a href="https://www.mattallford.com/tags/azure/">Azure</a>
# <a href="https://www.mattallford.com/tags/bicep/">Bicep</a>
# <a href="https://www.mattallford.com/tags/iac/">IaC</a>
# <a href="https://www.mattallford.com/tags/infrastructure-as-code/">Infrastructure as Code</a>
# <a href="https://www.mattallford.com/2024/cfd-19-dell/">…
# <a href="https://www.mattallford.com/tags/cfd/">CFD</a>
# <a href="https://www.mattallford.com/tags/cloud-field-day/">Cloud Field Day</a>
# <a href="https://www.mattallford.com/tags/tech-field-day/">Tech Field Day</a>
# <a href="https://www.mattallford.com/tags/dell/">Dell</a>
# <a href="https://www.mattallford.com/2024/cfd-19-softiron/">…
# <a href="https://www.mattallford.com/tags/cfd/">CFD</a>
# <a href="https://www.mattallford.com/tags/cloud-field-day/">Cloud Field Day</a>
# <a href="https://www.mattallford.com/tags/tech-field-day/">Tech Field Day</a>
# <a href="https://www.mattallford.com/tags/softiron/">softiron</a>
# <a href="https://www.mattallford.com/2024/cfd-19-neuroblade/">…
# <a href="https://www.mattallford.com/tags/cfd/">CFD</a>
# <a href="https://www.mattallford.com/tags/cloud-field-day/">Cloud Field Day</a>
# <a href="https://www.mattallford.com/tags/tech-field-day/">Tech Field Day</a>
# <a href="https://www.mattallford.com/2024/cfd-19-platform9/">…
# <a href="https://www.mattallford.com/tags/cfd/">CFD</a>
# <a href="https://www.mattallford.com/tags/cloud-field-day/">Cloud Field Day</a>
# <a href="https://www.mattallford.com/tags/tech-field-day/">Tech Field Day</a>
# <a href="https://www.mattallford.com/tags/platform9/">platform9</a>
# <a href="https://www.mattallford.com/2023/azure-bicep-parameter-files/">…
# <a href="https://www.mattallford.com/tags/azure/">Azure</a>
# <a href="https://www.mattallford.com/tags/bicep/">Bicep</a>
# <a href="https://www.mattallford.com/tags/iac/">IaC</a>
# <a href="https://www.mattallford.com/tags/infrastructure-as-code/">Infrastructure as Code</a>
# <a href="https://www.mattallford.com/2023/Newsletter-Launch/">…
# <a href="https://www.mattallford.com/tags/newsletter/">Newsletter</a>
# <a href="https://www.mattallford.com/2021/Brave-Browser-Azure-Portal-Something-Went-Wrong/">…
# <a href="https://www.mattallford.com/tags/azure/">Azure</a>
# <a href="https://www.mattallford.com/tags/microsoft/">Microsoft</a>
# <a href="https://www.mattallford.com/tags/brave/">Brave</a>
# <a href="https://www.mattallford.com/tags/browser/">Browser</a>
# <a href="https://www.mattallford.com/2020/New-Pluralsight-Course-Microsoft-Azure-Solutions-Architect-Imple… 
# <a href="https://www.mattallford.com/tags/azure/">Azure</a>
# <a href="https://www.mattallford.com/tags/microsoft/">Microsoft</a>
# <a href="https://www.mattallford.com/tags/pluralsight/">Pluralsight</a>
# <a href="https://www.mattallford.com/tags/architect/">Architect</a>
# <a href="https://www.mattallford.com/tags/az303/">Az303</a>
# <a href="https://www.mattallford.com/tags/certification/">Certification</a>
# <a href="https://www.mattallford.com/tags/course/">Course</a>
# <a href="https://www.mattallford.com/tags/learning/">Learning</a>
# <a href="https://www.mattallford.com/2020/New-Pluralsight-Course-Formatting-Data-in-PowerShell/">…
# <a href="https://www.mattallford.com/tags/devops/">DevOps</a>
# <a href="https://www.mattallford.com/tags/powershell/">PowerShell</a>
# <a href="https://www.mattallford.com/tags/pluralsight/">Pluralsight</a>
# <a href="https://www.mattallford.com/tags/course/">Course</a>
# <a href="https://www.mattallford.com/tags/learning/">Learning</a>
# <a href="https://www.mattallford.com/page/2/">Older Posts &rarr;</a>
# <a href="https://github.com/mattallford" title="GitHub">…
# <a href="https://twitter.com/mattallford" title="Twitter">…
# <a href="https://linkedin.com/in/mattallford" title="LinkedIn">…
# <a href="https://www.youtube.com/channel/UCWPrPzVnLa9ma7axTJgUX0Q" title="Youtube">…
# <a href="/index.xml" title="RSS">…
# <a href="www.mattallford.com">Matthew Allford</a>
# <a href="https://www.mattallford.com">Matt Allford</a>
# <a href="https://gohugo.io">Hugo v0.79.1</a>
# <a href="https://github.com/halogenica/beautifulhugo">Beautiful Hugo</a>
# <a href="https://deanattali.com/beautiful-jekyll/">Beautiful Jekyll</a>

# Statuscode
$result.StatusCode
# Output:
# 200

# Headers
$result.Headers
# Output:
# Key               Value
# ---               -----
# Date              {Sun, 22 Sep 2024 11:48:43 GMT}
# Transfer-Encoding {chunked}
# Connection        {keep-alive}
# x-ms-request-id   {8d2ed9ca-901e-0039-5de5-0c8635000000}
# x-ms-version      {2018-03-28}
# CF-Cache-Status   {DYNAMIC}
# Report-To         {{"endpoints":[{"url":"https:\/\/a.nel.cloudflare.com\/report\/v4?s=OAojS3dtesn5QV699bEx… 
# NEL               {{"success_fraction":0,"report_to":"cf-nel","max_age":604800}}
# Speculation-Rules {"/cdn-cgi/speculation"}
# Server            {cloudflare}
# CF-RAY            {8c7211437cec06cc-AMS}
# Content-Type      {text/html}
# Content-MD5       {5aU2p5DwSBDzLeiKY1SOFA==}
# Last-Modified     {Fri, 28 Jun 2024 10:18:39 GMT}

# Content
$result.Content
# Output:
# <!DOCTYPE html>
# <html lang="en" itemscope itemtype="http://schema.org/WebPage">
# <head>
# <meta charset="utf-8" />
# <meta http-equiv="X-UA-Compatible" content="IE=edge">
# <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0">
# <title>Matt Allford - Matt Allford</title>
# <meta name="author" content="Matthew Allford" /><script type="application/ld+json">
# {
#     "@context": "http://schema.org",
#     "@type": "WebSite",
#     "name": "Matt Allford",

#     "url": "https:\/\/www.mattallford.com"
# }
# </script><script type="application/ld+json">
# {
#   "@context": "http://schema.org",
#   "@type": "Organization",
#   "name": "",
#   "url": "https:\/\/www.mattallford.com"




# }
# </script>
# <meta property="og:title" content="Matt Allford" />
# <meta property="og:image" content="https://www.mattallford.com/img/avatar-icon.png" />
# <meta property="og:url" content="https://www.mattallford.com/" />
# <meta property="og:type" content="website" />
# <meta property="og:site_name" content="Matt Allford" />
# <meta name="twitter:title" content="Matt Allford" />
# <meta name="twitter:image" content="https://www.mattallford.com/img/avatar-icon.png" />
# <meta name="twitter:card" content="summary" />
# <meta name="twitter:site" content="@mattallford" />
# <meta name="twitter:creator" content="@mattallford" />
# <link href="https://www.mattallford.com/img/favicon.ico" rel="icon" type="image/x-icon" />
# <meta name="generator" content="Hugo 0.79.1" />
# <link rel="alternate" href="https://www.mattallford.com/index.xml" type="application/rss+xml" title="Matt Allford"><link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/KaTeX/0.10.0/katex.min.css" integrity="sha384-9eLZqc9ds8eNjO3TmqPeYcDj8n+Qfa4nuSiGYa6DjLNcv9BtN69ZIulL9+8CqC9Y" crossorigin="anonymous">     
# <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.5.0/css/all.css" integrity="sha384-B4dIYHKNBt8Bc12p+WXckhzcICo0wtJAoU8YZTY5qE0Id1GSseTk6S+L3BlXeVIU" crossorigin="anonymous">
# <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u" crossorigin="anonymous"><link rel="stylesheet" href="https://www.mattallford.com/css/main.css" /><link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Lora:400,700,400italic,700italic" />
# <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Open+Sans:300italic,400italic,600italic,700italic,800italic,400,300,600,700,800" />
# <link rel="stylesheet" href="https://www.mattallford.com/css/highlight.min.css" /><link rel="stylesheet" href="https://www.mattallford.com/css/codeblock.css" /><link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/photoswipe/4.1.2/photoswipe.min.css" integrity="sha384-h/L2W9KefUClHWaty3SLE5F/qvc4djlyR4qY3NUV5HGQBBW7stbcfff1+I/vmsHh" crossorigin="anonymous">
# <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/photoswipe/4.1.2/default-skin/default-skin.min.css" integrity="sha384-iD0dNku6PYSIQLyfTOpB06F2KCZJAKLOThS5HRe8b3ibhdEQ6eKsFf/EeFxdOt5R" crossorigin="anonymous">
# <script type="application/javascript">
# var doNotTrack = false;
# if (!doNotTrack) {
#         window.ga=window.ga||function(){(ga.q=ga.q||[]).push(arguments)};ga.l=+new Date;
#         ga('create', 'UA-163892167-2', 'auto');

#         ga('send', 'pageview');
# }
# </script>
# <script async src="https://www.google-analytics.com/analytics.js"></script>
# </head>
# <body>
# <nav class="navbar navbar-default navbar-fixed-top navbar-custom">
# <div class="container-fluid">
# <div class="navbar-header">
# <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#main-navbar">
# <span class="sr-only">Toggle navigation</span>
# <span class="icon-bar"></span>
# <span class="icon-bar"></span>
# <span class="icon-bar"></span>
# </button>
# <a class="navbar-brand" href="https://www.mattallford.com">Matt Allford</a>
# </div>
# <div class="collapse navbar-collapse" id="main-navbar">
# <ul class="nav navbar-nav navbar-right">
# <li>
# <a title="Content Portfolio" href="/content-portfolio/">Content Portfolio</a>
# </li>
# <li>
# <a title="About" href="/about/">About</a>
# </li>
# </ul>
# </div>
# <div class="avatar-container">
# <div class="avatar-img-border">
# <a title="Matt Allford" href="https://www.mattallford.com">
# <img class="avatar-img" src="https://www.mattallford.com/img/avatar-icon.png" alt="Matt Allford" />
# </a>
# </div>
# </div>
# </div>
# </nav>
# <div class="pswp" tabindex="-1" role="dialog" aria-hidden="true">
# <div class="pswp__bg"></div>
# <div class="pswp__scroll-wrap">
# <div class="pswp__container">
# <div class="pswp__item"></div>
# <div class="pswp__item"></div>
# <div class="pswp__item"></div>
# </div>
# <div class="pswp__ui pswp__ui--hidden">
# <div class="pswp__top-bar">
# <div class="pswp__counter"></div>
# <button class="pswp__button pswp__button--close" title="Close (Esc)"></button>
# <button class="pswp__button pswp__button--share" title="Share"></button>
# <button class="pswp__button pswp__button--fs" title="Toggle fullscreen"></button>
# <button class="pswp__button pswp__button--zoom" title="Zoom in/out"></button>
# <div class="pswp__preloader">
# <div class="pswp__preloader__icn">
# <div class="pswp__preloader__cut">
# <div class="pswp__preloader__donut"></div>
# </div>
# </div>
# </div>
# </div>
# <div class="pswp__share-modal pswp__share-modal--hidden pswp__single-tap">
# <div class="pswp__share-tooltip"></div>
# </div>
# <button class="pswp__button pswp__button--arrow--left" title="Previous (arrow left)">
# </button>
# <button class="pswp__button pswp__button--arrow--right" title="Next (arrow right)">
# </button>
# <div class="pswp__caption">
# <div class="pswp__caption__center"></div>
# </div>
# </div>
# </div>
# </div>
# <div id="header-big-imgs" data-num-img="1" data-img-src-1="img/headerbackground-copy.png"></div>
# <header class="header-section has-img">
# <div class="intro-header big-img">
# <div class="container">
# <div class="row">
# <div class="col-lg-8 col-lg-offset-2 col-md-10 col-md-offset-1">
# <div class="page-heading">
# <h1> </h1>
# </div>
# </div>
# </div>
# </div>
# <span class="img-desc" style="display: inline;"></span>
# </div>
# <div class="intro-header no-img">
# <div class="container">
# <div class="row">
# <div class="col-lg-8 col-lg-offset-2 col-md-10 col-md-offset-1">
# <div class="page-heading">
# <h1> </h1>
# <hr class="small">
# </div>
# </div>
# </div>
# </div>
# </div>
# </header>
# <div role="main" class="container">
# <div class="row">
# <div class="col-lg-8 col-lg-offset-2 col-md-10 col-md-offset-1">
# <div class="posts-list">
# <article class="post-preview">
# <a href="https://www.mattallford.com/2024/azure-bicep-linting-and-validation/">
# <h2 class="post-title">Azure Bicep Linting and Validation</h2>
# </a>
# <p class="post-meta">
# <span class="post-meta">
# <i class="fas fa-calendar"></i>&nbsp;
# &nbsp;|&nbsp;<i class="fas fa-clock"></i>&nbsp;5&nbsp;minutes
# </span>
# </p>
# <div class="post-entry">
# Azure bicep: Zero to Hero Course As a shameless plug, if you like the content you see here on Azure Bicep and are looking to further expand your skills, I&rsquo;ve created an Azure Bicep: Zero to Hero course, which can be found here.
# Linting and Preflight Validation in Azure Bicep: Ensuring High-Quality Templates As you start building out your Azure Bicep templates, it’s crucial to ensure that your code adheres to best practices and patterns.    
# </div>
# <div class="blog-tags">
# <a href="https://www.mattallford.com/tags/azure/">Azure</a>&nbsp;
# <a href="https://www.mattallford.com/tags/bicep/">Bicep</a>&nbsp;
# <a href="https://www.mattallford.com/tags/iac/">IaC</a>&nbsp;
# <a href="https://www.mattallford.com/tags/infrastructure-as-code/">Infrastructure as Code</a>&nbsp;
# </div>
# </article>
# <article class="post-preview">
# <a href="https://www.mattallford.com/2024/cfd-19-dell/">
# <h2 class="post-title">CFD19 - Going from Ground to Cloud and Back with Dell</h2>
# </a>
# <p class="post-meta">
# <span class="post-meta">
# <i class="fas fa-calendar"></i>&nbsp;
# &nbsp;|&nbsp;<i class="fas fa-clock"></i>&nbsp;6&nbsp;minutes
# </span>
# </p>
# <div class="post-entry">
# Day 2 of Cloud Field Day kicked off at Dell&rsquo;s offices here in Santa Clara, which is a very nice Executive Briefing Center. It&rsquo;s been a while since I&rsquo;ve seen some Dell hardware, unfortunately I wasn&rsquo;t able to get behind the glass to give these guys a hug.
# Dell started their presentation with Prateesh Sharma laying the groundwork for multi-cloud, and the important of a universal storage layer for companies who are trying to manage and operate across multiple environments.
# </div>
# <div class="blog-tags">
# <a href="https://www.mattallford.com/tags/cfd/">CFD</a>&nbsp;
# <a href="https://www.mattallford.com/tags/cloud-field-day/">Cloud Field Day</a>&nbsp;
# <a href="https://www.mattallford.com/tags/tech-field-day/">Tech Field Day</a>&nbsp;
# <a href="https://www.mattallford.com/tags/dell/">Dell</a>&nbsp;
# </div>
# </article>
# <article class="post-preview">
# <a href="https://www.mattallford.com/2024/cfd-19-softiron/">
# <h2 class="post-title">CFD19 - A True Private Cloud with SoftIron</h2>
# </a>
# <p class="post-meta">
# <span class="post-meta">
# <i class="fas fa-calendar"></i>&nbsp;
# &nbsp;|&nbsp;<i class="fas fa-clock"></i>&nbsp;5&nbsp;minutes
# </span>
# </p>
# <div class="post-entry">
# You&rsquo;ve likely heard stories and whispers of &ldquo;on-prem&rdquo; being sexy again, not that it ever wasn&rsquo;t, right? But public cloud had a lot of promises, some of which it lives up to, some of which it doesn&rsquo;t, and some of which it does but it&rsquo;s just painfully expensive. If you&rsquo;re considering a refresh of your on-prem solution, or are looking to move some or all workloads back to a solution you manage, its a great opportunity to revisit your requirements, and look at implementing an actual private cloud, rather than just a virtualisation platform which oh so many of us have seen and managed.
# </div>
# <div class="blog-tags">
# <a href="https://www.mattallford.com/tags/cfd/">CFD</a>&nbsp;
# <a href="https://www.mattallford.com/tags/cloud-field-day/">Cloud Field Day</a>&nbsp;
# <a href="https://www.mattallford.com/tags/tech-field-day/">Tech Field Day</a>&nbsp;
# <a href="https://www.mattallford.com/tags/softiron/">softiron</a>&nbsp;
# </div>
# </article>
# <article class="post-preview">
# <a href="https://www.mattallford.com/2024/cfd-19-neuroblade/">
# <h2 class="post-title">CFD19 - Accelerating Data Analytics with NeuroBlade</h2>
# </a>
# <p class="post-meta">
# <span class="post-meta">
# <i class="fas fa-calendar"></i>&nbsp;
# &nbsp;|&nbsp;<i class="fas fa-clock"></i>&nbsp;3&nbsp;minutes
# </span>
# </p>
# <div class="post-entry">
# Cloud Field Day #19 kicked off with NeuroBlade, and I&rsquo;m glad I had a coffee before hand, as data analytics is not my expertise, but I learned a lot in the session thanks to NeuroBlade and other delegates.      
# &ldquo;Revolutionizing Big Data Analytis with NeuroBlade&rsquo;s SQL Processing Unit&rdquo;
# NeuroBlade were founded in 2018, have over 120 employees, and $100m+ in capital funding. A key line they used during their funding round is they &ldquo;Want to be the NVIDIA of Data Analytics&rdquo;.
# </div>
# <div class="blog-tags">
# <a href="https://www.mattallford.com/tags/cfd/">CFD</a>&nbsp;
# <a href="https://www.mattallford.com/tags/cloud-field-day/">Cloud Field Day</a>&nbsp;
# <a href="https://www.mattallford.com/tags/tech-field-day/">Tech Field Day</a>&nbsp;
# </div>
# </article>
# <article class="post-preview">
# <a href="https://www.mattallford.com/2024/cfd-19-platform9/">
# <h2 class="post-title">CFD19 - Get Dollars Back in Your Pocket With EKS Optimisation</h2>
# </a>
# <p class="post-meta">
# <span class="post-meta">
# <i class="fas fa-calendar"></i>&nbsp;
# &nbsp;|&nbsp;<i class="fas fa-clock"></i>&nbsp;5&nbsp;minutes
# </span>
# </p>
# <div class="post-entry">
# Most kubernetes clusters are running at 30% or less utilisation, which means there&rsquo;s a lot of resource wastage out there in the wild, which translates to dollars being spent for no value. Platform9 want to help you save some money by tweaking the way you run your EKS clusters, and this same pattern could make its way to other managed kubernetes solutions in the future.
# Platform9 were founded in 2013 with a relatively clear mission: Democratize cloud computing.
# </div>
# <div class="blog-tags">
# <a href="https://www.mattallford.com/tags/cfd/">CFD</a>&nbsp;
# <a href="https://www.mattallford.com/tags/cloud-field-day/">Cloud Field Day</a>&nbsp;
# <a href="https://www.mattallford.com/tags/tech-field-day/">Tech Field Day</a>&nbsp;
# <a href="https://www.mattallford.com/tags/platform9/">platform9</a>&nbsp;
# </div>
# </article>
# <article class="post-preview">
# <a href="https://www.mattallford.com/2023/azure-bicep-parameter-files/">
# <h2 class="post-title">Azure Bicep Parameter Files</h2>
# </a>
# <p class="post-meta">
# <span class="post-meta">
# <i class="fas fa-calendar"></i>&nbsp;
# &nbsp;|&nbsp;<i class="fas fa-clock"></i>&nbsp;12&nbsp;minutes
# </span>
# </p>
# <div class="post-entry">
# Azure bicep: Zero to Hero Course As a shameless plug, if you like the content you see here on Azure Bicep and are looking to further expand your skills, I&rsquo;ve create an Azure Bicep: Zero to Hero course, which can be found here.
# If you prefer to consume video content, similar content that is in this blog post is in the video below. If 
# you prefer to read, please skip past the video and read on!
# </div>
# <div class="blog-tags">
# <a href="https://www.mattallford.com/tags/azure/">Azure</a>&nbsp;
# <a href="https://www.mattallford.com/tags/bicep/">Bicep</a>&nbsp;
# <a href="https://www.mattallford.com/tags/iac/">IaC</a>&nbsp;
# <a href="https://www.mattallford.com/tags/infrastructure-as-code/">Infrastructure as Code</a>&nbsp;
# </div>
# </article>
# <article class="post-preview">
# <a href="https://www.mattallford.com/2023/Newsletter-Launch/">
# <h2 class="post-title">Newsletter Launch</h2>
# </a>
# <p class="post-meta">
# <span class="post-meta">
# <i class="fas fa-calendar"></i>&nbsp;
# &nbsp;|&nbsp;<i class="fas fa-clock"></i>&nbsp;1&nbsp;minutes
# </span>
# </p>
# <div class="post-entry">
# This is a really quick post to let followers / subscribers of the blog know that I have recently launched a 
# newsletter. It&rsquo;s been 2.5 years since I&rsquo;ve posted here (oops!) and in that time, I&rsquo;ve been working as an Azure DevOps Engineer.
# In my role I gain invaluable insights and knowledge that I&rsquo;m eager to share with you. Through the newsletter, we&rsquo;ll explore the latest trends, keep you updated on community happenings, and offer career tips to help you thrive in the cloud industry.
# </div>
# <div class="blog-tags">
# <a href="https://www.mattallford.com/tags/newsletter/">Newsletter</a>&nbsp;
# </div>
# </article>
# <article class="post-preview">
# <a href="https://www.mattallford.com/2021/Brave-Browser-Azure-Portal-Something-Went-Wrong/">
# <h2 class="post-title">Brave Browser: Azure Portal - Something Went Wrong</h2>
# </a>
# <p class="post-meta">
# <span class="post-meta">
# <i class="fas fa-calendar"></i>&nbsp;
# &nbsp;|&nbsp;<i class="fas fa-clock"></i>&nbsp;3&nbsp;minutes
# </span>
# </p>
# <div class="post-entry">
# TL;DR - In the last few days (start of 2021), the &ldquo;Shields Up&rdquo; feature in the Brave web browser 
# seems to be flagging a JSON file as a cross-site tracker when creating a resource in Azure, causing the blade to not load. To work around this, you can go &ldquo;shields down&rdquo; for portal.azure.com.
# I logged on to my machine yesterday, same as any other day, and went to start deploying some resources to Azure via the Azure Portal for a customer, nothing out of the ordinary.
# </div>
# <div class="blog-tags">
# <a href="https://www.mattallford.com/tags/azure/">Azure</a>&nbsp;
# <a href="https://www.mattallford.com/tags/microsoft/">Microsoft</a>&nbsp;
# <a href="https://www.mattallford.com/tags/brave/">Brave</a>&nbsp;
# <a href="https://www.mattallford.com/tags/browser/">Browser</a>&nbsp;
# </div>
# </article>
# <article class="post-preview">
# <a href="https://www.mattallford.com/2020/New-Pluralsight-Course-Microsoft-Azure-Solutions-Architect-Implement-a-Workload-Management-Strategy/">
# <h2 class="post-title">New Pluralsight Course: Microsoft Azure Solutions Architect - Implement a Workload Management Strategy</h2>
# </a>
# <p class="post-meta">
# <span class="post-meta">
# <i class="fas fa-calendar"></i>&nbsp;
# &nbsp;|&nbsp;<i class="fas fa-clock"></i>&nbsp;2&nbsp;minutes
# </span>
# </p>
# <div class="post-entry">
# I&rsquo;m really happy to anounce that another course I&rsquo;ve created for Pluralsight has gone live in their library today. This one has a wordy title, being Microsoft Azure Solutions Architect: Implement a Workload Management Strategy, and this is a part of the Azure AZ 303 Solutions Architect focused exam path.       
# This year Pluralsight have been putting a very specific focus on creating Microsoft Azure content spificially targetted at helping learners learn exam objectives and pass the exam to achieve a certification, rather than going deep in to skill building of all of the solutions that are covered in an exam.
# </div>
# <div class="blog-tags">
# <a href="https://www.mattallford.com/tags/azure/">Azure</a>&nbsp;
# <a href="https://www.mattallford.com/tags/microsoft/">Microsoft</a>&nbsp;
# <a href="https://www.mattallford.com/tags/pluralsight/">Pluralsight</a>&nbsp;
# <a href="https://www.mattallford.com/tags/architect/">Architect</a>&nbsp;
# <a href="https://www.mattallford.com/tags/az303/">Az303</a>&nbsp;
# <a href="https://www.mattallford.com/tags/certification/">Certification</a>&nbsp;
# <a href="https://www.mattallford.com/tags/course/">Course</a>&nbsp;
# <a href="https://www.mattallford.com/tags/learning/">Learning</a>&nbsp;
# </div>
# </article>
# <article class="post-preview">
# <a href="https://www.mattallford.com/2020/New-Pluralsight-Course-Formatting-Data-in-PowerShell/">
# <h2 class="post-title">New Pluralsight Course: Formatting Data in PowerShell</h2>
# </a>
# <p class="post-meta">
# <span class="post-meta">
# <i class="fas fa-calendar"></i>&nbsp;
# &nbsp;|&nbsp;<i class="fas fa-clock"></i>&nbsp;1&nbsp;minutes
# </span>
# </p>
# <div class="post-entry">
# New Pluralsight Course: Formatting Data in PowerShell I&rsquo;m a bit late to the party with this post, as this course went live around the 27th of October, 2020, but I&rsquo;m happy to say I&rsquo;ve had my second course at Pluralsight recently go live!
# This course is another PowerShell based course in the PowerShell 7 fundamentals track at Pluralsight, titled Formatting Data in PowerShell. This course is aimed to help you understand the PowerShell formatting system and why results are formatted the way they are by default, and then how to override that formatting to get 
# the data in the format you need it in.
# </div>
# <div class="blog-tags">
# <a href="https://www.mattallford.com/tags/devops/">DevOps</a>&nbsp;
# <a href="https://www.mattallford.com/tags/powershell/">PowerShell</a>&nbsp;
# <a href="https://www.mattallford.com/tags/pluralsight/">Pluralsight</a>&nbsp;
# <a href="https://www.mattallford.com/tags/course/">Course</a>&nbsp;
# <a href="https://www.mattallford.com/tags/learning/">Learning</a>&nbsp;
# </div>
# </article>
# </div>
# <ul class="pager main-pager">
# <li class="next">
# <a href="https://www.mattallford.com/page/2/">Older Posts &rarr;</a>
# </li>
# </ul>
# </div>
# </div>
# </div>
# <div class="page-meta">
# </div>
# <footer>
# <div class="container">
# <div class="row">
# <div class="col-lg-8 col-lg-offset-2 col-md-10 col-md-offset-1">
# <ul class="list-inline text-center footer-links">
# <li>
# <a href="https://github.com/mattallford" title="GitHub">
# <span class="fa-stack fa-lg">
# <i class="fas fa-circle fa-stack-2x"></i>
# <i class="fab fa-github fa-stack-1x fa-inverse"></i>
# </span>
# </a>
# </li>
# <li>
# <a href="https://twitter.com/mattallford" title="Twitter">
# <span class="fa-stack fa-lg">
# <i class="fas fa-circle fa-stack-2x"></i>
# <i class="fab fa-twitter fa-stack-1x fa-inverse"></i>
# </span>
# </a>
# </li>
# <li>
# <a href="https://linkedin.com/in/mattallford" title="LinkedIn">
# <span class="fa-stack fa-lg">
# <i class="fas fa-circle fa-stack-2x"></i>
# <i class="fab fa-linkedin fa-stack-1x fa-inverse"></i>
# </span>
# </a>
# </li>
# <li>
# <a href="https://www.youtube.com/channel/UCWPrPzVnLa9ma7axTJgUX0Q" title="Youtube">
# <span class="fa-stack fa-lg">
# <i class="fas fa-circle fa-stack-2x"></i>
# <i class="fab fa-youtube fa-stack-1x fa-inverse"></i>
# </span>
# </a>
# </li>
# <li>
# <a href="/index.xml" title="RSS">
# <span class="fa-stack fa-lg">
# <i class="fas fa-circle fa-stack-2x"></i>
# <i class="fas fa-rss fa-stack-1x fa-inverse"></i>
# </span>
# </a>
# </li>
# </ul>
# <p class="credits copyright text-muted">
# <a href="www.mattallford.com">Matthew Allford</a>
# &nbsp;&bull;&nbsp;&copy;
# 2024
# &nbsp;&bull;&nbsp;
# <a href="https://www.mattallford.com">Matt Allford</a>
# </p>
# <p class="credits theme-by text-muted">
# <a href="https://gohugo.io">Hugo v0.79.1</a> powered &nbsp;&bull;&nbsp; Theme <a href="https://github.com/halogenica/beautifulhugo">Beautiful Hugo</a> adapted from <a href="https://deanattali.com/beautiful-jekyll/">Beautiful Jekyll</a>
# </p>
# </div>
# </div>
# </div>
# </footer><script src="https://cdnjs.cloudflare.com/ajax/libs/KaTeX/0.10.0/katex.min.js" integrity="sha384-K3vbOmF2BtaVai+Qk37uypf7VrgBubhQreNQe9aGsz9lB63dIFiQVlJbr92dw2Lx" crossorigin="anonymous"></script>
# <script src="https://cdnjs.cloudflare.com/ajax/libs/KaTeX/0.10.0/contrib/auto-render.min.js" integrity="sha384-kmZOZB5ObwgQnS/DuDg6TScgOiWWBiVt0plIRkZCmE6rDZGrEOQeHM5PcHi+nyqe" crossorigin="anonymous"></script>      
# <script src="https://code.jquery.com/jquery-1.12.4.min.js" integrity="sha256-ZosEbRLbNQzLpnKIkEdrPv7lOy9C27hHQ+Xp8a4MxAQ=" crossorigin="anonymous"></script>
# <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js" integrity="sha384-Tc5IQib027qvyjSMfHjOMaLkfuWVxZxUPnCJA7l2mCWNIpG9mGCD8wGNIcPD7Txa" crossorigin="anonymous"></script>
# <script src="https://www.mattallford.com/js/main.js"></script>
# <script src="https://www.mattallford.com/js/highlight.min.js"></script>
# <script> hljs.initHighlightingOnLoad(); </script>
# <script> $(document).ready(function() {$("pre.chroma").css("padding","0");}); </script><script> renderMathInElement(document.body); </script><script src="https://cdnjs.cloudflare.com/ajax/libs/photoswipe/4.1.2/photoswipe.min.js" integrity="sha384-QELNnmcmU8IR9ZAykt67vGr9/rZJdHbiWi64V88fCPaOohUlHCqUD/unNN0BXSqy" crossorigin="anonymous"></script>
# <script src="https://cdnjs.cloudflare.com/ajax/libs/photoswipe/4.1.2/photoswipe-ui-default.min.js" integrity="sha384-m67o7SkQ1ALzKZIFh4CiTA8tmadaujiTa9Vu+nqPSwDOqHrDmxLezTdFln8077+q" crossorigin="anonymous"></script><script src="https://www.mattallford.com/js/load-photoswipe.js"></script>
# </body>
# </html>


# Opening Reddit's Powershell section
Invoke-WebRequest -Method Get -Uri https://www.reddit.com/r/PowerShell/.rss
# doesn't work without an account