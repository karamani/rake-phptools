namespace :phptools do

  desc "Run Php lint for validate php syntax."                                                                                                             
  task :lint do                                                                                                                                            
    valid = true                                                                                                                                           
    ["src", "tests"].each do |srcdir|                                                                                                                      
      Dir.glob(File.join("#{srcdir}", "**", "*.php")) { |file| valid &= system "php -l #{file}" }                                                          
    end                                                                                                                                                    
    abort "Php syntax error!" unless valid                                                                                                                 
  end 
    
end
