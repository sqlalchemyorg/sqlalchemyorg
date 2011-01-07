<%!
    from mako.ext.autohandler import autohandler
%>
<%inherit file="${autohandler(template, context)}"/>

<%
in_docs = getattr(next.module, 'in_docs', False)

current_section = getattr(self.module, 'section', '')
if not current_section and in_docs:
    current_section = 'docs'
%>


<div id="wrap">

<%include file="header.mako" args="section=current_section" />

<div id="main-body">

% if not in_docs:

    <div id="content">
    <div id="content-inner">
    ${next.body(**pageargs)}
    </div>
    </div> <!-- end #content-inner, #content -->

    <%include file="sidebar.mako" args="section=current_section" />

% else:

    <div id="docs">
    ${next.body(**pageargs)}
    </div>

% endif

</div> <!-- end #main-body -->

<%include file="footer.mako"/>

</div> <!-- end #wrap -->