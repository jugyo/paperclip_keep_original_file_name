module Paperclip
  class Attachment
    def assign_with_set_original_filename(file)
      assign_without_set_original_filename(file)
      instance_write(:original_file_name, file.original_filename) if file
    end
    alias_method_chain :assign, :set_original_filename
  end
end
