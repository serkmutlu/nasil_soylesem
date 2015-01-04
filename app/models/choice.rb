class Choice < ActiveRecord::Base
  validates :email, presence: true, format: { with: /\A[^@\s]+@([^@.\s]+\.)+[^@.\s]+\z/ }
  validates :shame, presence: true
end
