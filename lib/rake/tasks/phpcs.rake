namespace :phptools do

  desc "Run Php Code Sniffer for validate PSR2 standard."
  task :phpcs do
    args = {
      "report" => "checkstyle",
      "report-file" => "build/logs/checkstyle.xml",
      "standard" => "PSR2",
      "extensions" => "php",
      "encoding" => "UTF-8",
      "ignore" => "autoload.php"
    }.map{ |k, v| "--#{k}=#{v}" }.join(" ")
    abort "Code standard verification failed!" unless system "vendor/bin/phpcs #{args} src"
  end

end

