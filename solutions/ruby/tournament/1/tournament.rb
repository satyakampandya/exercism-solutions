=begin
Write your code for the 'Tournament' exercise in this file. Make the tests in
`tournament_test.rb` pass.

To get started with TDD, see the `README.md` file in your
`ruby/tournament` directory.
=end

# frozen_string_literal: true

# Write your code for the 'Tournament' exercise in this file. Make the tests in
# `tournament_test.rb` pass.
#
# To get started with TDD, see the `README.md` file in your
# `ruby/tournament` directory.

module Tournament
  RESULT_FORMAT = "%-31s|%3s |%3s |%3s |%3s |%3s\n"

  def self.tally(input)
    return headers if input.gsub("\n", '').empty?

    matches = input.split(/\n/)
    outcome = {}

    matches.each do |match|
      team1, team2, result = match.split(';')
      outcome[team1] = Hash.new(0) unless outcome.key?(team1)
      outcome[team2] = Hash.new(0) unless outcome.key?(team2)
      outcome[team1][:matches_played] += 1
      outcome[team2][:matches_played] += 1

      case result
      when 'win'
        outcome[team1][:wins] += 1
        outcome[team1][:points] += 3
        outcome[team2][:losses] += 1
      when 'loss'
        outcome[team1][:losses] += 1
        outcome[team2][:wins] += 1
        outcome[team2][:points] += 3
      when 'draw'
        outcome[team1][:draws] += 1
        outcome[team1][:points] += 1
        outcome[team2][:draws] += 1
        outcome[team2][:points] += 1
      end
    end

    sorted_outcomes = outcome.sort_by { |team, data| [-data[:points], team] }
    headers + sorted_outcomes.map { |team, data| format_row(team, data) }.join
  end

  def self.headers
    format_row('Team', { matches_played: 'MP', wins: 'W', draws: 'D', losses: 'L', points: 'P' })
  end

  def self.format_row(row_title, data)
    format(RESULT_FORMAT, row_title, *data.values_at(:matches_played, :wins, :draws, :losses, :points).map(&:to_s))
  end
end
