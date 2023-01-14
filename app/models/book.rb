class Book < ApplicationRecord
    validates :title, presence: true, length: { minimum: 5, maximum: 50 }
    validates :author, presence: true, length: { minimum: 5, maximum: 50 }
    validates :discription, presence: true, length: { minimum: 10, maximum: 1000 }
    belongs_to :user

   has_rich_text :discription
   has_one :constant, class_name: 'ActionText::RichText', as: :record, dependent: :destroy
end
