# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end

puts "Seeding database..."
# Create a default admin user
admin = Admin.find_or_initialize_by(email: 'admin@prueba.com')
if admin.new_record?
  admin.password = '123456password'
  admin.save!
  puts "Admin user created with email: " + admin.email
end

# Create a default users
10.times do |i|
  user = User.find_or_initialize_by(email: "exampleuser#{i}@example.com")

  if user.new_record?
    user.password = '123456'
    user.save!
    puts "User created with email: " + user.email
  else
    puts "User already exists with email: " + user.email
  end

end


# Create projects types

project_types = ["Préstamo", "Plusvalía", "Alquiler"]

project_types.each do |project_type|
  project = ProjectType.find_or_initialize_by(name: project_type)

  if project.new_record?
    project.description = "Proyecto de tipo #{project_type}"
    project.save!
    puts "Project type created with name: " + project_type
  else
    puts "Project type already exists with name: " + project_type
  end

end

company_types = [
  "Propietario Único",           # Sole Proprietorship
  "Sociedad",                    # Partnership
  "Sociedad de Responsabilidad Limitada (SRL)",  # Limited Liability Company (LLC)
  "Corporación",                 # Corporation
  "Corporación C (C-Corp)",      # C Corporation
  "Corporación S (S-Corp)",      # S Corporation
  "Organización sin Fines de Lucro", # Non-Profit Organization
  "Sociedad Anónima Abierta (SAA)",  # Public Limited Company (PLC)
  "Sociedad Anónima Cerrada (SAC)",  # Private Limited Company (Ltd)
  "Cooperativa",                 # Cooperative
  "Empresa Estatal",             # Government-Owned Enterprise
  "Empresa Conjunta (Joint Venture)", # Joint Venture
  "Startup",                     # Startup
  "Pequeña y Mediana Empresa (PyME)", # Small and Medium-Sized Enterprise (SME)
  "Freelancer/Consultor",        # Freelancer/Consultant
  "Empresa Social",              # Social Enterprise
  "Franquicia"                   # Franchise
]


puts "Creating promotors..."
# Create promotors
5.times do |i|
  Promotor.create!(
    name: Faker::Company.name,
    contact_person: Faker::Name.name,
    email: Faker::Internet.email,
    phone: Faker::PhoneNumber.cell_phone,
    website: Faker::Internet.url,
    company_type: company_types.sample,
    headquarters: Faker::Address.city,
    years_in_business: Random.rand(1..100),
    registered_address: Faker::Address.full_address,
    tax_id: Faker::Company.swedish_organisation_number,
    registration_number: Faker::Company.swedish_organisation_number,
    average_return_rate: Random.rand(1..100),
    total_raised_funds: Random.rand(1..100),
    number_of_investors: Random.rand(1..100)
  )
end


# Create projects
#
puts "Creating projects..."

5.times do |i|
  Project.create!(
    name: Faker::Company.name,
    description: Faker::Company.catch_phrase,
    status: ["Financiado", "Cerrado", "En estudio"].sample,
    admin: Admin.all.sample,
    promotor: Promotor.all.sample,
    location: Faker::Address.full_address,
    target_amount: Random.rand(1..100),
    raised_amount: Random.rand(1..100),
    return_rate: Random.rand(1..100),
    duration: Random.rand(1..100),
    project_type: ProjectType.all.sample
  )
end


User.all.each do |user|
  user.update(
    first_name: Faker::Name.first_name,
    last_name: Faker::Name.last_name,
    second_last_name: Faker::Name.last_name,
    phone_prefix: Faker::PhoneNumber.area_code,
    phone_number: Faker::PhoneNumber.cell_phone,
    preferred_language: ["es", "en"].sample,
    country_code: Faker::Address.country_code
  )
end
