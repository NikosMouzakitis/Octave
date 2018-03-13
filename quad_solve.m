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
## @deftypefn {Function File} {@var{retval} =} solutions (@var{input1}, @var{input2})
##
## @seealso{}
## @end deftypefn

## Author: nicko <nicko@fedora>
## Created: 2018-02-28
## -----------
##|quad_solve |
## -----------
## Solves a quadratic equation. 
## In the set of Real Numbers.

function [retval] = quad_solve (a)

if ( size(a) == [1 3] )
 
  if ( (a(1,1) == 0) && (a(1,2) == 0) && (a(1,3) == 0) )
    printf("Equation always true\n");
    return;
  endif
 
  d = a(1, 2)*a(1, 2) - 4*a(1, 1)*a(1, 3);

  if ( d >= 0)
    retval(1, 1) = ( (-a(1, 2) + sqrt(d) )/2*a(1, 1) ); 
    retval(1, 2) = ( (-a(1, 2) - sqrt(d) )/2*a(1, 1) ); 
    
    if ( retval(1,1) == retval(1,2) )
      retval = retval(1,1);
    endif    
    
    
  else
    printf("Not real solutions\n");

  endif
  
else  

  error("Not representing quadratic equation.\n"); 

endif

endfunction
