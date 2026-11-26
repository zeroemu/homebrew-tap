cask "zeroemu-app" do
  version "0.4.0"
  sha256 "cf762af4a6dd9f091510c2b7a0dc134caafb8ecb7515855a87db4dcb7a449cc4"

  url "https://github.com/zeroemu/zeroemu/releases/download/v#{version}/zeroemu-#{version}-aarch64-apple-darwin.app.zip"
  name "zeroemu"
  desc "Run Android system images in a Mac app"
  homepage "https://github.com/zeroemu/zeroemu"

  depends_on arch: :arm64

  app "zeroemu.app"
end
