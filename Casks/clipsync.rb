# Homebrew cask template. Copy to the tap repo as Casks/clipsync.rb
# (github.com/IceMan0D/homebrew-tap) and update version + sha256 per release.
cask "clipsync" do
  arch arm: "aarch64", intel: "x64"

  version "0.1.0"
  sha256 arm:   "REPLACE_WITH_SHA256_OF_ARM_DMG",
         intel: "REPLACE_WITH_SHA256_OF_X64_DMG"

  url "https://github.com/IceMan0D/clipsync/releases/download/v#{version}/ClipSync_#{version}_#{arch}.dmg"
  name "ClipSync"
  desc "Clipboard sync between Mac and Windows"
  homepage "https://github.com/IceMan0D/clipsync"

  app "ClipSync.app"

  zap trash: "~/Library/Application Support/com.iceman0d.clipsync"
end
