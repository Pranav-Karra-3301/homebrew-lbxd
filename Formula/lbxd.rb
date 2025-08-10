# Homebrew Formula for lbxd
# 
# This formula is maintained in a separate repository:
# https://github.com/Pranav-Karra-3301/homebrew-lbxd
# 
# This file serves as a template for the tap repository.
# To install via Homebrew:
#   brew tap pranav-karra-3301/lbxd
#   brew install lbxd
#
# This formula builds lbxd from source with all dependencies
class Lbxd < Formula
  desc "Beautiful command-line tool for Letterboxd - view activity, browse collections, and explore movies"
  homepage "https://github.com/Pranav-Karra-3301/lbxd"
  url "https://github.com/Pranav-Karra-3301/lbxd/archive/refs/tags/v3.0.0.tar.gz"
  sha256 "a9de62c040b234fcf43afc5a04e69913e170d6d2b74c96ba16bbfaa49895fbc6"
  license "MIT"

  depends_on "rust" => :build
  depends_on "viu"

  def install
    # Build Rust project
    system "cargo", "install", *std_cargo_args

    # Ensure binary is installed correctly
    bin.install "target/release/lbxd" if File.exist?("target/release/lbxd")
  end

  def post_install
    # Verify viu is available
    system "which", "viu"
  end

  test do
    # Test that the binary runs and shows version
    output = shell_output("#{bin}/lbxd --version")
    assert_match "lbxd 3.0.0", output

    # Test that viu is accessible
    system "viu", "--version"
  end

  def caveats
    <<~EOS
      lbxd requires viu for displaying movie posters.
      
      Dependencies installed:
      - viu (terminal image viewer)
      
      Usage:
        # Show version and help
        lbxd
        
        # Browse a user's collection interactively
        lbxd browse username
        
        # Show recent activity
        lbxd recent username
      
      For more information, visit: https://github.com/Pranav-Karra-3301/lbxd
    EOS
  end
end