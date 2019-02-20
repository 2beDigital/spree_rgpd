Spree::Admin::UsersController.class_eval do 
	def export_users_to_csv
    @users = Spree::User.all
    respond_to do |format|
      format.csv { send_data @users.to_csv, filename: "users-#{Date.today}.csv" }
    end
  end
end