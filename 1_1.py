#Write a program that examines three variables—x, y, and z— and prints the largest odd number among them. 
#If none of them are odd, it should print a message to that effect.

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

