
module Kernel

  def on_launching file, param={}
    return unless $0 == file
    if block_given?
      yield
    else
      paths = param[:load]
      paths = [paths] if paths.is_a? String
      param[:project] ||= file.split("/")[file.split("/").rindex{|x|paths.include?(x)}-1]
      parts = "/#{param[:project]}/"
      paths.each do |path|
        puts file[0,file.index(parts)+parts.size-1]+"/#{path}"
        $:.unshift file[0,file.index(parts)+parts.size-1]+"/#{path}"
      end
    end
  end

end
