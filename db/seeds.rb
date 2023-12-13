# db/seeds.rb
# db/seeds.rb
nutrition_expert = NutritionExpert.create!(
  name: 'Doctorstrange',
  expertise: 'Nutrition',
  password: 'pass123',
  password_confirmation: 'pass123'
)

# Run `rails db:seed` in the terminal to execute the seed file


# Ensure any existing plans are deleted before seeding (optional)
DietPlan.destroy_all

# Create predefined diet plans for Loosing Weight
DietPlan.create(
  name: 'Plan 1 - Loosing weight',
  category: 'Loosing weight',
  recommended_calories: 1500,
  breakfast_calories: 400,
  lunch_calories: 500,
  snacks_calories: 200,
  dinner_calories: 400,
  carbohydrates: 150,
  proteins: 100,
  fats: 50
)
DietPlan.create(
  name: 'Plan 2 - Loosing weight',
  category: 'Loosing weight',
  recommended_calories: 1200,
  breakfast_calories: 300,
  lunch_calories: 400,
  snacks_calories: 200,
  dinner_calories: 300,
  carbohydrates: 150,
  proteins: 100,
  fats: 50
)

# Create predefined diet plans for Staying Fit
DietPlan.create(
  name: 'Plan 1 - Staying Fit',
  category: 'Staying Fit',
  recommended_calories: 2000,
  breakfast_calories: 500,
  lunch_calories: 600,
  snacks_calories: 300,
  dinner_calories: 600,
  carbohydrates: 200,
  proteins: 120,
  fats: 70
)

DietPlan.create(
  name: 'Plan 2 - Staying Fit',
  category: 'Staying Fit',
  recommended_calories: 1800,
  breakfast_calories: 450,
  lunch_calories: 550,
  snacks_calories: 250,
  dinner_calories: 550,
  carbohydrates: 180,
  proteins: 110,
  fats: 60
)

# Create predefined diet plans for Gaining Weight
DietPlan.create(
  name: 'Plan 1 - Gaining Weight',
  category: 'Gaining weight',
  recommended_calories: 2500,
  breakfast_calories: 600,
  lunch_calories: 700,
  snacks_calories: 400,
  dinner_calories: 800,
  carbohydrates: 250,
  proteins: 150,
  fats: 100
)

DietPlan.create(
  name: 'Plan 2 - Gaining Weight',
  category: 'Gaining weight',
  recommended_calories: 2800,
  breakfast_calories: 650,
  lunch_calories: 750,
  snacks_calories: 450,
  dinner_calories: 950,
  carbohydrates: 280,
  proteins: 170,
  fats: 120
)
