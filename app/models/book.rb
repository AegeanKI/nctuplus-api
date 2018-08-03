class Book < ApplicationRecord
  mount_base64_uploader :cover_image, BookCoverUploader

  belongs_to :user
  has_many :books_courses
  has_many :courses, through: :books_courses

  validates_numericality_of :price, only_integer: true
end
