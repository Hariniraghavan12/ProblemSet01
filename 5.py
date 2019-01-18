num=int(input("enter a number:"))
for i in range(1,6):
    root=num**(1/float(i))
    if(int(root)**i==num):
        pwr=i
        print("root is:",root)
        print("pwr is:",pwr)
        

    
