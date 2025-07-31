module Bob
  RESPONSES = {
    yelling_question: 'Calm down, I know what I\'m doing!',
    yelling: 'Whoa, chill out!',
    question: 'Sure.',
    empty: 'Fine. Be that way!',
    default: 'Whatever.'
  }.freeze

  def self.hey(remark)
    case
    when yelling_question?(remark) then RESPONSES[:yelling_question]
    when yelling?(remark) then RESPONSES[:yelling]
    when question?(remark) then RESPONSES[:question]
    when empty?(remark) then RESPONSES[:empty]
    else RESPONSES[:default]
    end
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
