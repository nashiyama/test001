def totsl(from, to)
    result = 0
    from.upto(to) do |num|
        if block_given?
            result += yield(num)
        else
            result += num
        end
    end
    return result
end

p total(1, 20)
p total(1,10) {|num| num ** 2}
