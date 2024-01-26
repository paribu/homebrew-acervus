class Acervus < Formula
  desc "CLI tool for interacting with Acervus Cloud"
  homepage "https://github.com/paribu/acervus-cli"
  url "https://github.com/paribu/acervus-cli/archive/refs/tags/v0.0.6.tar.gz"
  sha256 "82ec07aecfb834b90375d3c98e9cbf1ded713e258153ee6b850f9cfd0da95e9b"
  head "https://github.com/paribu/acervus-cli.git", branch: "main"

  depends_on "go@1.20" => :build

  def install
    system "go", "build", *std_go_args(ldflags: "-s -w")
  end

  test do
    assert_match "acervus version 0.0.2", shell_output("#{bin}/acervus --version")
  end
end
