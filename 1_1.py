list1=[]
oddlist=[]
for i in range(3):
    num=int(input("enter a number:"))
    list1.append(num)
for i in list1:
    if(i%2!=0):
        oddlist.append(i)
#print(oddlist)
if(oddlist!=[]):
    maxnum=max(oddlist)
    print(maxnum)
else:
    print("there are no odd numbers in the list")

