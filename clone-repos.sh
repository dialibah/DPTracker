#!/bin/bash

if [ $# -eq 0 ]; then
    echo "No arguments supplied"
    exit 1
fi

REPO_GROUPS=(all maven web)
REPO_GROUP=$1

if [[ ! " ${REPO_GROUPS[@]} " =~ " ${REPO_GROUP} " ]]; then
    echo $REPO_GROUP" is an invalid repository group !"
    echo "Repository groups valid: "${REPO_GROUPS[@]}
    exit 1
fi

MAVEN_REPOS="DPTracker-api"
WEB_REPOS="DPTracker-web"

if [ ${REPO_GROUPS[0]} = $REPO_GROUP ]; then
    REPOS=$MAVEN_REPOS" "$WEB_REPOS
elif [ ${REPO_GROUPS[1]} = $REPO_GROUP ]; then
    REPOS=$MAVEN_REPOS
elif [ ${REPO_GROUPS[2]} = $REPO_GROUP ]; then
    REPOS=$WEB_REPOS
fi

GREEN='\033[32m'
NC='\033[0m'

WORK_PATH=$(dirname $0)

for repo in $REPOS; do
    echo -e "Clone Git repository "${GREEN}$repo${NC}
    git clone git@github.com:dialibah/$repo.git ../$WORK_PATH/$repo
done

echo -e "\n"${GREEN}"All repositories cloned !"${NC}"\n"
exit 0
