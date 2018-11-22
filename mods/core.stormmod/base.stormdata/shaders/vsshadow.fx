//==================================================================================================
//
// Copyright Blizzard Entertainment 2003-2005
//
// This is the shader code for shadows.
//==================================================================================================

#ifndef VS_SHADOW
#define VS_SHADOW

#ifdef VERTEX_SHADER

#include "ShaderSystem.fx"

//==================================================================================================
// Uniform parameters.

//--------------------------------------------------------------------------------------------------
// Shadow map UV coordinates.
float4 EmitShadowMapUV( float3 position ) {
    float4 val = mul( float4(position, 1.0), p_mShadowTransform );
    return val / val.w;
}

#endif  // VERTEX_SHADER
#endif  // VS_SHADOW