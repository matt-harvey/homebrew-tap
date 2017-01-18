class Swx < Formula
  desc "command-line time tracking application"
  homepage "https://github.com/matt-harvey/swx/"
  url "https://github.com/matt-harvey/swx/archive/v1.0.1.tar.gz"
  sha256 "a4a33d95467eb000642be62af90485a318de01f58654e56e9d2b201ad1c1baf8"

  depends_on "cmake" => :build

  def install
    system "cmake", ".", *std_cmake_args
    system "make", "install"
  end

  test do
    system bin/"swx", "print"
  end
end
