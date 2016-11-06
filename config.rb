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

config[:js_dir] = 'js'
config[:css_dir] = 'css'
config[:images_dir] = 'img'

activate :blog do |blog|
  # This will add a prefix to all links, template references and source paths
  blog.prefix = "blog"
  blog.permalink = "{year}/{month}//{title}.html"
  blog.summary_separator = /\(READMORE\)/
  blog.default_extension = ".markdown"
  blog.layout = "post"
end

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
