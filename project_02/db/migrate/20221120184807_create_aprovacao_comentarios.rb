class CreateAprovacaoComentarios < ActiveRecord::Migration[7.0]
  def change
    create_table :aprovacao_comentarios do |t|
      t.integer :comentario_id

      t.timestamps
    end
  end
end
