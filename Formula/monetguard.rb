class Monetguard < Formula
  desc "Release certification for Unity monetization stacks"
  homepage "https://monetguard-web.vercel.app"
  license any_of: ["MIT", "Apache-2.0"]

  on_macos do
    on_arm do
      url "https://github.com/pzcai/monetguard-dist/releases/download/v0.1.0/monetguard-v0.1.0-aarch64-apple-darwin.tar.gz"
      sha256 "32e8136dad6b7dbf4c0ea1c9d849aa102a108a077348aac9868f0e8b318b2550"
    end
    on_intel do
      url "https://github.com/pzcai/monetguard-dist/releases/download/v0.1.0/monetguard-v0.1.0-x86_64-apple-darwin.tar.gz"
      sha256 "c3194563ae5ae09503958ff0f7b77da87e45c419204b740c3a4aeb6c4969234b"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/pzcai/monetguard-dist/releases/download/v0.1.0/monetguard-v0.1.0-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "888667e4af5b78e61ddb227f01c5d1d1a5ee12c177e33eb0f3c3cfa2df3605aa"
    end
  end

  def install
    bin.install "monetguard"
    pkgshare.install "README.md", "LICENSE-MIT", "LICENSE-APACHE"
  end

  test do
    assert_match "monetguard #{version}",
      shell_output("#{bin}/monetguard --version")
  end
end
