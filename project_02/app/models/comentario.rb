class Comentario < ApplicationRecord
  belongs_to :Filme

 validates :filme, :comentario, presence: true
end
