class AddApprovedToComentarios < ActiveRecord::Migration[7.0]
  def change
    add_column :comentarios, :approved, :boolean, default: false

      Comentario.all.each do |comentario|
      comentario.update_attributes!(approved: false)
  end
end
end
