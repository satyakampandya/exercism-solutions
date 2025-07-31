class PhoneNumber
  def self.clean(number)
    # Extract only digits from the input number
    digits = number.scan(/\d/).join
    
    valid = if digits.size == 11
      # Check if the cleaned number is valid with 11 digits (with country code 1)
      digits.match(/1[2-9]\d{2}[2-9]\d{6}$/)
    else
    # Check if the cleaned number is valid with 10 digits (no country code)
    digits.match(/^[2-9]\d{2}[2-9]\d{6}$/)
    end

    valid ? digits.slice(-10, 10) : nil
  end
end
