class Golf
  class << self
    def hole4 a
      a.map {|x|
        i = x[0]
        i == 109 ? "hat(#{x})" : i == 100 ? x.chop + "(bone))" : 'dead(' + x.split('(')[1]
      }
    end

    def hole1 a
      a.inject(1) {|i,m| i * m}
    end

    def hole2 a
      (a[0]..a[1]).collect {|i| i if hole3(i.to_s)}.compact
    end

    def hole6 a
      f = "fizz"
      b = "buzz"
      (1..a).map {|x|
        x % 5 == 0 ? x % 3 == 0 ? f + b : b : x % 3 == 0 ? f : x
      }
    end

    def hole7 a
      r = []
      l = m = a[0]
      a.each {|x|
        if x > m + 1
          r << (j l,m)
          l = x
        end
        m = x
      }
      r << (j l,m)
      r
    end

    def j l,m
          "#{l}#{m != l ? "-#{m}" : ''}"
    end

    def hole3 s
      s.downcase!
      l = s.length
      a = l/2
      a -= 1 if l % 2 == 0
      a = s[0..(a)]
      b = s[(l/2)..-1]
      a == b.reverse
    end

    def hole5 a
      (1..(a.length)).map {|i| a.each_cons(i).sort_by {|j| j[0]}}.flatten 1
    end

    def hole8 i
      (i-2).times.inject([1, 1]) {|m, x| m << m[-1] + m[-2]}
    end

  end

end
