class CreateFilmes < ActiveRecord::Migration[7.0]
  def change
    create_table :filmes do |t|
      t.string :titulo
      t.date :ano_lancamento
      t.string :alenco_atores
      t.text :comentarios

      t.timestamps
    end
  end
end
