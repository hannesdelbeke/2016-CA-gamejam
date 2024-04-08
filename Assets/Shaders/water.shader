// Upgrade NOTE: replaced '_Object2World' with 'unity_ObjectToWorld'
// Upgrade NOTE: replaced 'mul(UNITY_MATRIX_MVP,*)' with 'UnityObjectToClipPos(*)'

// Shader created with Shader Forge v1.25 
// Shader Forge (c) Neat Corporation / Joachim Holmer - http://www.acegikmo.com/shaderforge/
// Note: Manually altering this data may prevent you from opening it in Shader Forge
/*SF_DATA;ver:1.25;sub:START;pass:START;ps:flbk:,iptp:0,cusa:False,bamd:0,lico:1,lgpr:1,limd:1,spmd:1,trmd:0,grmd:0,uamb:True,mssp:True,bkdf:False,hqlp:False,rprd:False,enco:False,rmgx:True,rpth:0,vtps:0,hqsc:True,nrmq:1,nrsp:0,vomd:0,spxs:False,tesm:0,olmd:1,culm:0,bsrc:0,bdst:1,dpts:2,wrdp:True,dith:0,rfrpo:True,rfrpn:Refraction,coma:15,ufog:True,aust:True,igpj:False,qofs:0,qpre:1,rntp:1,fgom:False,fgoc:False,fgod:False,fgor:False,fgmd:0,fgcr:0.5,fgcg:0.5,fgcb:0.5,fgca:1,fgde:0.01,fgrn:0,fgrf:300,stcl:False,stva:128,stmr:255,stmw:255,stcp:6,stps:0,stfa:0,stfz:0,ofsf:0,ofsu:0,f2p0:False,fnsp:False,fnfb:False;n:type:ShaderForge.SFN_Final,id:8028,x:32719,y:32712,varname:node_8028,prsc:2|diff-9919-RGB,emission-9919-RGB;n:type:ShaderForge.SFN_Sin,id:5676,x:32158,y:33057,varname:node_5676,prsc:2|IN-2747-OUT;n:type:ShaderForge.SFN_FragmentPosition,id:7828,x:31291,y:33037,varname:node_7828,prsc:2;n:type:ShaderForge.SFN_Color,id:9919,x:31948,y:32410,ptovrint:False,ptlb:node_9919,ptin:_node_9919,varname:node_9919,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,c1:0.5,c2:0.5,c3:0.5,c4:1;n:type:ShaderForge.SFN_Noise,id:6001,x:31856,y:33061,varname:node_6001,prsc:2|XY-3497-OUT;n:type:ShaderForge.SFN_Append,id:3497,x:31669,y:33061,varname:node_3497,prsc:2|A-7828-X,B-7828-Z;n:type:ShaderForge.SFN_Multiply,id:5041,x:32514,y:33075,varname:node_5041,prsc:2|A-5676-OUT,B-54-OUT;n:type:ShaderForge.SFN_Slider,id:54,x:32313,y:33318,ptovrint:False,ptlb:strength wave,ptin:_strengthwave,varname:node_54,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0,cur:0.1539369,max:1;n:type:ShaderForge.SFN_Time,id:457,x:31322,y:33352,varname:node_457,prsc:2;n:type:ShaderForge.SFN_Slider,id:2602,x:31211,y:33548,ptovrint:False,ptlb:speed wave,ptin:_speedwave,varname:node_2602,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0,cur:0.1297994,max:1;n:type:ShaderForge.SFN_Multiply,id:8602,x:31561,y:33451,varname:node_8602,prsc:2|A-457-TSL,B-2602-OUT;n:type:ShaderForge.SFN_Append,id:6463,x:31490,y:33176,varname:node_6463,prsc:2|A-7828-X,B-7828-Z;n:type:ShaderForge.SFN_Multiply,id:2747,x:31881,y:33260,varname:node_2747,prsc:2|A-9283-OUT,B-3068-OUT;n:type:ShaderForge.SFN_Vector1,id:3068,x:31766,y:33361,varname:node_3068,prsc:2,v1:10;n:type:ShaderForge.SFN_Add,id:7728,x:32019,y:33149,varname:node_7728,prsc:2|A-6001-OUT,B-2747-OUT;n:type:ShaderForge.SFN_Fresnel,id:2079,x:31825,y:32656,varname:node_2079,prsc:2;n:type:ShaderForge.SFN_Multiply,id:847,x:32162,y:32632,varname:node_847,prsc:2|A-9919-RGB,B-2079-OUT;n:type:ShaderForge.SFN_NormalVector,id:5637,x:30956,y:32357,prsc:2,pt:False;n:type:ShaderForge.SFN_Dot,id:3959,x:31171,y:32397,varname:node_3959,prsc:2,dt:1|A-5637-OUT,B-9110-OUT;n:type:ShaderForge.SFN_LightVector,id:9110,x:30956,y:32492,varname:node_9110,prsc:2;n:type:ShaderForge.SFN_ViewReflectionVector,id:8348,x:30956,y:32612,varname:node_8348,prsc:2;n:type:ShaderForge.SFN_Dot,id:3981,x:31171,y:32551,varname:node_3981,prsc:2,dt:1|A-9110-OUT,B-8348-OUT;n:type:ShaderForge.SFN_Power,id:9312,x:31374,y:32561,varname:node_9312,prsc:2|VAL-3981-OUT;n:type:ShaderForge.SFN_Multiply,id:156,x:31415,y:32397,varname:node_156,prsc:2|A-9919-RGB,B-3959-OUT;n:type:ShaderForge.SFN_Add,id:9283,x:31622,y:33268,varname:node_9283,prsc:2|A-6463-OUT,B-8602-OUT;proporder:9919-54-2602;pass:END;sub:END;*/

Shader "Custom/water" {
    Properties {
        _node_9919 ("node_9919", Color) = (0.5,0.5,0.5,1)
        _strengthwave ("strength wave", Range(0, 1)) = 0.1539369
        _speedwave ("speed wave", Range(0, 1)) = 0.1297994
    }
    SubShader {
        Tags {
            "RenderType"="Opaque"
        }
        LOD 200
        Pass {
            Name "FORWARD"
            Tags {
                "LightMode"="ForwardBase"
            }
            
            
            CGPROGRAM
            #pragma vertex vert
            #pragma fragment frag
            #define UNITY_PASS_FORWARDBASE
            #include "UnityCG.cginc"
            #include "AutoLight.cginc"
            #pragma multi_compile_fwdbase_fullshadows
            #pragma multi_compile_fog
            #pragma exclude_renderers gles3 metal d3d11_9x xbox360 xboxone ps3 ps4 psp2 
            #pragma target 3.0
            uniform float4 _LightColor0;
            uniform float4 _node_9919;
            struct VertexInput {
                float4 vertex : POSITION;
                float3 normal : NORMAL;
            };
            struct VertexOutput {
                float4 pos : SV_POSITION;
                float4 posWorld : TEXCOORD0;
                float3 normalDir : TEXCOORD1;
                LIGHTING_COORDS(2,3)
                UNITY_FOG_COORDS(4)
            };
            VertexOutput vert (VertexInput v) {
                VertexOutput o = (VertexOutput)0;
                o.normalDir = UnityObjectToWorldNormal(v.normal);
                o.posWorld = mul(unity_ObjectToWorld, v.vertex);
                float3 lightColor = _LightColor0.rgb;
                o.pos = UnityObjectToClipPos(v.vertex );
                UNITY_TRANSFER_FOG(o,o.pos);
                TRANSFER_VERTEX_TO_FRAGMENT(o)
                return o;
            }
            float4 frag(VertexOutput i) : COLOR {
                i.normalDir = normalize(i.normalDir);
                float3 normalDirection = i.normalDir;
                float3 lightDirection = normalize(_WorldSpaceLightPos0.xyz);
                float3 lightColor = _LightColor0.rgb;
////// Lighting:
                float attenuation = LIGHT_ATTENUATION(i);
                float3 attenColor = attenuation * _LightColor0.xyz;
/////// Diffuse:
                float NdotL = max(0.0,dot( normalDirection, lightDirection ));
                float3 directDiffuse = max( 0.0, NdotL) * attenColor;
                float3 indirectDiffuse = float3(0,0,0);
                indirectDiffuse += UNITY_LIGHTMODEL_AMBIENT.rgb; // Ambient Light
                float3 diffuseColor = _node_9919.rgb;
                float3 diffuse = (directDiffuse + indirectDiffuse) * diffuseColor;
////// Emissive:
                float3 emissive = _node_9919.rgb;
/// Final Color:
                float3 finalColor = diffuse + emissive;
                fixed4 finalRGBA = fixed4(finalColor,1);
                UNITY_APPLY_FOG(i.fogCoord, finalRGBA);
                return finalRGBA;
            }
            ENDCG
        }
        Pass {
            Name "FORWARD_DELTA"
            Tags {
                "LightMode"="ForwardAdd"
            }
            Blend One One
            
            
            CGPROGRAM
            #pragma vertex vert
            #pragma fragment frag
            #define UNITY_PASS_FORWARDADD
            #include "UnityCG.cginc"
            #include "AutoLight.cginc"
            #pragma multi_compile_fwdadd_fullshadows
            #pragma multi_compile_fog
            #pragma exclude_renderers gles3 metal d3d11_9x xbox360 xboxone ps3 ps4 psp2 
            #pragma target 3.0
            uniform float4 _LightColor0;
            uniform float4 _node_9919;
            struct VertexInput {
                float4 vertex : POSITION;
                float3 normal : NORMAL;
            };
            struct VertexOutput {
                float4 pos : SV_POSITION;
                float4 posWorld : TEXCOORD0;
                float3 normalDir : TEXCOORD1;
                LIGHTING_COORDS(2,3)
                UNITY_FOG_COORDS(4)
            };
            VertexOutput vert (VertexInput v) {
                VertexOutput o = (VertexOutput)0;
                o.normalDir = UnityObjectToWorldNormal(v.normal);
                o.posWorld = mul(unity_ObjectToWorld, v.vertex);
                float3 lightColor = _LightColor0.rgb;
                o.pos = UnityObjectToClipPos(v.vertex );
                UNITY_TRANSFER_FOG(o,o.pos);
                TRANSFER_VERTEX_TO_FRAGMENT(o)
                return o;
            }
            float4 frag(VertexOutput i) : COLOR {
                i.normalDir = normalize(i.normalDir);
                float3 normalDirection = i.normalDir;
                float3 lightDirection = normalize(lerp(_WorldSpaceLightPos0.xyz, _WorldSpaceLightPos0.xyz - i.posWorld.xyz,_WorldSpaceLightPos0.w));
                float3 lightColor = _LightColor0.rgb;
////// Lighting:
                float attenuation = LIGHT_ATTENUATION(i);
                float3 attenColor = attenuation * _LightColor0.xyz;
/////// Diffuse:
                float NdotL = max(0.0,dot( normalDirection, lightDirection ));
                float3 directDiffuse = max( 0.0, NdotL) * attenColor;
                float3 diffuseColor = _node_9919.rgb;
                float3 diffuse = directDiffuse * diffuseColor;
/// Final Color:
                float3 finalColor = diffuse;
                fixed4 finalRGBA = fixed4(finalColor * 1,0);
                UNITY_APPLY_FOG(i.fogCoord, finalRGBA);
                return finalRGBA;
            }
            ENDCG
        }
    }
    FallBack "Diffuse"
    CustomEditor "ShaderForgeMaterialInspector"
}
