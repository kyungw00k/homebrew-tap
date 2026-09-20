# typed: false
# frozen_string_literal: true

class Nxconvert < Formula
  desc "Nintendo Switch NSP/XCI container converter (lossless repack, optional distribution rewrite)"
  homepage "https://github.com/kyungw00k/nxconvert"
  version "1.0.0"

  on_macos do
    on_intel do
      url "https://github.com/kyungw00k/nxconvert/releases/download/v1.0.0/nxconvert_darwin_amd64.tar.gz"
      sha256 "f6e4339d454a660069e2e24d1dd6559691e76155df15558cf6c0cb7863793b65"

      def install
        bin.install "nxconvert"
      end
    end
    on_arm do
      url "https://github.com/kyungw00k/nxconvert/releases/download/v1.0.0/nxconvert_darwin_arm64.tar.gz"
      sha256 "879dcc8076547be7aa6ba01558fcece7c9ca4f1085adcf499ad3af14973a4d8d"

      def install
        bin.install "nxconvert"
      end
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/kyungw00k/nxconvert/releases/download/v1.0.0/nxconvert_linux_amd64.tar.gz"
      sha256 "e20d6f711b42d0d088e0ee06544132b737aabceca40c00b8798ccdf3d7504c3a"

      def install
        bin.install "nxconvert"
      end
    end
    on_arm do
      url "https://github.com/kyungw00k/nxconvert/releases/download/v1.0.0/nxconvert_linux_arm64.tar.gz"
      sha256 "90e8ac67ac98419f4ba01a36819afd29f0887e26709a61f05b2009d050812279"

      def install
        bin.install "nxconvert"
      end
    end
  end
end
