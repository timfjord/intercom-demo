class Array
  def flatten_with_recursion
    result = []

    each do |item|
      if item.is_a? Array
        result += item.flatten_with_recursion
      else
        result << item
      end
    end

    result
  end
end
