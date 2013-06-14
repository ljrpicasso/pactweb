ActiveAdmin.register Post do
 
 
  form do |f|
     f.inputs "Post Details" do
        f.input :author
        f.input :title
        f.input :body
        f.input :published
        f.input :categories
        # f.input :comments
     end
     f.actions                         
  end
  
end
