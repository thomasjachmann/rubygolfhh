class Golf
  def self.hole4 a
    a.map do |x|
      case x[0]
        when 109 then
          "hat(#{x})"  
        when 100 then
          x.chop + "(bone))"
        else
          'dead(' + x.split('(')[1]
      end
    end
    
  end

  def self.hole1(a)
    a.inject(1) {|i,m| i * m}
  end
  
  def self.hole2(a)
    (a[0]..a[1]).collect {|i| i if hole3(i.to_s)}.compact
  end

  def self.hole6 a
    (1..a).map do |x|
      if x % 5 == 0
        if x % 3 == 0
          "fizzbuzz"
        else
          "buzz"
        end
      elsif (x % 3 == 0)
        "fizz"
      else 
        x
      end
    end
  end
  
  def self.hole3(s)
    s.downcase!
    l = s.length
    a = l/2
    a -= 1 if l % 2 == 0
    a = s[0..(a)]
    b = s[(l/2)..-1]
    a == b.reverse
  end
  
  def self.hole5(a)
    (1..(a.length)).map {|i| a.each_cons(i).sort_by {|j| j[0]}}.flatten 1
  end
  
  def self.hole8(i)
    (i-2).times.inject([1, 1]) {|m, x| m << m[-1] + m[-2]}
  end

end
