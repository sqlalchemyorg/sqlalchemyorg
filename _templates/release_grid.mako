<%
    release_history = bf.config.release_data

    # these are our milestones
    release_milestones = bf.config.release_milestones

    # text overrides
    milestone_text = {
        'beta': "Beta",
        'early_development': "Development",
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
                        % if first_version['version'].is_prerelease:
                            <span class="release-tip">(beta)</span>
                        % endif
                    % endif
                </td>
                <td>
                    % if latest_version:
                        ${latest_version['release_date'].strftime("%Y-%m-%d")}
                        % if latest_version['version'].is_prerelease:
                            <span class="release-tip">(beta)</span>
                        % endif
                    % endif
                </td>
                <td>
                    % if latest_version:
                        <a href="${latest_version['url']}">${latest_version['version']}</a>
                        <a class="release-tip" href="${latest_version['changelog']}">[changes]</a>
                    % endif
                </td>
                <td>
                    <a href="#status-desc-${version_rec['milestone']}">${milestone_text[version_rec['milestone']]}</a>
                </td>
            </tr>
        % endfor
    </tbody>
</table>

<h4>About Release Status Categories</h4>
<p>
    The following table summarizes each status category:
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
            <a name="status-desc-development"/>
            <th>${milestone_text['development']}</th>
            <td>
                Active development for the next major release of SQLAlchemy.
                Development of new features and major behavioral changes
                to this "future" branch of code.   Users are encouraged
                to run the master branch within test environments in order
                to help in reporting regressions as well as to
                test beta releases as they are released.
            </td>
        </tr>
        <tr>
            <a name="status-desc-current"/>
            <th>${milestone_text['current']}</th>
            <td>
                The current official release of SQLAlchemy.
                Ongoing work is performed to close out regressions and
                bugs that can still be applied without significant
                risk of destabilization.  Applications
                which are under active development should seek to always
                refer to at least the "current" release.
            </td>
        </tr>
        <tr>
            <a name="status-desc-maintenance"/>
            <th>${milestone_text['maintenance']}</th>
            <td>
                The maintenance series accepts a very limited set of
                critical bug fixes as they are encountered.
                In maintenance mode, it is assumed that applications coded
                to this version are themselves fully stable and not
                experiencing much change, so the pace of releases slows down
                considerably to avoid disruption.  An application that wishes
                to continue active development should seek to upgrade
                to the current release series as soon as possible.
                Applications that are in a stable state and experience
                a low amount of new development may wish to remain
                linked to the current maintenance version, but will still
                want to upgrade as the maintenance series falls into the
                next milestone.
            </td>
        </tr>
        <tr>
            <a name="status-desc-security"/>
            <th>${milestone_text['security']}</th>
            <td>
                Security related bug reports or patches are accepted, however
                almost no other changes are made and there are basically
                no releases except in extraordinary circumstances;
                SQLAlchemy has had perhaps one or two issues since its
                inception in 2005 that even marginally qualified as
                "security" issues. Applications running against this milestone
                series should seek to upgrade to a newer series
                in order to stay current.
            </td>
        </tr>
        <tr>
            <a name="status-desc-eol"/>
            <th>${milestone_text['eol']}</th>
            <td>
                This release version is no longer maintained and is considered
                legacy.
                Applications in production use against an EOL milestone
                are strongly advised to upgrade to a newer version.
            </td>
        </tr>
    </tbody>
</table>

</div>

