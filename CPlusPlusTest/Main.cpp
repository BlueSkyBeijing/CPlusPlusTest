

//#include <stdio.h>
//#define SUM(a,b) a+b
//#define arrLen(arr) sizeof(arr)/sizeof(arr[0])





//
//#define SHADER_DECLARE_VTABLE(ShaderClass) \
//	static FShader* ConstructSerializedInstance() { return new ShaderClass(); } \
//	static FShader* ConstructCompiledInstance(const typename FShader::CompiledShaderInitializerType& Initializer) \
//	{ return new ShaderClass(static_cast<const typename ShaderMetaType::CompiledShaderInitializerType&>(Initializer)); }\
//	static void ModifyCompilationEnvironmentImpl(const FShaderPermutationParameters& Parameters, FShaderCompilerEnvironment& OutEnvironment) \
//	{ \
//		const typename ShaderClass::FPermutationDomain PermutationVector(Parameters.PermutationId); \
//		PermutationVector.ModifyCompilationEnvironment(OutEnvironment); \
//		ShaderClass::ModifyCompilationEnvironment(static_cast<const typename ShaderClass::FPermutationParameters&>(Parameters), OutEnvironment); \
//	} \
//	static bool ShouldCompilePermutationImpl(const FShaderPermutationParameters& Parameters) \
//	{ return ShaderClass::ShouldCompilePermutation(static_cast<const typename ShaderClass::FPermutationParameters&>(Parameters)); }
//
//#define INTERNAL_DECLARE_LAYOUT_BASE(T) \
//	private: using InternalBaseType = typename TGetBaseTypeHelper<PREPROCESSOR_REMOVE_OPTIONAL_PARENS(T)>::Type; \
//	template<typename InternalType> static void InternalInitializeBases(FTypeLayoutDesc& TypeDesc) { TInitializeBaseHelper<InternalType, InternalBaseType>::Initialize(TypeDesc); }
//
//#define DECLARE_EXPORTED_TYPE_LAYOUT(T, RequiredAPI, Interface) INTERNAL_DECLARE_LAYOUT_BASE(T); INTERNAL_DECLARE_TYPE_LAYOUT(T, Interface, RequiredAPI)
//
//
//#define INTERNAL_DECLARE_SHADER_TYPE_COMMON(ShaderClass,ShaderMetaTypeShortcut,RequiredAPI) \n\
//	public: \n\
//	using ShaderMetaType = F##ShaderMetaTypeShortcut##ShaderType; \n\
//	using ShaderMapType = F##ShaderMetaTypeShortcut##ShaderMap; \n\
//	\n\
//	static RequiredAPI ShaderMetaType StaticType; \n\
//	\n\
//	SHADER_DECLARE_VTABLE(ShaderClass)
//
///**
// * A macro to declare a new shader type.  This should be called in the class body of the new shader type.
// * @param ShaderClass - The name of the class representing an instance of the shader type.
// * @param ShaderMetaTypeShortcut - The shortcut for the shader meta type: simple, material, meshmaterial, etc.  The shader meta type
// *	controls
// */
//#define DECLARE_EXPORTED_SHADER_TYPE(ShaderClass,ShaderMetaTypeShortcut,RequiredAPI, ...) \
//	INTERNAL_DECLARE_SHADER_TYPE_COMMON(ShaderClass, ShaderMetaTypeShortcut, RequiredAPI); \
//	DECLARE_EXPORTED_TYPE_LAYOUT(ShaderClass, RequiredAPI, NonVirtual); \
//	public:
//
//#define DECLARE_SHADER_TYPE(ShaderClass,ShaderMetaTypeShortcut,...) \
//	DECLARE_EXPORTED_SHADER_TYPE(ShaderClass,ShaderMetaTypeShortcut,, ##__VA_ARGS__)




int main() {
  //  int c = 3, d = 4;
  //  int sum = SUM(c, d);
  //  printf("sum=%d", sum);
  //  int data[] = { 5,6,8,9,6,4 };
  //  for (int i = 0; i < arrLen(data); i++)
  //  {
  //      printf("%d\n", data[i]);
		////printf("DECLARE_SHADER_TYPE(TMobileBasePassVS, MeshMaterial)");
  //  }
    return 0;
}
