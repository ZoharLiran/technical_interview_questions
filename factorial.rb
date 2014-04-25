def fac(n)
  return 2 if n == 2
  return n * fac(n - 1)
end

p fac(5)