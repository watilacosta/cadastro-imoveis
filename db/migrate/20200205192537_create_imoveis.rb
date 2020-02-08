class CreateImoveis < ActiveRecord::Migration[5.2]
  def change
    create_table :imoveis do |t|
      t.references :proprietario, foreign_key: true
      t.string :endereco
      t.decimal :area_terreno
      t.decimal :area_construida
      t.decimal :area_total
      t.decimal :aliquota
      t.decimal :valor_venal_terreno
      t.decimal :valor_venal_construcao
      t.decimal :valor_venal_total
      t.decimal :aliquota_aplicada
      t.decimal :valor_imposto

      t.timestamps
    end
  end
end
