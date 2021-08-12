# DocCheckAppLogin

![Cocoapods](https://img.shields.io/cocoapods/v/DocCheckAppLoginSDK)
![Cocoapods platforms](https://img.shields.io/cocoapods/p/DocCheckAppLoginSDK)

The DocCheck App Login SDK provides you with a simple to use integration of the authentication through DocCheck. This is done by providing a ViewController which wraps the Web flow and handles callbacks for the authentication.

## Requirements

- iOS 11.0+
- Xcode 12+
- Swift 5.0+

## Installation

### CocoaPods

DocCheckAppLogin is available through the [CocoaPods](https://cocoapods.org) dependency management tools. To install
it, simply add the following line to your Podfile:

```ruby
pod 'DocCheckAppLoginSDK'
```

For the case that the SDK is not yet listed on cocoapods you can always fall back to getting a version directly from this repository like this:

```ruby
pod 'DocCheckAppLoginSDK', :git => 'https://github.com/antwerpes/dc_app_login_sdk_ios.git', :tag => '0.1.3'
```

### Swift Package Manager - experimental

The Swift Package Manager is a tool for automating the distribution of Swift code and is integrated into the swift compiler. It is in early development, but we support its use on supported platforms.

Once you have your Swift package set up, adding DocCheckAppLogin as a dependency is as easy as adding it to the `dependencies` value of your `Package.swift`.

```swift
dependencies: [
    .package(url: "https://github.com/antwerpes/dc_app_login_sdk_ios.git", .upToNextMajor(from: "1.0.0"))
]
```

## Usage

```swift
let docCheckAppLogin = DocCheckAppLogin.open(
    loginId: "YOUR_LOGIN_ID",
    language: "YOUR_SELECTED_LANGUAGE", // optional will default to de
    templateName: "TEMPLATE_NAME" // optional will default to s_mobile
)
// optional listener
docCheckAppLogin.loginSuccesful = {
    // do something on success like dismissing the viewcontroller
}
docCheckAppLogin.loginFailed = { error in
    // do something on failed login like showing an error message
}
docCheckAppLogin.loginCanceled = {
    // do something on user initiated cancel like showing a hint
}
docCheckAppLogin.receivedUserInformations = { userInfo in
    // get user information based on what was provided by the server
}
```

## Example

An example project with integration instructions can be found in the [Example Repository](https://github.com/antwerpes/dc_app_login_sdk_ios_example)

## Response Parameters

| Name           |Status   |Description                                                                | Value                                                               | License Type     |
|----------------|---------|---------------------------------------------------------------------------|---------------------------------------------------------------------|------------------|
|login_id        |internal |login ID associated with the login                                         |e.g. 200000012345                                                    |all               |
|appid           |internal |bundle identifier for the current app, is related to the mobile special    |e.g. "bundleidentifier"                                              |all   		    |
|intdclanguageid |internal |internal ID that tracks the user language                                  |e.g. 148                                                             |all               |
|strDcLanguage   |internal |iso code that tracks the user language                                     |(for Personal form). One of "de", "en"/"com", "fr", "nl", "it", "es".|all               |
|uniquekey       |valid    |alphanumerical string that is individual per user, is passed by each login |e.g. abc_abc884e739adf439ed521720acb5b232                            |economy + business|
|code            |valid    |Oauth2 parameter                                                           |e.g. abc884e739adf439ed521720acb5b232abc884e739adf439ed521720acb5b232|economy + business|
|state           |valid    |Oauth2 parameter                                                           |e.g. eHxI902CC3doao1                                                 |economy + business|
|dc_agreement    |valid    |status of confirmation of the data transfer consent form                   |0 = not confirmed; 1 = confirmed                                     |business          |

Please note that additional parameters can be delivered in case of valid consent for data transfer in combination with an implemented business license. For more Details, please check the OAuth2 documentation. Thats one can be reuqested via industry@doccheck.com. 
