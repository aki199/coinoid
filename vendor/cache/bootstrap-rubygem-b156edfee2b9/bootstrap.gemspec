# -*- encoding: utf-8 -*-
# stub: bootstrap 4.0.0.alpha6 ruby lib

Gem::Specification.new do |s|
  s.name = "bootstrap".freeze
  s.version = "4.0.0.alpha6"

  s.required_rubygems_version = Gem::Requirement.new("> 1.3.1".freeze) if s.respond_to? :required_rubygems_version=
  s.require_paths = ["lib".freeze]
  s.authors = ["Twitter, Inc.".freeze]
  s.date = "2017-07-14"
  s.email = "glex.spb@gmail.com".freeze
  s.files = [".gitattributes".freeze, ".gitignore".freeze, ".travis.yml".freeze, "CHANGELOG.md".freeze, "Gemfile".freeze, "LICENSE".freeze, "README.md".freeze, "Rakefile".freeze, "assets/javascripts/bootstrap-sprockets.js".freeze, "assets/javascripts/bootstrap.js".freeze, "assets/javascripts/bootstrap.min.js".freeze, "assets/javascripts/bootstrap/alert.js".freeze, "assets/javascripts/bootstrap/button.js".freeze, "assets/javascripts/bootstrap/carousel.js".freeze, "assets/javascripts/bootstrap/collapse.js".freeze, "assets/javascripts/bootstrap/dropdown.js".freeze, "assets/javascripts/bootstrap/modal.js".freeze, "assets/javascripts/bootstrap/popover.js".freeze, "assets/javascripts/bootstrap/scrollspy.js".freeze, "assets/javascripts/bootstrap/tab.js".freeze, "assets/javascripts/bootstrap/tooltip.js".freeze, "assets/javascripts/bootstrap/util.js".freeze, "assets/stylesheets/_bootstrap-grid.scss".freeze, "assets/stylesheets/_bootstrap-reboot.scss".freeze, "assets/stylesheets/_bootstrap.scss".freeze, "assets/stylesheets/bootstrap/_alert.scss".freeze, "assets/stylesheets/bootstrap/_badge.scss".freeze, "assets/stylesheets/bootstrap/_breadcrumb.scss".freeze, "assets/stylesheets/bootstrap/_button-group.scss".freeze, "assets/stylesheets/bootstrap/_buttons.scss".freeze, "assets/stylesheets/bootstrap/_card.scss".freeze, "assets/stylesheets/bootstrap/_carousel.scss".freeze, "assets/stylesheets/bootstrap/_close.scss".freeze, "assets/stylesheets/bootstrap/_code.scss".freeze, "assets/stylesheets/bootstrap/_custom-forms.scss".freeze, "assets/stylesheets/bootstrap/_dropdown.scss".freeze, "assets/stylesheets/bootstrap/_forms.scss".freeze, "assets/stylesheets/bootstrap/_functions.scss".freeze, "assets/stylesheets/bootstrap/_grid.scss".freeze, "assets/stylesheets/bootstrap/_images.scss".freeze, "assets/stylesheets/bootstrap/_input-group.scss".freeze, "assets/stylesheets/bootstrap/_jumbotron.scss".freeze, "assets/stylesheets/bootstrap/_list-group.scss".freeze, "assets/stylesheets/bootstrap/_media.scss".freeze, "assets/stylesheets/bootstrap/_mixins.scss".freeze, "assets/stylesheets/bootstrap/_modal.scss".freeze, "assets/stylesheets/bootstrap/_nav.scss".freeze, "assets/stylesheets/bootstrap/_navbar.scss".freeze, "assets/stylesheets/bootstrap/_pagination.scss".freeze, "assets/stylesheets/bootstrap/_popover.scss".freeze, "assets/stylesheets/bootstrap/_print.scss".freeze, "assets/stylesheets/bootstrap/_progress.scss".freeze, "assets/stylesheets/bootstrap/_reboot.scss".freeze, "assets/stylesheets/bootstrap/_tables.scss".freeze, "assets/stylesheets/bootstrap/_tooltip.scss".freeze, "assets/stylesheets/bootstrap/_transitions.scss".freeze, "assets/stylesheets/bootstrap/_type.scss".freeze, "assets/stylesheets/bootstrap/_utilities.scss".freeze, "assets/stylesheets/bootstrap/_variables.scss".freeze, "assets/stylesheets/bootstrap/mixins/_alert.scss".freeze, "assets/stylesheets/bootstrap/mixins/_background-variant.scss".freeze, "assets/stylesheets/bootstrap/mixins/_badge.scss".freeze, "assets/stylesheets/bootstrap/mixins/_border-radius.scss".freeze, "assets/stylesheets/bootstrap/mixins/_box-shadow.scss".freeze, "assets/stylesheets/bootstrap/mixins/_breakpoints.scss".freeze, "assets/stylesheets/bootstrap/mixins/_buttons.scss".freeze, "assets/stylesheets/bootstrap/mixins/_clearfix.scss".freeze, "assets/stylesheets/bootstrap/mixins/_float.scss".freeze, "assets/stylesheets/bootstrap/mixins/_forms.scss".freeze, "assets/stylesheets/bootstrap/mixins/_gradients.scss".freeze, "assets/stylesheets/bootstrap/mixins/_grid-framework.scss".freeze, "assets/stylesheets/bootstrap/mixins/_grid.scss".freeze, "assets/stylesheets/bootstrap/mixins/_hover.scss".freeze, "assets/stylesheets/bootstrap/mixins/_image.scss".freeze, "assets/stylesheets/bootstrap/mixins/_list-group.scss".freeze, "assets/stylesheets/bootstrap/mixins/_lists.scss".freeze, "assets/stylesheets/bootstrap/mixins/_nav-divider.scss".freeze, "assets/stylesheets/bootstrap/mixins/_navbar-align.scss".freeze, "assets/stylesheets/bootstrap/mixins/_pagination.scss".freeze, "assets/stylesheets/bootstrap/mixins/_reset-text.scss".freeze, "assets/stylesheets/bootstrap/mixins/_resize.scss".freeze, "assets/stylesheets/bootstrap/mixins/_screen-reader.scss".freeze, "assets/stylesheets/bootstrap/mixins/_size.scss".freeze, "assets/stylesheets/bootstrap/mixins/_table-row.scss".freeze, "assets/stylesheets/bootstrap/mixins/_text-emphasis.scss".freeze, "assets/stylesheets/bootstrap/mixins/_text-hide.scss".freeze, "assets/stylesheets/bootstrap/mixins/_text-truncate.scss".freeze, "assets/stylesheets/bootstrap/mixins/_transition.scss".freeze, "assets/stylesheets/bootstrap/mixins/_visibility.scss".freeze, "assets/stylesheets/bootstrap/utilities/_align.scss".freeze, "assets/stylesheets/bootstrap/utilities/_background.scss".freeze, "assets/stylesheets/bootstrap/utilities/_borders.scss".freeze, "assets/stylesheets/bootstrap/utilities/_clearfix.scss".freeze, "assets/stylesheets/bootstrap/utilities/_display.scss".freeze, "assets/stylesheets/bootstrap/utilities/_embed.scss".freeze, "assets/stylesheets/bootstrap/utilities/_flex.scss".freeze, "assets/stylesheets/bootstrap/utilities/_float.scss".freeze, "assets/stylesheets/bootstrap/utilities/_position.scss".freeze, "assets/stylesheets/bootstrap/utilities/_screenreaders.scss".freeze, "assets/stylesheets/bootstrap/utilities/_sizing.scss".freeze, "assets/stylesheets/bootstrap/utilities/_spacing.scss".freeze, "assets/stylesheets/bootstrap/utilities/_text.scss".freeze, "assets/stylesheets/bootstrap/utilities/_visibility.scss".freeze, "bootstrap.gemspec".freeze, "lib/bootstrap.rb".freeze, "lib/bootstrap/engine.rb".freeze, "lib/bootstrap/version.rb".freeze, "tasks/updater.rb".freeze, "tasks/updater/js.rb".freeze, "tasks/updater/logger.rb".freeze, "tasks/updater/network.rb".freeze, "tasks/updater/scss.rb".freeze, "templates/project/_bootstrap-variables.scss".freeze, "templates/project/manifest.rb".freeze, "templates/project/styles.scss".freeze, "test/compass_test.rb".freeze, "test/dummy_rails/README.rdoc".freeze, "test/dummy_rails/Rakefile".freeze, "test/dummy_rails/app/assets/images/.keep".freeze, "test/dummy_rails/app/assets/javascripts/application.js".freeze, "test/dummy_rails/app/assets/stylesheets/application.sass".freeze, "test/dummy_rails/app/controllers/application_controller.rb".freeze, "test/dummy_rails/app/controllers/pages_controller.rb".freeze, "test/dummy_rails/app/helpers/application_helper.rb".freeze, "test/dummy_rails/app/views/layouts/application.html.erb".freeze, "test/dummy_rails/app/views/pages/root.html.slim".freeze, "test/dummy_rails/config.ru".freeze, "test/dummy_rails/config/application.rb".freeze, "test/dummy_rails/config/boot.rb".freeze, "test/dummy_rails/config/environment.rb".freeze, "test/dummy_rails/config/environments/development.rb".freeze, "test/dummy_rails/config/environments/production.rb".freeze, "test/dummy_rails/config/environments/test.rb".freeze, "test/dummy_rails/config/initializers/backtrace_silencers.rb".freeze, "test/dummy_rails/config/initializers/filter_parameter_logging.rb".freeze, "test/dummy_rails/config/initializers/inflections.rb".freeze, "test/dummy_rails/config/initializers/mime_types.rb".freeze, "test/dummy_rails/config/initializers/secret_token.rb".freeze, "test/dummy_rails/config/initializers/session_store.rb".freeze, "test/dummy_rails/config/initializers/wrap_parameters.rb".freeze, "test/dummy_rails/config/locales/en.yml".freeze, "test/dummy_rails/config/locales/es.yml".freeze, "test/dummy_rails/config/routes.rb".freeze, "test/dummy_rails/log/.keep".freeze, "test/gemfiles/rails_4_2.gemfile".freeze, "test/gemfiles/rails_5_0.gemfile".freeze, "test/gemfiles/rails_5_1.gemfile".freeze, "test/rails_test.rb".freeze, "test/support/dummy_rails_integration.rb".freeze, "test/support/reporting.rb".freeze, "test/test_helper.rb".freeze, "test/test_helper_rails.rb".freeze]
  s.homepage = "https://github.com/twbs/bootstrap-rubygem".freeze
  s.licenses = ["MIT".freeze]
  s.rubygems_version = "2.6.8".freeze
  s.summary = "The most popular HTML, CSS, and JavaScript framework for developing responsive, mobile first projects on the web. http://getbootstrap.com".freeze
  s.test_files = ["test/compass_test.rb".freeze, "test/dummy_rails/README.rdoc".freeze, "test/dummy_rails/Rakefile".freeze, "test/dummy_rails/app/assets/images/.keep".freeze, "test/dummy_rails/app/assets/javascripts/application.js".freeze, "test/dummy_rails/app/assets/stylesheets/application.sass".freeze, "test/dummy_rails/app/controllers/application_controller.rb".freeze, "test/dummy_rails/app/controllers/pages_controller.rb".freeze, "test/dummy_rails/app/helpers/application_helper.rb".freeze, "test/dummy_rails/app/views/layouts/application.html.erb".freeze, "test/dummy_rails/app/views/pages/root.html.slim".freeze, "test/dummy_rails/config.ru".freeze, "test/dummy_rails/config/application.rb".freeze, "test/dummy_rails/config/boot.rb".freeze, "test/dummy_rails/config/environment.rb".freeze, "test/dummy_rails/config/environments/development.rb".freeze, "test/dummy_rails/config/environments/production.rb".freeze, "test/dummy_rails/config/environments/test.rb".freeze, "test/dummy_rails/config/initializers/backtrace_silencers.rb".freeze, "test/dummy_rails/config/initializers/filter_parameter_logging.rb".freeze, "test/dummy_rails/config/initializers/inflections.rb".freeze, "test/dummy_rails/config/initializers/mime_types.rb".freeze, "test/dummy_rails/config/initializers/secret_token.rb".freeze, "test/dummy_rails/config/initializers/session_store.rb".freeze, "test/dummy_rails/config/initializers/wrap_parameters.rb".freeze, "test/dummy_rails/config/locales/en.yml".freeze, "test/dummy_rails/config/locales/es.yml".freeze, "test/dummy_rails/config/routes.rb".freeze, "test/dummy_rails/log/.keep".freeze, "test/gemfiles/rails_4_2.gemfile".freeze, "test/gemfiles/rails_5_0.gemfile".freeze, "test/gemfiles/rails_5_1.gemfile".freeze, "test/rails_test.rb".freeze, "test/support/dummy_rails_integration.rb".freeze, "test/support/reporting.rb".freeze, "test/test_helper.rb".freeze, "test/test_helper_rails.rb".freeze]

  s.installed_by_version = "2.6.8" if s.respond_to? :installed_by_version

  if s.respond_to? :specification_version then
    s.specification_version = 4

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_runtime_dependency(%q<popper_js>.freeze, ["< 2.0", ">= 1.9.9"])
      s.add_runtime_dependency(%q<sass>.freeze, [">= 3.4.19"])
      s.add_runtime_dependency(%q<autoprefixer-rails>.freeze, [">= 6.0.3"])
      s.add_development_dependency(%q<minitest>.freeze, ["~> 5.8.0"])
      s.add_development_dependency(%q<minitest-reporters>.freeze, ["~> 1.0.5"])
      s.add_development_dependency(%q<compass>.freeze, ["~> 1.0.3"])
      s.add_development_dependency(%q<term-ansicolor>.freeze, [">= 0"])
      s.add_development_dependency(%q<capybara>.freeze, [">= 2.6.0"])
      s.add_development_dependency(%q<poltergeist>.freeze, [">= 0"])
      s.add_development_dependency(%q<actionpack>.freeze, [">= 4.1.5"])
      s.add_development_dependency(%q<activesupport>.freeze, [">= 4.1.5"])
      s.add_development_dependency(%q<json>.freeze, [">= 1.8.1"])
      s.add_development_dependency(%q<sprockets-rails>.freeze, [">= 2.3.2"])
      s.add_development_dependency(%q<jquery-rails>.freeze, [">= 3.1.0"])
      s.add_development_dependency(%q<slim-rails>.freeze, [">= 0"])
      s.add_development_dependency(%q<uglifier>.freeze, [">= 0"])
    else
      s.add_dependency(%q<popper_js>.freeze, ["< 2.0", ">= 1.9.9"])
      s.add_dependency(%q<sass>.freeze, [">= 3.4.19"])
      s.add_dependency(%q<autoprefixer-rails>.freeze, [">= 6.0.3"])
      s.add_dependency(%q<minitest>.freeze, ["~> 5.8.0"])
      s.add_dependency(%q<minitest-reporters>.freeze, ["~> 1.0.5"])
      s.add_dependency(%q<compass>.freeze, ["~> 1.0.3"])
      s.add_dependency(%q<term-ansicolor>.freeze, [">= 0"])
      s.add_dependency(%q<capybara>.freeze, [">= 2.6.0"])
      s.add_dependency(%q<poltergeist>.freeze, [">= 0"])
      s.add_dependency(%q<actionpack>.freeze, [">= 4.1.5"])
      s.add_dependency(%q<activesupport>.freeze, [">= 4.1.5"])
      s.add_dependency(%q<json>.freeze, [">= 1.8.1"])
      s.add_dependency(%q<sprockets-rails>.freeze, [">= 2.3.2"])
      s.add_dependency(%q<jquery-rails>.freeze, [">= 3.1.0"])
      s.add_dependency(%q<slim-rails>.freeze, [">= 0"])
      s.add_dependency(%q<uglifier>.freeze, [">= 0"])
    end
  else
    s.add_dependency(%q<popper_js>.freeze, ["< 2.0", ">= 1.9.9"])
    s.add_dependency(%q<sass>.freeze, [">= 3.4.19"])
    s.add_dependency(%q<autoprefixer-rails>.freeze, [">= 6.0.3"])
    s.add_dependency(%q<minitest>.freeze, ["~> 5.8.0"])
    s.add_dependency(%q<minitest-reporters>.freeze, ["~> 1.0.5"])
    s.add_dependency(%q<compass>.freeze, ["~> 1.0.3"])
    s.add_dependency(%q<term-ansicolor>.freeze, [">= 0"])
    s.add_dependency(%q<capybara>.freeze, [">= 2.6.0"])
    s.add_dependency(%q<poltergeist>.freeze, [">= 0"])
    s.add_dependency(%q<actionpack>.freeze, [">= 4.1.5"])
    s.add_dependency(%q<activesupport>.freeze, [">= 4.1.5"])
    s.add_dependency(%q<json>.freeze, [">= 1.8.1"])
    s.add_dependency(%q<sprockets-rails>.freeze, [">= 2.3.2"])
    s.add_dependency(%q<jquery-rails>.freeze, [">= 3.1.0"])
    s.add_dependency(%q<slim-rails>.freeze, [">= 0"])
    s.add_dependency(%q<uglifier>.freeze, [">= 0"])
  end
end
