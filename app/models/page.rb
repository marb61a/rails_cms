class Page < ActiveRecord::Base
    belongs_to :category
    belongs_to :type
    
    has_many :fields
    
end
