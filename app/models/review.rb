class Review < ApplicationRecord

  belongs_to :user
  belongs_to :island

  validates_inclusion_of :rating, :in => 1..5

end
