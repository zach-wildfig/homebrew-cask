cask 'maintenance' do
  macos_release = MacOS.version.to_s.delete('.')

  if MacOS.version == :snow_leopard
    version '1.4.1'
    sha256 '91404f8f60b1950ee2b84e66e9c22bdf23760dacfcfd1bc76110976f1377faae'
  elsif MacOS.version == :lion
    version '1.5.6'
    sha256 '38cad496441bb801a978d90ff4403b3cda9c131e601fa1511b50b9c0aa1bb5e9'
  elsif MacOS.version == :mountain_lion
    version '1.7.1'
    sha256 'b6105d3e51f9d67cc6636d33833c61fbadd8b3e2bea7592fc0b465c68a3e4cef'
  elsif MacOS.version == :mavericks
    version '1.9.1'
    sha256 '80ae32babc867c83cd0b48519f03c80a1cd48808f570703e6f930a57af8797f5'
  elsif MacOS.version == :yosemite
    version '2.0.7'
    sha256 '5c926159c0610fe705b0f23b56672f1c5e46c970f92013839c772147379520f9'
  elsif MacOS.version == :el_capitan
    version '2.1.8'
    sha256 'f27f5d0736e80cd80c85dcc5390dfeb893183424fe65b32b08e280c90b22b24c'
  elsif MacOS.version == :sierra
    version '2.3.0'
    sha256 '8fde91742126d10234451a3c973461f5d84c771e52c6ee14aff93f1d66a0dbca'
  else
    version '2.3.9'
    sha256 'a22c214720200cce7ecede2e1e90f30b3e020734d68ad1c6431075690509b326'
  end

  url "https://www.titanium-software.fr/download/#{macos_release}/Maintenance.dmg"
  appcast 'https://www.titanium-software.fr/en/release_maintenance.html'
  name 'Maintenance'
  homepage 'https://www.titanium-software.fr/en/maintenance.html'

  # Unusual case: The software will stop working, or is dangerous to run, on the next macOS release.
  depends_on macos: [
                      :snow_leopard,
                      :lion,
                      :mountain_lion,
                      :mavericks,
                      :yosemite,
                      :el_capitan,
                      :sierra,
                      :high_sierra,
                    ]

  app 'Maintenance.app'
end
