ActiveAdmin.register Post do

  index do
    column :author
    column :title
    column :published
    column :updated_at
    # column post.categories.join(', ')
    actions
  end                               
  
  show do |post| 
    attributes_table do
      row :title
      row :body
      row :author
      row :published
      row :created_at
      row :updated_at
    end
   
    panel 'Categories' do
      if post.categories and post.categories.count > 0
        div :class => "panel_contents" do
          div :class => "attributes_table" do
            table do
              tbody do
                post.categories.each do |cat|
                  tr do
                    td do
                      cat.title
                    end
                  end
                end
              end
            end
          end
        end
      else
        h3 "No categories selected"
      end
    end
    
    active_admin_comments
  end
   
  form do |f|
     f.inputs "Post Details" do
        f.input :author
        f.input :title
        f.input :body
        f.input :published
        f.input :categories, :as => :check_boxes
     end
     f.actions                         
  end
  
end

