class Claudette < Formula
  desc "Air-gapped coding agent in one Rust binary, driving a local model"
  homepage "https://github.com/mrdushidush/claudette"
  version "0.18.1"
  license any_of: ["MIT", "Apache-2.0"]

  on_macos do
    on_arm do
      url "https://github.com/mrdushidush/claudette/releases/download/v0.18.1/claudette-v0.18.1-aarch64-apple-darwin.tar.gz"
      sha256 "b8561602d8b2ce3bff5c89628e4f21226400be1f10757b058549e8bc5d3b73f7"
    end
    on_intel do
      url "https://github.com/mrdushidush/claudette/releases/download/v0.18.1/claudette-v0.18.1-x86_64-apple-darwin.tar.gz"
      sha256 "29137ea1e8e7ac02faca3dae09459624e985e123b4916e8f387aa602d724c5ae"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/mrdushidush/claudette/releases/download/v0.18.1/claudette-v0.18.1-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "50f54c95ac3bf887f91a6baac745d04752c1e5025d2463c93a5aa45aa66777c0"
    end
    on_intel do
      url "https://github.com/mrdushidush/claudette/releases/download/v0.18.1/claudette-v0.18.1-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "d42d33a2c0e08190b82b38161eef3394639ad5a48ab919c504231ddf970ba56a"
    end
  end

  def install
    bin.install "claudette"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/claudette --version")
  end
end
