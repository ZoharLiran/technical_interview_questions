def flat(a)
  result = []
  a.each{|x| 
    if !(x.respond_to?('each'))
      result << x 
    else
      flat(x).each{|y| result << y}
    end
  }
  return result
end

p flat([1,2,[3,[4,5,6]]])