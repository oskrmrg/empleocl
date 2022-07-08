class CreateEmpleos < ActiveRecord::Migration[6.1]
  def change
    create_table :empleos do |t|
      t.string :titulo
      t.text :descripcion
      t.integer :vacantes
      t.float :salario
      t.date :fecha_inic
      t.string :tipo
      t.text :ubicacion

      t.timestamps
    end
  end
end
