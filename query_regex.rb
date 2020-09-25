require 'json'
$synonyms = JSON.parse(File.read(File.dirname(__FILE__) + '/synonyms.json'))
def query_regex(name)
    regex = name.gsub(/[\s　]/,'').split('').map{|e|
        "(?:"+([e] + $synonyms[e].split("")).join("|")+")" rescue e
    }.join('')
    regex = "^#{regex}$"
    return regex
end

if __FILE__ == $0
    puts query_regex(ARGV[0])
end