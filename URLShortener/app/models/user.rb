class User < ApplicationRecord
  validates :email, presence: true
  # message: "That email is already in use."
end
