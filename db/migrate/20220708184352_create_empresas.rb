class CreateEmpresas < ActiveRecord::Migration[6.1]
  def change
    create_table :empresas do |t|
      t.string :razon_social, null: false
      t.integer :rut, null: false
      t.string :representante, null: false
      t.text :direccion, null: false
      t.string :email, null: false
      t.string :telefono, null: false
      t.string :password_digest, null: false
      t.references :empleo, null: false, foreign_key: true

      t.timestamps
    end
  end
end
