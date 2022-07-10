class CreateEmpleos < ActiveRecord::Migration[6.1]
  def change
    create_table :empleos do |t|
      t.string :titulo, null: false
      t.text :descripcion, null: false
      t.integer :vacantes, null: false
      t.float :salario, null: false
      t.date :fecha_inic, null: false
      t.string :tipo, null: false
      t.text :ubicacion, null: false

      t.timestamps
    end
  end
end
