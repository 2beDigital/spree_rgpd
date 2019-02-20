Spree::UsersController.class_eval do 
	def export_user_data_to_csv
    respond_to do |format|
      format.csv { send_data spree_current_user.to_csv, filename: "user-data-#{Time.now}.csv" }
    end
  end
end