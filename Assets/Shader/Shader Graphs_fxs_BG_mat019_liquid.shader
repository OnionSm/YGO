Shader "Shader Graphs/fxs_BG_mat019_liquid" {
	Properties {
		_Fill ("Fill", Range(0, 20)) = 1
		_LiquidColor ("LiquidColor", Vector) = (0.2270826,0.764151,0.5982783,0)
		_SurfaceColor ("SurfaceColor", Vector) = (0.6650944,1,0.8463374,0)
		_FresnelColor ("FresnelColor", Vector) = (0,1,0.9717827,1)
		_FresnelPower ("FresnelPower", Range(0, 20)) = 3
		_WobbleX ("WobbleX", Range(-1, 1)) = 0
		_WobbleZ ("WobbleZ", Range(-1, 1)) = 0
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