list1=[]
numlist=[]
sum=0
string1 = '1.23,2.4,3.123'
list1=string1.split(",")
for i in list1:
    numlist.append(float(i))
for i in numlist:
    sum=sum+i
print(sum)
