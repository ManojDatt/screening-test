ActiveAdmin.register ExamLog do
# See permitted parameters documentation:
# https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
#
permit_params :employee_id, :department_id, :result, :total_question, :correct, :id

form do |f|
      f.semantic_errors # shows errors on :base
      f.inputs   do
      	f.input :employee_id, as: :select, collection:  Employee.all
      	f.input :department_id, as: :select, collection:  Department.all
      	f.input :result, as: :select, collection:  ExamLog.results
      	f.input :total_question
        f.input :correct
      end
      f.actions
    end
end
