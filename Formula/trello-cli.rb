class TrelloCli < Formula
  desc "A Trello CLI app using ncurses. It's Trello, but snappy!"
  homepage "https://github.com/geolessel/trello-cli"
  url "https://github.com/geolessel/trello-cli/archive/v0.1.1.tar.gz"
  sha256 "37e9a057f181e6a583d6af2310f4b8fcc63997b2f4f4164a80af744cc28a733e"
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
