ActiveAdmin.register User do
  menu priority: 5

  permit_params :email, :password, :password_confirmation

  index do
    selectable_column
    column :email
    actions
  end

  filter :email

  form do |f|
    f.inputs do
      f.input :email
      f.input :password
      f.input :password_confirmation
    end
    f.actions
  end

end
