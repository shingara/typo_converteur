module WP25
  class User < ActiveRecord::Base
    set_table_name 'wp_users'
    set_primary_key 'ID'
    establish_connection configurations['wp2.5']
    has_many :posts, :foreign_key => 'post_author', :class_name => 'WP25::Post'
  end
end
