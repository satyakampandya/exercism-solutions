class Sieve
  def initialize(limit)
    @limit = limit
  end

  def primes
    return [] if @limit < 2

    sieve = [true] * (@limit + 1)
    sieve[0] = sieve[1] = false

    (2..Math.sqrt(@limit)).each do |i|
      next unless sieve[i]

      (i**2..@limit).step(i) do |j|
        sieve[j] = false
      end
    end

    sieve.each_index.select { |i| sieve[i] }
  end
end
