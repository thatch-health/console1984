module Console1984
  class Base < Console1984.config.base_record_class.constantize
    self.abstract_class = true

    # connecting_to(role: ActiveRecord.writing_role, prevent_writes: false)

    def self.connection
      c = super
      p(c)
      c
    end
  end
end

ActiveSupport.run_load_hooks(:console_1984_base, Console1984::Base)
