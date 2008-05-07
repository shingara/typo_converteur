module WP25
  class Post < ActiveRecord::Base
    set_table_name 'wp_posts'
    set_primary_key 'ID'
    establish_connection configurations['wp25']
    has_many :comments, :foreign_key => 'comment_post_ID', :class_name => 'WP25::Comment'
    #TODO: manage the categorie
    #belongs_to :categorie, :foreign_key => 'cat_id', :class_name => 'Dotclear::Category'
    
    def self.prefix=(prefix)
      set_table_name "#{prefix}_posts"
    end
  end
end
