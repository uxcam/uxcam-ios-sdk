## Using Swift Package Manager

Starting with the 3.3.0 release UXCam for iOS supports installation via [Swift Package Manager](https://swift.org/package-manager/)


## Limitations

- Requires Xcode 13.0 or newer from version 3.4.0

### In Xcode

File -> Swift Packages -> Add Package Dependency

<img src="docs/resources/SPM-add-package.jpg" width="500">

Select this repository as the URL - https://github.com/uxcam/ios-sdk

<img src="docs/resources/SPM-select-branch.png" width="500">

Select the version of choice, or just `main` branch to get the latest version.

<img src="docs/resources/SPM-package-url.png" width="500">

Choose the targets of your app to link the UXCam package to

<img src="docs/resources/SPM-select-targets.png" width="500">

