class User < ApplicationRecord
	validates :age, :numericality => {:message => "should be a number"}
	validates :email, :presence => true, :uniqueness => true
end
