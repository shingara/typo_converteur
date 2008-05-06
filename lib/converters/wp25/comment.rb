module WP25
  class Comment < ActiveRecord::Base
    establish_connection configurations['wp2.5']
    set_primary_key 'comment_ID'
    set_table_name 'wp_comments'
    belongs_to :post, :foreign_key => 'comment_post_ID', :class_name => 'WP25::Post'
  end
end
