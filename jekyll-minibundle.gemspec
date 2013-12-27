require File.expand_path(File.join(File.dirname(__FILE__), 'lib/jekyll/minibundle/version'))

Gem::Specification.new do |s|
  s.name        = 'jekyll-minibundle'
  s.version     = Jekyll::Minibundle::VERSION
  s.summary     = 'A minimalistic asset bundling plugin for Jekyll'
  s.authors     = ['Tuomas Kareinen']
  s.email       = 'tkareine@gmail.com'
  s.homepage    = 'https://github.com/tkareine/jekyll-minibundle'
  s.licenses    = %w{MIT}

  s.description = <<-END
A straightforward asset bundling plugin for Jekyll, utilizing external
minification tool of your choice. It provides asset concatenation for
bundling and asset fingerprinting with MD5 digest for cache
busting. There are no other runtime dependencies besides the
minification tool (not even other gems).
  END

  s.files = %w{
    CHANGELOG.md
    LICENSE.txt
    README.md
    Rakefile
    jekyll-minibundle.gemspec
    lib/jekyll/minibundle.rb
    lib/jekyll/minibundle/asset_bundle.rb
    lib/jekyll/minibundle/asset_file_operations.rb
    lib/jekyll/minibundle/asset_file_paths.rb
    lib/jekyll/minibundle/asset_file_registry.rb
    lib/jekyll/minibundle/asset_stamp.rb
    lib/jekyll/minibundle/asset_tag_markup.rb
    lib/jekyll/minibundle/bundle_file.rb
    lib/jekyll/minibundle/development_file.rb
    lib/jekyll/minibundle/development_file_collection.rb
    lib/jekyll/minibundle/environment.rb
    lib/jekyll/minibundle/mini_bundle_block.rb
    lib/jekyll/minibundle/mini_stamp_tag.rb
    lib/jekyll/minibundle/stamp_file.rb
    lib/jekyll/minibundle/version.rb
  }

  s.test_files = %w{
    test/fixture/site/_assets/scripts/app.js
    test/fixture/site/_assets/scripts/dependency.js
    test/fixture/site/_assets/styles/common.css
    test/fixture/site/_assets/styles/reset.css
    test/fixture/site/_bin/remove_comments
    test/fixture/site/_bin/with_count
    test/fixture/site/_config.yml
    test/fixture/site/_layouts/default.html
    test/fixture/site/_plugins/minibundle.rb
    test/fixture/site/_tmp/site.css
    test/fixture/site/about.html
    test/fixture/site/assets/styles/reset.css
    test/fixture/site/index.html
    test/integration/minibundle_development_mode_test.rb
    test/integration/minibundle_production_mode_test.rb
    test/integration/ministamp_test.rb
    test/integration/static_files_as_asset_sources_test.rb
    test/support/fixture_config.rb
    test/support/test_case.rb
    test/unit/asset_bundle_test.rb
    test/unit/asset_file_registry_test.rb
    test/unit/asset_tag_markup_test.rb
    test/unit/bundle_file_test.rb
    test/unit/stamp_file_test.rb
  }

  s.add_development_dependency 'jekyll',   '~> 1.4.2'
  s.add_development_dependency 'minitest', '~> 5.2.0'
  s.add_development_dependency 'nokogiri', '~> 1.6.1'
  s.add_development_dependency 'rake',     '~> 10.1.1'

  s.required_ruby_version = '>= 1.9.3'

  s.rdoc_options << '--line-numbers' << '--title' << s.name << '--exclude' << 'test'
end
