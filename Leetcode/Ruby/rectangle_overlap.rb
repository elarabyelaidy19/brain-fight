def rectangle_overlap(rec1, rec2) 
  x1 = rec1[0], y1 = rec1[1], x2 = rec1[2], y2 = rec1[3] 
  x3 = rec2[0], y3 = rec2[1], x4 = rec2[2], y4 = rec2[3] 

  return (x2 > x3) && (x4 > x1) && (y1 < y4) && (y2 > y3) 
end 