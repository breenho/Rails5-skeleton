#Create Admin user by default
admin_user = AdminUser.find_or_create_by(email: 'admin@cbs.com')
admin_user.update_attributes(password: 'password', password_confirmation: 'password', is_subadmin: false)

#Create App user by default
user = User.find_or_create_by(email: 'user@cbs.com')
user.update_attributes(password: 'password', password_confirmation: 'password')
AdminUser.create!(email: 'admin@example.com', password: 'password', password_confirmation: 'password')