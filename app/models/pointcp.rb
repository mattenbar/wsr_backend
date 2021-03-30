class Pointcp < ApplicationRecord
  has_many :pointcpvotes
  validates :titleOne, :authorOne, :contentOne, :imageOne, :titleTwo, :authorTwo, :contentTwo, :imageTwo, presence: true
end
