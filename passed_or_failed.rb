class PassedOrFailed
  def initialize(hash, num)
    @hash = hash
    @num = num.to_i
  end

  def result
    passed, failed = {}, {}

    @hash.each do |person, number|
      number = number.to_i

      if number >= @num
        passed.store(person, number)
      else
        failed.store(person, number)
      end
    end

    {:passed => passed, :failed => failed}
  end

  alias perform result
end
