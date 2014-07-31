class Comment < ActiveRecord::Base
  belongs_to :professional

  validates :commenter, presence: true
  validates :body, presence: true
end
