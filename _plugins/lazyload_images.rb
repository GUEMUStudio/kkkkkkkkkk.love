# 定义 Jekyll 模块，它是 Jekyll 插件的容器
module Jekyll
    # 在 Jekyll 模块内定义 LazyloadImagesFilter 模块，该模块将包含我们的过滤器逻辑
    module LazyloadImagesFilter
      # 定义 lazyload_images 方法，这个方法接受一个参数 input，表示要处理的 HTML 内容
      def lazyload_images(input)
        # 使用 gsub 方法替换 input 中的 <img src="..."> 标签
        # 将 src 属性替换为 data-src 并添加 class="lazyload"
        # \1 表示第一个括号内匹配到的内容，\2 表示第二个括号内匹配到的内容
        input.gsub(/<img src="(.*?)"(.*?)>/, '<img data-src="\1"\2 class="lazyload">')
      end
    end
  end
  
  # 注册 LazyloadImagesFilter 模块为一个 Liquid 过滤器
  # 这允许我们在 Liquid 模板中使用这个过滤器
  Liquid::Template.register_filter(Jekyll::LazyloadImagesFilter)