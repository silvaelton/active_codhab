module ActiveCodhab
  class Engine < ::Rails::Engine
    isolate_namespace ActiveCodhab

    initializer :append_migrations do |app|
      config.paths['db/migrate'].expanded.each do |expanded_path|
        app.config.paths['db/migrate'] << expanded_path
        ActiveRecord::Migrator.migrations_paths << expanded_path
      end
    end
  end
end
