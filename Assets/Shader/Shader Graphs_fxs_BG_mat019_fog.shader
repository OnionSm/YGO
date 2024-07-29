Shader "Shader Graphs/fxs_BG_mat019_fog" {
	Properties {
		Vector4_8ac65a5bf8b04414973016c1f84b6db9 ("Rotate Projection", Vector) = (1,0,0,90)
		Vector1_1c516a3632234146a3e2d2b4331c4a6b ("Noise Scale", Float) = 0.1
		Vector1_3239dc2de7ee40e3935fbaf62a355f96 ("wind", Float) = 10
		Vector1_7a7b205c69464659bdb639ee0cf794df ("Noise Height", Float) = 1
		Vector4_874fde85b3d84f0cb083d8ea0a6955d8 ("Noise Remap", Vector) = (0,1,-1,1)
		_Color_Peak ("Color Peak", Vector) = (1,1,1,0)
		_Color_Valley ("Color Valley", Vector) = (0,0,0,0)
		Vector1_79716bfc74cb43cd9664c5409444579c ("Noise Edge1", Float) = 0
		Vector1_714e27e99d564b059c38cf52c9e4f8bc ("Noise Edge2", Float) = 1
		Vector1_3419512a4213483a953fdab4ed4f53bd ("Noise Power", Float) = 2
		Vector1_c92ce7e623744199a99ba998c9520137 ("Base Scale", Float) = 5
		Vector1_89d5866d14794420b7221530ff53e6c6 ("Base Speed", Float) = 0.2
		Vector1_e771a2ab12ed4cf9a6609fb8d1f2d449 ("Base Strength", Float) = 2
		Vector1_ccd4250b89594caab59c991e4d8d6ffb ("Emission Strength", Float) = 2
		Vector1_6762af0e24bf4aa892d176f0ea4a05bd ("Cavature Radius", Float) = 100
		Vector1_44f5abc5e42f4a198d7a95d6808b30f1 ("Fresnel Power", Float) = 1
		Vector1_0984985947bc446094c0fa998b7e6713 ("Fresnel Opacity", Float) = 1
		Vector1_d062ce24b8f546d8a04dd06cbe3a4135 ("Fade depth", Float) = 100
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