#version 400 core

uniform int num_strips;
uniform int num_segments;

layout( vertices=2 ) out;

void main()
{

 // Pass along the vertex position unmodified
 gl_out[gl_InvocationID].gl_Position = gl_in[gl_InvocationID].gl_Position;

 // Define the tessellation levels (this works on
 // ATI Catalyst drivers as of this writing, you may
 // need to swap these)

 gl_TessLevelOuter[1] = float(num_segments);
 gl_TessLevelOuter[0] = float(num_strips);
}
