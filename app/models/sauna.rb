class Sauna < ApplicationRecord
  belongs_to :user
  has_one_attached :image
  belongs_to :category
  belongs_to :prefecture
  validates :name, :price, :text, :temperature, :humidity, :cool_bath_temperature, :postcode, :city, :block, :phone_number, presence: true

  validates :text,
   length: { maximum: 1000, message: '1000文字までです' }
  validates :price,
    numericality: { only_integer: true, greater_than_or_equal_to: 300, less_than_or_equal_to: 9_999_999,
       message: '300から999999までの数字で入力してください' }
  validates :prefecture_id, :category_id,
    numericality: { other_than: 1, message: "can't be blank" }
end
