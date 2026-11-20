cask "latam-keyboard" do
  version "1.1.4"
  sha256 "1b8fef26eced8819449d3b12725f708a235ad4ccd6bdbe85118f21eb0d1419de"

  url "https://github.com/neosergio/Latam-Keyboard/archive/refs/tags/v#{version}.tar.gz"
  name "Latam Keyboard"
  desc "Latin American keyboard layouts"
  homepage "https://github.com/neosergio/Latam-Keyboard"

  depends_on :macos

  keyboard_layout "Latam-Keyboard-#{version}/Latam-Keyboard.bundle"

  caveats <<~EOS
    Log out and back in, then add a layout in
    System Settings > Keyboard > Input Sources > Edit > +
    (search for "Latin American").

    If you are upgrading from 1.0.x, remove the old Latin American
    layouts from Input Sources and add them again.

    Type A suits most external keyboards and Type B most built-in ones.
    If < and | are swapped, try the other one.

    To uninstall, first remove the layout from Input Sources, then run
      brew uninstall --cask latam-keyboard
    and log out.
  EOS
end
