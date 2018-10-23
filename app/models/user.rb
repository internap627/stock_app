class User < ApplicationRecord
  belongs_to :broker, optional: true

  has_secure_password
end
