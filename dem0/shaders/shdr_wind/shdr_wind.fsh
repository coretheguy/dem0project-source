//What's black, white, and red all over?
//The vertex source may have your answer

varying vec2 v_vPosition;
varying vec4 v_vColour;
varying vec2 v_vTexcoord;

uniform float time;
uniform float panic;
vec2 Size = vec2(256,6);
vec2 Wave = vec2(500,1);
#define WAVELENGTH 48.0
#define AMPLITUDE 0.005

void main()
{
	vec2 uv = v_vTexcoord;
    uv.x += sin(WAVELENGTH * uv.y + 3.0 * time * panic) * AMPLITUDE * panic;
	
    //vec2 Coord = v_vTexcoord + vec2(cos((v_vPosition.y/Wave.x+Time)*6.2831)*Wave.y,0)/Size*(1.0-v_vTexcoord.y);
    //gl_FragColor = v_vColour * texture2D( gm_BaseTexture, Coord);
	
	// i have no idea what any of this does
}