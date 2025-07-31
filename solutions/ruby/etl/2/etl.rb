module ETL
  def self.transform(old_mappings)
    old_mappings.each_with_object({}) do |(weightage, alphabets), new_mappings|
      alphabets.each { |alphabet| new_mappings[alphabet.downcase] = weightage }
    end
  end
end
