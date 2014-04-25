def pal(s)
  return false if !s || s.length % 2 != 0
  return true if s && s.length == 2 && s[0] == s[1]
  return s[0] == s[s.length - 1] && pal(s[1..s.length - 2])
  return false
end

p pal("heewweeh")