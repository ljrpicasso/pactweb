puts 'ROLES'
YAML.load(ENV['ROLES']).each do |role|
Role.find_or_create_by_name({ :name => role }, :without_protection => true)
puts 'role: ' << role
end
puts 'DEFAULT USERS'
user = User.find_or_create_by_email :name => ENV['ADMIN_NAME'].dup, :email => ENV['ADMIN_EMAIL'].dup,
:password => ENV['ADMIN_PASSWORD'].dup, :password_confirmation => ENV['ADMIN_PASSWORD'].dup
puts 'admin: ' << user.name
user.add_role :admin
user2 = User.find_or_create_by_email :name => 'Second User', :email => 'user2@example.com', :password => 'changeme', :password_confirmation => 'changeme'
puts 'user2: ' << user2.name
user2.add_role :editor

  p = Plan.find_or_create_by_name({
      name: 'Personal',
      price: 10.00,
      interval: 'month',
      stripe_id: '1',
      features: ['1 Project', '1 Page', '1 User', '1 Organization'].join("\n\n"),
      display_order: 1
    })
    puts "#{p.name} plan added"

  p = Plan.find_or_create_by_name({
      name: 'Team',
#      highlight: true, # This highlights the plan on the pricing page.
      price: 30.00,
      interval: 'month',
      stripe_id: '2',
      features: ['3 Projects', '3 Pages', '3 Users', '3 Organizations'].join("\n\n"),
      display_order: 2
    })
    puts "#{p.name} plan added"

  p = Plan.find_or_create_by_name({
      name: 'Enterprise',
      price: 100.00, 
      interval: 'month',
      stripe_id: '3', 
      features: ['10 Projects', '10 Pages', '10 Users', '10 Organizations'].join("\n\n"), 
      display_order: 3
    })
    puts "#{p.name} plan added"
  