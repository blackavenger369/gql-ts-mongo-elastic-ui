git filter-branch --commit-filter '
if [ "$GIT_AUTHOR_NAME" = "blackspider1994" ];
then
    GIT_AUTHOR_NAME="blackavenger369";
    GIT_AUTHOR_EMAIL="blackavenger369@gmail.com";
    git commit-tree "$@";
else
    git commit-tree "$@";
fi' HEAD 
