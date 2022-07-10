class CreateUsuarios < ActiveRecord::Migration[6.1]
  def change
    create_table :usuarios do |t|
      t.string :rut, null: false
      t.string :nombre, null: false
      t.date :fecha_nac, precision: 6, null: false
      t.string :sexo, null: false
      t.string :telefono, null: false
      t.string :email, null: false
      t.string :password_digest, null: false

      t.timestamps
    end
  end
end
