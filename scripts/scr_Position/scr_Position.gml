function scr_Position(_x, _y) constructor{
	xx = _x;
	yy = _y;
	
	set = function(_x, _y){
		xx = _x;
		yy = _y;
	}
	
	getX = function(){
		return xx;
	}
	
	getY = function(){
		return yy;
	}
	
	normalize = function(){
		l = sqrt(xx*xx + yy*yy)
		xx /= l
		yy /= l
	}
}
