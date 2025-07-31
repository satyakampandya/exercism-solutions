module ETL
  def self.transform(old_mappings)
    new_mappings = {}
    old_mappings.each_pair do |weightage, alphabets|
      alphabets.each do |alphabet|
        new_mappings[alphabet.downcase] = weightage
      end
    end
    new_mappings
  end
end