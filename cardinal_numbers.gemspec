Gem::Specification.new do |s|
    s.name        = 'cardinal_numbers'
    s.version     = '0.0.1'
    s.date        = '2020-01-24'
    s.summary     = "English-language cardinal numbers"
    s.description = <<-EOF
        A very simple gem that extends class Integer, to give an integer of up to 50 bits (less than one quadrillion,
        or ten to the fifteenth power) the ability to produce a string of its English-language name.
        For example:
            1234567890.to_string
            => "one billion two hundred thirty four million five hundred sixty seven thousand eight hundred ninety"
        EOF
    s.authors     = [ "Josh Frank" ]
    s.email       = 'josh_frank@icloud.com'
    s.files       = [ "lib/cardinal_numbers.rb" ]
    s.homepage    =
        'https://github.com/josh-frank'
    s.license       = 'GPL-3.0-or-later'
end
