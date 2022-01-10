#!/usr/bin/env bash

echo "Creating .env file"
cat > ./.env <<EOL
CI=${CI}
ENV=${ENV}
API_URL=${API_URL}
GA_CODE=${GA_CODE}
EOL

echo "Creating ios GoogleService-Info.plist"
cat > ./ios/GoogleService-Info.plist <<EOL
<?xml version="1.0" encoding="UTF-8"?>
<!DOCTYPE plist PUBLIC "-//Apple//DTD PLIST 1.0//EN" "http://www.apple.com/DTDs/PropertyList-1.0.dtd">
<plist version="1.0">
<dict>
	<key>CLIENT_ID</key>
	<string>${IOS_CLIENT_ID}</string>
	<key>REVERSED_CLIENT_ID</key>
	<string>${IOS_REVERSED_CLIENT_ID}</string>
	<key>API_KEY</key>
	<string>${IOS_API_KEY}</string>
	<key>GCM_SENDER_ID</key>
	<string>${IOS_GCM_SENDER_ID}</string>
	<key>PLIST_VERSION</key>
	<string>1</string>
	<key>BUNDLE_ID</key>
	<string>${IOS_BUNDLE_ID}</string>
	<key>PROJECT_ID</key>
	<string>${IOS_PROJECT_ID}</string>
	<key>STORAGE_BUCKET</key>
	<string>${IOS_STORAGE_BUCKET}</string>
	<key>IS_ADS_ENABLED</key>
	<false></false>
	<key>IS_ANALYTICS_ENABLED</key>
	<false></false>
	<key>IS_APPINVITE_ENABLED</key>
	<false></false>
	<key>IS_GCM_ENABLED</key>
	<false></false>
	<key>IS_SIGNIN_ENABLED</key>
	<false></false>
	<key>GOOGLE_APP_ID</key>
	<string>${IOS_GOOGLE_APP_ID}</string>
</dict>
</plist>
EOL

echo "Creating android google-services.json"
cat > ./android/app/google-services.json <<EOL
{
  "project_info": {
    "project_number": "${ANDROID_PROJECT_NUMBER}",
    "project_id": "${ANDROID_PROJECT_ID}",
    "storage_bucket": "${ANDROID_STORAGE_BUCKET}"
  },
  "client": [
    {
      "client_info": {
        "mobilesdk_app_id": "${ANDROID_MOBILESDK_APP_ID}",
        "android_client_info": {
          "package_name": "${ANDROID_PACKAGE_NAME}"
        }
      },
      "oauth_client": [
        {
          "client_id": "${ANDROID_CLIENT_ID}",
          "client_type": 3
        }
      ],
      "api_key": [
        {
          "current_key": "${ANDROID_CURRENT_KEY}"
        }
      ],
      "services": {
        "appinvite_service": {
          "other_platform_oauth_client": [
            {
              "client_id": "${ANDROID_OTHER_PLATFORM_OAUTH_CLIENT_1}",
              "client_type": 3
            },
            {
              "client_id": "${ANDROID_OTHER_PLATFORM_OAUTH_CLIENT_2}",
              "client_type": 2,
              "ios_info": {
                "bundle_id": "${ANDROID_PACKAGE_NAME}"
              }
            }
          ]
        }
      }
    }
  ],
  "configuration_version": "1"
}
EOL