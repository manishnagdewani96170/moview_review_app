require 'csv'
  
module CsvImport  
  class MovieImport

    attr_reader :filepath, :model

    def initialize(filepath, model)
      @filepath = filepath
      @model    = model
    end
    
    def execute
      raise 'Invalid arguments passed' if !valid_model_class? || !valid_filepath?

      begin
        puts "*********MovieImport Started*************"
        attributes = []
        
        CSV.foreach(filepath, :headers => true, :col_sep => ",") do |row|
          puts "***********row :: #{row}**********"
          row[3] = Actor.find_or_create_by(name: row[3]).id
          row[4] = Director.find_or_create_by(name: row[4]).id
          attributes << { name: row[0], 
            description: row[1], 
            year: row[2], 
            actor_id: row[3], 
            director_id: row[4], 
            filming_location: row[5], 
            country: row[6]
          }
        end
        Movie.create!(attributes)
        puts "*********MovieImport Completed*************"

      rescue => e
        puts "************MovieImport::Exception:: #{e.message}*************"
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
