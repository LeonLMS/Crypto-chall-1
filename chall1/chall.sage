import random
from Crypto.Util.number import getPrime

FLAG=b"btc{test}"
p=getPrime(512)
q=getPrime(512)
N=p*q
e=65337
enc=[]
public=[]
for f in FLAG:
    enc.append(pow(f,e,N))

for i in range(len(enc)):
    rand = random.getrandbits(1000*int(len((public))+1))
    enc[i]=(enc[i]*rand)
    public.append(rand)


ct=sum(enc)
print(f"{ct=}")
print(f"{public=}")



