class Sieve
  attr_reader :limit

  def initialize(limit)
    @limit = limit
  end

  # Calculate prime numbers up to the specified limit using the Sieve of Eratosthenes algorithm.
  def primes
    return [] if limit < 2

    # Initialize a sieve of boolean values to track prime numbers.
    sieve = [true] * (limit + 1)
    sieve[0] = sieve[1] = false

    # Iterate through numbers from 2 up to the square root of the limit.
    (2..Math.sqrt(limit)).each do |i|
      next unless sieve[i]

      # Mark multiples of the current prime as non-prime.
      (i**2..limit).step(i) do |j|
        sieve[j] = false
      end
    end

    # Collect and return the prime numbers from the sieve.
    sieve.each_index.select { |i| sieve[i] }
  end
end
