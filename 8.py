vect3=[]

def getRatios(vect1,vect2):
    for i in range(0,len(vect1)):
       vect3.append( vect1[i]/vect2[i])
    return vect3
try:
    print(getRatios([1,2,3],[1,2,3]))
except:
    print("caught the exception")
else:
    print("working")
finally:
    print("finallyy")
