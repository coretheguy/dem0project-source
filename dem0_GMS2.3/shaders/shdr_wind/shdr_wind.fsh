//What's black, white, and red all over?
//The vertex source may have your answer

varying vec2 v_vPosition;

    varying vec2 v_vTexcoord;
    varying vec4 v_vColour;
    uniform float time;
	uniform float amp;
	uniform float freq;
	uniform float wave;
    #define A 0.02  //(A)mplitude
    #define W 32.0  //(W)avelength
    #define F 0.1  //(F)requency
    void main() {
        float D = amp * sin(wave * v_vTexcoord.y + freq * time);  //(D)isplacement
        vec2 T = v_vTexcoord + vec2(D, 0.0); //new (T)exture coordinates
        gl_FragColor = v_vColour * texture2D( gm_BaseTexture, T );
    }