module WordPress
  class TermRelationship < ActiveRecord::Base
    set_table_name 'wp_term_relationships'
    establish_connection configurations['wp']
    
    belongs_to :post
    belongs_to :term_taxonomy
    
    def self.prefix(prefix)
      set_table "#{prefix}_term_relationships"
    end
  end
end
