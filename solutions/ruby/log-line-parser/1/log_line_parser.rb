class LogLineParser
  def initialize(line)
    @line = line
  end

  def message
    @line.gsub("[ERROR]: ", "").gsub("[INFO]: ", "").gsub("[WARNING]: ", "").strip
  end

  def log_level
    if @line.start_with? "[ERROR]"
      "error"
    elsif @line.start_with? "[INFO]"
      "info"
    else
      "warning"
    end
  end

  def reformat
    "#{message} (#{log_level})"
  end
end
