=begin
Write a program to adjust time in a movie subtitle. The input to the program should be path to the subtitle file and
adjust time in seconds (positive value to increase and negative value to decrease time). The program then
creates a new subtitle file with adjusted time without changing.
=end


class EditSubtitles

  def adjustSubtitles  filename, adjustment

    all_Line_of_File = []

    File.foreach(filename).with_index { |line|

      all_Line_of_File.push(line)

    }

    line_number = 0
    all_Line_of_File.each do
    |current_line|

      if (current_line.to_s.include? '-->')


        main_time_array = []
        main_time_array = current_line.to_s.split("-->")
        current_line = ""


        main_time_array.each do
        |main_time|

          if (current_line != "")
            current_line += " --> "
          end

          current_time_array = main_time.to_s.split(":")
          hour = current_time_array[0].to_i
          min = current_time_array[1].to_i
          second_with_millisecond = current_time_array[2].to_s.split(",")
          second_only = second_with_millisecond[0].to_i
          millisecond = second_with_millisecond[1].to_i

          #main logic parts

          millisecond += adjustment
          second_only += millisecond / 1000
          millisecond = millisecond % 1000

          min += second_only / 60
          second_only = second_only % 60

          hour += min / 60
          min = min % 60

          if(hour < 0)
            hour = "00"
            min = "00"
            second_only = "00"
            millisecond = "000"
          end


          if (hour.to_s.length == 0)
            hour = "00#{hour}"
          elsif (hour.to_s.length == 1)
            hour = "0#{hour}"
          end

          if (min.to_s.length == 0)
            min = "00#{min}"
          elsif (min.to_s.length == 1)
            min = "0#{min}"
          end

          if (second_only.to_s.length == 0)
            second_only = "00#{second_only}"
          elsif (second_only.to_s.length == 1)
            second_only = "0#{second_only}"
          end

          if (millisecond.to_s.length==0)
            millisecond="000"
          elsif (millisecond.to_s.length==1)
            millisecond="00#{millisecond}"
          elsif (millisecond.to_s.length==2)
            millisecond="0#{millisecond}"


          end


          current_line += "#{hour}:#{min}:#{second_only},#{millisecond}"


          #end of main logic

        end


        all_Line_of_File[line_number] = current_line
      end
      line_number += 1

    end

#for the new file creation

    File.new("new"+filename, 'w')
    new_file = File.new("new"+filename, 'a+')
    all_Line_of_File.each do
    |current_line|
      new_file.puts(current_line)

# end of the new file creation
    end
    new_file.close
  end

end


puts "Please enter file name in current Directory"
filename=gets.chomp.to_s

if(File::exist?(filename))
  puts "Please enter adjustment time (- for delay)"
  adjustmentTime=gets.chomp.to_i




  s1=EditSubtitles.new
  s1.adjustSubtitles filename, adjustmentTime


else
  puts "File not found "
end



