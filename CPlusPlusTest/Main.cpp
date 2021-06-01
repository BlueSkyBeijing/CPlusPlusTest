

#include <stdio.h>
#define SUM(a,b) a+b
#define arrLen(arr) sizeof(arr)/sizeof(arr[0])


#define SHADER_DECLARE_VTABLE(ShaderClass) \\
	static FShader* ConstructSerializedInstance() { return new ShaderClass(); } \\
	static FShader* ConstructCompiledInstance(const typename FShader::CompiledShaderInitializerType& Initializer) \\
	{ return new ShaderClass(static_cast<const typename ShaderMetaType::CompiledShaderInitializerType&>(Initializer)); }\\
	static void ModifyCompilationEnvironmentImpl(const FShaderPermutationParameters& Parameters, FShaderCompilerEnvironment& OutEnvironment) \\
	{ \\
		const typename ShaderClass::FPermutationDomain PermutationVector(Parameters.PermutationId); \\
		PermutationVector.ModifyCompilationEnvironment(OutEnvironment); \\
		ShaderClass::ModifyCompilationEnvironment(static_cast<const typename ShaderClass::FPermutationParameters&>(Parameters), OutEnvironment); \\
	} \\
	static bool ShouldCompilePermutationImpl(const FShaderPermutationParameters& Parameters) \\
	{ return ShaderClass::ShouldCompilePermutation(static_cast<const typename ShaderClass::FPermutationParameters&>(Parameters)); }

#define INTERNAL_DECLARE_LAYOUT_BASE(T) \\
	private: using InternalBaseType = typename TGetBaseTypeHelper<PREPROCESSOR_REMOVE_OPTIONAL_PARENS(T)>::Type; \\
	template<typename InternalType> static void InternalInitializeBases(FTypeLayoutDesc& TypeDesc) { TInitializeBaseHelper<InternalType, InternalBaseType>::Initialize(TypeDesc); }

#define DECLARE_EXPORTED_TYPE_LAYOUT(T, RequiredAPI, Interface) INTERNAL_DECLARE_LAYOUT_BASE(T); INTERNAL_DECLARE_TYPE_LAYOUT(T, Interface, RequiredAPI)


#define INTERNAL_DECLARE_SHADER_TYPE_COMMON(ShaderClass,ShaderMetaTypeShortcut,RequiredAPI) \\
	public: \\
	using ShaderMetaType = F##ShaderMetaTypeShortcut##ShaderType; \\
	using ShaderMapType = F##ShaderMetaTypeShortcut##ShaderMap; \\
	\\
	static RequiredAPI ShaderMetaType StaticType; \\
	\\
	SHADER_DECLARE_VTABLE(ShaderClass)


#define INTERNAL_LAYOUT_INTERFACE_PREFIX_NonVirtual(...) __VA_ARGS__
#define INTERNAL_LAYOUT_INTERFACE_PREFIX_Virtual(...) __VA_ARGS__ virtual
#define INTERNAL_LAYOUT_INTERFACE_PREFIX_Abstract(...) virtual

#define INTERNAL_LAYOUT_INTERFACE_SUFFIX_NonVirtual ;
#define INTERNAL_LAYOUT_INTERFACE_SUFFIX_Virtual ;
#define INTERNAL_LAYOUT_INTERFACE_SUFFIX_Abstract { return FTypeLayoutDesc::GetInvalidTypeLayout(); }
#define INTERNAL_LAYOUT_INTERFACE_SUFFIX(Type) PREPROCESSOR_JOIN(INTERNAL_LAYOUT_INTERFACE_SUFFIX_, Type)

#define PREPROCESSOR_JOIN(x, y) PREPROCESSOR_JOIN_INNER(x, y)
#define PREPROCESSOR_JOIN_INNER(x, y) x##y

#define INTERNAL_LAYOUT_INTERFACE_PREFIX(Type) PREPROCESSOR_JOIN(INTERNAL_LAYOUT_INTERFACE_PREFIX_, Type)

#define UE_DECLARE_INTERNAL_LINK_BASE(T) template<int Counter> struct T

#define UE_STATIC_ONLY(T)
#define FORCEINLINE __forceinline									/* Force code to be inline */

#define PREPROCESSOR_JOIN_FIRST(x, ...) PREPROCESSOR_JOIN_FIRST_INNER(x, __VA_ARGS__)
#define PREPROCESSOR_JOIN_FIRST_INNER(x, ...) x##__VA_ARGS__

#define PREPROCESSOR_REMOVE_OPTIONAL_PARENS(...) PREPROCESSOR_JOIN_FIRST(PREPROCESSOR_REMOVE_OPTIONAL_PARENS_IMPL,PREPROCESSOR_REMOVE_OPTIONAL_PARENS_IMPL __VA_ARGS__)
#define PREPROCESSOR_REMOVE_OPTIONAL_PARENS_IMPL(...) PREPROCESSOR_REMOVE_OPTIONAL_PARENS_IMPL __VA_ARGS__
#define PREPROCESSOR_REMOVE_OPTIONAL_PARENS_IMPLPREPROCESSOR_REMOVE_OPTIONAL_PARENS_IMPL

#define INTERNAL_DECLARE_TYPE_LAYOUT_COMMON(T, InInterface) \\
	static const int CounterBase = __COUNTER__; \\
	public: using DerivedType = PREPROCESSOR_REMOVE_OPTIONAL_PARENS(T); \\
	static const ETypeLayoutInterface::Type InterfaceType = ETypeLayoutInterface::InInterface; \\
	UE_DECLARE_INTERNAL_LINK_BASE(InternalLinkType) { UE_STATIC_ONLY(InternalLinkType); static FORCEINLINE void Initialize(FTypeLayoutDesc& TypeDesc) {} }

#define INTERNAL_DECLARE_TYPE_LAYOUT(T, InInterface, RequiredAPI) \\
	public: RequiredAPI static FTypeLayoutDesc& StaticGetTypeLayout(); \\
	public: INTERNAL_LAYOUT_INTERFACE_PREFIX(InInterface)(RequiredAPI) const FTypeLayoutDesc& GetTypeLayout() const INTERNAL_LAYOUT_INTERFACE_SUFFIX(InInterface) \\
	INTERNAL_DECLARE_TYPE_LAYOUT_COMMON(T, InInterface)

/**
 * A macro to declare a new shader type.  This should be called in the class body of the new shader type.
 * @param ShaderClass - The name of the class representing an instance of the shader type.
 * @param ShaderMetaTypeShortcut - The shortcut for the shader meta type: simple, material, meshmaterial, etc.  The shader meta type
 *	controls
 */
#define DECLARE_EXPORTED_SHADER_TYPE(ShaderClass,ShaderMetaTypeShortcut,RequiredAPI, ...) \\
	INTERNAL_DECLARE_SHADER_TYPE_COMMON(ShaderClass, ShaderMetaTypeShortcut, RequiredAPI); \\
	DECLARE_EXPORTED_TYPE_LAYOUT(ShaderClass, RequiredAPI, NonVirtual); \\
	public:

#define DECLARE_SHADER_TYPE(ShaderClass,ShaderMetaTypeShortcut,...) \\
	DECLARE_EXPORTED_SHADER_TYPE(ShaderClass,ShaderMetaTypeShortcut,, ##__VA_ARGS__)


DECLARE_SHADER_TYPE(TMobileBasePassVS, MeshMaterial)

int main() {
    int c = 3, d = 4;
    int sum = SUM(c, d);
    printf("sum=%d", sum);
    int data[] = { 5,6,8,9,6,4 };
    for (int i = 0; i < arrLen(data); i++)
    {
        printf("%d\\n", data[i]);
    }
    return 0;
}
