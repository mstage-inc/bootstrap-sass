module Bootstrap
  module Rails
    class Engine < ::Rails::Engine
      initializer "bootstrap-sass.assets.precompile" do |app|
        %w(stylesheets javascripts images).each do |sub|
          app.config.assets.paths << root.join('vendor', 'assets', sub).to_s
        end
        app.config.assets.precompile += %w(glyphicons-halflings.png glyphicons-halflings-white.png)
      end
    end
  end
end
