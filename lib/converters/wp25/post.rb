module WP25
  class Post < ActiveRecord::Base
    set_table_name 'wp_posts'
    set_primary_key 'ID'
    establish_connection configurations['wp2.5']
    has_many :comments, :foreign_key => 'comment_post_ID', :class_name => 'WP25::Comment'
    #TODO: manage the categorie
    #belongs_to :categorie, :foreign_key => 'cat_id', :class_name => 'Dotclear::Category'
  end
end
