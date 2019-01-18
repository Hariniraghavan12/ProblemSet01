list1=[]
maxlist=[]
x=int(input("x:"))
y=int(input("y:"))
z=int(input("z:"))
if(x%2!=0):
    list1.append(x)
if(y%2!=0):
    list1.append(y)
if(z%2!=0):
    list1.append(z)
#print(list1)
if(list1!=[]):
    maxlist=max(list1)
    print(maxlist)
else:
    print("the list has only even elements")

    
