puts "starting seed"

sectors = ["Administrative",
"Agriculture",
"Arts",
"Construction",
"Customer Service",
"Education",
"Food Service",
"Healthcare",
"Hospitality",
"Human Resources",
"IT",
"Logistics",
"Manufacturing",
"Mechanical",
"Real Estate",
"Restaurant",
"Retail",
"Sales",
"Security",
"Social Care",
"Telecommunications",
"Training",
"Transportation",
"Travel",
"Volunteering"].sort

sectors << "Others"

sectors.each do |e|
  puts "seeding with #{e}"
  Sector.create!(title: e)
end

