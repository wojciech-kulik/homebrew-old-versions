cask "pcloud" do
  version "3.15.2,XZJPkU0Zsz7DuTM5Bb7YhYyHJJJmLQhdVorX"
  sha256 "bea95927b9fbce1a369bb56cd8c99cf1911d1ef8543ed388010f3872b18aae9f"

  url "https://api.pcloud.com/getpubzip?code=#{version.after_comma}&filename=pcloud-#{version.before_comma}.zip"
  name "pCloud"
  desc "pCloud"
  homepage "https://www.pcloud.com"

  depends_on macos: ">= :big_sur"

  pkg "pCloud Drive #{version} UNIVERSAL.pkg"
  uninstall pkgutil: "com.pcloud.pcloud.macos"
end
