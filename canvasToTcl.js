/*brMap
* canvasToTcl.js
*===================================================================
*	Copyright (c) 2019 Yuji SODE <yuji.sode@gmail.com>
*
*	This software is released under the MIT License.
*	See LICENSE or http://opensource.org/licenses/mit-license.php
*===================================================================
* Tool that scans a canvas element and generates download link for the RGBa data.
*
*=== Synopsis ===
*`canvasToTcl(canvasId,x0,y0,w,h,element);`
*
*--- Parameters ---
* - canvasId: id of target canvas element to scan
*
* - x0 and y0: top-left coordinates
*   (x0,y0) = (0,0) is default
* - w and h: width and height from top-left coordinates
*   (w,h) = (100,100) is default
* - element: an optional element to add download links
*   body element is default
*
*--- [Output RGBa data in Tcl] ---
* - $rgbaVar: a list of RGBa data (0 to 255)
* - $rgbaWidth: width of target area
*===================================================================
*/
function canvasToTcl(canvasId,x0,y0,w,h,element){
	// - canvasId: id of target canvas element to scan
	// - x0 and y0: top-left coordinates
	//   (x0,y0) = (0,0) is default
	// - w and h: width and height from top-left coordinates
	//   (w,h) = (100,100) is default
	// - element: an optional element to add download links
	//   body element is default
	//======
	x0=!x0?0:x0;
	x0=x0<0?0:Math.floor(x0);
	y0=!y0?0:y0;
	y0=y0<0?0:Math.floor(y0);
	w=!w?100:w;
	w=w<100?100:Math.floor(w);
	h=!h?100:h;
	h=h<100?100:Math.floor(h);
	//======
	var A=window.document.createElement('a'),
		c=document.getElementById(canvasId).getContext('2d'),
		s=`set rgbaWidth ${w};set rgbaVar [list ${c.getImageData(x0,y0,w,h).data.join('\u0020')}];`,
		url=`data:text/plain;base64,${window.btoa(s)}`,
		d=new Date(),fileName=`rgbaVar${new Date().valueOf()}.tcl`;
	element=!element?window.document.body:element;
	//download link
	A.className='brMap_rgbaVar';
	A.download=fileName;
	A.textContent=fileName;
	A.href=url;
	element.appendChild(A);
	A=c=s=url=d=fileName=null;
}
