require 'csv'
  
module CsvImport  
  class ReviewImport

    attr_reader :filepath, :model

    def initialize(filepath, model)
      @filepath = filepath
      @model    = model
    end
    
    def execute
      raise 'Invalid arguments passed' if !valid_model_class? || !valid_filepath?

      begin
        puts "*********ReviewImport Started*************"
        attributes = []
        
        CSV.foreach(filepath, :headers => true, :col_sep => ",") do |row|
          puts "***********row :: #{row}**********"
          row[0] = Movie.find_or_create_by(name: row[0]).id
          row[1] = User.find_or_create_by(name: row[1]).id
          attributes << { movie_id: row[0], 
            user_id: row[1], 
            rating: row[2], 
            comment: row[3]
          }
        end
        Review.create!(attributes)
        puts "*********ReviewImport Completed*************"

      rescue => e
        puts "************ReviewImport::Exception:: #{e.message}*************"
      end
    end

    private

    def valid_model_class?
      Module.const_get(model).class == Class rescue false
    end

    def valid_filepath?
      File.exist?(filepath)
    end
  end
end
