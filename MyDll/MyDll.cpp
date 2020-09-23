#include <windows.h>

// Dll_FlipString -> Reverses the characters of a given string
int __stdcall Dll_FlipString(LPSTR pString)
{
	_strrev(pString);
	// returns a TRUE value, (its only for showing u
	// how u can use Enumerations!:) )
	return 1;
}

// Dll_Multiply -> Returns a multiplication from pa and pb
float __stdcall Dll_Multiply(float pa, float pb)
{
	float lRet;
	lRet = pa*pb;
	return lRet;
}
