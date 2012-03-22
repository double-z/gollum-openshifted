require "rubygems"
Bundler.require(:default)

require "gollum/frontend/app"

use Rack::Auth::Basic, "Welcome wiki  - authenticate!" do |name, password|
  [name, password] == ['wiki', 'wiki']
end

Precious::App.set(:gollum_path, '/var/lib/stickshift/<user>/git/<app>.git')
Precious::App.set(:wiki_options, {})
run Precious::App
