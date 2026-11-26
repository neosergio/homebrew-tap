cask "latam-keyboard" do
  version "1.3.0"
  sha256 "b31f0f20f80997896f0bbf58c9e9c569597706e569a5d2cd21fd7304fcb06345"

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

    Version 1.2.0 removed Type D and the White versions. If you used
    one of them, add Type A instead of Type D, or the same type
    without "White".

    Type A suits most external keyboards and Type B most built-in ones.
    If < and | are swapped, try the other one.

    To uninstall, first remove the layout from Input Sources, then run
      brew uninstall --cask latam-keyboard
    and log out.
  EOS
end
