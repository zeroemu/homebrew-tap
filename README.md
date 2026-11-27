# zeroemu Homebrew tap

Homebrew packages for [zeroemu](https://github.com/zeroemu/zeroemu), which runs
Android's system image on Apple Silicon with no guest kernel.

Install them by their full names, as below. Homebrew loads a package from a tap other
than its own only once it is trusted, and installing it by its full name trusts it.
To run `brew info` before installing, or to use short names, trust the tap first with
`brew trust zeroemu/tap`.

## Mac app (cask)

```sh
brew install --cask zeroemu/tap/zeroemu-app
```

Open `zeroemu.app` from Applications. It is signed ad hoc and not notarized, so macOS
blocks the first open; [Apple's guidance](https://support.apple.com/en-us/102445) says
how to open it anyway. To update the app, quit zeroemu first, then run:

```sh
brew update && brew upgrade --cask zeroemu/tap/zeroemu-app
```

If you installed the app manually, switch to the cask once. Your saved devices are
stored separately from the app. See the [Mac app instructions](https://github.com/zeroemu/zeroemu#as-a-mac-app)
for setup and migration.

## Command line (formula)

```sh
brew install zeroemu/tap/zeroemu
zeroemu doctor
```

The formula builds zeroemu from source and signs it with the
`com.apple.security.hypervisor` entitlement, which macOS requires before a program
can create a virtual machine. This package does not install or update `zeroemu.app`.

Both packages need [parts of the Android SDK](https://github.com/zeroemu/zeroemu#the-android-sdk-pieces).
The app looks for them only in `~/Library/Android/sdk`, where Android Studio puts them.

## Packaging

The formula and cask template live in the main repository's
[`packaging/homebrew`](https://github.com/zeroemu/zeroemu/tree/main/packaging/homebrew)
directory. Both packages are updated at each release.
