
# find n:th fibo term to have 1000 digits

n = 0
a, b = 0, 1

while a.to_s.length < 1000
	a, b = b, a + b
	n += 1 
end

p n
