namespace :phptools do

  desc "Run unit-tests with phpunit."
  task :phpunit do
    abort "unit-tests asserted. Build failed!" unless system "vendor/bin/phpunit", "--configuration", "phpunit.xml"
  end  

end
