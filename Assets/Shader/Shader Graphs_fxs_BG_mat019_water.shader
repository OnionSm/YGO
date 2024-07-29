Shader "Shader Graphs/fxs_BG_mat019_water" {
	Properties {
		_BaseColor ("BaseColor", Vector) = (0,1,0.5054998,0)
		_Depth ("Depth", Float) = 0
		_DepthToAlpha ("DepthToAlpha", Range(0, 1)) = 0.1
		_EdgeMaxAlpha ("EdgeMaxAlpha", Range(0, 1)) = 0
		_DepthColor ("DepthColor", Vector) = (0.01735493,0.245283,0.1485528,0)
		_RippleSpeed ("RippleSpeed", Float) = 0.5
		_RippleIntencity ("RippleIntencity", Range(0, 1)) = 0.75
		_CloudSpeed ("CloudSpeed", Float) = 0.05
		_cloudScale ("cloudScale", Float) = 2.37
		_cloudScale_1 ("cloudScale (1)", Float) = 10
		_Cloudintencity ("Cloudintencity", Range(0, 1)) = 0.6
		[NoScaleOffset] _SampleTexture2D_a0f7b6e755ff41e2b1720eb2fb9f9865_Texture_1_Texture2D ("Texture2D", 2D) = "white" {}
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