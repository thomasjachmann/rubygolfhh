class Golf

  def self.hole1(a)
    a.inject(1) {|i,m| i * m}
  end
  
  def self.hole2(a)
    (a[0]..a[1]).collect {|i| i if hole3(i.to_s)}.compact
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

end
