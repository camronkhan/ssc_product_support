namespace :user do
	desc 'Add administrator: rake add_admin'
	task add_admin: :environment do
		User.create!(user_role_id: 1, core_id: 'administratorTest', first_name: 'Administrator', last_name: 'Test', email: 'admin.test@motorolasolutions.com', password: ENV['CAMRONKHAN_PASSWORD'], password_confirmation: ENV['CAMRONKHAN_PASSWORD'])
	end

	desc 'Add subject matter expert: rake add_sme'
	task add_sme: :environment do
		User.create!(user_role_id: 2, core_id: 'subjectMatterExpertTest', first_name: 'Subject Matter Expert', last_name: 'Test', email: 'sme.test@motorolasolutions.com', password: ENV['CAMRONKHAN_PASSWORD'], password_confirmation: ENV['CAMRONKHAN_PASSWORD'])
	end

	desc 'Add internal reader: rake add_internal'
	task add_internal: :environment do
		User.create!(user_role_id: 3, core_id: 'internalReaderTest', first_name: 'Internal Reader', last_name: 'Test', email: 'int-reader.test@motorolasolutions.com', password: ENV['CAMRONKHAN_PASSWORD'], password_confirmation: ENV['CAMRONKHAN_PASSWORD'])
	end

	desc 'Add external reader: rake add_internal'
	task add_external: :environment do
		User.create!(user_role_id: 4, core_id: 'externalReaderTest', first_name: 'External Reader', last_name: 'Test', email: 'ext-reader.test@motorolasolutions.com', password: ENV['CAMRONKHAN_PASSWORD'], password_confirmation: ENV['CAMRONKHAN_PASSWORD'])
	end
end