class TrelloCli < Formula
  desc "A Trello CLI app using ncurses. It's Trello, but snappy!"
  homepage 'https://github.com/geolessel/trello-cli'
  url 'https://github.com/geolessel/trello-cli/archive/v0.2.1.tar.gz'
  sha256 '3807b7c4a54877ea54cdb70480b5a2d28abae84ac7f28b35f80e41c73d7857dc'
  depends_on 'crystal' => :build
  depends_on 'openssl' => :build
  depends_on 'ncurses'

  head 'https://github.com/geolessel/trello-cli.git'

  def install
    system 'PATH="/usr/local/opt/openssl/bin:$PATH" LDFLAGS="-L/usr/local/opt/openssl/lib" CPPFLAGS="-I/usr/local/opt/openssl/include" PKG_CONFIG_PATH="/usr/local/opt/openssl/lib/pkgconfig" make'
    bin.install 'bin/trello'
  end

  test do
    system 'false'
  end
end
