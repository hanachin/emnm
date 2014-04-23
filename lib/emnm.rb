require "emnm/version"

class Emnm
  EMOJI_NUM = %w(zero one two three four five six seven eight nine).map {|e| ":#{e}:" }

  def initialize(nums)
    @nums = nums
  end

  def emoji_nums
    @nums.map do |num|
      num.gsub(/(\d)/) do
        EMOJI_NUM[$1.to_i]
      end
    end
  end

  def to_s
    emoji_nums.join(' ')
  end
end
