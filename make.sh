#
# Label Maker
#
# Inspired from a GIST @rentzsch and standardized for use with Viable's
# Github Issues usage
#
# @see https://gist.github.com/rentzsch/4540430
#
#
# PREREQUISITES
#
# 1. Create a Repository
#
# 2. How to Setup a Personal Token
#     @see https://help.github.com/articles/creating-an-access-token-for-command-line-use/
#
#

ACCOUNT=
REPOSITORY=
USER=
ACCESS_TOKEN=

#
# Remove all default Github Issue Labels from the repositories Issue queue.
#
curl -X "DELETE" --user "$USER:$ACCESS_TOKEN"  "https://api.github.com/repos/$ACCOUNT/$REPO/labels/bug"
curl -X "DELETE" --user "$USER:$ACCESS_TOKEN"  "https://api.github.com/repos/$ACCOUNT/$REPO/labels/duplicate"
curl -X "DELETE" --user "$USER:$ACCESS_TOKEN"  "https://api.github.com/repos/$ACCOUNT/$REPO/labels/enhancement"
curl -X "DELETE" --user "$USER:$ACCESS_TOKEN"  "https://api.github.com/repos/$ACCOUNT/$REPO/labels/invalid"
curl -X "DELETE" --user "$USER:$ACCESS_TOKEN"  "https://api.github.com/repos/$ACCOUNT/$REPO/labels/question"
curl -X "DELETE" --user "$USER:$ACCESS_TOKEN"  "https://api.github.com/repos/$ACCOUNT/$REPO/labels/wontfix"
curl -X "DELETE" --user "$USER:$ACCESS_TOKEN"  "https://api.github.com/repos/$ACCOUNT/$REPO/labels/help%20wanted"


#
# A list of labels you wish to create with their respective colors
#
curl -X "POST" "https://api.github.com/repos/$ACCOUNT/$REPO/labels" --user "$USER:$ACCESS_TOKEN" -d '{"name":"priority 1","color":"fbca04"}'
curl -X "POST" "https://api.github.com/repos/$ACCOUNT/$REPO/labels" --user "$USER:$ACCESS_TOKEN" -d '{"name":"priority 2","color":"fbca04"}'
curl -X "POST" "https://api.github.com/repos/$ACCOUNT/$REPO/labels" --user "$USER:$ACCESS_TOKEN" -d '{"name":"priority 3","color":"fbca04"}'
curl -X "POST" "https://api.github.com/repos/$ACCOUNT/$REPO/labels" --user "$USER:$ACCESS_TOKEN" -d '{"name":"priority 4","color":"fbca04"}'
curl -X "POST" "https://api.github.com/repos/$ACCOUNT/$REPO/labels" --user "$USER:$ACCESS_TOKEN" -d '{"name":"priority 5","color":"fbca04"}'

curl -X "POST" "https://api.github.com/repos/$ACCOUNT/$REPO/labels" --user "$USER:$ACCESS_TOKEN" -d '{"name":"ready for review","color":"009800"}'
curl -X "POST" "https://api.github.com/repos/$ACCOUNT/$REPO/labels" --user "$USER:$ACCESS_TOKEN" -d '{"name":"out of scope","color":"ffffff"}'
curl -X "POST" "https://api.github.com/repos/$ACCOUNT/$REPO/labels" --user "$USER:$ACCESS_TOKEN" -d '{"name":"nice to have","color":"e11d21"}'
curl -X "POST" "https://api.github.com/repos/$ACCOUNT/$REPO/labels" --user "$USER:$ACCESS_TOKEN" -d '{"name":"prerequisite","color":"d4c5f9"}'
curl -X "POST" "https://api.github.com/repos/$ACCOUNT/$REPO/labels" --user "$USER:$ACCESS_TOKEN" -d '{"name":"enhancement","color":"84b6eb"}'

curl -X "POST" "https://api.github.com/repos/$ACCOUNT/$REPO/labels" --user "$USER:$ACCESS_TOKEN" -d '{"name":"bug","color":"fc2929"}'
curl -X "POST" "https://api.github.com/repos/$ACCOUNT/$REPO/labels" --user "$USER:$ACCESS_TOKEN" -d '{"name":"duplicate","color":"e6e6e6"}'

curl -X "POST" "https://api.github.com/repos/$ACCOUNT/$REPO/labels" --user "$USER:$ACCESS_TOKEN" -d '{"name":"needs clarification","color":"e6e6e6"}'
curl -X "POST" "https://api.github.com/repos/$ACCOUNT/$REPO/labels" --user "$USER:$ACCESS_TOKEN" -d '{"name":"help wanted","color":"009800"}'
