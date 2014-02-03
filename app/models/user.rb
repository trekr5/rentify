class User < ActiveRecord::Base
 validates :email, presence: true
 validates :postcode, presence: true, length: { minimum: 15 }

end
