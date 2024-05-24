.class public Lnet/bytebuddy/dynamic/scaffold/subclass/SubclassDynamicTypeBuilder;
.super Lnet/bytebuddy/dynamic/DynamicType$Builder$AbstractBase$Adapter;
.source "SubclassDynamicTypeBuilder.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnet/bytebuddy/dynamic/scaffold/subclass/SubclassDynamicTypeBuilder$InstrumentableMatcher;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lnet/bytebuddy/dynamic/DynamicType$Builder$AbstractBase$Adapter<",
        "TT;>;"
    }
.end annotation

.annotation runtime Lnet/bytebuddy/build/HashCodeAndEqualsPlugin$Enhance;
.end annotation


# instance fields
.field private final constructorStrategy:Lnet/bytebuddy/dynamic/scaffold/subclass/ConstructorStrategy;


# direct methods
.method public constructor <init>(Lnet/bytebuddy/dynamic/scaffold/InstrumentedType$WithFlexibleName;Lnet/bytebuddy/ClassFileVersion;Lnet/bytebuddy/implementation/auxiliary/AuxiliaryType$NamingStrategy;Lnet/bytebuddy/implementation/attribute/AnnotationValueFilter$Factory;Lnet/bytebuddy/implementation/attribute/AnnotationRetention;Lnet/bytebuddy/implementation/Implementation$Context$Factory;Lnet/bytebuddy/dynamic/scaffold/MethodGraph$Compiler;Lnet/bytebuddy/dynamic/scaffold/TypeValidation;Lnet/bytebuddy/dynamic/VisibilityBridgeStrategy;Lnet/bytebuddy/dynamic/scaffold/ClassWriterStrategy;Lnet/bytebuddy/matcher/LatentMatcher;Lnet/bytebuddy/dynamic/scaffold/subclass/ConstructorStrategy;)V
    .locals 19
    .param p1, "instrumentedType"    # Lnet/bytebuddy/dynamic/scaffold/InstrumentedType$WithFlexibleName;
    .param p2, "classFileVersion"    # Lnet/bytebuddy/ClassFileVersion;
    .param p3, "auxiliaryTypeNamingStrategy"    # Lnet/bytebuddy/implementation/auxiliary/AuxiliaryType$NamingStrategy;
    .param p4, "annotationValueFilterFactory"    # Lnet/bytebuddy/implementation/attribute/AnnotationValueFilter$Factory;
    .param p5, "annotationRetention"    # Lnet/bytebuddy/implementation/attribute/AnnotationRetention;
    .param p6, "implementationContextFactory"    # Lnet/bytebuddy/implementation/Implementation$Context$Factory;
    .param p7, "methodGraphCompiler"    # Lnet/bytebuddy/dynamic/scaffold/MethodGraph$Compiler;
    .param p8, "typeValidation"    # Lnet/bytebuddy/dynamic/scaffold/TypeValidation;
    .param p9, "visibilityBridgeStrategy"    # Lnet/bytebuddy/dynamic/VisibilityBridgeStrategy;
    .param p10, "classWriterStrategy"    # Lnet/bytebuddy/dynamic/scaffold/ClassWriterStrategy;
    .param p12, "constructorStrategy"    # Lnet/bytebuddy/dynamic/scaffold/subclass/ConstructorStrategy;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnet/bytebuddy/dynamic/scaffold/InstrumentedType$WithFlexibleName;",
            "Lnet/bytebuddy/ClassFileVersion;",
            "Lnet/bytebuddy/implementation/auxiliary/AuxiliaryType$NamingStrategy;",
            "Lnet/bytebuddy/implementation/attribute/AnnotationValueFilter$Factory;",
            "Lnet/bytebuddy/implementation/attribute/AnnotationRetention;",
            "Lnet/bytebuddy/implementation/Implementation$Context$Factory;",
            "Lnet/bytebuddy/dynamic/scaffold/MethodGraph$Compiler;",
            "Lnet/bytebuddy/dynamic/scaffold/TypeValidation;",
            "Lnet/bytebuddy/dynamic/VisibilityBridgeStrategy;",
            "Lnet/bytebuddy/dynamic/scaffold/ClassWriterStrategy;",
            "Lnet/bytebuddy/matcher/LatentMatcher<",
            "-",
            "Lnet/bytebuddy/description/method/MethodDescription;",
            ">;",
            "Lnet/bytebuddy/dynamic/scaffold/subclass/ConstructorStrategy;",
            ")V"
        }
    .end annotation

    .local p0, "this":Lnet/bytebuddy/dynamic/scaffold/subclass/SubclassDynamicTypeBuilder;, "Lnet/bytebuddy/dynamic/scaffold/subclass/SubclassDynamicTypeBuilder<TT;>;"
    .local p11, "ignoredMethods":Lnet/bytebuddy/matcher/LatentMatcher;, "Lnet/bytebuddy/matcher/LatentMatcher<-Lnet/bytebuddy/description/method/MethodDescription;>;"
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v7, p2

    move-object/from16 v8, p3

    move-object/from16 v9, p4

    move-object/from16 v10, p5

    move-object/from16 v11, p6

    move-object/from16 v12, p7

    move-object/from16 v13, p8

    move-object/from16 v14, p9

    move-object/from16 v15, p10

    move-object/from16 v16, p11

    move-object/from16 v18, p12

    .line 82
    new-instance v3, Lnet/bytebuddy/dynamic/scaffold/FieldRegistry$Default;

    move-object v2, v3

    invoke-direct {v3}, Lnet/bytebuddy/dynamic/scaffold/FieldRegistry$Default;-><init>()V

    new-instance v4, Lnet/bytebuddy/dynamic/scaffold/MethodRegistry$Default;

    move-object v3, v4

    invoke-direct {v4}, Lnet/bytebuddy/dynamic/scaffold/MethodRegistry$Default;-><init>()V

    new-instance v5, Lnet/bytebuddy/dynamic/scaffold/RecordComponentRegistry$Default;

    move-object v4, v5

    invoke-direct {v5}, Lnet/bytebuddy/dynamic/scaffold/RecordComponentRegistry$Default;-><init>()V

    sget-object v5, Lnet/bytebuddy/implementation/attribute/TypeAttributeAppender$ForInstrumentedType;->INSTANCE:Lnet/bytebuddy/implementation/attribute/TypeAttributeAppender$ForInstrumentedType;

    sget-object v6, Lnet/bytebuddy/asm/AsmVisitorWrapper$NoOp;->INSTANCE:Lnet/bytebuddy/asm/AsmVisitorWrapper$NoOp;

    .line 98
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v17

    .line 82
    invoke-direct/range {v0 .. v18}, Lnet/bytebuddy/dynamic/scaffold/subclass/SubclassDynamicTypeBuilder;-><init>(Lnet/bytebuddy/dynamic/scaffold/InstrumentedType$WithFlexibleName;Lnet/bytebuddy/dynamic/scaffold/FieldRegistry;Lnet/bytebuddy/dynamic/scaffold/MethodRegistry;Lnet/bytebuddy/dynamic/scaffold/RecordComponentRegistry;Lnet/bytebuddy/implementation/attribute/TypeAttributeAppender;Lnet/bytebuddy/asm/AsmVisitorWrapper;Lnet/bytebuddy/ClassFileVersion;Lnet/bytebuddy/implementation/auxiliary/AuxiliaryType$NamingStrategy;Lnet/bytebuddy/implementation/attribute/AnnotationValueFilter$Factory;Lnet/bytebuddy/implementation/attribute/AnnotationRetention;Lnet/bytebuddy/implementation/Implementation$Context$Factory;Lnet/bytebuddy/dynamic/scaffold/MethodGraph$Compiler;Lnet/bytebuddy/dynamic/scaffold/TypeValidation;Lnet/bytebuddy/dynamic/VisibilityBridgeStrategy;Lnet/bytebuddy/dynamic/scaffold/ClassWriterStrategy;Lnet/bytebuddy/matcher/LatentMatcher;Ljava/util/List;Lnet/bytebuddy/dynamic/scaffold/subclass/ConstructorStrategy;)V

    .line 100
    return-void
.end method

.method protected constructor <init>(Lnet/bytebuddy/dynamic/scaffold/InstrumentedType$WithFlexibleName;Lnet/bytebuddy/dynamic/scaffold/FieldRegistry;Lnet/bytebuddy/dynamic/scaffold/MethodRegistry;Lnet/bytebuddy/dynamic/scaffold/RecordComponentRegistry;Lnet/bytebuddy/implementation/attribute/TypeAttributeAppender;Lnet/bytebuddy/asm/AsmVisitorWrapper;Lnet/bytebuddy/ClassFileVersion;Lnet/bytebuddy/implementation/auxiliary/AuxiliaryType$NamingStrategy;Lnet/bytebuddy/implementation/attribute/AnnotationValueFilter$Factory;Lnet/bytebuddy/implementation/attribute/AnnotationRetention;Lnet/bytebuddy/implementation/Implementation$Context$Factory;Lnet/bytebuddy/dynamic/scaffold/MethodGraph$Compiler;Lnet/bytebuddy/dynamic/scaffold/TypeValidation;Lnet/bytebuddy/dynamic/VisibilityBridgeStrategy;Lnet/bytebuddy/dynamic/scaffold/ClassWriterStrategy;Lnet/bytebuddy/matcher/LatentMatcher;Ljava/util/List;Lnet/bytebuddy/dynamic/scaffold/subclass/ConstructorStrategy;)V
    .locals 2
    .param p1, "instrumentedType"    # Lnet/bytebuddy/dynamic/scaffold/InstrumentedType$WithFlexibleName;
    .param p2, "fieldRegistry"    # Lnet/bytebuddy/dynamic/scaffold/FieldRegistry;
    .param p3, "methodRegistry"    # Lnet/bytebuddy/dynamic/scaffold/MethodRegistry;
    .param p4, "recordComponentRegistry"    # Lnet/bytebuddy/dynamic/scaffold/RecordComponentRegistry;
    .param p5, "typeAttributeAppender"    # Lnet/bytebuddy/implementation/attribute/TypeAttributeAppender;
    .param p6, "asmVisitorWrapper"    # Lnet/bytebuddy/asm/AsmVisitorWrapper;
    .param p7, "classFileVersion"    # Lnet/bytebuddy/ClassFileVersion;
    .param p8, "auxiliaryTypeNamingStrategy"    # Lnet/bytebuddy/implementation/auxiliary/AuxiliaryType$NamingStrategy;
    .param p9, "annotationValueFilterFactory"    # Lnet/bytebuddy/implementation/attribute/AnnotationValueFilter$Factory;
    .param p10, "annotationRetention"    # Lnet/bytebuddy/implementation/attribute/AnnotationRetention;
    .param p11, "implementationContextFactory"    # Lnet/bytebuddy/implementation/Implementation$Context$Factory;
    .param p12, "methodGraphCompiler"    # Lnet/bytebuddy/dynamic/scaffold/MethodGraph$Compiler;
    .param p13, "typeValidation"    # Lnet/bytebuddy/dynamic/scaffold/TypeValidation;
    .param p14, "visibilityBridgeStrategy"    # Lnet/bytebuddy/dynamic/VisibilityBridgeStrategy;
    .param p15, "classWriterStrategy"    # Lnet/bytebuddy/dynamic/scaffold/ClassWriterStrategy;
    .param p18, "constructorStrategy"    # Lnet/bytebuddy/dynamic/scaffold/subclass/ConstructorStrategy;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnet/bytebuddy/dynamic/scaffold/InstrumentedType$WithFlexibleName;",
            "Lnet/bytebuddy/dynamic/scaffold/FieldRegistry;",
            "Lnet/bytebuddy/dynamic/scaffold/MethodRegistry;",
            "Lnet/bytebuddy/dynamic/scaffold/RecordComponentRegistry;",
            "Lnet/bytebuddy/implementation/attribute/TypeAttributeAppender;",
            "Lnet/bytebuddy/asm/AsmVisitorWrapper;",
            "Lnet/bytebuddy/ClassFileVersion;",
            "Lnet/bytebuddy/implementation/auxiliary/AuxiliaryType$NamingStrategy;",
            "Lnet/bytebuddy/implementation/attribute/AnnotationValueFilter$Factory;",
            "Lnet/bytebuddy/implementation/attribute/AnnotationRetention;",
            "Lnet/bytebuddy/implementation/Implementation$Context$Factory;",
            "Lnet/bytebuddy/dynamic/scaffold/MethodGraph$Compiler;",
            "Lnet/bytebuddy/dynamic/scaffold/TypeValidation;",
            "Lnet/bytebuddy/dynamic/VisibilityBridgeStrategy;",
            "Lnet/bytebuddy/dynamic/scaffold/ClassWriterStrategy;",
            "Lnet/bytebuddy/matcher/LatentMatcher<",
            "-",
            "Lnet/bytebuddy/description/method/MethodDescription;",
            ">;",
            "Ljava/util/List<",
            "+",
            "Lnet/bytebuddy/dynamic/DynamicType;",
            ">;",
            "Lnet/bytebuddy/dynamic/scaffold/subclass/ConstructorStrategy;",
            ")V"
        }
    .end annotation

    .line 142
    .local p0, "this":Lnet/bytebuddy/dynamic/scaffold/subclass/SubclassDynamicTypeBuilder;, "Lnet/bytebuddy/dynamic/scaffold/subclass/SubclassDynamicTypeBuilder<TT;>;"
    .local p16, "ignoredMethods":Lnet/bytebuddy/matcher/LatentMatcher;, "Lnet/bytebuddy/matcher/LatentMatcher<-Lnet/bytebuddy/description/method/MethodDescription;>;"
    .local p17, "auxiliaryTypes":Ljava/util/List;, "Ljava/util/List<+Lnet/bytebuddy/dynamic/DynamicType;>;"
    invoke-direct/range {p0 .. p17}, Lnet/bytebuddy/dynamic/DynamicType$Builder$AbstractBase$Adapter;-><init>(Lnet/bytebuddy/dynamic/scaffold/InstrumentedType$WithFlexibleName;Lnet/bytebuddy/dynamic/scaffold/FieldRegistry;Lnet/bytebuddy/dynamic/scaffold/MethodRegistry;Lnet/bytebuddy/dynamic/scaffold/RecordComponentRegistry;Lnet/bytebuddy/implementation/attribute/TypeAttributeAppender;Lnet/bytebuddy/asm/AsmVisitorWrapper;Lnet/bytebuddy/ClassFileVersion;Lnet/bytebuddy/implementation/auxiliary/AuxiliaryType$NamingStrategy;Lnet/bytebuddy/implementation/attribute/AnnotationValueFilter$Factory;Lnet/bytebuddy/implementation/attribute/AnnotationRetention;Lnet/bytebuddy/implementation/Implementation$Context$Factory;Lnet/bytebuddy/dynamic/scaffold/MethodGraph$Compiler;Lnet/bytebuddy/dynamic/scaffold/TypeValidation;Lnet/bytebuddy/dynamic/VisibilityBridgeStrategy;Lnet/bytebuddy/dynamic/scaffold/ClassWriterStrategy;Lnet/bytebuddy/matcher/LatentMatcher;Ljava/util/List;)V

    .line 159
    move-object v0, p0

    move-object/from16 v1, p18

    iput-object v1, v0, Lnet/bytebuddy/dynamic/scaffold/subclass/SubclassDynamicTypeBuilder;->constructorStrategy:Lnet/bytebuddy/dynamic/scaffold/subclass/ConstructorStrategy;

    .line 160
    return-void
.end method

.method private applyConstructorStrategy(Lnet/bytebuddy/dynamic/scaffold/InstrumentedType;)Lnet/bytebuddy/dynamic/scaffold/InstrumentedType;
    .locals 2
    .param p1, "instrumentedType"    # Lnet/bytebuddy/dynamic/scaffold/InstrumentedType;

    .line 242
    .local p0, "this":Lnet/bytebuddy/dynamic/scaffold/subclass/SubclassDynamicTypeBuilder;, "Lnet/bytebuddy/dynamic/scaffold/subclass/SubclassDynamicTypeBuilder<TT;>;"
    invoke-interface {p1}, Lnet/bytebuddy/dynamic/scaffold/InstrumentedType;->isInterface()Z

    move-result v0

    if-nez v0, :cond_0

    .line 243
    iget-object v0, p0, Lnet/bytebuddy/dynamic/scaffold/subclass/SubclassDynamicTypeBuilder;->constructorStrategy:Lnet/bytebuddy/dynamic/scaffold/subclass/ConstructorStrategy;

    invoke-interface {v0, p1}, Lnet/bytebuddy/dynamic/scaffold/subclass/ConstructorStrategy;->extractConstructors(Lnet/bytebuddy/description/type/TypeDescription;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lnet/bytebuddy/description/method/MethodDescription$Token;

    .line 244
    .local v1, "token":Lnet/bytebuddy/description/method/MethodDescription$Token;
    invoke-interface {p1, v1}, Lnet/bytebuddy/dynamic/scaffold/InstrumentedType;->withMethod(Lnet/bytebuddy/description/method/MethodDescription$Token;)Lnet/bytebuddy/dynamic/scaffold/InstrumentedType;

    move-result-object p1

    .line 245
    .end local v1    # "token":Lnet/bytebuddy/description/method/MethodDescription$Token;
    goto :goto_0

    .line 247
    :cond_0
    return-object p1
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    invoke-super {p0, p1}, Lnet/bytebuddy/dynamic/DynamicType$Builder$AbstractBase$Adapter;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x1

    if-ne p0, p1, :cond_1

    return v0

    :cond_1
    if-nez p1, :cond_2

    return v1

    :cond_2
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_3

    return v1

    :cond_3
    iget-object v2, p0, Lnet/bytebuddy/dynamic/scaffold/subclass/SubclassDynamicTypeBuilder;->constructorStrategy:Lnet/bytebuddy/dynamic/scaffold/subclass/ConstructorStrategy;

    check-cast p1, Lnet/bytebuddy/dynamic/scaffold/subclass/SubclassDynamicTypeBuilder;

    iget-object p1, p1, Lnet/bytebuddy/dynamic/scaffold/subclass/SubclassDynamicTypeBuilder;->constructorStrategy:Lnet/bytebuddy/dynamic/scaffold/subclass/ConstructorStrategy;

    invoke-virtual {v2, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_4

    return v1

    :cond_4
    return v0
.end method

.method public hashCode()I
    .locals 2

    invoke-super {p0}, Lnet/bytebuddy/dynamic/DynamicType$Builder$AbstractBase$Adapter;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lnet/bytebuddy/dynamic/scaffold/subclass/SubclassDynamicTypeBuilder;->constructorStrategy:Lnet/bytebuddy/dynamic/scaffold/subclass/ConstructorStrategy;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public make(Lnet/bytebuddy/dynamic/TypeResolutionStrategy;)Lnet/bytebuddy/dynamic/DynamicType$Unloaded;
    .locals 1
    .param p1, "typeResolutionStrategy"    # Lnet/bytebuddy/dynamic/TypeResolutionStrategy;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnet/bytebuddy/dynamic/TypeResolutionStrategy;",
            ")",
            "Lnet/bytebuddy/dynamic/DynamicType$Unloaded<",
            "TT;>;"
        }
    .end annotation

    .line 204
    .local p0, "this":Lnet/bytebuddy/dynamic/scaffold/subclass/SubclassDynamicTypeBuilder;, "Lnet/bytebuddy/dynamic/scaffold/subclass/SubclassDynamicTypeBuilder<TT;>;"
    invoke-static {}, Lnet/bytebuddy/pool/TypePool$ClassLoading;->ofSystemLoader()Lnet/bytebuddy/pool/TypePool;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lnet/bytebuddy/dynamic/scaffold/subclass/SubclassDynamicTypeBuilder;->make(Lnet/bytebuddy/dynamic/TypeResolutionStrategy;Lnet/bytebuddy/pool/TypePool;)Lnet/bytebuddy/dynamic/DynamicType$Unloaded;

    move-result-object v0

    return-object v0
.end method

.method public make(Lnet/bytebuddy/dynamic/TypeResolutionStrategy;Lnet/bytebuddy/pool/TypePool;)Lnet/bytebuddy/dynamic/DynamicType$Unloaded;
    .locals 18
    .param p1, "typeResolutionStrategy"    # Lnet/bytebuddy/dynamic/TypeResolutionStrategy;
    .param p2, "typePool"    # Lnet/bytebuddy/pool/TypePool;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnet/bytebuddy/dynamic/TypeResolutionStrategy;",
            "Lnet/bytebuddy/pool/TypePool;",
            ")",
            "Lnet/bytebuddy/dynamic/DynamicType$Unloaded<",
            "TT;>;"
        }
    .end annotation

    .line 211
    .local p0, "this":Lnet/bytebuddy/dynamic/scaffold/subclass/SubclassDynamicTypeBuilder;, "Lnet/bytebuddy/dynamic/scaffold/subclass/SubclassDynamicTypeBuilder<TT;>;"
    move-object/from16 v0, p0

    iget-object v1, v0, Lnet/bytebuddy/dynamic/scaffold/subclass/SubclassDynamicTypeBuilder;->constructorStrategy:Lnet/bytebuddy/dynamic/scaffold/subclass/ConstructorStrategy;

    iget-object v2, v0, Lnet/bytebuddy/dynamic/scaffold/subclass/SubclassDynamicTypeBuilder;->instrumentedType:Lnet/bytebuddy/dynamic/scaffold/InstrumentedType$WithFlexibleName;

    iget-object v3, v0, Lnet/bytebuddy/dynamic/scaffold/subclass/SubclassDynamicTypeBuilder;->methodRegistry:Lnet/bytebuddy/dynamic/scaffold/MethodRegistry;

    .line 212
    invoke-interface {v1, v2, v3}, Lnet/bytebuddy/dynamic/scaffold/subclass/ConstructorStrategy;->inject(Lnet/bytebuddy/description/type/TypeDescription;Lnet/bytebuddy/dynamic/scaffold/MethodRegistry;)Lnet/bytebuddy/dynamic/scaffold/MethodRegistry;

    move-result-object v4

    iget-object v1, v0, Lnet/bytebuddy/dynamic/scaffold/subclass/SubclassDynamicTypeBuilder;->instrumentedType:Lnet/bytebuddy/dynamic/scaffold/InstrumentedType$WithFlexibleName;

    .line 213
    invoke-direct {v0, v1}, Lnet/bytebuddy/dynamic/scaffold/subclass/SubclassDynamicTypeBuilder;->applyConstructorStrategy(Lnet/bytebuddy/dynamic/scaffold/InstrumentedType;)Lnet/bytebuddy/dynamic/scaffold/InstrumentedType;

    move-result-object v5

    iget-object v6, v0, Lnet/bytebuddy/dynamic/scaffold/subclass/SubclassDynamicTypeBuilder;->methodGraphCompiler:Lnet/bytebuddy/dynamic/scaffold/MethodGraph$Compiler;

    iget-object v7, v0, Lnet/bytebuddy/dynamic/scaffold/subclass/SubclassDynamicTypeBuilder;->typeValidation:Lnet/bytebuddy/dynamic/scaffold/TypeValidation;

    iget-object v8, v0, Lnet/bytebuddy/dynamic/scaffold/subclass/SubclassDynamicTypeBuilder;->visibilityBridgeStrategy:Lnet/bytebuddy/dynamic/VisibilityBridgeStrategy;

    new-instance v9, Lnet/bytebuddy/dynamic/scaffold/subclass/SubclassDynamicTypeBuilder$InstrumentableMatcher;

    iget-object v1, v0, Lnet/bytebuddy/dynamic/scaffold/subclass/SubclassDynamicTypeBuilder;->ignoredMethods:Lnet/bytebuddy/matcher/LatentMatcher;

    invoke-direct {v9, v1}, Lnet/bytebuddy/dynamic/scaffold/subclass/SubclassDynamicTypeBuilder$InstrumentableMatcher;-><init>(Lnet/bytebuddy/matcher/LatentMatcher;)V

    invoke-interface/range {v4 .. v9}, Lnet/bytebuddy/dynamic/scaffold/MethodRegistry;->prepare(Lnet/bytebuddy/dynamic/scaffold/InstrumentedType;Lnet/bytebuddy/dynamic/scaffold/MethodGraph$Compiler;Lnet/bytebuddy/dynamic/scaffold/TypeValidation;Lnet/bytebuddy/dynamic/VisibilityBridgeStrategy;Lnet/bytebuddy/matcher/LatentMatcher;)Lnet/bytebuddy/dynamic/scaffold/MethodRegistry$Prepared;

    move-result-object v1

    sget-object v2, Lnet/bytebuddy/dynamic/scaffold/subclass/SubclassImplementationTarget$Factory;->SUPER_CLASS:Lnet/bytebuddy/dynamic/scaffold/subclass/SubclassImplementationTarget$Factory;

    iget-object v3, v0, Lnet/bytebuddy/dynamic/scaffold/subclass/SubclassDynamicTypeBuilder;->classFileVersion:Lnet/bytebuddy/ClassFileVersion;

    .line 218
    invoke-interface {v1, v2, v3}, Lnet/bytebuddy/dynamic/scaffold/MethodRegistry$Prepared;->compile(Lnet/bytebuddy/implementation/Implementation$Target$Factory;Lnet/bytebuddy/ClassFileVersion;)Lnet/bytebuddy/dynamic/scaffold/MethodRegistry$Compiled;

    move-result-object v1

    .line 219
    .local v1, "methodRegistry":Lnet/bytebuddy/dynamic/scaffold/MethodRegistry$Compiled;
    iget-object v5, v0, Lnet/bytebuddy/dynamic/scaffold/subclass/SubclassDynamicTypeBuilder;->auxiliaryTypes:Ljava/util/List;

    iget-object v2, v0, Lnet/bytebuddy/dynamic/scaffold/subclass/SubclassDynamicTypeBuilder;->fieldRegistry:Lnet/bytebuddy/dynamic/scaffold/FieldRegistry;

    .line 221
    invoke-interface {v1}, Lnet/bytebuddy/dynamic/scaffold/MethodRegistry$Compiled;->getInstrumentedType()Lnet/bytebuddy/description/type/TypeDescription;

    move-result-object v3

    invoke-interface {v2, v3}, Lnet/bytebuddy/dynamic/scaffold/FieldRegistry;->compile(Lnet/bytebuddy/description/type/TypeDescription;)Lnet/bytebuddy/dynamic/scaffold/FieldRegistry$Compiled;

    move-result-object v6

    iget-object v2, v0, Lnet/bytebuddy/dynamic/scaffold/subclass/SubclassDynamicTypeBuilder;->recordComponentRegistry:Lnet/bytebuddy/dynamic/scaffold/RecordComponentRegistry;

    .line 222
    invoke-interface {v1}, Lnet/bytebuddy/dynamic/scaffold/MethodRegistry$Compiled;->getInstrumentedType()Lnet/bytebuddy/description/type/TypeDescription;

    move-result-object v3

    invoke-interface {v2, v3}, Lnet/bytebuddy/dynamic/scaffold/RecordComponentRegistry;->compile(Lnet/bytebuddy/description/type/TypeDescription;)Lnet/bytebuddy/dynamic/scaffold/RecordComponentRegistry$Compiled;

    move-result-object v7

    iget-object v8, v0, Lnet/bytebuddy/dynamic/scaffold/subclass/SubclassDynamicTypeBuilder;->typeAttributeAppender:Lnet/bytebuddy/implementation/attribute/TypeAttributeAppender;

    iget-object v9, v0, Lnet/bytebuddy/dynamic/scaffold/subclass/SubclassDynamicTypeBuilder;->asmVisitorWrapper:Lnet/bytebuddy/asm/AsmVisitorWrapper;

    iget-object v10, v0, Lnet/bytebuddy/dynamic/scaffold/subclass/SubclassDynamicTypeBuilder;->classFileVersion:Lnet/bytebuddy/ClassFileVersion;

    iget-object v11, v0, Lnet/bytebuddy/dynamic/scaffold/subclass/SubclassDynamicTypeBuilder;->annotationValueFilterFactory:Lnet/bytebuddy/implementation/attribute/AnnotationValueFilter$Factory;

    iget-object v12, v0, Lnet/bytebuddy/dynamic/scaffold/subclass/SubclassDynamicTypeBuilder;->annotationRetention:Lnet/bytebuddy/implementation/attribute/AnnotationRetention;

    iget-object v13, v0, Lnet/bytebuddy/dynamic/scaffold/subclass/SubclassDynamicTypeBuilder;->auxiliaryTypeNamingStrategy:Lnet/bytebuddy/implementation/auxiliary/AuxiliaryType$NamingStrategy;

    iget-object v14, v0, Lnet/bytebuddy/dynamic/scaffold/subclass/SubclassDynamicTypeBuilder;->implementationContextFactory:Lnet/bytebuddy/implementation/Implementation$Context$Factory;

    iget-object v15, v0, Lnet/bytebuddy/dynamic/scaffold/subclass/SubclassDynamicTypeBuilder;->typeValidation:Lnet/bytebuddy/dynamic/scaffold/TypeValidation;

    iget-object v2, v0, Lnet/bytebuddy/dynamic/scaffold/subclass/SubclassDynamicTypeBuilder;->classWriterStrategy:Lnet/bytebuddy/dynamic/scaffold/ClassWriterStrategy;

    .line 219
    move-object v4, v1

    move-object/from16 v16, v2

    move-object/from16 v17, p2

    invoke-static/range {v4 .. v17}, Lnet/bytebuddy/dynamic/scaffold/TypeWriter$Default;->forCreation(Lnet/bytebuddy/dynamic/scaffold/MethodRegistry$Compiled;Ljava/util/List;Lnet/bytebuddy/dynamic/scaffold/TypeWriter$FieldPool;Lnet/bytebuddy/dynamic/scaffold/TypeWriter$RecordComponentPool;Lnet/bytebuddy/implementation/attribute/TypeAttributeAppender;Lnet/bytebuddy/asm/AsmVisitorWrapper;Lnet/bytebuddy/ClassFileVersion;Lnet/bytebuddy/implementation/attribute/AnnotationValueFilter$Factory;Lnet/bytebuddy/implementation/attribute/AnnotationRetention;Lnet/bytebuddy/implementation/auxiliary/AuxiliaryType$NamingStrategy;Lnet/bytebuddy/implementation/Implementation$Context$Factory;Lnet/bytebuddy/dynamic/scaffold/TypeValidation;Lnet/bytebuddy/dynamic/scaffold/ClassWriterStrategy;Lnet/bytebuddy/pool/TypePool;)Lnet/bytebuddy/dynamic/scaffold/TypeWriter;

    move-result-object v2

    .line 232
    invoke-interface/range {p1 .. p1}, Lnet/bytebuddy/dynamic/TypeResolutionStrategy;->resolve()Lnet/bytebuddy/dynamic/TypeResolutionStrategy$Resolved;

    move-result-object v3

    invoke-interface {v2, v3}, Lnet/bytebuddy/dynamic/scaffold/TypeWriter;->make(Lnet/bytebuddy/dynamic/TypeResolutionStrategy$Resolved;)Lnet/bytebuddy/dynamic/DynamicType$Unloaded;

    move-result-object v2

    .line 219
    return-object v2
.end method

.method protected materialize(Lnet/bytebuddy/dynamic/scaffold/InstrumentedType$WithFlexibleName;Lnet/bytebuddy/dynamic/scaffold/FieldRegistry;Lnet/bytebuddy/dynamic/scaffold/MethodRegistry;Lnet/bytebuddy/dynamic/scaffold/RecordComponentRegistry;Lnet/bytebuddy/implementation/attribute/TypeAttributeAppender;Lnet/bytebuddy/asm/AsmVisitorWrapper;Lnet/bytebuddy/ClassFileVersion;Lnet/bytebuddy/implementation/auxiliary/AuxiliaryType$NamingStrategy;Lnet/bytebuddy/implementation/attribute/AnnotationValueFilter$Factory;Lnet/bytebuddy/implementation/attribute/AnnotationRetention;Lnet/bytebuddy/implementation/Implementation$Context$Factory;Lnet/bytebuddy/dynamic/scaffold/MethodGraph$Compiler;Lnet/bytebuddy/dynamic/scaffold/TypeValidation;Lnet/bytebuddy/dynamic/VisibilityBridgeStrategy;Lnet/bytebuddy/dynamic/scaffold/ClassWriterStrategy;Lnet/bytebuddy/matcher/LatentMatcher;Ljava/util/List;)Lnet/bytebuddy/dynamic/DynamicType$Builder;
    .locals 22
    .param p1, "instrumentedType"    # Lnet/bytebuddy/dynamic/scaffold/InstrumentedType$WithFlexibleName;
    .param p2, "fieldRegistry"    # Lnet/bytebuddy/dynamic/scaffold/FieldRegistry;
    .param p3, "methodRegistry"    # Lnet/bytebuddy/dynamic/scaffold/MethodRegistry;
    .param p4, "recordComponentRegistry"    # Lnet/bytebuddy/dynamic/scaffold/RecordComponentRegistry;
    .param p5, "typeAttributeAppender"    # Lnet/bytebuddy/implementation/attribute/TypeAttributeAppender;
    .param p6, "asmVisitorWrapper"    # Lnet/bytebuddy/asm/AsmVisitorWrapper;
    .param p7, "classFileVersion"    # Lnet/bytebuddy/ClassFileVersion;
    .param p8, "auxiliaryTypeNamingStrategy"    # Lnet/bytebuddy/implementation/auxiliary/AuxiliaryType$NamingStrategy;
    .param p9, "annotationValueFilterFactory"    # Lnet/bytebuddy/implementation/attribute/AnnotationValueFilter$Factory;
    .param p10, "annotationRetention"    # Lnet/bytebuddy/implementation/attribute/AnnotationRetention;
    .param p11, "implementationContextFactory"    # Lnet/bytebuddy/implementation/Implementation$Context$Factory;
    .param p12, "methodGraphCompiler"    # Lnet/bytebuddy/dynamic/scaffold/MethodGraph$Compiler;
    .param p13, "typeValidation"    # Lnet/bytebuddy/dynamic/scaffold/TypeValidation;
    .param p14, "visibilityBridgeStrategy"    # Lnet/bytebuddy/dynamic/VisibilityBridgeStrategy;
    .param p15, "classWriterStrategy"    # Lnet/bytebuddy/dynamic/scaffold/ClassWriterStrategy;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnet/bytebuddy/dynamic/scaffold/InstrumentedType$WithFlexibleName;",
            "Lnet/bytebuddy/dynamic/scaffold/FieldRegistry;",
            "Lnet/bytebuddy/dynamic/scaffold/MethodRegistry;",
            "Lnet/bytebuddy/dynamic/scaffold/RecordComponentRegistry;",
            "Lnet/bytebuddy/implementation/attribute/TypeAttributeAppender;",
            "Lnet/bytebuddy/asm/AsmVisitorWrapper;",
            "Lnet/bytebuddy/ClassFileVersion;",
            "Lnet/bytebuddy/implementation/auxiliary/AuxiliaryType$NamingStrategy;",
            "Lnet/bytebuddy/implementation/attribute/AnnotationValueFilter$Factory;",
            "Lnet/bytebuddy/implementation/attribute/AnnotationRetention;",
            "Lnet/bytebuddy/implementation/Implementation$Context$Factory;",
            "Lnet/bytebuddy/dynamic/scaffold/MethodGraph$Compiler;",
            "Lnet/bytebuddy/dynamic/scaffold/TypeValidation;",
            "Lnet/bytebuddy/dynamic/VisibilityBridgeStrategy;",
            "Lnet/bytebuddy/dynamic/scaffold/ClassWriterStrategy;",
            "Lnet/bytebuddy/matcher/LatentMatcher<",
            "-",
            "Lnet/bytebuddy/description/method/MethodDescription;",
            ">;",
            "Ljava/util/List<",
            "+",
            "Lnet/bytebuddy/dynamic/DynamicType;",
            ">;)",
            "Lnet/bytebuddy/dynamic/DynamicType$Builder<",
            "TT;>;"
        }
    .end annotation

    .local p0, "this":Lnet/bytebuddy/dynamic/scaffold/subclass/SubclassDynamicTypeBuilder;, "Lnet/bytebuddy/dynamic/scaffold/subclass/SubclassDynamicTypeBuilder<TT;>;"
    .local p16, "ignoredMethods":Lnet/bytebuddy/matcher/LatentMatcher;, "Lnet/bytebuddy/matcher/LatentMatcher<-Lnet/bytebuddy/description/method/MethodDescription;>;"
    .local p17, "auxiliaryTypes":Ljava/util/List;, "Ljava/util/List<+Lnet/bytebuddy/dynamic/DynamicType;>;"
    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    move-object/from16 v6, p6

    move-object/from16 v7, p7

    move-object/from16 v8, p8

    move-object/from16 v9, p9

    move-object/from16 v10, p10

    move-object/from16 v11, p11

    move-object/from16 v12, p12

    move-object/from16 v13, p13

    move-object/from16 v14, p14

    move-object/from16 v15, p15

    move-object/from16 v16, p16

    move-object/from16 v17, p17

    .line 180
    new-instance v19, Lnet/bytebuddy/dynamic/scaffold/subclass/SubclassDynamicTypeBuilder;

    move-object/from16 v0, v19

    move-object/from16 v20, v0

    move-object/from16 v21, v1

    move-object/from16 v0, p0

    iget-object v1, v0, Lnet/bytebuddy/dynamic/scaffold/subclass/SubclassDynamicTypeBuilder;->constructorStrategy:Lnet/bytebuddy/dynamic/scaffold/subclass/ConstructorStrategy;

    move-object/from16 v18, v1

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-direct/range {v0 .. v18}, Lnet/bytebuddy/dynamic/scaffold/subclass/SubclassDynamicTypeBuilder;-><init>(Lnet/bytebuddy/dynamic/scaffold/InstrumentedType$WithFlexibleName;Lnet/bytebuddy/dynamic/scaffold/FieldRegistry;Lnet/bytebuddy/dynamic/scaffold/MethodRegistry;Lnet/bytebuddy/dynamic/scaffold/RecordComponentRegistry;Lnet/bytebuddy/implementation/attribute/TypeAttributeAppender;Lnet/bytebuddy/asm/AsmVisitorWrapper;Lnet/bytebuddy/ClassFileVersion;Lnet/bytebuddy/implementation/auxiliary/AuxiliaryType$NamingStrategy;Lnet/bytebuddy/implementation/attribute/AnnotationValueFilter$Factory;Lnet/bytebuddy/implementation/attribute/AnnotationRetention;Lnet/bytebuddy/implementation/Implementation$Context$Factory;Lnet/bytebuddy/dynamic/scaffold/MethodGraph$Compiler;Lnet/bytebuddy/dynamic/scaffold/TypeValidation;Lnet/bytebuddy/dynamic/VisibilityBridgeStrategy;Lnet/bytebuddy/dynamic/scaffold/ClassWriterStrategy;Lnet/bytebuddy/matcher/LatentMatcher;Ljava/util/List;Lnet/bytebuddy/dynamic/scaffold/subclass/ConstructorStrategy;)V

    return-object v19
.end method
