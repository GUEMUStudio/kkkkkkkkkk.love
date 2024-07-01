source "https://rubygems.org"
# 你好！这里是你管理用于运行的 Jekyll 版本的地方。
# 当你想使用不同的版本时，修改下面的内容，保存
# 文件并运行 `bundle install`。使用 `bundle exec` 运行 Jekyll，例如：
#
#     bundle exec jekyll serve
#
# 这将帮助确保正在运行的是正确的 Jekyll 版本。
# 祝你使用 Jekyll 愉快！
gem "no-style-please"
# 要升级，运行 `bundle update github-pages`。
# gem "github-pages", group: :jekyll_plugins
# 如果你有任何插件，放在这里！
group :jekyll_plugins do
  gem "jekyll-feed", "~> 0.12"
end

# Windows 和 JRuby 不包括 zoneinfo 文件，所以打包 tzinfo-data gem
# 和相关的库。
platforms :mingw, :x64_mingw, :mswin, :jruby do
  gem "tzinfo", ">= 1", "< 3"
  gem "tzinfo-data"
end

# 用于在 Windows 上观察目录的性能增强器
gem "wdm", "~> 0.1.1", :platforms => [:mingw, :x64_mingw, :mswin]

# 在 JRuby 构建上将 `http_parser.rb` gem 锁定为 `v0.6.x`，因为 gem 的新版本
# 没有 Java 对应部分。
gem "http_parser.rb", "~> 0.6.0", :platforms => [:jruby]
