class Proverb
  attr_reader :verbs

  def initialize(*verbs, qualifier: "")
    @verbs = verbs
    @qualifier = qualifier
  end

  def to_s
    max_verbs = verbs.count
    verbs.map.with_index do |verb, index|
      if (index + 1) < max_verbs
        "For want of a #{verb} the #{verbs[index + 1]} was lost.\n"
      else
        "And all for the want of a #{@qualifier} #{verbs.first}.".squeeze " "
      end
    end.join("")
  end
end
