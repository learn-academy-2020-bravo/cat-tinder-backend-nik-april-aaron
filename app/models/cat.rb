class Cat < ApplicationRecord
    #Here is the new line of code
    validates :name,:age,:enjoys, presence: true
  end
