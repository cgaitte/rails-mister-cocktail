puts 'Destory all ingredients'

Ingredient.destroy_all

puts 'Destory all cocktails'

puts 'Creating Ingredients'
lemon = Ingredient.create!(name: 'lemon')
ice = Ingredient.create!(name: 'ice')
rhum = Ingredient.create!(name: 'rhum')
mint_leaves = Ingredient.create!(name: 'mint leaves')
strawberry = Ingredient.create!(name: 'strawberry')
