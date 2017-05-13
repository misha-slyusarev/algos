def elevator_stops(a, b, m, x, y)
  return 2 if 1 == a.length

  ind = 0
  weight = 0

  while weight <= y do
    weight += a[ind]
    ind += 1
  end

  stops =
end



  stops = 0
  pnumber = 0
  last_pnumber = 0
  weight = 0

  while pnumber < a.length do
    while pnumber < a.length && (weight+a[pnumber]) <= y && (pnumber+1) <= x do
      weight += a[pnumber]
      pnumber += 1
    end

    floors = b[last_pnumber, pnumber].uniq
    stops += floors.length + 1
    last_pnumber = pnumber
    weight = 0
  end

   stops
end
