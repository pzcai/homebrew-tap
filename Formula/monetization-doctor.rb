class MonetizationDoctor < Formula
  desc "Release certification for Unity monetization stacks"
  homepage "https://monetization-doctor-web.vercel.app"
  license any_of: ["MIT", "Apache-2.0"]

  on_macos do
    on_arm do
      url "https://github.com/pzcai/monetization-doctor-dist/releases/download/v0.1.0/monetization-doctor-v0.1.0-aarch64-apple-darwin.tar.gz"
      sha256 "a7b8741f2fd30fbf5eb7b9508ad299db1157f30a2a9682ca77d969507a1b5125"
    end
    on_intel do
      url "https://github.com/pzcai/monetization-doctor-dist/releases/download/v0.1.0/monetization-doctor-v0.1.0-x86_64-apple-darwin.tar.gz"
      sha256 "4e3e5f5c451c523293b031d7449a7881eda7f2791290a9c11da8ed3f151586eb"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/pzcai/monetization-doctor-dist/releases/download/v0.1.0/monetization-doctor-v0.1.0-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "be9361d1ee225be1fa71da571efcab8822067d0039d529de9dad7b19a32be1b4"
    end
  end

  def install
    bin.install "monetization-doctor"
    pkgshare.install "README.md", "LICENSE-MIT", "LICENSE-APACHE"
  end

  test do
    assert_match "monetization-doctor #{version}",
      shell_output("#{bin}/monetization-doctor --version")
  end
end
