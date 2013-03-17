class Comment < ActiveRecord::Base
  belongs_to :post
  attr_accessible :text, :post_id
end
