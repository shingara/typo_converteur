module Dotclear
  class Category < ActiveRecord::Base
    set_table_name 'dc_categorie'
    set_primary_key 'cat_id'
    establish_connection configurations['wp25']
    def self.prefix=(prefix)
      set_table_name "#{prefix}_items"
    end
  end
end
