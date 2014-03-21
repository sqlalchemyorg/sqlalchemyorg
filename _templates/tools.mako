<%!
    import syntax_highlight
%>
<%def name="code()"><%
    return syntax_highlight.highlight_site(capture(caller.body))
%></%def>