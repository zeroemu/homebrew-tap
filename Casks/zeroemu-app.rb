cask "zeroemu-app" do
  version "0.3.1"
  sha256 "d5aa76d4863cf5a60b47eabc7ddbc14ff9c80d8bf6ac687714a018d123218243"

  url "https://github.com/zeroemu/zeroemu/releases/download/v#{version}/zeroemu-#{version}-aarch64-apple-darwin.app.zip"
  name "zeroemu"
  desc "Run Android system images in a Mac app"
  homepage "https://github.com/zeroemu/zeroemu"

  depends_on arch: :arm64

  app "zeroemu.app"
end
