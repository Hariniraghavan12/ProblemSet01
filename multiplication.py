def multable(num,limit):
    for i in range(1,limit+1):
        print("{}x{}={}".format(num,i,num*i))
num=raw_input("Enter a number:")
if(num.isdigit()):
    limit=raw_input("Enter the limit:")
    if(limit.isdigit()):
        multable(int(num),int(limit))
    else:
        print("enter the valid limit")
else:
    print("enter the valid number")
