## Copyright (C) 2018 nicko
## 
## This program is free software; you can redistribute it and/or modify it
## under the terms of the GNU General Public License as published by
## the Free Software Foundation; either version 3 of the License, or
## (at your option) any later version.
## 
## This program is distributed in the hope that it will be useful,
## but WITHOUT ANY WARRANTY; without even the implied warranty of
## MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
## GNU General Public License for more details.
## 
## You should have received a copy of the GNU General Public License
## along with this program.  If not, see <http://www.gnu.org/licenses/>.

## -*- texinfo -*- 
## @deftypefn {Function File} {@var{retval} =} funtion_test (@var{input1}, @var{input2})
##
## @seealso{}
## @end deftypefn

## Author: nicko <nicko@fedora>
## Created: 2018-02-27



## Function searches over an array,
## and finds out how many times the given
## value exists in the array.

function [retval] = searchfor (matrix, search_val)
  
  retval = 0;
  
  for i=1 : size(matrix,1) 
  
    for j = 1 : size(matrix,2)
  
      if ( matrix(i,j) == search_val )
    
        retval += 1;
    
      endif
    
    end
  
  end

endfunction
