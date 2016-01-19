require 'trailblazer'

module Stock
  class Engine < ::Rails::Engine

    isolate_namespace Stock

    def self.activate
      Dir.glob(File.join(File.dirname(__FILE__), '../../app/concepts/**/*.rb')) do |c|
        Rails.configuration.cache_classes ? require(c) : load(c)
      end
    end

    config.to_prepare &method(:activate).to_proc
  end
end
