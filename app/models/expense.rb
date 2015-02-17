class Expense < ActiveRecord::Base
  belongs_to :category

  validates :concept, :amount, :fecha, presence: true
  validates_associated :category
=begin
  category
  fecha
  concept
  amount\
=end

end
