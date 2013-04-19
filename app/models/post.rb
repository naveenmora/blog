class Post < ActiveRecord::Base
  has_many :comments, :dependent => :destroy
  attr_accessible :content, :title

  validates :content,  :presence => true
  validates :title, :presence => true,
                    :length => { :minimum => 5 }

end
