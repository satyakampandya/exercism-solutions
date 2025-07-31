class Allergies
  ALLERGIES_HASH = {
    "eggs" => 1,
    "peanuts" => 2,
    "shellfish" => 4,
    "strawberries" => 8,
    "tomatoes" => 16,
    "chocolate" => 32,
    "pollen" => 64,
    "cats" => 128
  }

  def initialize(allergy_num)
    @allergy_num = allergy_num
  end

  def allergic_to?(allergen)
    allergen_value = ALLERGIES_HASH[allergen]
    return false unless allergen_value
    (@allergy_num & allergen_value) > 0
  end

  def list
    ALLERGIES_HASH.keys.select do |allergen|
      allergic_to?(allergen)
    end
  end
end
