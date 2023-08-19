namespace :import do

  desc "Imports a CSV file into an ActiveRecord table"  
  task :csv_model_import, [:filepath, :model] => [:environment] do |task,args|
    if args[:model] == 'Movie'
    	CsvImport::MovieImport.new(args[:filepath], args[:model]).execute
    else
    	CsvImport::ReviewImport.new(args[:filepath], args[:model]).execute
    end
  end

end
