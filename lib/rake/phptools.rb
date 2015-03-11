module PhpTools

  def load
    Dir.glob(File.join("..", "tasks", "*.rake") { |file| load File.expand_path(file, __FILE__) } 
  end

end
