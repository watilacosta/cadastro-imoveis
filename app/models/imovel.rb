# == Schema Information
#
# Table name: imoveis
#
#  id                     :bigint           not null, primary key
#  proprietario_id        :bigint
#  endereco               :string
#  area_terreno           :decimal(7, 2)
#  area_construida        :decimal(7, 2)
#  area_total             :decimal(7, 2)
#  aliquota               :decimal(7, 2)
#  valor_venal_terreno    :decimal(7, 2)
#  valor_venal_construcao :decimal(7, 2)
#  valor_venal_total      :decimal(7, 2)
#  aliquota_aplicada      :decimal(7, 2)
#  valor_imposto          :decimal(7, 2)
#  created_at             :datetime         not null
#  updated_at             :datetime         not null
#

class Imovel < ApplicationRecord
  belongs_to :proprietario

  validates :proprietario, presence: true
  validates :endereco, length: { maximum: 250 }, presence: true
  validates :area_terreno, :area_construida, :area_total, :aliquota, 
            :valor_venal_terreno, :valor_venal_construcao, 
            :valor_venal_total, :aliquota_aplicada, :valor_imposto, numericality: true
end
