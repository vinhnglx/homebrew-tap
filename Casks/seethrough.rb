cask 'seethrough' do
  version '1.0.0'
  sha256 '0b0aa011a86a87e10ae63dbaa3102ca117f3e0b0c8db4891daaf386ca1250778'

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
