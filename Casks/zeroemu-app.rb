cask "zeroemu-app" do
  version "0.5.0"
  sha256 "196cec4ffce076db1530b828d3f9d3294c8c8ec68b0092af4c04c84c564ab7d1"

  url "https://github.com/zeroemu/zeroemu/releases/download/v#{version}/zeroemu-#{version}-aarch64-apple-darwin.app.zip"
  name "zeroemu"
  desc "Run Android system images in a Mac app"
  homepage "https://github.com/zeroemu/zeroemu"

  depends_on arch: :arm64

  app "zeroemu.app"
end
