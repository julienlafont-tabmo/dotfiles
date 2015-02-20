git filter-branch --commit-filter '
        if [ "$GIT_AUTHOR_EMAIL" = "julien.lafont@tabmo.fr" ];
        then
                GIT_COMMITTER_EMAIL="yotsumi.fx@gmail.com";
                GIT_AUTHOR_EMAIL="yotsumi.fx@gmail.com";
                git commit-tree "$@";
        else
                git commit-tree "$@";
        fi' HEAD
