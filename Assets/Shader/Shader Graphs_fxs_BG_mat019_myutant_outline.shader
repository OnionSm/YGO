Shader "Shader Graphs/fxs_BG_mat019_myutant_outline" {
	Properties {
		[NoScaleOffset] _Texture2D ("Texture2D", 2D) = "white" {}
		_fresnelcolor ("fresnelcolor", Vector) = (1,1,1,0)
		_outlinethickness ("outlinethickness", Float) = 0.25
		_outlinewidth ("outlinewidth", Float) = -1.1
		[HDR] _outlinecolor ("outlinecolor", Vector) = (0,0,0,0)
		_noisesize ("noisesize", Float) = 10
		_speed ("speed", Float) = 0.2
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