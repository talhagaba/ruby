class Product < ApplicationRecord

  has_one :page
  belongs_to :user

  scope :visible, lambda {where(:visible => true)}
  scope :invisible, lambda {where(:visible => false)}
  scope :sorted, lambda {order("productPrice ASC")}
#  scope :search, lambda {|query| where(["productName LIKE ?","%#{query}%"])}


end
