def isIn(str1,str2):
    list1=list(str1)
    list2=list(str2)
    
    list1.sort()
    list2.sort()
   
    if(list1==list2):
        print("Anagram")
    else:
        print("not an Anagram")

isIn("silent","listen")
    
