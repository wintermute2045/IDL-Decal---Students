pro error1 ;prints a list of floats from 0 to 9
   x = findgen(10) ;makes array from 0 to 9
   for i = 0, (n_elements(x) - 1) do begin ;problem was that the index was too big for array
       print, x[i]
   endfor
end


pro error2 ;prints word 'hello' when it works properly;
   print, 'hello';problems were missing comma and apostropes
end

pro error3 ;supposed to print full string
   print, '3 divided by 2 is' + ' 3/2' ;+ 3/2 was not in string notation  
end


pro error4; assigns x and y arrays
   x = ['1', '2', '3'] ;problem was that one was in string and one not
   y = ['a', 'b', 'c']
   z = [x, y]
end


pro error5 ;creates 1000x1000 array of all 0's, creates an array of that array's dimensions, takes any element less than 90 and makes it the sine of those two numbers, then looks at the array again and takes elements that do not equal zero and makes them 5.
  a = fltarr(1000,1000)
  s = size(a)
  for i = 0, s[1] - 1 do begin
     for j = 0, s[2] - 1 do begin 
        if i+j LT 90 then begin
           a[i,j] = sin(i+j)
        endif
     endfor
endfor
  for i=0, s[1] - 1 do begin
     for j=0, s[2] - 1 do begin
        if a[i, j] NE 0 then begin
           a[i,j] = 5
        endif
     endfor
  endfor
end
