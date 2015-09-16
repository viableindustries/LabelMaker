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

$ORGANIZATION=<YOUR_ORGANIZATION_OR_USERNAME>
$ACCESS_TOKEN=<YOUR_PERSONAL_TOKEN>
$REPOSITORY=<YOUR_RESPOSITORY>

#
# Remove all default Github Issue Labels from the repositories Issue queue.
#
curl --user "$ORGANIZATION:$ACCESS_TOKEN" --include --request DELETE "https://api.github.com/repos/$ORGANIZATION/$REPO/labels/bug"
curl --user "$ORGANIZATION:$ACCESS_TOKEN" --include --request DELETE "https://api.github.com/repos/$ORGANIZATION/$REPO/labels/duplicate"
curl --user "$ORGANIZATION:$ACCESS_TOKEN" --include --request DELETE "https://api.github.com/repos/$ORGANIZATION/$REPO/labels/enhancement"
curl --user "$ORGANIZATION:$ACCESS_TOKEN" --include --request DELETE "https://api.github.com/repos/$ORGANIZATION/$REPO/labels/invalid"
curl --user "$ORGANIZATION:$ACCESS_TOKEN" --include --request DELETE "https://api.github.com/repos/$ORGANIZATION/$REPO/labels/question"
curl --user "$ORGANIZATION:$ACCESS_TOKEN" --include --request DELETE "https://api.github.com/repos/$ORGANIZATION/$REPO/labels/wontfix"
curl --user "$ORGANIZATION:$ACCESS_TOKEN" --include --request DELETE "https://api.github.com/repos/$ORGANIZATION/$REPO/labels/help%20wanted"
