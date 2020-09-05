
#ifdef GL_ES
precision mediump float;
#endif

uniform vec2 iResolution;


void main( void )
{
	vec2 uv = gl_FragCoord.xy / iResolution.xy;
	uv.x -= 0.5;
	uv.y -= 0.5;
	uv.x *= iResolution.x / iResolution.y;
    float d = length(uv);

    float c = smoothstep(0.49, 0.48, d);
	gl_FragColor = vec4(c ,c,c, 1.0);

}
