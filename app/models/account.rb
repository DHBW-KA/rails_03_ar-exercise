class Account < ActiveRecord::Base
  has_many :book_entries
  belongs_to :user
  belongs_to :bank

  validates_presence_of :bank_id

  validates :balance, numericality: {greater_than_or_equal_to: 0}

  def user_name
    user.name
  end
end
