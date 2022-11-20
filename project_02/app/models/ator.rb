class Ator < ApplicationRecord
  belongs_to :Ator

  has_many :filmes

  validates :nome, :ano_nascimento, :email, presence: true
  validates :email,  uniqueness: true
end
