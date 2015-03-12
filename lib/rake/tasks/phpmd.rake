namespace :phptools do

  desc "Run Php Mess Detector."
  task :phpmd do
    args = [
      "xml",
      "codesize",
      "--reportfile",
      "build/logs/pmd.xml"
    ].join(" ")
    puts "Mess Detector warning!" unless system "vendor/bin/phpmd src #{args}"
  end

end
