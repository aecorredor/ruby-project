class Timer
  attr_accessor :timer, :seconds

  def initialize
    @seconds = 0
  end

  def time_string
    hours = (@seconds / 3600).floor
    minutes = ((@seconds - (hours * 3600)) / 60).floor
    seconds = @seconds - (hours * 3600) - (minutes * 60)
    "#{fix_time(hours)}:#{fix_time(minutes)}:#{fix_time(seconds)}"
  end

  def fix_time(time)
    return '0' + time.to_s if time.to_s.length == 1
    time
  end
end
