class ArkscriptAT340 < Formula
  desc "Small, fast, functional and scripting language for C++ projects"
  homepage "https://arkscript-lang.dev"
  url "https://github.com/ArkScript-lang/Ark.git", tag: "v3.4.0"
  license "MPL-2.0"
  head "https://github.com/ArkScript-lang/Ark.git", branch: "dev"

  depends_on "cmake" => :build

  def install
    system "cmake", "-S", ".", "-B", "build", "-DARK_BUILD_EXE=On", *std_cmake_args
    system "cmake", "--build", "build"
    system "cmake", "--install", "build"
  end

  def post_install
    ohai "ℹ️  Add ARKSCRIPT_PATH=" + lib + "/Ark/ to your bashrc/zshrc"
  end

  test do
    with_env("DYLD_LIBRARY_PATH" => "$DYLD_LIBRARY_PATH:/opt/homebrew/lib") do
      system "#{bin}/arkscript", "--version"
    end
  end
end
