ActiveAdmin.register Course do

  permit_params :user_id, :title, :description

  index do
    selectable_column
    id_column
    column :title
    column :description
    column :created_at
    column :updated_at
    actions
  end

  filter :user_id

  form do |f|
    f.inputs "Course Details" do
      f.input :user_id, :label => 'User', :as => :select, :collection => User.all.where('users.status="instructor"').map{|u| ["#{u.name}", u.id]}
      f.input :title
      f.input :description
    end
    f.actions
  end


end
