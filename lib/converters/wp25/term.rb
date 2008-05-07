module WordPress
  class Term < ActiveRecord::Base
    set_table_name 'wp_terms'
    set_primary_key 'term_id'
    establish_connection configurations['wp']
    
    def self.prefix(prefix)
      set_table "#{prefix}_terms"
    end
  end
end
