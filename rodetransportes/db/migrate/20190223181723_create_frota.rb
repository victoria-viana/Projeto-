class CreateFrota < ActiveRecord::Migration[5.2]
  def change
    create_table :frota do |t|
      t.string :modelo
      t.string :placa
      t.string :renavan
      t.string :tipo

      t.timestamps
    end
  end
end
