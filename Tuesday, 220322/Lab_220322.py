#!/usr/bin/env python
# coding: utf-8

# ## Lab, 22.03.22
# 

# ### Challenge 2 - Sets
# 

# In[311]:


import random


# In[312]:


sample_list_1=random.sample(range(100), k=80)
sample_list_1


# In[313]:


set1=set(sample_list_1)
len(set1)


# In[314]:


sample_list_2=random.sample(range(100), k=80)
set2=set(sample_list_2)
print(set2)


# In[ ]:





# In[315]:


sample_list_2 = []
for i in range(80):
    sample_list_2.append(random.randint(1,100))
print(sample_list_2)
len(sample_list_2)


# In[316]:


set2=set(sample_list_2)
len(set2)


# In[317]:


set3=(set1-set2)
set3


# In[318]:


set4=(set2-set1)
set4


# In[319]:


set5 = []
for i in set1:
      for n in set2:
            if i == n:
                set5.append(i)
print(set5)


# In[320]:


len(set1)


# In[321]:


len(set2)


# In[322]:


len(set3)


# In[323]:


len(set4)


# In[324]:


len(set5)


# In[325]:


set6 = set()
set6.update(set5)
set6.update(set3)
print(set6)
len(set6)


# In[326]:


if(set1) == (set6):
    print("Lists are equal")
else:
    print("Lists are not equal")


# In[327]:


set1.issubset(set2) 


# In[328]:


set1.issubset(set3)


# In[329]:


x = {"apple", "banana", "cherry"}
y = {"google", "microsoft", "apple"}

Aggregated = set3.union(set4)
Aggregated2 = Aggregated.union(set5)
print(Aggregated2)
len(Aggregated2)


# In[330]:


Aggregadted3 = set1.union(set2)
print(Aggregadted3)
len(Aggregadted3)


# In[331]:


set1.pop()
print(set1)


# In[332]:


list_to_remove = [1, 9, 11, 19, 21, 29, 31, 39, 41, 49, 51, 59, 61, 69, 71, 79, 81, 89, 91, 99]


# In[333]:


removed = set(list_to_remove)
print(set1-removed)


# In[ ]:





# In[ ]:





# In[ ]:




