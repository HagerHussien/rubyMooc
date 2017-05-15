ActiveAdmin.register User do
  permit_params :email, :password, :password_confirmation, :name, :status, :gender, :date_of_birth

  index do
    selectable_column
    id_column
    column :name
    column :email
    column :status
    column :gender
    column :date_of_birth
    column :created_at
    actions
  end

  filter :name
  filter :email
  filter :status
  filter :gender

  form do |f|
    f.inputs "User Details" do
      f.input :name
      f.input :email
      f.input :password
      f.input :password_confirmation
      f.input :gender, :label => 'Gender', :as => :select, :collection => [["Male","male"],["Female","female"]]
      f.input :status, :label => 'Position', :as => :select, :collection => [["Student","student"],["Instructor","instructor"]]
      f.input :date_of_birth
    end 
    f.actions
  end
end
