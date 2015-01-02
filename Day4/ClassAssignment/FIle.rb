module MyFileModule

  class File

    attr_accessor :file_name

    def creates_file
      ::File.new(file_name,'w')
      puts "#{file_name} is created successfully"
    end

    def edit_files
      newfile= ::File.new(file_name,'a+')

      p "File is opened for editing mode.PleASE ENTER THE CONTENT YOU WANT TO ADD"
      contetnt=gets

      newfile.print(contetnt)


    end


    def remove_file
      ::File.delete(file_name)
    end
  end


end



newfile=MyFileModule::File.new
newfile.file_name="testfile.txt"
newfile.creates_file
newfile.edit_files


#newfile.remove_file