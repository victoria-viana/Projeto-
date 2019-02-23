class CreateEstoques < ActiveRecord::Migration[5.2]
  def change
    create_table :estoques do |t|
      t.string :veiculo
      t.string :placa
      t.string :cor
      t.string :ano
      t.string :chassi
      t.string :chave
      t.string :funciona
      t.string :banco
      t.string :dataentrada
      t.string :reboque
      t.string :enderecocoleta
      t.string :tipoentrada
      t.string :datasaida
      t.string :local
      t.string :situacao
      t.string :transportado

      t.timestamps
    end
  end
end
