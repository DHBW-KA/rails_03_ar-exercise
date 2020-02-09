class Bank < ActiveRecord::Base
  has_many :accounts
  has_many :users, through: :accounts

  validates_presence_of :name
  validates :bic, format: { with: /\A([a-zA-Z]){4}([a-zA-Z]){2}([0-9a-zA-Z]){2}([0-9a-zA-Z]{3})?\z/, message: 'not valid' }
end
