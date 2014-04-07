module Moped
  module Cleaner
    def self.included(base)
      require File.expand_path('../overrides', __FILE__)

      $models = {}

      ##
      # Remove models from every collection that was touched
      #
      block = ->(*) {
        $models.keys.each do |m|
          next if /system\.indexes/i === m

          $models[m].find.remove_all
        end

        $models = {}
      }

      base.before(:each, &block)
      base.before(:all, &block)
      base.after(:all, &block)
    end
  end
end
