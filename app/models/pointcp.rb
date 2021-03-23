class Pointcp < ApplicationRecord
  validates :titleOne, :authorOne, :contentOne, :imageOne, :titleTwo, :authorTwo, :contentTwo, :imageTwo, presence: true
end
