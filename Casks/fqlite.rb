cask "fqlite" do
  version "2.6.5"
  arch arm: "arm64", intel: "x86_64"
  sha256 arm:    "4d9209b135f44fbac03f41ecbe7297403f38501d05986eb01ec15d20b21db58b",
         intel:  "6838a7691fdfcb724b0d468f748b759d42cafb272e0c5172aa5a98fd1fa19349"
  url "https://github.com/bocian67/fqlite/releases/download/#{version}/fqlite-#{version}-macOS-#{arch}.dmg"
  name "fqlite"
  desc "FQLite is a tool to find and restore deleted records in SQlite databases. It therefore examines the database for entries marked as deleted. Those entries can be recovered and displayed. It is written with the Java programming language. The program can operates with a simple graphical user interface (GUI mode). The program is able to search a SQLite database file for regular as well as deleted records."
  homepage "https://www.staff.hs-mittweida.de/~pawlaszc/fqlite/"
  app "fqlite.app"

  def caveats
    <<~EOS
      Fqlite wird installiert. Um die Anwendung aus der Apple Quarantäne zu entfernen, führe folgendes aus:
        xattr -dr com.apple.quarantine /Applications/fqlite.app
    EOS
  end
end
