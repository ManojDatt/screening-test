ActiveAdmin.register Question do
# See permitted parameters documentation:
# https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
#
permit_params :department_id, :content, :diagram, :has_diagram,:id

form do |f|
      f.semantic_errors # shows errors on :base
      f.inputs   do
      	f.input :department_id, as: :select, collection:  Department.all
      	f.input :content
      	f.input :diagram, as: :file
        f.input :has_diagram
      end
      f.actions
    end

end
