<%page args="section" />
<div id="sidebar" class="sidebar">

    <div class="release card text-dark bg-sa-grey mb-2">
        <div class="card-body">
            <%include file="/sidebar_widgets/release.mako"/>
        </div>
    </div>

    ## <div class="snd-ad card text-dark bg-sa-grey mb-2">
    ##    <div class="banner card-body">
    ##        <%include file="/sidebar_widgets/bannerad.mako"/>
    ##    </div>
    ## </div>

    <div class="donate card text-dark bg-sa-grey mb-2">
        <div class="card-body">
            <%include file="/sidebar_widgets/donate.mako"/>
        </div>
    </div>

    <div class="news card text-dark bg-sa-grey mb-2">
        <div class="card-body">
            <%include file="/sidebar_widgets/news.mako" args="section=section"/>
        </div>
    </div>

</div> <!-- end #sidebar -->
