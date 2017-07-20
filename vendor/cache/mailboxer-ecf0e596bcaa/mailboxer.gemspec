# -*- encoding: utf-8 -*-
# stub: mailboxer 0.15.1 ruby lib

Gem::Specification.new do |s|
  s.name = "mailboxer".freeze
  s.version = "0.15.1"

  s.required_rubygems_version = Gem::Requirement.new(">= 0".freeze) if s.respond_to? :required_rubygems_version=
  s.require_paths = ["lib".freeze]
  s.authors = ["Eduardo Casanova Cuesta".freeze]
  s.date = "2017-07-20"
  s.description = "A Rails engine that allows any model to act as messageable, adding the ability to exchange messages with any other messageable model, even different ones. It supports the use of conversations with two or more recipients to organize the messages. You have a complete use of a mailbox object for each messageable model that manages an inbox, sentbox and trash for conversations. It also supports sending notifications to messageable models, intended to be used as system notifications.".freeze
  s.email = "ecasanovac@gmail.com".freeze
  s.files = [".gitignore".freeze, ".rspec".freeze, ".travis.yml".freeze, ".yardopts".freeze, "Appraisals".freeze, "CHANGELOG.md".freeze, "Gemfile".freeze, "LICENSE.txt".freeze, "README.md".freeze, "Rakefile".freeze, "app/builders/mailboxer/base_builder.rb".freeze, "app/builders/mailboxer/conversation_builder.rb".freeze, "app/builders/mailboxer/message_builder.rb".freeze, "app/builders/mailboxer/notification_builder.rb".freeze, "app/builders/mailboxer/receipt_builder.rb".freeze, "app/mailers/mailboxer/base_mailer.rb".freeze, "app/mailers/mailboxer/message_mailer.rb".freeze, "app/mailers/mailboxer/notification_mailer.rb".freeze, "app/models/mailboxer/conversation.rb".freeze, "app/models/mailboxer/conversation/opt_out.rb".freeze, "app/models/mailboxer/mailbox.rb".freeze, "app/models/mailboxer/message.rb".freeze, "app/models/mailboxer/notification.rb".freeze, "app/models/mailboxer/receipt.rb".freeze, "app/uploaders/mailboxer/attachment_uploader.rb".freeze, "app/views/mailboxer/message_mailer/new_message_email.html.erb".freeze, "app/views/mailboxer/message_mailer/new_message_email.text.erb".freeze, "app/views/mailboxer/message_mailer/reply_message_email.html.erb".freeze, "app/views/mailboxer/message_mailer/reply_message_email.text.erb".freeze, "app/views/mailboxer/notification_mailer/new_notification_email.html.erb".freeze, "app/views/mailboxer/notification_mailer/new_notification_email.text.erb".freeze, "config/locales/en.yml".freeze, "db/migrate/20110511145103_create_mailboxer.rb".freeze, "db/migrate/20131206080416_add_conversation_optout.rb".freeze, "db/migrate/20131206080417_add_missing_indices.rb".freeze, "db/migrate/20151103080417_add_delivery_tracking_info_to_mailboxer_receipts.rb".freeze, "gemfiles/rails5.0.gemfile".freeze, "gemfiles/rails5.1.gemfile".freeze, "lib/generators/mailboxer/install_generator.rb".freeze, "lib/generators/mailboxer/namespacing_compatibility_generator.rb".freeze, "lib/generators/mailboxer/templates/initializer.rb".freeze, "lib/generators/mailboxer/templates/mailboxer_namespacing_compatibility.rb".freeze, "lib/generators/mailboxer/views_generator.rb".freeze, "lib/mailboxer.rb".freeze, "lib/mailboxer/cleaner.rb".freeze, "lib/mailboxer/engine.rb".freeze, "lib/mailboxer/mail_dispatcher.rb".freeze, "lib/mailboxer/models/messageable.rb".freeze, "lib/mailboxer/recipient_filter.rb".freeze, "lib/mailboxer/version.rb".freeze, "mailboxer.gemspec".freeze, "spec/dummy/.gitignore".freeze, "spec/dummy/Gemfile".freeze, "spec/dummy/Rakefile".freeze, "spec/dummy/app/controllers/application_controller.rb".freeze, "spec/dummy/app/controllers/home_controller.rb".freeze, "spec/dummy/app/helpers/application_helper.rb".freeze, "spec/dummy/app/mailers/.gitkeep".freeze, "spec/dummy/app/models/.gitkeep".freeze, "spec/dummy/app/models/cylon.rb".freeze, "spec/dummy/app/models/duck.rb".freeze, "spec/dummy/app/models/user.rb".freeze, "spec/dummy/app/views/home/index.html.haml".freeze, "spec/dummy/app/views/layouts/application.html.haml".freeze, "spec/dummy/config.ru".freeze, "spec/dummy/config/application.rb".freeze, "spec/dummy/config/boot.rb".freeze, "spec/dummy/config/database.yml".freeze, "spec/dummy/config/environment.rb".freeze, "spec/dummy/config/environments/development.rb".freeze, "spec/dummy/config/environments/production.rb".freeze, "spec/dummy/config/environments/test.rb".freeze, "spec/dummy/config/initializers/backtrace_silencers.rb".freeze, "spec/dummy/config/initializers/inflections.rb".freeze, "spec/dummy/config/initializers/mailboxer.rb".freeze, "spec/dummy/config/initializers/mime_types.rb".freeze, "spec/dummy/config/initializers/secret_token.rb".freeze, "spec/dummy/config/initializers/session_store.rb".freeze, "spec/dummy/config/locales/en.yml".freeze, "spec/dummy/config/routes.rb".freeze, "spec/dummy/config/sunspot.yml".freeze, "spec/dummy/db/migrate/20110228120600_create_users.rb".freeze, "spec/dummy/db/migrate/20110306002940_create_ducks.rb".freeze, "spec/dummy/db/migrate/20110306015107_create_cylons.rb".freeze, "spec/dummy/db/migrate/20120305103200_create_mailboxer.rb".freeze, "spec/dummy/db/migrate/20131206080416_add_conversation_optout.rb".freeze, "spec/dummy/db/migrate/20151103202534_add_missing_indices.mailboxer_engine.rb".freeze, "spec/dummy/db/migrate/20151103202535_add_delivery_tracking_info_to_mailboxer_receipts.mailboxer_engine.rb".freeze, "spec/dummy/db/schema.rb".freeze, "spec/dummy/public/404.html".freeze, "spec/dummy/public/422.html".freeze, "spec/dummy/public/500.html".freeze, "spec/dummy/public/favicon.ico".freeze, "spec/dummy/public/index.html".freeze, "spec/dummy/public/robots.txt".freeze, "spec/dummy/public/uploads/testfile.txt".freeze, "spec/dummy/script/rails".freeze, "spec/factories/cylon.rb".freeze, "spec/factories/duck.rb".freeze, "spec/factories/user.rb".freeze, "spec/integration/message_and_receipt_spec.rb".freeze, "spec/integration/navigation_spec.rb".freeze, "spec/mailboxer/mail_dispatcher_spec.rb".freeze, "spec/mailboxer/recipient_filter_spec.rb".freeze, "spec/mailboxer_spec.rb".freeze, "spec/mailers/message_mailer_spec.rb".freeze, "spec/mailers/notification_mailer_spec.rb".freeze, "spec/models/conversation_spec.rb".freeze, "spec/models/mailbox_spec.rb".freeze, "spec/models/mailboxer_models_messageable_spec.rb".freeze, "spec/models/message_spec.rb".freeze, "spec/models/notification_spec.rb".freeze, "spec/models/receipt_spec.rb".freeze, "spec/spec_helper.rb".freeze, "spec/testfile.txt".freeze]
  s.homepage = "https://github.com/ging/mailboxer".freeze
  s.licenses = ["MIT".freeze]
  s.rubygems_version = "2.6.8".freeze
  s.summary = "Messaging system for rails apps.".freeze

  s.installed_by_version = "2.6.8" if s.respond_to? :installed_by_version

  if s.respond_to? :specification_version then
    s.specification_version = 4

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_runtime_dependency(%q<rails>.freeze, [">= 5.0.0"])
      s.add_runtime_dependency(%q<carrierwave>.freeze, [">= 0.5.8"])
      s.add_development_dependency(%q<rspec-rails>.freeze, ["~> 3.0"])
      s.add_development_dependency(%q<rspec-its>.freeze, ["~> 1.1"])
      s.add_development_dependency(%q<rspec-collection_matchers>.freeze, ["~> 1.1"])
      s.add_development_dependency(%q<appraisal>.freeze, ["~> 1.0.0"])
      s.add_development_dependency(%q<shoulda-matchers>.freeze, ["~> 2"])
      s.add_development_dependency(%q<factory_girl>.freeze, ["~> 2.6.0"])
      s.add_development_dependency(%q<forgery>.freeze, [">= 0.3.6"])
      s.add_development_dependency(%q<capybara>.freeze, [">= 0.3.9"])
      s.add_development_dependency(%q<sqlite3>.freeze, [">= 0"])
    else
      s.add_dependency(%q<rails>.freeze, [">= 5.0.0"])
      s.add_dependency(%q<carrierwave>.freeze, [">= 0.5.8"])
      s.add_dependency(%q<rspec-rails>.freeze, ["~> 3.0"])
      s.add_dependency(%q<rspec-its>.freeze, ["~> 1.1"])
      s.add_dependency(%q<rspec-collection_matchers>.freeze, ["~> 1.1"])
      s.add_dependency(%q<appraisal>.freeze, ["~> 1.0.0"])
      s.add_dependency(%q<shoulda-matchers>.freeze, ["~> 2"])
      s.add_dependency(%q<factory_girl>.freeze, ["~> 2.6.0"])
      s.add_dependency(%q<forgery>.freeze, [">= 0.3.6"])
      s.add_dependency(%q<capybara>.freeze, [">= 0.3.9"])
      s.add_dependency(%q<sqlite3>.freeze, [">= 0"])
    end
  else
    s.add_dependency(%q<rails>.freeze, [">= 5.0.0"])
    s.add_dependency(%q<carrierwave>.freeze, [">= 0.5.8"])
    s.add_dependency(%q<rspec-rails>.freeze, ["~> 3.0"])
    s.add_dependency(%q<rspec-its>.freeze, ["~> 1.1"])
    s.add_dependency(%q<rspec-collection_matchers>.freeze, ["~> 1.1"])
    s.add_dependency(%q<appraisal>.freeze, ["~> 1.0.0"])
    s.add_dependency(%q<shoulda-matchers>.freeze, ["~> 2"])
    s.add_dependency(%q<factory_girl>.freeze, ["~> 2.6.0"])
    s.add_dependency(%q<forgery>.freeze, [">= 0.3.6"])
    s.add_dependency(%q<capybara>.freeze, [">= 0.3.9"])
    s.add_dependency(%q<sqlite3>.freeze, [">= 0"])
  end
end
