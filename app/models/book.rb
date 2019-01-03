class Book < ApplicationRecord
  has_many :likes, dependent: :destroy
  has_many :rates, dependent: :destroy
  has_many :comments, dependent: :destroy
  has_many :borrow_details, dependent: :destroy
  belongs_to :publisher
  belongs_to :category
  belongs_to :author
  validates :name, presence: true,
    length: { maximum: Settings.book.name_maximum }
  validates :num_of_pages, presence: true, numericality: { only_integer: true },
    length: { maximum: Settings.book.pages_maximum }
  validates :image, presence: true,
    length: { maximum: Settings.book.images_maximum }
  validates :amount, presence: true, numericality: { only_integer: true },
    length: { maximum: Settings.book.amount_maximum }
end
