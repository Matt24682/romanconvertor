def fromRoman(romanNumber)
    numberValue=0
    temp=romanNumber.length
    i=0
    while i<temp
        if romanNumber[i]!="M" && romanNumber[i]!="D" && romanNumber[i]!="C" && romanNumber[i]!="L" && romanNumber[i]!="X" && romanNumber[i]!="V" && romanNumber[i]!="I"
            raise TypeError
        elsif romanNumber[i]=="C" && romanNumber[i+1]=="M"
            numberValue=numberValue+900
            i+=2
        elsif romanNumber[i]=="X" && romanNumber[i+1]=="M"
            numberValue=numberValue+990
            i+=2
        elsif romanNumber[i]=="M"
            numberValue=numberValue+1000
            i+=1
        elsif romanNumber[i]=="C" && romanNumber[i+1]=="D"
            numberValue=numberValue+400
            i+=2
        elsif romanNumber[i]=="D"
            numberValue=numberValue+500
            i+=1
        elsif romanNumber[i]=="X" && romanNumber[i+1]=="C"
            numberValue=numberValue+90
            i+=2
        elsif romanNumber[i]=="C"
            numberValue=numberValue+100
            i+=1
        elsif romanNumber[i]=="L"
            numberValue=numberValue+50
            i+=1
        elsif romanNumber[i]=="X" && romanNumber[i+1]=="L"
            numberValue=numberValue+40
            i+=2
        elsif romanNumber[i]=="X"
            numberValue=numberValue+10
            i+=1
        elsif romanNumber[i]=="I" && romanNumber[i]=="X"
            numberValue=numberValue+9
            i+=2
        elsif romanNumber[i]=="V"
            numberValue=numberValue+5
            i+=1
        elsif romanNumber[i]=="I" && romanNumber[i+1]=="V"
            numberValue=numberValue+4
            i+=2
        elsif romanNumber[i]=="I"
            numberValue=numberValue+1
            i+=1
        end
    end
    return numberValue
end

def toRoman(arabicNumber)
    if arabicNumber>3999 or arabicNumber<1
        raise RangeError
    else
        emptyString=""
        while arabicNumber>0
            if arabicNumber>=1000
                emptyString=emptyString+"M"
                arabicNumber=arabicNumber-1000
            elsif arabicNumber>=990
                emptyString=emptyString+"XM"
                arabicNumber=arabicNumber-990
            elsif arabicNumber>=900
                emptyString=emptyString+"CM"
                arabicNumber=arabicNumber-900
            elsif arabicNumber>=500
                emptyString=emptyString+"D"
                arabicNumber=arabicNumber-500
            elsif arabicNumber>=400
                emptyString=emptyString+"CD"
                arabicNumber=arabicNumber-400
            elsif arabicNumber>=100
                emptyString=emptyString+"C"
                arabicNumber=arabicNumber-100
            elsif arabicNumber>=90
                emptyString=emptyString+"XC"
                arabicNumber=arabicNumber-90
            elsif arabicNumber>=50
                emptyString=emptyString+"L"
                arabicNumber=arabicNumber-50
            elsif arabicNumber>=40
                emptyString=emptyString+"XL"
                arabicNumber=arabicNumber-40
            elsif arabicNumber>=10
                emptyString=emptyString+"X"
                arabicNumber=arabicNumber-10
            elsif arabicNumber==9
                emptyString=emptyString+"IX"
                arabicNumber=arabicNumber-9
            elsif arabicNumber>=5
                emptyString=emptyString+"V"
                arabicNumber=arabicNumber-5
            elsif arabicNumber==4
                emptyString=emptyString+"IV"
                arabicNumber=arabicNumber-4
            else
                emptyString=emptyString+"I"
                arabicNumber=arabicNumber-1
            end
        end
        return emptyString
    end
end