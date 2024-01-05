class Acervus < Formula
  desc "CLI tool for interacting with Acervus Cloud"
  homepage "https://github.com/paribu/acervus-cli"
  url "https://github.com/paribu/acervus-cli/archive/refs/tags/v0.0.2.tar.gz"
  sha256 "8fd2e0066603f8afc983cf76176444a2212cfb107f5e6ec1f6eaa8c23fd5fad2"
  head "https://github.com/paribu/acervus-cli.git", branch: "main"

  depends_on "go@1.20" => :build

  def install
    system "go", "build", *std_go_args(ldflags: "-s -w")
  end

  test do
    assert_match "acervus version 0.0.2", shell_output("#{bin}/acervus --version")
  end
end
