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

## 1. Description and Scripts
### main script
It requires Tcl 8.6+.  
- `brMap.tcl`: Tool that shows mapping data using Braille Pattern.
>Synopsis
>`::brmap::brMap map;`
>
>--- Parameters ---
> - $map: text map that is composed of 0, 1 and newline character (Unicode U+00000A)

### Tcl
It requires Tcl 8.6+.  
#### mapGen: Tool that converts linear numerical data into text map
- `mapGen_upper.tcl`:
>

### JavaScript
- `canvasToTcl.js`: Tool that scans a canvas element and generates download link for the RGBa data.
>

## 2. Library list
- 	Sode, Y. 2018-2019. brailleGen/brailleGen_min.tcl, the MIT License: https://gist.github.com/YujiSODE/e3453d43e9733e933c64c52eca45bcfe
