str=raw_input("enter the string:")
def evenodd(str):
    streven=''
    strodd=''
    for i in range(len(str)):
        if(i%2==0):
            streven+=str[i]
        else:
            strodd+=str[i]
    print(streven)
    print(strodd)
evenodd(str)
