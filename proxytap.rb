# typed: false
# frozen_string_literal: true

# proxytap rotating anonymous-proxy gateway with MITM detection.
class Proxytap < Formula
  desc "Rotating anonymous-proxy gateway with MITM detection"
  homepage "https://github.com/kyungw00k/proxytap"
  license "MIT"
  head "https://github.com/kyungw00k/proxytap.git", branch: "master"

  on_macos do
    on_intel do
      url "https://github.com/kyungw00k/proxytap/releases/download/v#{version}/proxytapd-darwin-amd64"
      sha256 "f08f3413849501ed0644632520f2bf98c2f13762b3a702ea60fec7e6c45658d1"
      def install
        bin.install "proxytapd-darwin-amd64" => "proxytapd"
      end
    end
    on_arm do
      url "https://github.com/kyungw00k/proxytap/releases/download/v#{version}/proxytapd-darwin-arm64"
      sha256 "c7bbb8f70574a9536c9b20007f8ec25cf28b8550311d9236ce5dbb34247103ff"
      def install
        bin.install "proxytapd-darwin-arm64" => "proxytapd"
      end
    end
  end

  on_linux do
    on_intel do
      if Hardware::CPU.is_64_bit?
        url "https://github.com/kyungw00k/proxytap/releases/download/v#{version}/proxytapd-linux-amd64"
        sha256 "8ea9702ecd749b17356ad38b98460a7c7fb8be456bd8ae70e774accc0c8308d6"
        def install
          bin.install "proxytapd-linux-amd64" => "proxytapd"
        end
      end
    end
    on_arm do
      if Hardware::CPU.is_64_bit?
        url "https://github.com/kyungw00k/proxytap/releases/download/v#{version}/proxytapd-linux-arm64"
        sha256 "a9b8d998f1e833b6924031e01b2aa4103a63fabd56936cac7bcbe00d1f6e86f5"
        def install
          bin.install "proxytapd-linux-arm64" => "proxytapd"
        end
      end
    end
  end

  service do
    run [opt_bin/"proxytapd",
         "--proxy-listen", "127.0.0.1:8888",
         "--api-listen", "127.0.0.1:9099"]
    keep_alive false
    run_type :immediate
  end

  def caveats
    <<~EOS
      proxytap daemon listens on:
        HTTP proxy:  http://127.0.0.1:8888
        Dashboard:   http://127.0.0.1:9099/

      Start with:
        brew services start proxytap

      Use as an HTTP proxy:
        curl -x http://127.0.0.1:8888 https://api.iplocate.io/ip
    EOS
  end

  test do
    assert_match "proxytapd", shell_output("#{bin}/proxytapd --version")
    assert_match version.to_s, shell_output("#{bin}/proxytapd --version")
  end
end
