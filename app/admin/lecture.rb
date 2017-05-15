ActiveAdmin.register Lecture do
  permit_params :course_id, :user_id, :title, :content

  filter :course_id
  filter :user_id

  form do |f|
    f.inputs "Lecture Details" do
      f.input :course_id, :label => 'Course', :as => :select, :collection => Course.all.map{|c| ["#{c.title}", c.id]}
      f.input :user_id, :label => 'User', :as => :select, :collection => User.all.where('users.status="instructor"').map{|u| ["#{u.name}", u.id]}
      f.input :title
      f.input :content
    end
    f.actions
  end
end
