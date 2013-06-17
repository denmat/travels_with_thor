module Orders

  class Asequence < Thor

    desc "mefirst", "number 1"
    method_options :verbose => :boolean, :aliases => '-v'
    def mefirst
      puts "I'm first"
      puts "even more in first cause verbose is on" if options[:verbose]
      invoke :mesecond
    end

    desc "mesecond", "number 2"
    method_options :verbose => :boolean, :aliases => '-v'
    def mesecond
      puts "I'm second"
      invoke :methird 
    end

    desc "methird", "number 3"
    method_options :verbose => :boolean, :aliases => '-v'
    def methird
      say "I'm last"
      set_color "I'm in red", :red
    end
  end

  class Bsequence < Thor::Group
    desc "B 1"
    def banana1
      puts "banana 1"
    end
    desc "B 2"
    def banana2
      puts "banana 2"
    end
  end

end