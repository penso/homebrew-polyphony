class Polyphony < Formula
  desc "Repo-native AI orchestration tool"
  homepage "https://github.com/penso/polyphony"
  url "https://github.com/penso/polyphony/releases/download/20260325.04/polyphony-20260325.04-universal2-apple-darwin.tar.gz"
  version "20260325.04"
  sha256 "a8683d1352b391bf9d04567a38e16b108516dd72b354ddee8c291d21db099fa1"
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
