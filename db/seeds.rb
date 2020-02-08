# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


# ==================================CRIANDO USUÁRIO PADRÃO=======================================
puts 'Criando usuário padrão: '
Proprietario.create!(
  email:    'teste@email.com',
  password: '123456',
  nome:     'Teste',
  endereco: 'Rua Teste, 9999',
  role:     :admin          
)
puts 'Usuário padrão criado com sucesso!'


# ====================================CRIANDO USUÁRIOS FAKER======================================
puts 'Criando usuários faker'
50.times do
  Proprietario.create!(
    email:    Faker::Internet.email,
    password: '123456',
    nome:     Faker::Name.name,
    endereco: Faker::Address.full_address,
    role:     :normal
  )
  puts "#{Proprietario.all.count} usuários criados"
end
puts "#{Proprietario.all.count - 1} usuários faker criados com sucesso!"

# ====================================CRIANDO IMOVEIS DOS PROPRIETARIOS======================================

puts 'Criando imóveis'
1000.times do 
  Imovel.create!(
    proprietario_id:        Proprietario.all.sample.id,
    endereco:               Faker::Address.full_address,
    area_terreno:           Faker::Number.number(digits: 4),   
    area_construida:        Faker::Number.number(digits: 4),
    aliquota:               Faker::Number.decimal(l_digits: 2),
    valor_venal_terreno:    Faker::Number.decimal(l_digits: 3, r_digits: 3),
    valor_venal_construcao: Faker::Number.decimal(l_digits: 3, r_digits: 3),
    aliquota_aplicada:      Faker::Number.decimal(l_digits: 2),
  )
  puts "Imóvel #{Imovel.last.id} criado com sucesso"
end
puts 'Imóveis criados com sucesso!'