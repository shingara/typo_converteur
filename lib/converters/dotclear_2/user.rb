module Dotclear2
  class User < ActiveRecord::Base
    set_table_name 'dc_user'
    set_primary_key 'user_id'
    establish_connection configurations['dc2']
    has_many :posts, :foreign_key => 'user_id', :class_name => 'Dotclear2::Post'
  end
end
