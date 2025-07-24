cask 'seethrough' do
  version '1.0.0'
  sha256 '24b743e0473c9c452dfd8122e7a4f7a581a4c10c7d60d6e3775c72370ec5d242'

  url "https://github.com/vinhnglx/seethrough-release/releases/download/#{version}/SeeThrough-#{version}.dmg"
  name 'SeeThrough'
  desc 'Transparent, always-on-top note-taking app for meetings'
  homepage 'https://github.com/vinhnglx/seethrough-release'

  livecheck do
    url :url
    strategy :github_latest
  end

  app 'SeeThrough.app'

  zap trash: [
    '~/Library/Application Support/seethrough',
    '~/Library/Preferences/com.vinhnglx.seethrough.plist',
    '~/Library/Saved Application State/com.vinhnglx.seethrough.savedState'
  ]
end
