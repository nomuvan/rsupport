
module Kernel
  def load_path_on_launching_my_file project, paths, file
    return unless $0 == file
    parts = "/#{project}/"
    paths = [paths] if paths.is_a? String
    paths.each do |path|
      $:.unshift file[0,file.index(parts)+parts.size+1]+"/#{path}"
    end
  end

  def exec_on_launching_my_file file
    return unless $0 == file
    yield
  end
end
