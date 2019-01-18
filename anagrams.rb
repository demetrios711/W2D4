require 'benchmark'

class Array

  def in_order?
    (0..length-2).none? { |i| self[i] > self[i+1] }
  end
  
  def bogo_sort
    copy = self.dup
    copy.shuffle! until copy.in_order?
    copy
    p copy
  end

end

def foo

    str1 = "tupac"
    str2 = "pactu"
    
    time = Benchmark.measure {
        third_anagram?(str1, str2)
    }
    puts time.real.to_s + " Third Anagram "
    time = Benchmark.measure {
        fourth_anagram?(str1, str2)
    }
    puts time.real.to_s + " Fourth Anagram "

end

def first?(str1, str2)

    def in_order?
        (0..length-2).none? { |i| self[i] > self[i+1] }
      end
      
      def bogo_sort
        copy = self.dup
        copy.shuffle! until copy.in_order?
        copy
        p copy
      end
end

def second?(str1, str2)

    def in_order?
        (0..length-2).none? { |i| self[i] > self[i+1] }
      end
      
      def bogo_sort
        copy = self.dup
        copy.shuffle! until copy.in_order?
        copy
        p copy
      end
end


def third_anagram?(str1, str2)
    return str1.split("").sort == str2.split("").sort 
end

def fourth_anagram?(str1, str2)
    char_hash = Hash.new(0)
    str1.chars.each { |char| char_hash[char] += 1 }
    str2.chars.each { |char| char_hash[char] -= 1 }
    char_hash.all? { |_key, val| val == 0}
end

foo