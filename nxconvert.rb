# typed: false
# frozen_string_literal: true

class Nxconvert < Formula
  desc "Nintendo Switch NSP/XCI container converter (lossless repack, optional distribution rewrite)"
  homepage "https://github.com/kyungw00k/nxconvert"
  version "1.2.0"

  on_macos do
    on_intel do
      url "https://github.com/kyungw00k/nxconvert/releases/download/v1.2.0/nxconvert_darwin_amd64.tar.gz"
      sha256 "31b0ca9c757e456a6b90c220f7aa5f1a1f651783e72afd02f63f900f71b00e21"

      def install
        bin.install "nxconvert"
      end
    end
    on_arm do
      url "https://github.com/kyungw00k/nxconvert/releases/download/v1.2.0/nxconvert_darwin_arm64.tar.gz"
      sha256 "62c7406c0970ca0aead62e4997a3a703631387da9b2d622cbf392e341e01d1bc"

      def install
        bin.install "nxconvert"
      end
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/kyungw00k/nxconvert/releases/download/v1.2.0/nxconvert_linux_amd64.tar.gz"
      sha256 "12455de6afbac7e09c13c8777756055bfb7b188ece8e3c9a6fa930bc2040939d"

      def install
        bin.install "nxconvert"
      end
    end
    on_arm do
      url "https://github.com/kyungw00k/nxconvert/releases/download/v1.2.0/nxconvert_linux_arm64.tar.gz"
      sha256 "e4e490d32fef860764bd614ff9c536e78a621f07ee483fe17709702c36eadaf6"

      def install
        bin.install "nxconvert"
      end
    end
  end
end
