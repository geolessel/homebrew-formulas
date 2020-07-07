class TrelloCli < Formula
  desc "A Trello CLI app using ncurses. It's Trello, but snappy!"
  homepage 'https://github.com/geolessel/trello-cli'
  url 'https://github.com/geolessel/trello-cli/archive/v0.3.0.tar.gz'
  sha256 'edab5cff1b5e1f1141f3f0bc0771d6d3e142547942b6281c782ea050e9926dc4'
  depends_on 'crystal' => :build
  depends_on 'openssl' => :build
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
