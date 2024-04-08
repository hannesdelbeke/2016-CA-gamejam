// Upgrade NOTE: replaced '_Object2World' with 'unity_ObjectToWorld'
// Upgrade NOTE: replaced 'mul(UNITY_MATRIX_MVP,*)' with 'UnityObjectToClipPos(*)'

// Shader created with Shader Forge v1.25 
// Shader Forge (c) Neat Corporation / Joachim Holmer - http://www.acegikmo.com/shaderforge/
// Note: Manually altering this data may prevent you from opening it in Shader Forge
/*SF_DATA;ver:1.25;sub:START;pass:START;ps:flbk:,iptp:0,cusa:False,bamd:0,lico:1,lgpr:1,limd:1,spmd:1,trmd:0,grmd:0,uamb:True,mssp:True,bkdf:False,hqlp:False,rprd:False,enco:False,rmgx:True,rpth:0,vtps:0,hqsc:True,nrmq:1,nrsp:0,vomd:0,spxs:False,tesm:0,olmd:1,culm:0,bsrc:0,bdst:1,dpts:2,wrdp:True,dith:0,rfrpo:True,rfrpn:Refraction,coma:15,ufog:True,aust:True,igpj:False,qofs:0,qpre:1,rntp:1,fgom:False,fgoc:False,fgod:False,fgor:False,fgmd:0,fgcr:0.5,fgcg:0.5,fgcb:0.5,fgca:1,fgde:0.01,fgrn:0,fgrf:300,stcl:False,stva:128,stmr:255,stmw:255,stcp:6,stps:0,stfa:0,stfz:0,ofsf:0,ofsu:0,f2p0:False,fnsp:False,fnfb:False;n:type:ShaderForge.SFN_Final,id:4013,x:33801,y:32686,varname:node_4013,prsc:2|diff-7988-OUT,emission-2055-OUT,voffset-312-OUT;n:type:ShaderForge.SFN_Color,id:1304,x:32187,y:32517,ptovrint:False,ptlb:Color,ptin:_Color,varname:node_1304,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,c1:1,c2:1,c3:1,c4:1;n:type:ShaderForge.SFN_FragmentPosition,id:5485,x:30860,y:32909,varname:node_5485,prsc:2;n:type:ShaderForge.SFN_Sin,id:4379,x:31903,y:33279,varname:node_4379,prsc:2|IN-5988-OUT;n:type:ShaderForge.SFN_Append,id:8213,x:31737,y:33067,varname:node_8213,prsc:2|A-8982-R,B-8982-B;n:type:ShaderForge.SFN_Noise,id:7938,x:31903,y:33079,varname:node_7938,prsc:2|XY-8213-OUT;n:type:ShaderForge.SFN_Slider,id:6532,x:31975,y:33473,ptovrint:False,ptlb:noise,ptin:_noise,varname:node_6532,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0,cur:0,max:1;n:type:ShaderForge.SFN_Multiply,id:312,x:32356,y:33316,varname:node_312,prsc:2|A-7938-OUT,B-6532-OUT,C-4379-OUT;n:type:ShaderForge.SFN_Color,id:2183,x:32345,y:32619,ptovrint:False,ptlb:node_2183,ptin:_node_2183,varname:node_2183,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,c1:0.5,c2:0.5,c3:0.5,c4:1;n:type:ShaderForge.SFN_Time,id:7230,x:31297,y:33260,varname:node_7230,prsc:2;n:type:ShaderForge.SFN_Add,id:5988,x:31540,y:33206,varname:node_5988,prsc:2|A-8982-R,B-7230-TTR,C-7938-OUT;n:type:ShaderForge.SFN_DDX,id:9759,x:31590,y:32763,varname:node_9759,prsc:2|IN-5485-XYZ;n:type:ShaderForge.SFN_DDY,id:8036,x:31590,y:32889,varname:node_8036,prsc:2|IN-5485-XYZ;n:type:ShaderForge.SFN_Normalize,id:2200,x:31773,y:32752,varname:node_2200,prsc:2|IN-9759-OUT;n:type:ShaderForge.SFN_Normalize,id:4182,x:31773,y:32889,varname:node_4182,prsc:2|IN-8036-OUT;n:type:ShaderForge.SFN_Cross,id:7974,x:31955,y:32817,varname:node_7974,prsc:2|A-2200-OUT,B-4182-OUT;n:type:ShaderForge.SFN_ComponentMask,id:3251,x:32085,y:32702,varname:node_3251,prsc:2,cc1:2,cc2:0,cc3:-1,cc4:-1|IN-7974-OUT;n:type:ShaderForge.SFN_Lerp,id:6296,x:32671,y:32628,varname:node_6296,prsc:2|A-1304-RGB,B-2183-RGB,T-6564-OUT;n:type:ShaderForge.SFN_RemapRange,id:8221,x:32418,y:32789,varname:node_8221,prsc:2,frmn:0,frmx:1,tomn:0,tomx:1|IN-3251-G;n:type:ShaderForge.SFN_Multiply,id:6564,x:32265,y:32829,varname:node_6564,prsc:2|A-3251-G,B-1006-OUT;n:type:ShaderForge.SFN_Vector1,id:1006,x:32123,y:32916,varname:node_1006,prsc:2,v1:3;n:type:ShaderForge.SFN_Slider,id:710,x:32606,y:32880,ptovrint:False,ptlb:emission,ptin:_emission,varname:node_710,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0,cur:0.2718689,max:1;n:type:ShaderForge.SFN_Multiply,id:2055,x:32916,y:32842,varname:node_2055,prsc:2|A-6296-OUT,B-710-OUT;n:type:ShaderForge.SFN_Multiply,id:7988,x:33132,y:32634,varname:node_7988,prsc:2|A-6296-OUT,B-1450-OUT,C-7469-OUT;n:type:ShaderForge.SFN_OneMinus,id:1450,x:32916,y:32692,varname:node_1450,prsc:2|IN-710-OUT;n:type:ShaderForge.SFN_Tex2d,id:8665,x:32886,y:32275,ptovrint:False,ptlb:node_8665,ptin:_node_8665,varname:node_8665,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,tex:1b1f0227b216be34c9e0f35cedf799fe,ntxv:2,isnm:False;n:type:ShaderForge.SFN_OneMinus,id:7469,x:33119,y:32384,varname:node_7469,prsc:2|IN-8665-RGB;n:type:ShaderForge.SFN_ObjectPosition,id:7321,x:31823,y:33582,varname:node_7321,prsc:2;n:type:ShaderForge.SFN_ObjectPosition,id:9939,x:30602,y:33093,varname:node_9939,prsc:2;n:type:ShaderForge.SFN_Subtract,id:7649,x:30830,y:33180,varname:node_7649,prsc:2|A-9939-XYZ,B-5485-XYZ;n:type:ShaderForge.SFN_ComponentMask,id:8982,x:30998,y:33180,varname:node_8982,prsc:2,cc1:0,cc2:1,cc3:2,cc4:-1|IN-7649-OUT;n:type:ShaderForge.SFN_Tex2d,id:6938,x:33504,y:32279,ptovrint:False,ptlb:node_6938,ptin:_node_6938,varname:node_6938,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,ntxv:0,isnm:False|UVIN-2651-UVOUT;n:type:ShaderForge.SFN_Time,id:9157,x:33103,y:32118,varname:node_9157,prsc:2;n:type:ShaderForge.SFN_Panner,id:2651,x:33328,y:32181,varname:node_2651,prsc:2,spu:1,spv:1|DIST-9157-T;proporder:1304-6532-2183-710-8665;pass:END;sub:END;*/

Shader "Shader Forge/water2" {
    Properties {
        _Color ("Color", Color) = (1,1,1,1)
        _noise ("noise", Range(0, 1)) = 0
        _node_2183 ("node_2183", Color) = (0.5,0.5,0.5,1)
        _emission ("emission", Range(0, 1)) = 0.2718689
        _node_8665 ("node_8665", 2D) = "black" {}
    }
    SubShader {
        Tags {
            "RenderType"="Opaque"
        }
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
            #pragma glsl
            uniform float4 _LightColor0;
            uniform float4 _TimeEditor;
            uniform float4 _Color;
            uniform float _noise;
            uniform float4 _node_2183;
            uniform float _emission;
            uniform sampler2D _node_8665; uniform float4 _node_8665_ST;
            struct VertexInput {
                float4 vertex : POSITION;
                float3 normal : NORMAL;
                float2 texcoord0 : TEXCOORD0;
            };
            struct VertexOutput {
                float4 pos : SV_POSITION;
                float2 uv0 : TEXCOORD0;
                float4 posWorld : TEXCOORD1;
                float3 normalDir : TEXCOORD2;
                LIGHTING_COORDS(3,4)
                UNITY_FOG_COORDS(5)
            };
            VertexOutput vert (VertexInput v) {
                VertexOutput o = (VertexOutput)0;
                o.uv0 = v.texcoord0;
                o.normalDir = UnityObjectToWorldNormal(v.normal);
                float4 objPos = mul ( unity_ObjectToWorld, float4(0,0,0,1) );
                float3 node_8982 = (objPos.rgb-mul(unity_ObjectToWorld, v.vertex).rgb).rgb;
                float2 node_8213 = float2(node_8982.r,node_8982.b);
                float2 node_7938_skew = node_8213 + 0.2127+node_8213.x*0.3713*node_8213.y;
                float2 node_7938_rnd = 4.789*sin(489.123*(node_7938_skew));
                float node_7938 = frac(node_7938_rnd.x*node_7938_rnd.y*(1+node_7938_skew.x));
                float4 node_7230 = _Time + _TimeEditor;
                float node_312 = (node_7938*_noise*sin((node_8982.r+node_7230.a+node_7938)));
                v.vertex.xyz += float3(node_312,node_312,node_312);
                o.posWorld = mul(unity_ObjectToWorld, v.vertex);
                float3 lightColor = _LightColor0.rgb;
                o.pos = UnityObjectToClipPos(v.vertex );
                UNITY_TRANSFER_FOG(o,o.pos);
                TRANSFER_VERTEX_TO_FRAGMENT(o)
                return o;
            }
            float4 frag(VertexOutput i) : COLOR {
                float4 objPos = mul ( unity_ObjectToWorld, float4(0,0,0,1) );
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
                float2 node_3251 = cross(normalize(ddx(i.posWorld.rgb)),normalize(ddy(i.posWorld.rgb))).br;
                float3 node_6296 = lerp(_Color.rgb,_node_2183.rgb,(node_3251.g*3.0));
                float4 _node_8665_var = tex2D(_node_8665,TRANSFORM_TEX(i.uv0, _node_8665));
                float3 diffuseColor = (node_6296*(1.0 - _emission)*(1.0 - _node_8665_var.rgb));
                float3 diffuse = (directDiffuse + indirectDiffuse) * diffuseColor;
////// Emissive:
                float3 emissive = (node_6296*_emission);
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
            #pragma glsl
            uniform float4 _LightColor0;
            uniform float4 _TimeEditor;
            uniform float4 _Color;
            uniform float _noise;
            uniform float4 _node_2183;
            uniform float _emission;
            uniform sampler2D _node_8665; uniform float4 _node_8665_ST;
            struct VertexInput {
                float4 vertex : POSITION;
                float3 normal : NORMAL;
                float2 texcoord0 : TEXCOORD0;
            };
            struct VertexOutput {
                float4 pos : SV_POSITION;
                float2 uv0 : TEXCOORD0;
                float4 posWorld : TEXCOORD1;
                float3 normalDir : TEXCOORD2;
                LIGHTING_COORDS(3,4)
                UNITY_FOG_COORDS(5)
            };
            VertexOutput vert (VertexInput v) {
                VertexOutput o = (VertexOutput)0;
                o.uv0 = v.texcoord0;
                o.normalDir = UnityObjectToWorldNormal(v.normal);
                float4 objPos = mul ( unity_ObjectToWorld, float4(0,0,0,1) );
                float3 node_8982 = (objPos.rgb-mul(unity_ObjectToWorld, v.vertex).rgb).rgb;
                float2 node_8213 = float2(node_8982.r,node_8982.b);
                float2 node_7938_skew = node_8213 + 0.2127+node_8213.x*0.3713*node_8213.y;
                float2 node_7938_rnd = 4.789*sin(489.123*(node_7938_skew));
                float node_7938 = frac(node_7938_rnd.x*node_7938_rnd.y*(1+node_7938_skew.x));
                float4 node_7230 = _Time + _TimeEditor;
                float node_312 = (node_7938*_noise*sin((node_8982.r+node_7230.a+node_7938)));
                v.vertex.xyz += float3(node_312,node_312,node_312);
                o.posWorld = mul(unity_ObjectToWorld, v.vertex);
                float3 lightColor = _LightColor0.rgb;
                o.pos = UnityObjectToClipPos(v.vertex );
                UNITY_TRANSFER_FOG(o,o.pos);
                TRANSFER_VERTEX_TO_FRAGMENT(o)
                return o;
            }
            float4 frag(VertexOutput i) : COLOR {
                float4 objPos = mul ( unity_ObjectToWorld, float4(0,0,0,1) );
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
                float2 node_3251 = cross(normalize(ddx(i.posWorld.rgb)),normalize(ddy(i.posWorld.rgb))).br;
                float3 node_6296 = lerp(_Color.rgb,_node_2183.rgb,(node_3251.g*3.0));
                float4 _node_8665_var = tex2D(_node_8665,TRANSFORM_TEX(i.uv0, _node_8665));
                float3 diffuseColor = (node_6296*(1.0 - _emission)*(1.0 - _node_8665_var.rgb));
                float3 diffuse = directDiffuse * diffuseColor;
/// Final Color:
                float3 finalColor = diffuse;
                fixed4 finalRGBA = fixed4(finalColor * 1,0);
                UNITY_APPLY_FOG(i.fogCoord, finalRGBA);
                return finalRGBA;
            }
            ENDCG
        }
        Pass {
            Name "ShadowCaster"
            Tags {
                "LightMode"="ShadowCaster"
            }
            Offset 1, 1
            
            CGPROGRAM
            #pragma vertex vert
            #pragma fragment frag
            #define UNITY_PASS_SHADOWCASTER
            #include "UnityCG.cginc"
            #include "Lighting.cginc"
            #pragma fragmentoption ARB_precision_hint_fastest
            #pragma multi_compile_shadowcaster
            #pragma multi_compile_fog
            #pragma exclude_renderers gles3 metal d3d11_9x xbox360 xboxone ps3 ps4 psp2 
            #pragma target 3.0
            uniform float4 _TimeEditor;
            uniform float _noise;
            struct VertexInput {
                float4 vertex : POSITION;
            };
            struct VertexOutput {
                V2F_SHADOW_CASTER;
                float4 posWorld : TEXCOORD1;
            };
            VertexOutput vert (VertexInput v) {
                VertexOutput o = (VertexOutput)0;
                float4 objPos = mul ( unity_ObjectToWorld, float4(0,0,0,1) );
                float3 node_8982 = (objPos.rgb-mul(unity_ObjectToWorld, v.vertex).rgb).rgb;
                float2 node_8213 = float2(node_8982.r,node_8982.b);
                float2 node_7938_skew = node_8213 + 0.2127+node_8213.x*0.3713*node_8213.y;
                float2 node_7938_rnd = 4.789*sin(489.123*(node_7938_skew));
                float node_7938 = frac(node_7938_rnd.x*node_7938_rnd.y*(1+node_7938_skew.x));
                float4 node_7230 = _Time + _TimeEditor;
                float node_312 = (node_7938*_noise*sin((node_8982.r+node_7230.a+node_7938)));
                v.vertex.xyz += float3(node_312,node_312,node_312);
                o.posWorld = mul(unity_ObjectToWorld, v.vertex);
                o.pos = UnityObjectToClipPos(v.vertex );
                TRANSFER_SHADOW_CASTER(o)
                return o;
            }
            float4 frag(VertexOutput i) : COLOR {
                float4 objPos = mul ( unity_ObjectToWorld, float4(0,0,0,1) );
                SHADOW_CASTER_FRAGMENT(i)
            }
            ENDCG
        }
    }
    FallBack "Diffuse"
    CustomEditor "ShaderForgeMaterialInspector"
}
