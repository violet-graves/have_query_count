class User < ActiveRecord::Base
  has_many :cats
end

class Cat < ActiveRecord::Base
  belongs_to :user
end