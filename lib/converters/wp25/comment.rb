module WordPress
  class Comment < ActiveRecord::Base
    establish_connection configurations['wp25']
    set_primary_key 'comment_ID'
    set_table_name 'wp_comments'
    belongs_to :post, :foreign_key => 'comment_parent', :class_name => 'WordPress::Post'

    def self.prefix(prefix)
      set_table "#{prefix}_comments"
    end
  end
end
