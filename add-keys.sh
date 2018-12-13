
security create-keychain -p travis ios-build.keychain
security default-keychain -s ios-build.keychain
security unlock-keychain -p travis ios-build.keychain
security import ./AppleWWDRCA.cer -k ~/Library/Keychains/ios-build.keychain -A /usr/bin/codesign
security import ./dist.cer -k ~/Library/Keychains/ios-build.keychain -A /usr/bin/codesign
security import ./dist.p12 -k ~/Library/Keychains/ios-build.keychain -P "approcks123456789" -A /usr/bin/codesign
security set-key-partition-list -S apple-tool:,apple: -s -k travis ios-build.keychain
mkdir -p ~/Library/MobileDevice/Provisioning\ Profiles
cp ./TravisDestProfile.mobileprovision ~/Library/MobileDevice/Provisioning\ Profiles/

