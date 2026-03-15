class Polyphony < Formula
  desc "Repo-native AI orchestration tool"
  homepage "https://github.com/penso/polyphony"
  url "https://github.com/penso/polyphony/releases/download/20260315.06/polyphony-20260315.06-universal2-apple-darwin.tar.gz"
  version "20260315.06"
  sha256 "e703f7cb8b0627bbf60cc142567216f69a0259680459331f78be666a1a64dd69"
  license "MIT"

  def install
    bin.install "bin/polyphony"
    doc.install "README.md"
    pkgshare.install "LICENSE"
    pkgshare.install "CHANGELOG.md" if File.exist?("CHANGELOG.md")
  end

  test do
    assert_match "polyphony", shell_output("#{bin}/polyphony --help")
  end
end
