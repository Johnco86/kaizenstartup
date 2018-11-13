activate :autoprefixer do |prefix|
  prefix.browsers = "last 2 versions"
end

activate :sprockets

page '/*.xml', layout: false
page '/*.json', layout: false
page '/*.txt', layout: false
page "/services.html", :layout => "lightweight"
page "/cases.html", :layout => "lightweight"
page "/environment.html", :layout => "lightweight"
page "/contact.html", :layout => "lightweight"

configure :build do
  activate :minify_css
  activate :minify_javascript
  activate :asset_hash
  activate :relative_assets
  set :relative_links, true
end

activate :deploy do |deploy|
  deploy.build_before = true
  deploy.deploy_method = :git
end

# Use “pretty” URLs (without the `.html` suffix)
activate :directory_indexes

