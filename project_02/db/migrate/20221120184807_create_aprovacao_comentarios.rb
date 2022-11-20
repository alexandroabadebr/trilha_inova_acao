class CreateAprovacaoComentarios < ActiveRecord::Migration[7.0]
  def change
    create_table :aprovacao_comentarios do |t|
      t.references :comentario, null: false, foreign_key: true
      t.date :data_aprovacao

      t.timestamps
    end
  end
end
