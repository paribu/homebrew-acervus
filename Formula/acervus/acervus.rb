class Acervus < Formula
  desc "CLI tool for interacting with Acervus Cloud"
  homepage "https://github.com/paribu/acervus-cli"
  url "https://github.com/paribu/acervus-cli/archive/refs/tags/v0.0.5.tar.gz"
  sha256 "a4984cb9fd960205b29a7ec4731a0e8431b9c567c02945db831df7888d5ebda2"
  head "https://github.com/paribu/acervus-cli.git", branch: "main"

  depends_on "go@1.20" => :build

  def install
    system "go", "build", *std_go_args(ldflags: "-s -w")
  end

  test do
    assert_match "acervus version 0.0.2", shell_output("#{bin}/acervus --version")
  end
end
