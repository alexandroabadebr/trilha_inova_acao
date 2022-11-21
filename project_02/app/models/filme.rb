class Filme < ApplicationRecord
    validates :titulo, :ano_lancamento, :elenco_atores,    presence: true
    validates :titulo,  uniqueness: true

    has_and_belongs_to_many :all_ators
    has_many :comentario, dependent: :destroy
end
