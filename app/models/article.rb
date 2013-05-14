class Article < ActiveRecord::Base
  attr_accessible :title, :user_id
  
  belongs_to :user
  
  accepts_nested_attributes_for :user
end
