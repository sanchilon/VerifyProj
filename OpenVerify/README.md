<h1 align="center"><strong>OntarioVerify :copyright: </strong></h1>
<br />

## Getting started :electric_plug:

```sh
# 1. Clone this repo 
 `git clone https://github.com/ongov/OntarioVerify`
 `cd OntarioVerify`

# 2. Install the npm dependecies 
 `yarn` or `npm i`

# 3. pod install
  `yarn run update:pods`

# 4. Rename Build ENV for local development
  `cp .env.template .env`

# 5. Place your google services files for both android and iOS.

```iOS: ios/GoogleService-Info.plist
Android: android/app/google-services.json```

# 5. Run Build 
# for iOS - development
  `yarn ios`

## Clean
`yarn run clean`