# brMap
Tool that shows mapping data using Braille Pattern.  
GitHub: https://github.com/YujiSODE/brMap  
>Copyright (c) 2019 Yuji SODE \<yuji.sode@gmail.com\>  
>This software is released under the MIT License.  
>See LICENSE or http://opensource.org/licenses/mit-license.php  
______
    ⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀
    ⠀⠀⢀⣀⣀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀
    ⠀⠀⢸⣿⣿⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣿⣿⣿⡀⠀⣸⣿⣿⡇⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀
    ⠀⠀⢸⣿⣿⣠⣶⣶⣦⡀⠀⠀⠀⣶⣶⣆⣤⣶⣶⣶⠀⣿⣿⢻⣧⢀⣿⢻⣿⡇⠀⢠⣴⣶⣶⣶⣦⣄⠀⠀⢰⣶⣶⣠⣶⣶⣦⡀⠀⠀
    ⠀⠀⢸⣿⣿⠏⠉⠹⣿⣿⡄⠀⠀⣿⣿⣿⠋⠉⠉⠙⠀⣿⣿⠘⣿⣼⡿⢸⣿⡇⠀⠘⢉⣁⣀⣈⣹⣿⡇⠀⢸⣿⣿⠏⠉⠹⣿⣿⡄⠀
    ⠀⠀⢸⣿⣿⠀⠀⠀⣿⣿⡇⠀⠀⣿⣿⡇⠀⠀⠀⠀⠀⣿⣿⠀⠻⠿⠇⢸⣿⡇⠀⣾⣿⡿⠟⠛⢻⣿⡇⠀⢸⣿⣿⠀⠀⠀⣿⣿⡇⠀
    ⠀⠀⢸⣿⣿⣄⣀⣠⣿⣿⠃⠀⠀⣿⣿⡇⠀⠀⠀⠀⠀⣿⣿⠀⠀⠀⠀⢸⣿⡇⠸⣿⣿⣀⠀⣀⣾⣿⡇⠀⢸⣿⣿⣄⣀⣠⣿⣿⠃⠀
    ⠀⠀⠸⠿⠿⠙⠿⠿⠟⠃⠀⠀⠀⠿⠿⠇⠀⠀⠀⠀⠀⠿⠿⠄⠀⠀⠀⠸⠿⠇⠀⠙⠻⠿⠿⠛⠹⠿⠧⠀⢸⣿⣿⠙⠿⠿⠟⠃⠀⠀
    ⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢸⣿⣿⠀⠀⠀⠀⠀⠀⠀
    ⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠘⠛⠛⠀⠀⠀⠀⠀⠀⠀
    ⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀
______

## 1. Description and scripts
### main script
It requires Tcl 8.6+.  
- `brMap.tcl`: Tool that shows mapping data using Braille Pattern
>**Synopsis**  
>`::brmap::brMap map;`
>
>**Parameters**  
> - `$map`: text map that is composed of 0, 1 and newline character (Unicode U+00000A)

### Tcl
It requires Tcl 8.6+.

#### mapGen: Tool that converts linear numerical data into text map
- `mapGen_upper.tcl`: it returns 1 if the current cell value is more than average of its surroundings or 0
- `mapGen_upperValue.tcl`: it returns 1 if the current cell value is more than given value or 0
- `mapGen_lower.tcl`: it returns 1 if the current cell value is less than average of its surroundings or 0
- `mapGen_lowerValue.tcl`: it returns 1 if the current cell value is less than given value or 0
- `mapGen_gradient.tcl`: it returns 1 if the current cell is in gradient or 0

>**Synopsis**  
>`mapGen_upper width data;`  
>`mapGen_upperValue width value data;`  
>`mapGen_lower width data;`  
>`mapGen_lowerValue width value data;`  
>`mapGen_gradient width data;`  
>
>**Parameters**  
> - `$width`: positive integer width
> - `$value`: numerical value
> - `$data`: numerical list

#### rgbaParse: Tool that converts a linear list of RGBa color values into a numerical list
- `rgbaParse.tcl`: RGBa color: `(R,G,B,a)` => `(R+G+B)*a/255`

>**Synopsis**  
>`rgbaParse rgba;`  
>
>**Parameters**  
> - `$rgba`: a list of RGBa color values (`0` to `255`)

### JavaScript
- `canvasToTcl.js`: Tool that scans a canvas element and generates download link for the RGBa data.
>

## 2. Library list
- 	Sode, Y. 2018-2019. brailleGen/brailleGen_min.tcl, the MIT License: https://gist.github.com/YujiSODE/e3453d43e9733e933c64c52eca45bcfe
