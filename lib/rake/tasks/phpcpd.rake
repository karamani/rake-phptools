namespace :phptools do

  desc "Find duplicate code."
  task :phpcpd do
    args = [
      "--log-pmd",
      "build/logs/pmd-cpd.xml",
      "src"
    ].join(" ")
    puts "Warning! Duplicate code found!" unless system "vendor/bin/phpcpd #{args}"
  end

end
