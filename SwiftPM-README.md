## Using Swift Package Manager

> [!IMPORTANT]
> New integrations should use
> [`https://github.com/uxcam/uxcam-ios`](https://github.com/uxcam/uxcam-ios)
> instead of this repository. Existing integrations of this repository keep
> working; see the
> [migration guide](https://github.com/uxcam/uxcam-ios/blob/main/MIGRATION.md).

Starting with the 3.3.0 release UXCam for iOS supports installation via [Swift Package Manager](https://swift.org/package-manager/)


## Limitations

- Requires Xcode 13.0 or newer from version 3.4.0

### In Xcode

File  -> Add Package Dependencies...

<img src="docs/resources/SPM-add-package.png" width="500">

Select this repository as the URL - https://github.com/uxcam/uxcam-ios-sdk

Select the version of choice, or just `main` branch to get the latest version.

<img src="docs/resources/SPM-select-branch.png" width="500">

Choose the targets of your app to link the UXCam package to

<img src="docs/resources/SPM-select-targets.png" width="500">

