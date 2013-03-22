require 'rails/generators'
require 'rails/generators/migration'


class FulltextRowsGenerator < Rails::Generators::Base
  include Rails::Generators::Migration
  argument :models, :type => :array
  source_root File.expand_path("../templates", __FILE__)
  
  attr_accessor :models
 
  def initialize(*runtime_args)
    super(*runtime_args)
    #puts @models.to_json
  end

  def create_model_migrations
    migration_template("migrate.rb", 'db/migrate/create_fulltext_rows.rb')

  end
  
  def self.next_migration_number(path)
    @migration_number = Time.now.utc.strftime("%Y%m%d%H%M%S").to_i.to_s
  end

  protected 
  def banner
    "Usage: #{$0} [model1 model2 model3 ...]" 
  end 

    
end

