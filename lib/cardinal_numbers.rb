class Integer

    @@up_to_twenty = [ "", "one", "two", "three", "four", "five", "six", "seven", "eight", "nine" , "ten", "eleven", "twelve", "thirteen", "fourteen", "fifteen", "sixteen", "seventeen", "eighteen", "nineteen" ]
    @@tens = [ "", "", "twenty", "thirty", "forty", "fifty", "sixty", "seventy", "eighty", "ninety" ]
    @@powers = [ "", "thousand", "million", "billion", "trillion" ]

    def to_string
        return "zero" if self.zero?
        result, thousands_counter, parse_by_thousand = "", 0, self.abs
        until parse_by_thousand.zero?
            if thousands_counter.zero? || ( parse_by_thousand % 1000 ).zero?
                result = parse( parse_by_thousand % 1000 ) + result
            else
                result = parse( parse_by_thousand % 1000 ) + " " + @@powers[ thousands_counter ].to_s + ( result.empty? ? result : " " + result )
            end
            parse_by_thousand /= 1000
            thousands_counter += 1
        end
        self.negative? ? "negative " + result : result
    end

    private

    def parse( this_thousand )
        result = ""
        result += @@up_to_twenty[ this_thousand / 100 ].to_s + " hundred" unless ( this_thousand / 100 ).zero?
        result += " " unless this_thousand < 100 || ( this_thousand % 100 ).zero?
        if this_thousand % 100 < 20
            result += @@up_to_twenty[ this_thousand % 100 ].to_s
        else
            result += @@tens[ ( this_thousand % 100 ) / 10  ].to_s
            result += " " + @@up_to_twenty[ this_thousand % 10 ].to_s unless ( this_thousand % 10 ).zero?
        end
        result
    end

end
