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
## @deftypefn {Function File} {@var{retval} =} delta_implementation (@var{input1}, @var{input2})
##
## @seealso{}
## @end deftypefn

## Author: nicko <nicko@fedora>
## Created: 2018-03-13



function [x n] = delta_implementation (k, nmin, nmax)
  
  if ( (k < nmin) || (k>nmax) )
    error("Usage error:\nBoundaries violated\n");
    return;
  endif
  
  n = [ nmin: 1 : nmax]; 
 
  x = zeros(1,length(n));
  
  for i=1 : length(n)
  
    if ( n(i) == k )
      x(i) = 1;
    endif
  endfor
  
  stem(n, x);
  
  endfunction
