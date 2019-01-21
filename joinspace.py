str="My Home Town Is Chennai"
list1=[]
str2=''
def splitstring(str):
    c=raw_input("enter y,yes,yup,yeah to split the string:")
    c.lower()
    if(c[0]=='y'):
        list1=str.split(" ")
        return list1
    else:
        print("Enter a valid input to split")
def joinstring(str):
    list1=str.split(" ")
    c=raw_input("enter y,yes,yup,yeah to join the string:")
    c.lower()
    if(c[0]=='y'):
        deli=raw_input("please enter the delimiter:")
        str2=deli.join(list1)
        print(str2)
    else:
        print("Enter a valid input to join")
print(splitstring(str))
joinstring(str)
