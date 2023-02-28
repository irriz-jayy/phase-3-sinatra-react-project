class Blog < ActiveRecord::Base
    belongs_to :author
  
    before_create :set_author
  
    private
  
    def set_author
      self.author_id = Author.all.sample.id
    end
  end
  