class CreateTerceirizados < ActiveRecord::Migration[5.2]
  def change
    create_table :terceirizados do |t|
      t.string :nome
      t.string :cpf
      t.string :rg
      t.string :celular
      t.string :email
      t.string :caminhao
      t.string :placacaminhao
      t.string :renavancaminhao
      t.string :cegonha
      t.string :placacegonha
      t.string :renavancegonha

      t.timestamps
    end
  end
end
