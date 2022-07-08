class AddDefaultValueToColumnSalario < ActiveRecord::Migration[6.1]
  def change
    change_column :empleos, :salario, :float, default: 0.0
  end
end
