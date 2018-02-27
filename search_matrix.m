## Author: nicko <nicko@fedora>
## Created: 2018-02-27



## Test function searches over an array,
## and finds out how many times the given
## value exists in the array.

function [retval] = search_matrix (matrix, search_val)
  
  retval = 0;

  for i=1 : size(matrix,1) 
    for j = 1 : size(matrix,2)
      if ( matrix(i,j) == search_val )
        retval += 1;
      endif
    end
  end
endfunction
