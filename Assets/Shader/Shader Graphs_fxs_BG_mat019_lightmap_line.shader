Shader "Shader Graphs/fxs_BG_mat019_lightmap_line" {
	Properties {
		[NoScaleOffset] _Lightmap ("Lightmap", 2D) = "white" {}
		[NoScaleOffset] _Texture2D ("Texture2D", 2D) = "white" {}
		_RimColor ("RimColor", Vector) = (1,1,1,0)
		_RimEdge1 ("RimEdge1", Float) = 0.5
		_RimEdge2 ("RimEdge2", Float) = 1
		_lightnap_hue ("lightnap_hue", Range(0, 360)) = 0
		_lightmap_saturation ("lightmap_saturation", Range(0, 10)) = 0
		_lightmap_contrast ("lightmap_contrast", Range(-10, 10)) = 1
		_lightmap_brightness ("lightmap_brightness", Range(-1, 1)) = 0
		_lightmap_Tilling ("lightmap_Tilling", Vector) = (1,1,0,0)
		_lightmap_Offset ("lightmap_Offset", Vector) = (0,0,0,0)
		_Rimmask ("Rimmask", Float) = 1
		_Light_color ("Light_color", Vector) = (1,1,1,0)
		[HDR] _Line_color ("Line_color", Vector) = (1,0,0,0)
		[HideInInspector] _QueueOffset ("_QueueOffset", Float) = 0
		[HideInInspector] _QueueControl ("_QueueControl", Float) = -1
		[HideInInspector] [NoScaleOffset] unity_Lightmaps ("unity_Lightmaps", 2DArray) = "" {}
		[HideInInspector] [NoScaleOffset] unity_LightmapsInd ("unity_LightmapsInd", 2DArray) = "" {}
		[HideInInspector] [NoScaleOffset] unity_ShadowMasks ("unity_ShadowMasks", 2DArray) = "" {}
	}
	//DummyShaderTextExporter
	SubShader{
		Tags { "RenderType" = "Opaque" }
		LOD 200
		CGPROGRAM
#pragma surface surf Standard
#pragma target 3.0

		struct Input
		{
			float2 uv_MainTex;
		};

		void surf(Input IN, inout SurfaceOutputStandard o)
		{
			o.Albedo = 1;
		}
		ENDCG
	}
	Fallback "Hidden/Shader Graph/FallbackError"
	//CustomEditor "UnityEditor.ShaderGraph.GenericShaderGraphMaterialGUI"
}