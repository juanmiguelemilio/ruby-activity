class FileManager
  def initialize(file, merger, export)
    @file = file
    @merger = merger
    @exporter = exporter
  end

  def merge(file_merge)
    merger.merge(file_merge)
    @file.last merge = Time.now
    @file.save!
  end

  def export(file_export)
    exporter.export(file_export)
    @file.last export = Time.now
    @file.save!
  end
end

class Merger
  def merge(file_merge)

  end
end


class ImportMerger
  def export(file_export)

  end
end