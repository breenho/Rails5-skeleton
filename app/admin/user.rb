ActiveAdmin.register User do
  menu :priority => 3

  permit_params :email,:password,:password_confirmation,:first_name,:last_name,:address_line_1,:address_line_2,:mobile_number,:city,:state,:country,:zip_code

  index do
    selectable_column
    column :email
    column :first_name
    column :last_name
    column :mobile_number
    column :current_sign_in_at
    column :sign_in_count
    actions
  end

  filter :email
  filter :first_name
  filter :last_name
  filter :city
  filter :state
  filter :country
  filter :zip_code
  filter :sign_in_count  

  show do
    panel "User Details" do
      attributes_table_for user do
      	attributes_table_for user, :email, :first_name, :last_name, :address_line_1, :address_line_2, :mobile_number, :city, :state, :country, :current_sign_in_at, :current_sign_in_ip, :last_sign_in_at, :last_sign_in_ip, :sign_in_count
      end
    end
  end

  form do |f|
    f.inputs "User Details" do
      f.input :email
      f.input :password
      f.input :password_confirmation
      f.input :first_name
      f.input :last_name
      f.input :address_line_1
      f.input :address_line_2
      f.input :mobile_number
      f.input :city
      f.input :state
      f.input :country
      f.input :zip_code
      f.actions
  	end
  end
end
