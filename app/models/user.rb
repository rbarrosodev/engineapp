class User < ApplicationRecord
  belongs_to :book, class_name: 'BooksModule::Book', optional: true
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
end
