class TrelloCli < Formula
  desc "A Trello CLI app using ncurses. It's Trello, but snappy!"
  homepage "https://github.com/geolessel/trello-cli"
  url "https://github.com/geolessel/trello-cli/archive/v0.1.2.tar.gz"
  sha256 "f66963b82bd3518d0ca5a52b8316cef33bb70b1bde27a969f861e27cdd81e54d"
  depends_on "crystal" => :build
  depends_on "ncurses"

  head "https://github.com/geolessel/trello-cli.git"

  def install
    system "make"
    bin.install "bin/trello"
  end

  test do
    system "false"
  end
end
