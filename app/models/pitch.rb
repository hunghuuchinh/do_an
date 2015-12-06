class Pitch < ActiveRecord::Base

  belongs_to :user
  validates :user_id ,presence: true
  validates :name ,length: {maximum: 200 }, presence: true
  validates :address, length: {maximum: 200} , presence: true
  validates :quantity, length: {minimum: 1} , numericality: true
  validates :rent_shoes , inclusion: {in: [true, false]}
  validates :rent_kit , inclusion: {in: [true, false]}
   #validates :county ,inclusion: {in: %w(Ba Dinh Hoan Kiem Tay Ho Long Bien Cau Giay Dong Da Hai Ba Trung Hoang Mai Thanh Xuan Ha Dong Bac Tu Liem Nam Tu Liem)}
  validates :sell_water , inclusion: {in: [true, false]}
  validates :cost ,  numericality: true , presence: true
end
