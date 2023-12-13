# db/seeds.rb
# db/seeds.rb
nutrition_expert = NutritionExpert.create!(
  name: 'Doctorstrange',
  expertise: 'Nutrition',
  password: 'pass123',
  password_confirmation: 'pass123'
)



HealthExpert.create(
  name: 'Rayeda R.',
  contact_info: 'rayeda@gmail.com / +8801234567',
  organization: 'Healthy Living Center',
  address: '123 Main Street, Dhaka, Bangladesh',
  category: 'Nutrition Expert'
)

HealthExpert.create(
  name: 'Awsaf C.',
  contact_info: 'awsaf@gmail.com.com / +8801234598',
  organization: 'Wellness Clinic',
  address: '456 Elm Street, Dhaka, Bangladesh',
  category: 'Doctor'
)

HealthExpert.create(
  name: 'Sayara C.',
  contact_info: 'sayara@gmail.com.com / +8801234598',
  organization: 'Wellness Clinic',
  address: '456 Elm Street, Dhaka, Bangladesh',
  category: 'Doctor'
)
HealthExpert.create(
  name: 'Abdur K. Halim',
  contact_info: 'abdur.k.halim@gmail.com / +8801234543',
  organization: 'Healthy Living Center',
  address: '123 Main Street, Dhaka, Bangladesh',
  category: 'Nutrition Expert'
)

HealthExpert.create(
  name: 'Mustafizur',
  contact_info: 'mustafizur@gmail.com / +8801234567',
  organization: 'Wellness Clinic',
  address: '456 Elm Street, Dhaka, Bangladesh',
  category: 'Doctor'
)

HealthExpert.create(
  name: 'Shoumick',
  contact_info: 'shoumick@gmail.com / +8801234521',
  organization: 'Wellness Clinic',
  address: '456 Elm Street, Dhaka, Bangladesh',
  category: 'Doctor'
)

HealthExpert.create(
  name: 'Bhowmick',
  contact_info: 'bhowmick@gmail.com / +8801234598',
  organization: 'Healthy Living Center',
  address: '123 Main Street, Dhaka, Bangladesh',
  category: 'Nutrition Expert'
)

HealthExpert.create(
  name: 'Toufiq',
  contact_info: 'toufiq@gmail.com / +8801234576',
  organization: 'Wellness Clinic',
  address: '456 Elm Street, Dhaka, Bangladesh',
  category: 'Fitness Instructor'
)

HealthExpert.create(
  name: 'Abdullah Al Mamun',
  contact_info: 'abdullah.almamun@gmail.com / +8801234589',
  organization: 'Healthy Living Center',
  address: '123 Main Street, Dhaka, Bangladesh',
  category: 'Nutrition Expert'
)

HealthExpert.create(
  name: 'Anika Rahman',
  contact_info: 'anika.rahman@gmail.com / +8801234512',
  organization: 'Wellness Clinic',
  address: '456 Elm Street, Dhaka, Bangladesh',
  category: 'Doctor'
)





# Add more Health Experts as needed

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
DietPlan.create(
  name: 'Plan 3 - Loosing weight',
  category: 'Loosing weight',
  recommended_calories: 1400,
  breakfast_calories: 350,
  lunch_calories: 450,
  snacks_calories: 200,
  dinner_calories: 400,
  carbohydrates: 130,
  proteins: 90,
  fats: 45
)
# Add more plans for Loosing Weight as needed

# Create predefined diet plans for Staying Fit
DietPlan.create(
  name: 'Plan 3 - Staying Fit',
  category: 'Staying Fit',
  recommended_calories: 1900,
  breakfast_calories: 450,
  lunch_calories: 550,
  snacks_calories: 250,
  dinner_calories: 650,
  carbohydrates: 180,
  proteins: 110,
  fats: 60
)

DietPlan.create(
  name: 'Plan 3 - Gaining Weight',
  category: 'Gaining weight',
  recommended_calories: 2600,
  breakfast_calories: 650,
  lunch_calories: 750,
  snacks_calories: 400,
  dinner_calories: 800,
  carbohydrates: 240,
  proteins: 160,
  fats: 110
)
