ActiveAdmin.register Employee do
	permit_params :email, :password, :password_confirmation

	index do
        selectable_column
        column :email do |employee|
          truncate(employee.email, omision: "..", length: 20)
        end
        column :"Total Exams" do |employee|
          employee.exam_logs.count
        end
        column :current_sign_in_at
        column :sign_in_count
        column :created_at
        actions
    end

	form do |f|
      f.semantic_errors # shows errors on :base
      f.inputs   do
      	f.input :email
      	f.input :password
      	f.input :password_confirmation
      end
      f.actions
    end

end
