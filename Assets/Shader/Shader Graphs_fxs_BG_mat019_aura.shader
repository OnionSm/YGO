Shader "Shader Graphs/fxs_BG_mat019_aura" {
	Properties {
		[HDR] _Color ("Color", Vector) = (1,0,0,0)
		[HDR] _Color2 ("Color2", Vector) = (1,0.5383908,0,0)
		[NoScaleOffset] _Texture2D ("Texture2D", 2D) = "white" {}
		_tilling ("tilling", Vector) = (1,1,0,0)
		_tilling_1 ("tilling2", Vector) = (1,1,0,0)
		_speed ("speed", Vector) = (0,5,0,0)
		_speed2 ("speed2", Vector) = (0,3,0,0)
		[HideInInspector] _QueueOffset ("_QueueOffset", Float) = 0
		[HideInInspector] _QueueControl ("_QueueControl", Float) = -1
		[HideInInspector] [NoScaleOffset] unity_Lightmaps ("unity_Lightmaps", 2DArray) = "" {}
		[HideInInspector] [NoScaleOffset] unity_LightmapsInd ("unity_LightmapsInd", 2DArray) = "" {}
		[HideInInspector] [NoScaleOffset] unity_ShadowMasks ("unity_ShadowMasks", 2DArray) = "" {}
	}
	//DummyShaderTextExporter
	SubShader{
		Tags { "RenderType"="Opaque" }
		LOD 200
		CGPROGRAM
#pragma surface surf Standard
#pragma target 3.0

		fixed4 _Color;
		struct Input
		{
			float2 uv_MainTex;
		};
		
		void surf(Input IN, inout SurfaceOutputStandard o)
		{
			o.Albedo = _Color.rgb;
			o.Alpha = _Color.a;
		}
		ENDCG
	}
	Fallback "Hidden/Shader Graph/FallbackError"
	//CustomEditor "UnityEditor.ShaderGraph.GenericShaderGraphMaterialGUI"
}