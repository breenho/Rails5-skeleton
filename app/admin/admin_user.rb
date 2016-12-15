ActiveAdmin.register AdminUser do
  permit_params :email, :password, :password_confirmation, :is_subadmin

  scope :super_admin, :default => true do |admin_user|
    admin_user.where(:is_subadmin=>false)
  end
  scope :sub_admin, :default => true do |admin_user|
    admin_user.where(:is_subadmin=>true)
  end

  index do
    selectable_column
    column :email
    column :is_subadmin, :sortable => 'admin_users.is_subadmin' do |admin_user|
        status_tag (admin_user.is_subadmin ? "YES" : "NO"), ((admin_user.is_subadmin) ? :ok : :error)
    end
    column :current_sign_in_at
    column :sign_in_count
    actions
  end

  filter :email
  filter :sign_in_count

  form do |f|
    f.inputs "Admin Details" do
      f.input :email
      f.input :password
      f.input :password_confirmation
      f.input :is_subadmin, :input_html => {:disabled=>true}
    end
    f.actions
  end

  show do
    panel "Admin User Details" do
      attributes_table_for admin_user do
        attributes_table_for admin_user, :email, :sign_in_count, :current_sign_in_at, :current_sign_in_ip, :last_sign_in_at, :last_sign_in_ip, :is_subadmin
      end
    end
  end

end
