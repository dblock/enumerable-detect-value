module Enumerable
  # Returns the first result of the block that is not nil.
  def detect_value(&block)
    each do |el|
      result = yield el
      return result if result
    end
    nil
  end
end
