class CreateImoveis < ActiveRecord::Migration[5.2]
  def change
    create_table :imoveis do |t|
      t.references :proprietario, foreign_key: true
      t.string :endereco
      t.decimal :area_terreno, precision: 7, scale: 2
      t.decimal :area_construida, precision: 7, scale: 2
      t.decimal :area_total, precision: 7, scale: 2
      t.decimal :aliquota, precision: 7, scale: 2
      t.decimal :valor_venal_terreno, precision: 7, scale: 2
      t.decimal :valor_venal_construcao, precision: 7, scale: 2
      t.decimal :valor_venal_total, precision: 7, scale: 2
      t.decimal :aliquota_aplicada, precision: 7, scale: 2
      t.decimal :valor_imposto, precision: 7, scale: 2

      t.timestamps
    end
  end
end
