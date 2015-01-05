def convert_to_word amount_to_be_converted

  number_to_words={'1' => 'एक', '2' => 'दुई', '3' => 'तीन ', '4' => 'चार', '5' => 'पाँच', '6' => 'छ', '7' => 'सात', '8' => 'आठ', '9' => 'नौ', '10' => 'दश', '11' => 'एघार', '12' => 'बाह्र', '13' => 'तेह्र', '14' => 'चौध','15' => 'पन्ध्र', '16' => 'सोह्र', '17' => 'सत्र', '18' => 'अठार', '19' => 'उन्नाईस', '20' => 'बीस', '21' => 'एक्काईस', '22' => 'बाईस', '23' => 'तेईस', '24' => 'चौबीस', '25' => 'पच्चीस', '26' => 'छब्बिस', '27' => 'सत्ताईस', '28' => 'अठ्ठाईस', '29' => 'उनन्तीस', '30' => 'तीस', '31' => 'एकतीस', '32' => 'बत्तीस ', '33' => 'तेतीत्स', '34' => 'चौँतीस', '35' => 'पैँतीस', '36' => 'छत्तीस', '37' => 'सैँतीस', '38' => 'अठ्तीस', '39' => 'उनन्चालीस', '40' => 'चालीस', '41' => 'एकचालीस', '42' => 'बयालीस', '43' => 'त्रियालीस', '44' => 'चौवालीस', '45' => 'पैँचालीस', '46' => 'छयालीस', '47' => 'सत्चालीस', '48' => 'अठ्चालीस ', '49' => 'उनन्पचास ', '50' => 'पचास', '51' => 'एकाउन्न', '52' => 'बाउन्न', '53' => 'त्रिपन्न', '54' => 'चौवन्न', '55' => 'पच्पन्न', '56' => 'छपन्न', '57' => 'सन्ताउन्न', '58' => 'अन्ठाउन्न', '59' => 'उन्साठी', '60' => 'साठी', '61' => 'एकसठ्ठी', '62' => 'बैसठ्ठी', '63' => 'त्रिसठ्ठी', '64' => 'चौँसठ्ठी', '65' => 'पैँसठ्ठी', '66' => 'छैँसठ्ठी', '67' => 'सत्सठ्ठी', '68' => 'अठ्सठ्ठी', '69' => 'उनन्सत्तरी', '70' => 'सत्तरी', '71' => 'एकत्तर', '72' => 'बहत्तर', '73' => 'तिरत्तर', '74' => 'चौरत्तर', '75' => 'पचत्तर', '76' => 'छेयत्तर', '77' => 'सतत्तर', '78' => 'अठत्तर', '79' => 'उनन्असी', '80' => 'असी', '81' => 'एकासी', '82' => 'बयासी', '83' => 'त्रियासी', '84' => 'चौरासी', '85' => 'पचासी', '86' => 'छैयासी', '87' => 'सतासी', '88' => 'अठासी', '89' => 'उनन्नब्बे', '90' => 'नब्बे', '91' => 'एक्कानब्बे', '92' => 'बयानब्बे', '93' => 'त्रियानब्बे', '94' => 'चौरानब्बे ', '95' => 'पन्चानब्बे', '96' => 'छयानन्बे', '97' => 'सन्तानब्बे ', '98' => 'अन्ठानब्बे', '99' => 'उनन्सय'
  }
  amount_to_be_converted =amount_to_be_converted.to_s


  total_amount_in_word = ''

  #Splits the user input to rupaiya and paisa
  rupaiya_part, paisa_part = amount_to_be_converted.split('.')
  if(!paisa_part)
    paisa_part=""
  end

  #this condition checks for the range validation
  unless amount_to_be_converted.length < 17 && rupaiya_part.length <= 13

    puts "Range Exceeds,Please enter upto 13 digits"
    exit(0)
  end

  if (paisa_part)
    paisa_part = paisa_part.slice(0, 2)

  end

  #this makes rupaiya_part to 13 digits and paisa_part to 2 digits so that there is no chance of nill value for all variables
  rupaiya_part = rupaiya_part.rjust(13, '0')

  paisa_part = paisa_part.rjust(2, '0')

  #this statement obtain individual values for all variable
  ten_kharab, kharab, ten_arab, arab, ten_core, core, ten_lakh, lakh, ten_thousand, thousand, hundred, ten, one = rupaiya_part.split('')


  #removezero method removes the 0 that exist on first part of combined variables
  #that means if part_kharab = 01 then it removes 0 from its value and makes part_kharab = 1
  #but it does not removes the 0 on second part that means it converts 01 to 1 but 10 remains 10

  part_kharab = number_to_words["#{removezero(ten_kharab + kharab)}"]
  part_arab = number_to_words["#{removezero(ten_arab + arab)}"]
  part_core = number_to_words["#{removezero(ten_core + core)}"]
  part_lakh = number_to_words["#{removezero(ten_lakh + lakh)}"]
  part_thousand = number_to_words["#{removezero(ten_thousand + thousand)}"]
  part_hundred = number_to_words["#{removezero(hundred)}"]
  part_ten = number_to_words["#{removezero(ten + one)}"]
  paisa_part = number_to_words["#{removezero(paisa_part)}"]


  if (part_kharab)
    total_amount_in_word = part_kharab + "खरब "
  end

  if (part_arab)

    total_amount_in_word += part_arab + "अरब "

  end

  if (part_core)

    total_amount_in_word += part_core + "करोड "

  end
  if (part_lakh)


    total_amount_in_word += part_lakh + "लाख "

  end
  if (part_thousand)


    total_amount_in_word += part_thousand + "हजार "

  end
  if (part_hundred)


    total_amount_in_word += part_hundred + "सय "

  end
  if (part_ten)

    total_amount_in_word += part_ten

  end
  if (total_amount_in_word == "")

    total_amount_in_word ="शुन्य"
  end
  total_amount_in_word += " रुपैँया "
  if (paisa_part)

    total_amount_in_word += " र " + paisa_part + "  पैशा"

  end

  "#{total_amount_in_word}   मात्र"
end

def removezero number
  if number[0]=='0'
    number=number.sub('0', '')
  end
  number

end


puts 'Please enter amount_to_be_converted to convert(123456789.12'
amount = Float(gets) rescue 0
puts  convert_to_word amount
