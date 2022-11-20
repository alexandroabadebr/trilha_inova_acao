class Filme < ApplicationRecord
    validates :titulo, :ano_lancamento, :elenco_atores,    presence: true
    validates :titulo,  uniqueness: true
end
