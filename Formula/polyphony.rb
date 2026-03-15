class Polyphony < Formula
  desc "Repo-native AI orchestration tool"
  homepage "https://github.com/penso/polyphony"
  url "https://github.com/penso/polyphony/releases/download/#{version}/polyphony-#{version}-universal2-apple-darwin.tar.gz"
  version "20260315.05"
  sha256 "912cf723868f661d781303769f9b99aa9c3bc5d8574a97078eaa81439b1c6918"
  license "Apache-2.0"

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
