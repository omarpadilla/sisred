class CreateOperaciones < ActiveRecord::Migration[5.1]
  def change
    create_table :operaciones do |t|
      t.string :referencia
      t.string :pedimento
      t.string :cliente

      t.timestamps
    end
  end
end
