

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



#define SHADER_TYPE_VTABLE(ShaderClass) \\
	ShaderClass::ConstructSerializedInstance, \\
	ShaderClass::ConstructCompiledInstance, \\
	ShaderClass::ModifyCompilationEnvironmentImpl, \\
	ShaderClass::ShouldCompilePermutationImpl, \\
	ShaderClass::ValidateCompiledResult

#define INTERNAL_IMPLEMENT_TYPE_LAYOUT_COMMON(TemplatePrefix, T) \\
	PREPROCESSOR_REMOVE_OPTIONAL_PARENS(TemplatePrefix) FTypeLayoutDesc& PREPROCESSOR_REMOVE_OPTIONAL_PARENS(T)::StaticGetTypeLayout() { \\
		static_assert(TValidateInterfaceHelper<PREPROCESSOR_REMOVE_OPTIONAL_PARENS(T), InterfaceType>::Value, "Invalid interface for " #T); \\
		alignas(FTypeLayoutDesc) static uint8 TypeBuffer[sizeof(FTypeLayoutDesc)] = { 0 }; \\
		FTypeLayoutDesc& TypeDesc = *(FTypeLayoutDesc*)TypeBuffer; \\
		if (!TypeDesc.IsInitialized) { \\
			TypeDesc.IsInitialized = true; \\
			TypeDesc.Name = TEXT(#T); \\
			TypeDesc.WriteFrozenMemoryImageFunc = TGetFreezeImageHelper<PREPROCESSOR_REMOVE_OPTIONAL_PARENS(T)>::Do(); \\
			TypeDesc.UnfrozenCopyFunc = &Freeze::DefaultUnfrozenCopy; \\
			TypeDesc.AppendHashFunc = &Freeze::DefaultAppendHash; \\
			TypeDesc.GetTargetAlignmentFunc = &Freeze::DefaultGetTargetAlignment; \\
			TypeDesc.ToStringFunc = &Freeze::DefaultToString; \\
			TypeDesc.Size = sizeof(PREPROCESSOR_REMOVE_OPTIONAL_PARENS(T)); \\
			TypeDesc.Alignment = alignof(PREPROCESSOR_REMOVE_OPTIONAL_PARENS(T)); \\
			TypeDesc.Interface = InterfaceType; \\
			TypeDesc.SizeFromFields = ~0u; \\
			TAssignDestroyHelper<PREPROCESSOR_REMOVE_OPTIONAL_PARENS(T), TIsTriviallyDestructible<PREPROCESSOR_REMOVE_OPTIONAL_PARENS(T)>::Value>::Do(TypeDesc); \\
			TypeDesc.GetDefaultObjectFunc = &TGetDefaultObjectHelper<PREPROCESSOR_REMOVE_OPTIONAL_PARENS(T), InterfaceType>::Do; \\
			InternalLinkType<1>::Initialize(TypeDesc); \\
			InternalInitializeBases<PREPROCESSOR_REMOVE_OPTIONAL_PARENS(T)>(TypeDesc); \\
			FTypeLayoutDesc::Initialize(TypeDesc); \\
		} \\
		return TypeDesc; }


#define IMPLEMENT_UNREGISTERED_TEMPLATE_TYPE_LAYOUT(TemplatePrefix, T) \\
	INTERNAL_IMPLEMENT_TYPE_LAYOUT_COMMON(TemplatePrefix, T); \\
	PREPROCESSOR_REMOVE_OPTIONAL_PARENS(TemplatePrefix) const FTypeLayoutDesc& PREPROCESSOR_REMOVE_OPTIONAL_PARENS(T)::GetTypeLayout() const { return StaticGetTypeLayout(); }


/** A macro to implement a shader type. */
#define IMPLEMENT_SHADER_TYPE(TemplatePrefix,ShaderClass,SourceFilename,FunctionName,Frequency) \\
	IMPLEMENT_UNREGISTERED_TEMPLATE_TYPE_LAYOUT(TemplatePrefix, ShaderClass); \\
	TemplatePrefix \\
	ShaderClass::ShaderMetaType ShaderClass::StaticType( \\
		ShaderClass::StaticGetTypeLayout(), \\
		TEXT(#ShaderClass), \\
		SourceFilename, \\
		FunctionName, \\
		Frequency, \\
		ShaderClass::FPermutationDomain::PermutationCount, \\
		SHADER_TYPE_VTABLE(ShaderClass), \\
		sizeof(ShaderClass), \\
		ShaderClass::GetRootParametersMetadata() \\
		);

/** A macro to implement material shaders. */
#define IMPLEMENT_MATERIAL_SHADER_TYPE(TemplatePrefix,ShaderClass,SourceFilename,FunctionName,Frequency) \\
	IMPLEMENT_SHADER_TYPE( \\
		TemplatePrefix, \\
		ShaderClass, \\
		SourceFilename, \\
		FunctionName, \\
		Frequency \\
		);


#define IMPLEMENT_MOBILE_SHADING_BASEPASS_LIGHTMAPPED_VERTEX_SHADER_TYPE(LightMapPolicyType,LightMapPolicyName) \\
	typedef TMobileBasePassVS< LightMapPolicyType, LDR_GAMMA_32 > TMobileBasePassVS##LightMapPolicyName##LDRGamma32; \\
	typedef TMobileBasePassVS< LightMapPolicyType, HDR_LINEAR_64 > TMobileBasePassVS##LightMapPolicyName##HDRLinear64; \\
	IMPLEMENT_MATERIAL_SHADER_TYPE(template<>, TMobileBasePassVS##LightMapPolicyName##LDRGamma32, TEXT("/Engine/Private/MobileBasePassVertexShader.usf"), TEXT("Main"), SF_Vertex); \\
	IMPLEMENT_MATERIAL_SHADER_TYPE(template<>, TMobileBasePassVS##LightMapPolicyName##HDRLinear64, TEXT("/Engine/Private/MobileBasePassVertexShader.usf"), TEXT("Main"), SF_Vertex);

#define IMPLEMENT_MOBILE_SHADING_BASEPASS_LIGHTMAPPED_PIXEL_SHADER_TYPE(LightMapPolicyType,LightMapPolicyName,NumMovablePointLights) \\
	typedef TMobileBasePassPS< LightMapPolicyType, LDR_GAMMA_32, false, NumMovablePointLights > TMobileBasePassPS##LightMapPolicyName##NumMovablePointLights##LDRGamma32; \\
	typedef TMobileBasePassPS< LightMapPolicyType, HDR_LINEAR_64, false, NumMovablePointLights > TMobileBasePassPS##LightMapPolicyName##NumMovablePointLights##HDRLinear64; \\
	typedef TMobileBasePassPS< LightMapPolicyType, LDR_GAMMA_32, true, NumMovablePointLights > TMobileBasePassPS##LightMapPolicyName##NumMovablePointLights##LDRGamma32##Skylight; \\
	typedef TMobileBasePassPS< LightMapPolicyType, HDR_LINEAR_64, true, NumMovablePointLights > TMobileBasePassPS##LightMapPolicyName##NumMovablePointLights##HDRLinear64##Skylight; \\
	IMPLEMENT_MATERIAL_SHADER_TYPE(template<>, TMobileBasePassPS##LightMapPolicyName##NumMovablePointLights##LDRGamma32, TEXT("/Engine/Private/MobileBasePassPixelShader.usf"), TEXT("Main"), SF_Pixel); \\
	IMPLEMENT_MATERIAL_SHADER_TYPE(template<>, TMobileBasePassPS##LightMapPolicyName##NumMovablePointLights##HDRLinear64, TEXT("/Engine/Private/MobileBasePassPixelShader.usf"), TEXT("Main"), SF_Pixel); \\
	IMPLEMENT_MATERIAL_SHADER_TYPE(template<>, TMobileBasePassPS##LightMapPolicyName##NumMovablePointLights##LDRGamma32##Skylight, TEXT("/Engine/Private/MobileBasePassPixelShader.usf"), TEXT("Main"), SF_Pixel); \\
	IMPLEMENT_MATERIAL_SHADER_TYPE(template<>, TMobileBasePassPS##LightMapPolicyName##NumMovablePointLights##HDRLinear64##Skylight, TEXT("/Engine/Private/MobileBasePassPixelShader.usf"), TEXT("Main"), SF_Pixel);

// Permutations for the number of point lights to support. INT32_MAX indicates the shader should use branching to support a variable number of point lights.
#define IMPLEMENT_MOBILE_SHADING_BASEPASS_LIGHTMAPPED_SHADER_TYPE(LightMapPolicyType,LightMapPolicyName) \\
	IMPLEMENT_MOBILE_SHADING_BASEPASS_LIGHTMAPPED_VERTEX_SHADER_TYPE(LightMapPolicyType, LightMapPolicyName) \\
	IMPLEMENT_MOBILE_SHADING_BASEPASS_LIGHTMAPPED_PIXEL_SHADER_TYPE(LightMapPolicyType, LightMapPolicyName, 0) \\
	IMPLEMENT_MOBILE_SHADING_BASEPASS_LIGHTMAPPED_PIXEL_SHADER_TYPE(LightMapPolicyType, LightMapPolicyName, 1) \\
	IMPLEMENT_MOBILE_SHADING_BASEPASS_LIGHTMAPPED_PIXEL_SHADER_TYPE(LightMapPolicyType, LightMapPolicyName, 2) \\
	IMPLEMENT_MOBILE_SHADING_BASEPASS_LIGHTMAPPED_PIXEL_SHADER_TYPE(LightMapPolicyType, LightMapPolicyName, 3) \\
	IMPLEMENT_MOBILE_SHADING_BASEPASS_LIGHTMAPPED_PIXEL_SHADER_TYPE(LightMapPolicyType, LightMapPolicyName, 4) \\
	IMPLEMENT_MOBILE_SHADING_BASEPASS_LIGHTMAPPED_PIXEL_SHADER_TYPE(LightMapPolicyType, LightMapPolicyName, INT32_MAX)

// Implement shader types per lightmap policy 
IMPLEMENT_MOBILE_SHADING_BASEPASS_LIGHTMAPPED_SHADER_TYPE(TUniformLightMapPolicy<LMP_NO_LIGHTMAP>, FNoLightMapPolicy);
IMPLEMENT_MOBILE_SHADING_BASEPASS_LIGHTMAPPED_SHADER_TYPE(TUniformLightMapPolicy<LMP_LQ_LIGHTMAP>, TLightMapPolicyLQ);
IMPLEMENT_MOBILE_SHADING_BASEPASS_LIGHTMAPPED_SHADER_TYPE(TUniformLightMapPolicy<LMP_CACHED_POINT_INDIRECT_LIGHTING>, FCachedPointIndirectLightingPolicy);
IMPLEMENT_MOBILE_SHADING_BASEPASS_LIGHTMAPPED_SHADER_TYPE(TUniformLightMapPolicy<LMP_MOBILE_DISTANCE_FIELD_SHADOWS_AND_LQ_LIGHTMAP>, FMobileDistanceFieldShadowsAndLQLightMapPolicy);
IMPLEMENT_MOBILE_SHADING_BASEPASS_LIGHTMAPPED_SHADER_TYPE(TUniformLightMapPolicy<LMP_MOBILE_DIRECTIONAL_LIGHT_AND_SH_INDIRECT>, FMobileDirectionalLightAndSHIndirectPolicy);
IMPLEMENT_MOBILE_SHADING_BASEPASS_LIGHTMAPPED_SHADER_TYPE(TUniformLightMapPolicy<LMP_MOBILE_MOVABLE_DIRECTIONAL_LIGHT_AND_SH_INDIRECT>, FMobileMovableDirectionalLightAndSHIndirectPolicy);
IMPLEMENT_MOBILE_SHADING_BASEPASS_LIGHTMAPPED_SHADER_TYPE(TUniformLightMapPolicy<LMP_MOBILE_MOVABLE_DIRECTIONAL_LIGHT_WITH_LIGHTMAP>, FMobileMovableDirectionalLightWithLightmapPolicy);





/** Declares a member of a uniform buffer struct. */
#define INTERNAL_SHADER_PARAMETER_EXPLICIT(BaseType,TypeInfo,MemberType,MemberName,ArrayDecl,DefaultValue,Precision,OptionalShaderType,IsMemberStruct) \\
		zzMemberId##MemberName; \\
	public: \\
		TypeInfo::TAlignedType MemberName DefaultValue; \\
		static_assert(BaseType != UBMT_INVALID, "Invalid type " #MemberType " of member " #MemberName "."); \\
	private: \\
		struct zzNextMemberId##MemberName { enum { HasDeclaredResource = zzMemberId##MemberName::HasDeclaredResource || !TypeInfo::bIsStoredInConstantBuffer }; }; \\
		static zzFuncPtr zzAppendMemberGetPrev(zzNextMemberId##MemberName, TArray<FShaderParametersMetadata::FMember>* Members) \\
		{ \\
			static_assert(TypeInfo::bIsStoredInConstantBuffer || TIsArrayOrRefOfType<decltype(OptionalShaderType), TCHAR>::Value, "No shader type for " #MemberName "."); \\
			static_assert(\\
				(STRUCT_OFFSET(zzTThisStruct, MemberName) & (TypeInfo::Alignment - 1)) == 0, \\
				"Misaligned uniform buffer struct member " #MemberName "."); \\
			Members->Add(FShaderParametersMetadata::FMember( \\
				TEXT(#MemberName), \\
				OptionalShaderType, \\
				STRUCT_OFFSET(zzTThisStruct,MemberName), \\
				EUniformBufferBaseType(BaseType), \\
				Precision, \\
				TypeInfo::NumRows, \\
				TypeInfo::NumColumns, \\
				TypeInfo::NumElements, \\
				TypeInfo::GetStructMetadata() \\
				)); \\
			zzFuncPtr(*PrevFunc)(zzMemberId##MemberName, TArray<FShaderParametersMetadata::FMember>*); \\
			PrevFunc = zzAppendMemberGetPrev; \\
			return (zzFuncPtr)PrevFunc; \\
		} \\
		typedef zzNextMemberId##MemberName


#define SHADER_PARAMETER_EX(MemberType,MemberName,Precision) \\
	INTERNAL_SHADER_PARAMETER_EXPLICIT(TShaderParameterTypeInfo<MemberType>::BaseType, TShaderParameterTypeInfo<MemberType>, MemberType,MemberName,,,Precision,TEXT(""),false)


/** Adds a constant-buffer stored value.
 *
 * Example:
 *	SHADER_PARAMETER(float, MyScalar)
 *	SHADER_PARAMETER(FMatrix, MyMatrix)
 */
#define SHADER_PARAMETER(MemberType,MemberName) \\
	SHADER_PARAMETER_EX(MemberType,MemberName,EShaderPrecisionModifier::Float)

SHADER_PARAMETER(FVector, DirectionalLightDirection) \\
SHADER_PARAMETER(FVector, DirectionalLightColor) \\


int main() {
    return 0;
}
