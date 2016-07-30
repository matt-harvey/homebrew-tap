class Swx < Formula
  desc "command-line time tracking application"
  homepage "https://github.com/matt-harvey/swx/"
  url "https://github.com/matt-harvey/swx/archive/v1.0.0.tar.gz"
  sha256 "549ecfd8898c474d87249141004a42e3470e74c574ef6221b03541f463ad9cbe"

  depends_on "cmake" => :build

  def install
    system "cmake", ".", *std_cmake_args
    system "make", "install"
  end

  test do
    system bin/"swx", "print"
  end
end
