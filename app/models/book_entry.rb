class BookEntry < ActiveRecord::Base
  belongs_to :account_from, class_name: "Account"
  belongs_to :account_to, class_name: "Account"

  validates_associated :account_from, :account_to
  validates_presence_of :account_from_id, :account_to_id
  validates :amount, numericality: {greater_than_or_equal_to: 0}

  before_save do
    account_from.balance = account_from.balance - amount
    account_to.balance = account_to.balance + amount
    errors.add(:account_from, "Keine Deckung!") unless account_from.save
    errors.add(:account_to, "Keine Deckung!") unless account_to.save
    false unless errors.empty?
  end
end
