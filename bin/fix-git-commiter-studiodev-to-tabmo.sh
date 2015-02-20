git filter-branch --commit-filter '
        if [ "$GIT_AUTHOR_EMAIL" = "yotsumi.fx@gmail.com" ];
        then
                GIT_COMMITTER_EMAIL="julien.lafont@tabmo.fr";
                GIT_AUTHOR_EMAIL="julien.lafont@tabmo.fr";
                git commit-tree "$@";
        else
                git commit-tree "$@";
        fi' HEAD
