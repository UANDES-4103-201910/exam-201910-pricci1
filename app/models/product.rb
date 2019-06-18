class Product < ApplicationRecord
  has_many :order_product
  has_many :orders, through: :order_product

  before_save :downcase_fields

  def downcase_fields
    brand&.downcase
    model&.downcase
    variant&.downcase
  end

end
