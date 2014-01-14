module Moped
  class Collection
    def insert_with_logging(*args)
      $models[self.name] ||= self

      insert_without_logging(*args)
    end

    alias_method_chain :insert, :logging
  end
end
