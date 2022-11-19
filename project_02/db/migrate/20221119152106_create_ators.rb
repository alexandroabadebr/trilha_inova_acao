class CreateAtors < ActiveRecord::Migration[7.0]
  def change
    create_table :ators do |t|
      t.string :nome
      t.date :ano_nascimento
      t.string :email
      t.references :Ator, null: false, foreign_key: true

      t.timestamps
    end
  end
end
