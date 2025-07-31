class LogLineParser
  def initialize(line)
    @line = line
  end

  def message
    match_data = @line.match(/:(.+)/)
    match_data ? match_data[1].strip : nil
  end

  def log_level
    match_data = @line.match(/\[(.+?)\]/)
    match_data ? match_data[1].downcase : nil
  end

  def reformat
    "#{message} (#{log_level})"
  end
end
