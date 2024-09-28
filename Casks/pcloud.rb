cask "pcloud" do
  version "3.15.2,XZJPkU0Zsz7DuTM5Bb7YhYyHJJJmLQhdVorX"
  sha256 "199bd79a1c93b00e0de4569159fb26d0c616190ce5a8c92d268300ffaf040fed"

  url "https://api.pcloud.com/getpubzip?code=#{version.after_comma}&filename=pcloud-#{version.before_comma}.zip"
  name "pCloud"
  desc "pCloud"
  homepage "https://www.pcloud.com"

  depends_on macos: ">= :big_sur"

  pkg "pCloud Drive #{version.before_comma} UNIVERSAL.pkg"
  uninstall pkgutil: "com.pcloud.pcloud.macos"
end
