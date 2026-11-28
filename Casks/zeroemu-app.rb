cask "zeroemu-app" do
  version "0.5.1"
  sha256 "763a9528ab6859a79f6c8f2cf23f317063720b061210677c29ddbfd8efb455f1"

  url "https://github.com/zeroemu/zeroemu/releases/download/v#{version}/zeroemu-#{version}-aarch64-apple-darwin.app.zip"
  name "zeroemu"
  desc "Desktop app that runs Android's system image with no guest kernel"
  homepage "https://github.com/zeroemu/zeroemu"

  depends_on arch: :arm64
  depends_on :macos

  app "zeroemu.app"
end
