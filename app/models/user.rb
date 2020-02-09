class User < ActiveRecord::Base
  has_many :accounts, autosave: true
  has_many :banks, through: :accounts

  validates_presence_of :accounts, :name
  validates_confirmation_of :email
  validates :email, format: { with: /\b[A-Z0-9._%+-]+@[A-Z0-9.-]+\.[A-Z]{2,}\b/i }

  before_validation if: ->(){ new_record? && accounts.empty?}  do
    accounts.build bank_id: bank_ids.first
  end

end
