class GenerateReport
  def initialize(data)
    @data = data
  end
  
  def call
    generate_report
    export_to_csv
  end
  
  private
  
  attr_reader :data

  def generate_report
    generator.new(data).generate
  end

  def export_to_csv
    
  end

end


