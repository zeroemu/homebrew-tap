# zeroemu Homebrew tap

Homebrew formulae for [zeroemu](https://github.com/zeroemu/zeroemu), which runs
Android's system image on Apple Silicon with no guest kernel.

```sh
brew install zeroemu/tap/zeroemu
zeroemu doctor
```

The formula builds zeroemu from source and signs it with the
`com.apple.security.hypervisor` entitlement, which macOS requires before a program
can create a virtual machine. zeroemu also needs parts of the Android SDK; after
installing, `brew info zeroemu/tap/zeroemu` and `zeroemu doctor` say which.

Formula changes are made in the main repository, in
[`packaging/homebrew/zeroemu.rb`](https://github.com/zeroemu/zeroemu/blob/main/packaging/homebrew/zeroemu.rb),
and copied here at each release.
