// BWOTSHEWCHb

#include <stdio.h>

int main() {
	double ax , ay ;
	scanf("%lf%lf" , &ax , &ay) ;
	double bx , by ;
	scanf("%lf%lf" , &bx , &by) ;
	double cx , cy ;
	scanf("%lf%lf" , &cx , &cy) ;

	double dx_ab = ax - bx ;
	double dy_ab = ay - by ;

	double dx_ac = ax - cx ;
	double dy_ac = ay - cy ;
	
	double dx_bc = bx - cx ;
	double dy_bc = by - cy ;
	// check if its a triangle
	if ( (dy_ab * dx_ac) == (dy_ac * dx_ab) ) {
		printf("NO") ;
	} else {
		// check for at least two equal sides
		double delta_ab = (dx_ab * dx_ab) + (dy_ab * dy_ab) ;
		double delta_ac = (dx_ac * dx_ac) + (dy_ac * dy_ac) ;
		double delta_bc = (dx_bc * dx_bc) + (dy_bc * dy_bc) ;
		if ( delta_ab == delta_ac || delta_ab == delta_bc || delta_ac == delta_bc ) {
			printf("YES") ;	
		} else {
			printf("NO") ;
		}
	}
	return 0 ;
}
