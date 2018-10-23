class User < ApplicationRecord
  belongs_to :broker

  has_secure_password

  validates_confirmation_of :name, :username, :password
  validates :username, uniqueness: true
  validates :password, length: { in: 6..15 }
  #validate :password_match
  # validates :password,
  #         # you only need presence on create
  #         :presence => { :on => :create },
  #         # allow_nil for length (presence will handle it on create)
  #         :length   => { :minimum => 3, :allow_nil => true },
  #         # and use confirmation to ensure they always match
  #         :confirmation => true

  # def password_match
  #   byebug
  #   if password != password_confirmation
  #     errors.add(:password, "and Password Confirmation must match")
  #   end
  # end
end
