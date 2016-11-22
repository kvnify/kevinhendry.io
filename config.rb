require 'lib/custom_helpers'
require 'lib/add_links_to_navigation.rb'
require 'lib/modify_widths.rb'
require 'lib/embed.rb'

require 'ansi/code'
require 'slim'

#
# Blog settings
#
set :markdown_engine, :redcarpet
set :markdown, :fenced_code_blocks => true, :disable_indented_code_blocks => true, :strikethrough => true, :smartypants => true, :with_toc_data => true
set :slim, :layout_engine => :slim
set :relative_links, true

config[:js_dir] = 'js'
config[:css_dir] = 'css'
config[:images_dir] = 'img'

activate :blog do |blog|
  # This will add a prefix to all links, template references and source paths
  blog.prefix = "blog"
  blog.permalink = "{title}.html"
  blog.summary_separator = /\(READMORE\)/
  # blog.default_extension = ".markdown"
  blog.new_article_template = File.expand_path('new_article.markdown.erb', File.dirname(__FILE__))
  blog.layout = "layouts/blog_post"
end

helpers CustomHelpers

activate :syntax
activate :sprockets
activate :directory_indexes
activate :inliner
activate :add_links_to_navigation
activate :modify_widths
activate :embed

page "*/*.xml", layout: false

#
# Reload the browser automatically whenever files change
#
configure :development do activate :livereload end

#
# Build-specific configuration
#
configure :build do
  activate :minify_css
  activate :minify_javascript
end
