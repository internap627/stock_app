class User < ApplicationRecord
  belongs_to :broker

  has_secure_password
end
