user_input=input("enter a number:")
temp=user_input
sum=0
if(isinstance(temp,int)):
    while(temp!=0):
        dig=temp%10
        sum=sum+dig
        temp=temp/10    
print(sum)

