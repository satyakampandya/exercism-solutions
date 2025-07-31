module Bob
  RESPONSES = {
    yelling_question: 'Calm down, I know what I\'m doing!',
    yelling: 'Whoa, chill out!',
    question: 'Sure.',
    empty: 'Fine. Be that way!',
    default: 'Whatever.'
  }.freeze

  def self.hey(remark)
    return RESPONSES[:yelling_question] if yelling_question?(remark)
    return RESPONSES[:yelling] if yelling?(remark)
    return RESPONSES[:question] if question?(remark)
    return RESPONSES[:empty] if empty?(remark)
    RESPONSES[:default]
  end

  private

  def self.question?(remark)
    remark.strip.end_with?('?')
  end

  def self.yelling?(remark)
    remark.match?(/[A-Z]/) && !remark.match?(/[a-z]/)
  end

  def self.yelling_question?(remark)
    yelling?(remark) && question?(remark)
  end

  def self.empty?(remark)
    remark.strip.empty?
  end
end
