<%
    release_history = bf.config.release_data

    # these are our milestones
    release_milestones = bf.config.release_milestones

    # text overrides
    milestone_text = {
        'development': "Development",
        'current': "Current Release",
        'maintenance': "Maintenance",
        'security': "Security",
        'eol': "EOL",
    }

%>

<div class="release-status">

<h2>Release Status</h2>

<table class="table table-striped">
    <thead>
        <tr>
            <th>Major Version</th>
            <th>First Release</th>
            <th>Latest Release</th>
            <th>Latest Version</th>
            <th>Release Status</th>
        </tr>
    </thead>
    <tbody>
        % for sqlalchemy_version in reversed(sorted(release_history)):
            <%
                version_rec = release_history[sqlalchemy_version]
                if version_rec['latest']:
                    latest_version = version_rec['latest']
                else:
                    latest_version = None

                if version_rec['first']:
                    first_version = version_rec['first']
                else:
                    first_version = None

            %>
            <tr>
                <td>
                    ${sqlalchemy_version}
                    % if version_rec['docs']:
                        <a class="release-tip" href="${version_rec['docs']}">[docs]</a>
                    % endif
                    % if version_rec['migration_url']:
                        <a class="release-tip" href="${version_rec['migration_url']}">[What's New?]</a>
                    % endif
                </td>
                <td>
                    % if first_version:
                        ${first_version['release_date'].strftime("%Y-%m-%d")}
                    % endif
                </td>
                <td>
                    % if latest_version:
                        ${latest_version['release_date'].strftime("%Y-%m-%d")}
                    % endif
                </td>
                <td>
                    % if latest_version:
                        <a href="${latest_version['url']}">${latest_version['version']}</a>
                        <a class="release-tip" href="${latest_version['changelog']}">[changes]</a>
                    % endif
                </td>
                <td>
                    ${milestone_text[version_rec['milestone']]}
                </td>
            </tr>
        % endfor
    </tbody>
</table>

<h4>About Release Status Categories</h4>
<p>
    SQLAlchemy is a robust and mature Python library <a href="/organizations.html">that is
    used by some of the largest technology companies</a> and has been actively
    supported and developed since 2006!
</p>
<p>
    The SQLAlchemy team develops the codebase using a Release Status system to
    allocate new features and ongoing maintenance/support.
    Development occurs as follows:
</p>
<table class="table table-striped">
    <thead>
        <tr>
            <th>Release Status</th>
            <th>Explanation</th>
        </tr>
    </thead>
    <tbody>
        <tr>
            <th>${milestone_text['development']}</th>
            <td>
                Active development for the next major release of SQLAlchemy.
                Development of new features and potential backward
                incompatibilities are restricted to this "future" branch of code.
            </td>
        </tr>
        <tr>
            <th>${milestone_text['current']}</th>
            <td>
                The current official release of SQLAlchemy.
                Ongoing work is performed to close out bugs that can still be
                applied without significant risk of destabilization.
            </td>
        </tr>
        <tr>
            <th>${milestone_text['maintenance']}</th>
            <td>
                Patches are accepted for bug fixes that can be applied without
                risk of destabilization.   Security related bug reports are addressed.
            </td>
        </tr>
        <tr>
            <th>${milestone_text['security']}</th>
            <td>
                Only security related bug reports or patches are accepted.
            </td>
        </tr>
        <tr>
            <th>${milestone_text['eol']}</th>
            <td>
                This release version is no longer supported or maintained.
                In rare situations security related bug reports may be applied
                to these releases, but this is the exception and not the norm.
                Legacy users are strongly advised to upgrade to a newer version.
            </td>
        </tr>
    </tbody>
</table>

</div>

