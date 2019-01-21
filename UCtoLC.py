str="My Home Town Is Chennai"
newStr=''
for i in str:
    if(i.isupper()==True):
        newStr+=i.lower()
    elif(i.islower()==True):
        newStr+=i.upper()
    elif(i.isspace()==True):
        newStr+=i
print(newStr)
