Dir.glob(File.join(File.expand_path("tasks", File.dirname(__FILE__)), "*.rake")) { |file| load file }
