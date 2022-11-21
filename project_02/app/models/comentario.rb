class Comentario < ApplicationRecord
  belongs_to :Filme
  has_many :comentarios

  validates :comentario, presence: true
end
