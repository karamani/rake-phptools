namespace :phptools do

  desc "Check code quality."
  task :check => [:prepare, :lint, :phpcs, :phpcpd, :phpmd, :phpunit]

end
