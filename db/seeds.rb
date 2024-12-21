admin_email = "johndoe@gmail.com"
admin_password = "123456"

admin = User.find_or_create_by(email: admin_email) do |user|
  user.password = admin_password
end

admin.add_role(:admin) unless admin.has_role?(:admin)

puts "Admin user created with email: #{admin_email}"
