module Dotclear2
  class Tag < ActiveRecord::Base
    set_table_name 'dc_meta'
    set_primary_key 'meta_id'
    establish_connection configurations['dc2']
    belongs_to :post, :foreign_key => 'post_id', :class_name => 'Dotclear2::Post'
  end
end
