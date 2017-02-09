ActiveRecord::Base.transaction do
  User.create(name:                  'admin',
              surname:               'ya_u_mami_ingener',
              adress:                'Bourbon Street',
              email:                 'krasavchik@email.ru',
              birthdate:              Time.now - 28.years,
              password:              'molodec',
              password_confirmation: 'molodec'
  )

  3.times do
    User.create(name:                  Faker::Name.first_name,
                surname:               Faker::Name.last_name,
                adress:                Faker::Address.street_name,
                email:                 Faker::Internet.email,
                birthdate:             Time.now - 28.years,
                password:              'password',
                password_confirmation: 'password'
    )

  end

  10.times do
    Client.create(name:          Faker::Company.name,
                  adress:        Faker::Address.street_address,
                  phone_number:  Faker::PhoneNumber.phone_number,
                  contact:       Faker::Internet.email
    )
  end
  tools = ['Broaching machine', 'Drill press', 'Screw machines', 'Milling machine', 'Saws', 'Lathe']
  10.times do
    Tool.create(country:         Faker::Address.country,
                name:            Faker::App.name,
                brand:           Faker::Vehicle.vin,
                production_year: Faker::Date.between(17.years.ago, Date.today),
                tool_type:       tools.sample
    )
  end
  tools_repairs = [
    'Machine Tool Disassembly and Reassembly',
    'Machine Tool Evaluation/Inspection',
    'Way Work',
    'Spindle Repair and Rebuild',
    'Ball Screw Repair and Replacement',
    'Gearbox Repair and Replacement',
    'Hand Scraping',
    'Grinding',
    'Drives Upgrades',
  ]
  10.times do
    Repair.create(name:     tools_repairs.pop,
                  duration: rand(9) + 1,
                  price:    rand(500.2...3032.9)
    )
  end
  40.times do
    Order.create(tool: Tool.all.to_a.sample,
                 repair: Repair.all.to_a.sample,
                 client: Client.all.to_a.sample,
                 start_date: Faker::Date.between(3.days.from_now, 2.days.ago),
                 user: User.all.to_a.sample
    )
  end
end
