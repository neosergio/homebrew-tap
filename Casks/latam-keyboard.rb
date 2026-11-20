cask "latam-keyboard" do
  version "1.0.1"
  sha256 "b0474f02436df10001f74d44b52ccd8f4188e67306ad927eec99224e0645d8ae"

  url "https://github.com/neosergio/Latam-Keyboard/archive/refs/tags/v#{version}.tar.gz"
  name "Latam Keyboard"
  desc "Latin American keyboard layouts"
  homepage "https://github.com/neosergio/Latam-Keyboard"

  %w[A A_white B B_white C C_white D].each do |variant|
    keyboard_layout "Latam-Keyboard-#{version}/Latam_#{variant}.keylayout"
    keyboard_layout "Latam-Keyboard-#{version}/Latam_#{variant}.icns"
  end

  caveats <<~EOS
    Log out and back in, then add a layout in
    System Settings > Keyboard > Input Sources > Edit > + > Others.

    Type A suits most external keyboards and Type B most built-in ones.
    If < and | are swapped, try the other one.

    To uninstall, first remove the layout from Input Sources, then run
      brew uninstall --cask latam-keyboard
    and log out.
  EOS
end
