class FileMerger
  def initialize(file, merger)
    @file = file
    @merger = merger
  end

  def merge(import_file)
    merger.merge(import_file)
    @file.last merge = Time.now
    @file.save!
  end
end

class FileMerger
  def merge(import_file)
  end
end