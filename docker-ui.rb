class DockerUI < Formula
  desc "Docker UI: Simplified web management for Docker containers."
  homepage "https://github.com/magiskboy/docker-ui"
  version "1.0.0"

  if Hardware::CPU.arm?
    url "https://github.com/magiskboy/docker-ui/releases/download/v1.0.0/docker-ui-macos-arm64"
    sha256 "1dae5c0bd8daa90746995b4b8888f13a5a6bea8289d99e161d34d2d6bc0be756"
  else
    url "https://github.com/magiskboy/docker-ui/releases/download/v1.0.0/docker-ui-macos-x64"
    sha256 "fcf1a9697559c8ba40bc231a7a5f9b8cc2d2ecf0a327ac1d97838a50694d2f3a"
  end

  def install
    bin.install "docker-ui-macos-#{Hardware::CPU.arch}" => "docker-ui"
  end

  test do
    system "#{bin}/docker-ui", "--help"
  end
end
