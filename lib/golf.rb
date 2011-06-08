class Golf

  def self.hole1(a)
    a.inject(1) {|i,m| i * m}
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
