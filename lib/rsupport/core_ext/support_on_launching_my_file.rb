
module Kernel
  def load_path_on_launching_my_file project, path, file
    return unless $0 == file
    parts = "#{project}/#{path}"
    $:.unshift file[0,file.index(parts)+parts.size]
  end

  def exec_on_launching_my_file file
    return unless $0 == file
    yield
  end
end
