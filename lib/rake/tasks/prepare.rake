namespace :phptools do

  desc "Prepare for build."
  task :prepare do
    result_dirs = [
      'api',
      'coverage',
      'logs',
      'pdepend',
      'phpdox'
    ]
    result_dirs.each do |dir|
      path = File.join("build", dir)
      FileUtils.rm_rf path
      FileUtils.mkdir_p path
    end
  end

end
