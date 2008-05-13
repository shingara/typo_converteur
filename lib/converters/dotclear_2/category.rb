module Dotclear2
  class Category < ActiveRecord::Base
    set_table_name 'dc_category'
    set_primary_key 'cat_id'
    establish_connection configurations['dc2']
  end
end
