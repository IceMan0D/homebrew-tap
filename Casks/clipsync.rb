# Homebrew cask template. Copy to the tap repo as Casks/clipsync.rb
# (github.com/IceMan0D/homebrew-tap) and update version + sha256 per release.
cask "clipsync" do
  arch arm: "aarch64", intel: "x64"

  version "0.1.0"
  sha256 arm:   "7794977149b6ff7dad217ff1743865d8cd32ebade894449210bf3144fecf140f",
         intel: "84edaa0b7ddb9eb7caa520f88723235c9f9f7e88a36f09560d0585fdb421cb1d"

  url "https://github.com/IceMan0D/clipsync/releases/download/v#{version}/ClipSync_#{version}_#{arch}.dmg"
  name "ClipSync"
  desc "Clipboard sync between Mac and Windows"
  homepage "https://github.com/IceMan0D/clipsync"

  app "ClipSync.app"

  # Unsigned app: clear the quarantine flag so Gatekeeper doesn't block first launch.
  postflight_steps do
    if_path_exists "{{appdir}}/ClipSync.app" do
      run "/usr/bin/xattr",
          args: ["-cr", "{{appdir}}/ClipSync.app"]
    end
  end

  zap trash: "~/Library/Application Support/com.iceman0d.clipsync"
end
