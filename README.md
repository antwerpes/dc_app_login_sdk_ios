# DocCheckAppLogin

[![Version](https://img.shields.io/cocoapods/v/DocCheckAppLogin.svg?style=flat)](https://cocoapods.org/pods/DocCheckAppLoginSDK)
[![Platform](https://img.shields.io/cocoapods/p/DocCheckAppLogin.svg?style=flat)](https://cocoapods.org/pods/DocCheckAppLoginSDK)
The DocCheck App Login SDK provides you with a simple to use integration of the authentication through DocCheck. This is done by providing a ViewController which wraps the Web flow and handles callbacks for the authentication.

## Requirements

- iOS 12.0+
- Xcode 12+
- Swift 5.1+

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

| Name           | Description|
|----------------|------------|
|login_id        | **DESCRIPTION MISSING**|
|code            | **DESCRIPTION MISSING**|
|state           | **DESCRIPTION MISSING**|
|dc_token        | **DESCRIPTION MISSING**|
|appid           | **DESCRIPTION MISSING**|
|intdclanguageid | **DESCRIPTION MISSING**|
|strdclanguage   | **DESCRIPTION MISSING**|
|uniquekey       | **DESCRIPTION MISSING**|
