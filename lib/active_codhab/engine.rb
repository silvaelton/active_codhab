
module ActiveCodhab
  class Engine < ::Rails::Engine
    isolate_namespace ActiveCodhab

    initializer :append_migrations do |app|
      config.paths['db/migrate'].expanded.each do |expanded_path|
        app.config.paths['db/migrate'] << expanded_path
        ActiveRecord::Migrator.migrations_paths << expanded_path
      end

      config.i18n.default_locale = :'pt-BR'
    end

    config.generators do |g|
      g.test_framework :rspec, :fixture => false
      g.fixture_replacement :factory_girl, :dir => 'spec/factories'
      g.assets false
      g.helper false

    end

  end
end
