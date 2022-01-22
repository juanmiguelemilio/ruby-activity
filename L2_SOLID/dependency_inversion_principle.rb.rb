class UsageFileParser
  def initialize(clien, parser)
    @client = client
    @parser = parser
  end
  
  def parser(usage_file)
    parser.parse(usage)file
    @client.last_parse = Time.now
    @client.save!
  end
end

class XmlParser
  def parse(usage_file)
    #parse xml
  end
end

class CsvParser
  def parse(usage_file)
    #parse csv
  end
end
