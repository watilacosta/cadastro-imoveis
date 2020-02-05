# == Schema Information
#
# Table name: proprietarios
#
#  id                     :bigint           not null, primary key
#  email                  :string           default(""), not null
#  encrypted_password     :string           default(""), not null
#  reset_password_token   :string
#  reset_password_sent_at :datetime
#  remember_created_at    :datetime
#  nome                   :string
#  endereco               :string
#  created_at             :datetime         not null
#  updated_at             :datetime         not null
#

class Proprietario < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  validates :nome, length: { maximum: 100 }
  validates :endereco, length: { maximum: 250 }

  has_many :imoveis
end
