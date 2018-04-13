ActiveAdmin.register Answer do

permit_params :list, :of, :attributes, :on, :model

form do |f|
      f.semantic_errors # shows errors on :base
      f.inputs   do
      	f.input :question_id, as: :select, collection:  Question.all.map{|cat| [cat.content, cat.id] unless cat.answers}
      	f.input :content, as: :text
      	f.input :diagram, as: :file
      	f.input :has_diagram
        f.input :correct
      end
      f.actions
end

end
