cask "pcloud" do
  version "4.0.5"
  sha256 "8f89b76e537780dc8b145eeebcbbb0fd76aadf9673daea41f6cf5389bfe89fee"

  url "https://filedn.com/lWmDlJLTzQW8X1wRNNNUkyV/pCloud%20Drive%204.0.5%20UNIVERSAL.pkg"
  name "pCloud"
  desc "pCloud"
  homepage "https://www.pcloud.com"

  depends_on macos: ">= :big_sur"

  pkg "pCloud Drive #{version.before_comma} UNIVERSAL.pkg"
  uninstall quit: "com.pcloud.pcloud.macos",
            pkgutil: "com.pcloud.pcloud.macos",
            delete: "/Applications/pCloud Drive.app"
end
