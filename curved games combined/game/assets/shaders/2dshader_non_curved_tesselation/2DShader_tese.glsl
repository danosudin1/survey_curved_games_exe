#version 400 core

layout( isolines ) in;

void main()
{
 float coefficient_0 = gl_TessCoord.x;
 float coefficient_1 = 1.0f - coefficient_0;

 // Transform the vertex spatial position using 
 gl_Position = (gl_in[0].gl_Position * coefficient_0) + (gl_in[1].gl_Position * coefficient_1);
} 
