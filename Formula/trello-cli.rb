class TrelloCli < Formula
  desc "A Trello CLI app using ncurses. It's Trello, but snappy!"
  homepage 'https://github.com/geolessel/trello-cli'
  url 'https://github.com/geolessel/trello-cli/archive/v0.2.0.tar.gz'
  sha256 '8a826934280c5efdbc72a2abcaaa63e02c7e0b0ed9a432ab8614325bd73902bf'
  depends_on 'crystal' => :build
  depends_on 'ncurses'

  head 'https://github.com/geolessel/trello-cli.git'

  def install
    system 'make'
    bin.install 'bin/trello'
  end

  test do
    system 'false'
  end
end
