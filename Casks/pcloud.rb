cask "pcloud" do
  version "4.0.5,d3gz7dDhEVHefkyYOk51k0"
  sha256 "bea95927b9fbce1a369bb56cd8c99cf1911d1ef8543ed388010f3872b18aae9f"

  url "https://api.pcloud.com/getpubzip?code=#{version.after_comma}&filename=pcloud-#{version.before_comma}.zip"
  name "pCloud"
  desc "pCloud"
  homepage "https://www.pcloud.com"

  depends_on macos: ">= :big_sur"

  pkg "pCloud Drive #{version.before_comma} UNIVERSAL.pkg"
  uninstall quit: "com.pcloud.pcloud.macos",
            pkgutil: "com.pcloud.pcloud.macos",
            delete: "/Applications/pCloud Drive.app"
end
