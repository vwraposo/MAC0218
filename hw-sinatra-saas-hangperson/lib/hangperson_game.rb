class HangpersonGame

    # add the necessary class methods, attributes, etc. here
    # to make the tests in spec/hangperson_game_spec.rb pass.

    # Get a word from remote "random word" service

    # def initialize()
    # end
    attr_accessor :word, :guesses, :wrong_guesses                                
    attr_reader :word_with_guesses

    def initialize(word)                                                         
        @word = word                                                             
        @guesses = ''                                                            
        @wrong_guesses = ''                                                      
        @word_with_guesses = ''
        word.size.times {@word_with_guesses << '-'}
    end                                                                          

    def guess(char)                                                              
        raise (ArgumentError) if (char =~ /\W/) || (char.nil?) || (char == '')

        valid = false
        char.downcase!
        if (@word.include? char) and !(@guesses.include? char)               
            @guesses << char                                                   

            (0..@word.size).each do |i|
                @word_with_guesses[i] = char if @word[i] == char
            end

            valid = true
        elsif !(@word.include? char) and !(@wrong_guesses.include? char) 
            @wrong_guesses << char                                             
            valid = true
        end                                                                      

        return valid 
    end                                                                          

    def check_win_or_lose 
        return :win if @word_with_guesses == @word
        return :lose if @wrong_guesses.size >= 7
        return :play

    end

    def self.get_random_word
        require 'uri'
        require 'net/http'
        uri = URI('http://watchout4snakes.com/wo4snakes/Random/RandomWord')
        Net::HTTP.post_form(uri ,{}).body
    end

end
