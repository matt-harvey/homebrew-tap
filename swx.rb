class Swx < Formula
  desc "command-line time tracking application"
  homepage "https://github.com/matt-harvey/swx/"
  url "https://github.com/matt-harvey/swx/archive/v0.11.0.tar.gz"
  sha256 "16fe84b6488c0217b1915f191efba7479773ca78021d733ae0fec4a351f3e581"

  depends_on "cmake" => :build

  def install
    system "cmake", ".", *std_cmake_args
    system "make", "install"
  end

  test do
    system bin/"swx", "--help"
  end
end
