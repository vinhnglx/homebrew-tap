cask 'seethrough' do
  version '1.0.0'
  sha256 '2e40a0785766f649f0a102a0a7574baddf0b7207ecb7bd1ac9b15d3a9b24ca30'

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
