

def converttoword

  number = 1234

  one = ""
  ten = ""
  hundred = ""
  thousand = ""
  ten_thousand = ""
  lakh = ""
  ten_lakh = ""
  core = ""
  ten_core = ""
  arab = ""
  ten_arab = ""
  kharab = ""
  ten_kharab = ""


  partten = ""
  parthundred = ""
  partthousand = ""
  partlakh = ""
  partcore = ""
  partarab = ""
  partkharab = ""


  amountInWord = ""


  number = number.to_s
  totalmoney = number.split('.')
  main_money = totalmoney[0]

  if totalmoney.length > 1

    partpaisa = totalmoney[1]
    partpaisa = partpaisa.substr(0, 2)
  else
    partpaisa = "0"
  end


  main_money = main_money.to_s

  if (main_money.length > 13)
    puts "Range Exceeds"
    exit(1)


    for i in (main_money.length - 1).downto(0)

      if (i == main_money.length - 1)

        one = main_money[i]


      elsif (i == main_money.length - 2)

        ten = main_money[i]


      elsif (i == main_money.length - 3)

        hundred = main_money[i]

      elsif (i == main_money.length - 4)

        thousand = main_money[i]

      elsif (i == main_money.length - 5)

        ten_thousand = main_money[i]

      elsif (i == main_money.length - 6)

        lakh = main_money[i]

      elsif (i == main_money.length - 7)

        ten_lakh = main_money[i]

      elsif (i == main_money.length - 8)

        core = main_money[i]

      elsif (i == main_money.length - 9)

        ten_core = main_money[i]

      elsif (i == main_money.length - 10)

        arab = main_money[i]

      elsif (i == main_money.length - 11)

        ten_arab = main_money[i]

      elsif (i == main_money.length - 12)

        kharab = main_money[i]

      elsif (i == main_money.length - 13)

        ten_kharab = main_money[i]

      end


      partkharab = (ten_kharab + kharab)
      partarab = (ten_arab + arab)
      partcore = (ten_core + core)
      partlakh = (ten_lakh + lakh)
      partthousand = (ten_thousand + thousand)
      parthundred = (hundred)
      partten = ten + one


      if (partkharab != "")

        if (partkharab[0] == '0')

          partkharab = partkharab.sub('0', '')
        end


      end

      if (partarab != "")

        if (partarab[0] == '0')

          partkharab = partarab.sub('0', '')
        end
      end

      if (partcore != "")

        if (partcore[0] == '0')

          partcore = partcore.sub('0', '')

        end

      end

      if (partlakh != "")
        if (partlakh[0] == '0')

          partlakh = partlakh.sub('0', '')
        end
      end
      if (partthousand != "")


        if (partthousand[0] == '0')

          partthousand = partthousand.sub('0', '')
        end


      end
      if (parthundred != "")

        if (parthundred[0] == '0')

          parthundred = parthundred.sub('0', '')

        end

      end
      if (partten != "")


        if (partten[0] == '0')


          partten = partten.sub('0', '')

        end

      end

      if (partpaisa != "")


        if (partpaisa[0] == '0')


          partpaisa = partpaisa.sub('0', '')

        end


      end


      partkharab = gettext(partkharab)
      partarab = gettext(partarab)
      partcore = gettext(partcore)
      partlakh = gettext(partlakh)
      partthousand = gettext(partthousand)
      parthundred = gettext(parthundred)


      partten = gettext(partten)


      partpaisa = gettext(partpaisa)


      if (partkharab != "")


        amountInWord = partkharab + "खरब "

      end

      if (partarab != "")

        amountInWord += partarab + "अरब "

      end

      if (partcore != "")

        amountInWord += partcore + "करोड "

      end
      if (partlakh != "")


        amountInWord += partlakh + "लाख "

      end
      if (partthousand != "")


        amountInWord += partthousand + "हजार "

      end
      if (parthundred != "")


        amountInWord += parthundred + "सय "

      end
      if (partten != "")


        amountInWord += partten

      end
      if (amountInWord == "")

        amountInWord ="शुन्य"
      end
      amountInWord += " रुपैँया "
      if (partpaisa != "")


        amountInWord += " र " + partpaisa + "  पैशा"

      end


      puts "#{amountInWord}   मात्र"


    end
  end
end
