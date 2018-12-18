OUTPUTDIR="IPA"
RELEASE_DATE=`date '+%Y-%m-%d %H:%M:%S'`
RELEASE_NOTES="Build: $TRAVIS_BUILD_NUMBER Uploaded: $RELEASE_DATE"

HOCKEY_ID="3be1776054c64461ab0bac8a3eeda92e"
HOCKEY_TOKEN="d0156df3efd0235d5860f63adc22cb99"

if [ ! -z "$HOCKEY_ID" ] && [ ! -z "$HOCKEY_TOKEN" ]; then
curl https://rink.hockeyapp.net/api/2/apps/upload \
-F status="2" \
-F notify="0" \
-F notes="$RELEASE_NOTES" \
-F notes_type="0" \
-F tags="beta" \
-F ipa="@$OUTPUTDIR/DemoCI.ipa" \
-H "X-HockeyAppToken: $HOCKEY_TOKEN"
fi
