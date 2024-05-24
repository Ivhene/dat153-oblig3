.class public Lnet/bytebuddy/dynamic/scaffold/inline/RedefinitionDynamicTypeBuilder;
.super Lnet/bytebuddy/dynamic/scaffold/inline/AbstractInliningDynamicTypeBuilder;
.source "RedefinitionDynamicTypeBuilder.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lnet/bytebuddy/dynamic/scaffold/inline/AbstractInliningDynamicTypeBuilder<",
        "TT;>;"
    }
.end annotation


# direct methods
.method public constructor <init>(Lnet/bytebuddy/dynamic/scaffold/InstrumentedType$WithFlexibleName;Lnet/bytebuddy/ClassFileVersion;Lnet/bytebuddy/implementation/auxiliary/AuxiliaryType$NamingStrategy;Lnet/bytebuddy/implementation/attribute/AnnotationValueFilter$Factory;Lnet/bytebuddy/implementation/attribute/AnnotationRetention;Lnet/bytebuddy/implementation/Implementation$Context$Factory;Lnet/bytebuddy/dynamic/scaffold/MethodGraph$Compiler;Lnet/bytebuddy/dynamic/scaffold/TypeValidation;Lnet/bytebuddy/dynamic/VisibilityBridgeStrategy;Lnet/bytebuddy/dynamic/scaffold/ClassWriterStrategy;Lnet/bytebuddy/matcher/LatentMatcher;Lnet/bytebuddy/description/type/TypeDescription;Lnet/bytebuddy/dynamic/ClassFileLocator;)V
    .locals 20
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
    .param p12, "originalType"    # Lnet/bytebuddy/description/type/TypeDescription;
    .param p13, "classFileLocator"    # Lnet/bytebuddy/dynamic/ClassFileLocator;
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
            "Lnet/bytebuddy/description/type/TypeDescription;",
            "Lnet/bytebuddy/dynamic/ClassFileLocator;",
            ")V"
        }
    .end annotation

    .line 75
    .local p0, "this":Lnet/bytebuddy/dynamic/scaffold/inline/RedefinitionDynamicTypeBuilder;, "Lnet/bytebuddy/dynamic/scaffold/inline/RedefinitionDynamicTypeBuilder<TT;>;"
    .local p11, "ignoredMethods":Lnet/bytebuddy/matcher/LatentMatcher;, "Lnet/bytebuddy/matcher/LatentMatcher<-Lnet/bytebuddy/description/method/MethodDescription;>;"
    new-instance v2, Lnet/bytebuddy/dynamic/scaffold/FieldRegistry$Default;

    invoke-direct {v2}, Lnet/bytebuddy/dynamic/scaffold/FieldRegistry$Default;-><init>()V

    new-instance v3, Lnet/bytebuddy/dynamic/scaffold/MethodRegistry$Default;

    invoke-direct {v3}, Lnet/bytebuddy/dynamic/scaffold/MethodRegistry$Default;-><init>()V

    new-instance v4, Lnet/bytebuddy/dynamic/scaffold/RecordComponentRegistry$Default;

    invoke-direct {v4}, Lnet/bytebuddy/dynamic/scaffold/RecordComponentRegistry$Default;-><init>()V

    .line 79
    invoke-virtual/range {p5 .. p5}, Lnet/bytebuddy/implementation/attribute/AnnotationRetention;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lnet/bytebuddy/implementation/attribute/TypeAttributeAppender$ForInstrumentedType$Differentiating;

    move-object/from16 v15, p12

    invoke-direct {v0, v15}, Lnet/bytebuddy/implementation/attribute/TypeAttributeAppender$ForInstrumentedType$Differentiating;-><init>(Lnet/bytebuddy/description/type/TypeDescription;)V

    goto :goto_0

    :cond_0
    move-object/from16 v15, p12

    sget-object v0, Lnet/bytebuddy/implementation/attribute/TypeAttributeAppender$ForInstrumentedType;->INSTANCE:Lnet/bytebuddy/implementation/attribute/TypeAttributeAppender$ForInstrumentedType;

    :goto_0
    move-object v5, v0

    sget-object v6, Lnet/bytebuddy/asm/AsmVisitorWrapper$NoOp;->INSTANCE:Lnet/bytebuddy/asm/AsmVisitorWrapper$NoOp;

    .line 93
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v17

    .line 75
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

    move-object/from16 v19, p13

    invoke-direct/range {v0 .. v19}, Lnet/bytebuddy/dynamic/scaffold/inline/RedefinitionDynamicTypeBuilder;-><init>(Lnet/bytebuddy/dynamic/scaffold/InstrumentedType$WithFlexibleName;Lnet/bytebuddy/dynamic/scaffold/FieldRegistry;Lnet/bytebuddy/dynamic/scaffold/MethodRegistry;Lnet/bytebuddy/dynamic/scaffold/RecordComponentRegistry;Lnet/bytebuddy/implementation/attribute/TypeAttributeAppender;Lnet/bytebuddy/asm/AsmVisitorWrapper;Lnet/bytebuddy/ClassFileVersion;Lnet/bytebuddy/implementation/auxiliary/AuxiliaryType$NamingStrategy;Lnet/bytebuddy/implementation/attribute/AnnotationValueFilter$Factory;Lnet/bytebuddy/implementation/attribute/AnnotationRetention;Lnet/bytebuddy/implementation/Implementation$Context$Factory;Lnet/bytebuddy/dynamic/scaffold/MethodGraph$Compiler;Lnet/bytebuddy/dynamic/scaffold/TypeValidation;Lnet/bytebuddy/dynamic/VisibilityBridgeStrategy;Lnet/bytebuddy/dynamic/scaffold/ClassWriterStrategy;Lnet/bytebuddy/matcher/LatentMatcher;Ljava/util/List;Lnet/bytebuddy/description/type/TypeDescription;Lnet/bytebuddy/dynamic/ClassFileLocator;)V

    .line 96
    return-void
.end method

.method protected constructor <init>(Lnet/bytebuddy/dynamic/scaffold/InstrumentedType$WithFlexibleName;Lnet/bytebuddy/dynamic/scaffold/FieldRegistry;Lnet/bytebuddy/dynamic/scaffold/MethodRegistry;Lnet/bytebuddy/dynamic/scaffold/RecordComponentRegistry;Lnet/bytebuddy/implementation/attribute/TypeAttributeAppender;Lnet/bytebuddy/asm/AsmVisitorWrapper;Lnet/bytebuddy/ClassFileVersion;Lnet/bytebuddy/implementation/auxiliary/AuxiliaryType$NamingStrategy;Lnet/bytebuddy/implementation/attribute/AnnotationValueFilter$Factory;Lnet/bytebuddy/implementation/attribute/AnnotationRetention;Lnet/bytebuddy/implementation/Implementation$Context$Factory;Lnet/bytebuddy/dynamic/scaffold/MethodGraph$Compiler;Lnet/bytebuddy/dynamic/scaffold/TypeValidation;Lnet/bytebuddy/dynamic/VisibilityBridgeStrategy;Lnet/bytebuddy/dynamic/scaffold/ClassWriterStrategy;Lnet/bytebuddy/matcher/LatentMatcher;Ljava/util/List;Lnet/bytebuddy/description/type/TypeDescription;Lnet/bytebuddy/dynamic/ClassFileLocator;)V
    .locals 0
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
    .param p18, "originalType"    # Lnet/bytebuddy/description/type/TypeDescription;
    .param p19, "classFileLocator"    # Lnet/bytebuddy/dynamic/ClassFileLocator;
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
            "Lnet/bytebuddy/description/type/TypeDescription;",
            "Lnet/bytebuddy/dynamic/ClassFileLocator;",
            ")V"
        }
    .end annotation

    .line 140
    .local p0, "this":Lnet/bytebuddy/dynamic/scaffold/inline/RedefinitionDynamicTypeBuilder;, "Lnet/bytebuddy/dynamic/scaffold/inline/RedefinitionDynamicTypeBuilder<TT;>;"
    .local p16, "ignoredMethods":Lnet/bytebuddy/matcher/LatentMatcher;, "Lnet/bytebuddy/matcher/LatentMatcher<-Lnet/bytebuddy/description/method/MethodDescription;>;"
    .local p17, "auxiliaryTypes":Ljava/util/List;, "Ljava/util/List<+Lnet/bytebuddy/dynamic/DynamicType;>;"
    invoke-direct/range {p0 .. p19}, Lnet/bytebuddy/dynamic/scaffold/inline/AbstractInliningDynamicTypeBuilder;-><init>(Lnet/bytebuddy/dynamic/scaffold/InstrumentedType$WithFlexibleName;Lnet/bytebuddy/dynamic/scaffold/FieldRegistry;Lnet/bytebuddy/dynamic/scaffold/MethodRegistry;Lnet/bytebuddy/dynamic/scaffold/RecordComponentRegistry;Lnet/bytebuddy/implementation/attribute/TypeAttributeAppender;Lnet/bytebuddy/asm/AsmVisitorWrapper;Lnet/bytebuddy/ClassFileVersion;Lnet/bytebuddy/implementation/auxiliary/AuxiliaryType$NamingStrategy;Lnet/bytebuddy/implementation/attribute/AnnotationValueFilter$Factory;Lnet/bytebuddy/implementation/attribute/AnnotationRetention;Lnet/bytebuddy/implementation/Implementation$Context$Factory;Lnet/bytebuddy/dynamic/scaffold/MethodGraph$Compiler;Lnet/bytebuddy/dynamic/scaffold/TypeValidation;Lnet/bytebuddy/dynamic/VisibilityBridgeStrategy;Lnet/bytebuddy/dynamic/scaffold/ClassWriterStrategy;Lnet/bytebuddy/matcher/LatentMatcher;Ljava/util/List;Lnet/bytebuddy/description/type/TypeDescription;Lnet/bytebuddy/dynamic/ClassFileLocator;)V

    .line 159
    return-void
.end method


# virtual methods
.method public make(Lnet/bytebuddy/dynamic/TypeResolutionStrategy;Lnet/bytebuddy/pool/TypePool;)Lnet/bytebuddy/dynamic/DynamicType$Unloaded;
    .locals 23
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

    .line 204
    .local p0, "this":Lnet/bytebuddy/dynamic/scaffold/inline/RedefinitionDynamicTypeBuilder;, "Lnet/bytebuddy/dynamic/scaffold/inline/RedefinitionDynamicTypeBuilder<TT;>;"
    move-object/from16 v0, p0

    iget-object v1, v0, Lnet/bytebuddy/dynamic/scaffold/inline/RedefinitionDynamicTypeBuilder;->methodRegistry:Lnet/bytebuddy/dynamic/scaffold/MethodRegistry;

    iget-object v2, v0, Lnet/bytebuddy/dynamic/scaffold/inline/RedefinitionDynamicTypeBuilder;->instrumentedType:Lnet/bytebuddy/dynamic/scaffold/InstrumentedType$WithFlexibleName;

    iget-object v3, v0, Lnet/bytebuddy/dynamic/scaffold/inline/RedefinitionDynamicTypeBuilder;->methodGraphCompiler:Lnet/bytebuddy/dynamic/scaffold/MethodGraph$Compiler;

    iget-object v4, v0, Lnet/bytebuddy/dynamic/scaffold/inline/RedefinitionDynamicTypeBuilder;->typeValidation:Lnet/bytebuddy/dynamic/scaffold/TypeValidation;

    iget-object v5, v0, Lnet/bytebuddy/dynamic/scaffold/inline/RedefinitionDynamicTypeBuilder;->visibilityBridgeStrategy:Lnet/bytebuddy/dynamic/VisibilityBridgeStrategy;

    iget-object v6, v0, Lnet/bytebuddy/dynamic/scaffold/inline/RedefinitionDynamicTypeBuilder;->ignoredMethods:Lnet/bytebuddy/matcher/LatentMatcher;

    iget-object v7, v0, Lnet/bytebuddy/dynamic/scaffold/inline/RedefinitionDynamicTypeBuilder;->originalType:Lnet/bytebuddy/description/type/TypeDescription;

    .line 208
    invoke-static {v6, v7}, Lnet/bytebuddy/dynamic/scaffold/inline/InliningImplementationMatcher;->of(Lnet/bytebuddy/matcher/LatentMatcher;Lnet/bytebuddy/description/type/TypeDescription;)Lnet/bytebuddy/matcher/LatentMatcher;

    move-result-object v6

    .line 204
    invoke-interface/range {v1 .. v6}, Lnet/bytebuddy/dynamic/scaffold/MethodRegistry;->prepare(Lnet/bytebuddy/dynamic/scaffold/InstrumentedType;Lnet/bytebuddy/dynamic/scaffold/MethodGraph$Compiler;Lnet/bytebuddy/dynamic/scaffold/TypeValidation;Lnet/bytebuddy/dynamic/VisibilityBridgeStrategy;Lnet/bytebuddy/matcher/LatentMatcher;)Lnet/bytebuddy/dynamic/scaffold/MethodRegistry$Prepared;

    move-result-object v1

    .line 209
    .local v1, "methodRegistry":Lnet/bytebuddy/dynamic/scaffold/MethodRegistry$Prepared;
    iget-object v8, v0, Lnet/bytebuddy/dynamic/scaffold/inline/RedefinitionDynamicTypeBuilder;->auxiliaryTypes:Ljava/util/List;

    iget-object v2, v0, Lnet/bytebuddy/dynamic/scaffold/inline/RedefinitionDynamicTypeBuilder;->fieldRegistry:Lnet/bytebuddy/dynamic/scaffold/FieldRegistry;

    .line 211
    invoke-interface {v1}, Lnet/bytebuddy/dynamic/scaffold/MethodRegistry$Prepared;->getInstrumentedType()Lnet/bytebuddy/description/type/TypeDescription;

    move-result-object v3

    invoke-interface {v2, v3}, Lnet/bytebuddy/dynamic/scaffold/FieldRegistry;->compile(Lnet/bytebuddy/description/type/TypeDescription;)Lnet/bytebuddy/dynamic/scaffold/FieldRegistry$Compiled;

    move-result-object v9

    iget-object v2, v0, Lnet/bytebuddy/dynamic/scaffold/inline/RedefinitionDynamicTypeBuilder;->recordComponentRegistry:Lnet/bytebuddy/dynamic/scaffold/RecordComponentRegistry;

    .line 212
    invoke-interface {v1}, Lnet/bytebuddy/dynamic/scaffold/MethodRegistry$Prepared;->getInstrumentedType()Lnet/bytebuddy/description/type/TypeDescription;

    move-result-object v3

    invoke-interface {v2, v3}, Lnet/bytebuddy/dynamic/scaffold/RecordComponentRegistry;->compile(Lnet/bytebuddy/description/type/TypeDescription;)Lnet/bytebuddy/dynamic/scaffold/RecordComponentRegistry$Compiled;

    move-result-object v10

    iget-object v11, v0, Lnet/bytebuddy/dynamic/scaffold/inline/RedefinitionDynamicTypeBuilder;->typeAttributeAppender:Lnet/bytebuddy/implementation/attribute/TypeAttributeAppender;

    iget-object v12, v0, Lnet/bytebuddy/dynamic/scaffold/inline/RedefinitionDynamicTypeBuilder;->asmVisitorWrapper:Lnet/bytebuddy/asm/AsmVisitorWrapper;

    iget-object v13, v0, Lnet/bytebuddy/dynamic/scaffold/inline/RedefinitionDynamicTypeBuilder;->classFileVersion:Lnet/bytebuddy/ClassFileVersion;

    iget-object v14, v0, Lnet/bytebuddy/dynamic/scaffold/inline/RedefinitionDynamicTypeBuilder;->annotationValueFilterFactory:Lnet/bytebuddy/implementation/attribute/AnnotationValueFilter$Factory;

    iget-object v15, v0, Lnet/bytebuddy/dynamic/scaffold/inline/RedefinitionDynamicTypeBuilder;->annotationRetention:Lnet/bytebuddy/implementation/attribute/AnnotationRetention;

    iget-object v2, v0, Lnet/bytebuddy/dynamic/scaffold/inline/RedefinitionDynamicTypeBuilder;->auxiliaryTypeNamingStrategy:Lnet/bytebuddy/implementation/auxiliary/AuxiliaryType$NamingStrategy;

    iget-object v3, v0, Lnet/bytebuddy/dynamic/scaffold/inline/RedefinitionDynamicTypeBuilder;->implementationContextFactory:Lnet/bytebuddy/implementation/Implementation$Context$Factory;

    iget-object v4, v0, Lnet/bytebuddy/dynamic/scaffold/inline/RedefinitionDynamicTypeBuilder;->typeValidation:Lnet/bytebuddy/dynamic/scaffold/TypeValidation;

    iget-object v5, v0, Lnet/bytebuddy/dynamic/scaffold/inline/RedefinitionDynamicTypeBuilder;->classWriterStrategy:Lnet/bytebuddy/dynamic/scaffold/ClassWriterStrategy;

    iget-object v6, v0, Lnet/bytebuddy/dynamic/scaffold/inline/RedefinitionDynamicTypeBuilder;->originalType:Lnet/bytebuddy/description/type/TypeDescription;

    iget-object v7, v0, Lnet/bytebuddy/dynamic/scaffold/inline/RedefinitionDynamicTypeBuilder;->classFileLocator:Lnet/bytebuddy/dynamic/ClassFileLocator;

    .line 209
    move-object/from16 v22, v7

    move-object v7, v1

    move-object/from16 v16, v2

    move-object/from16 v17, v3

    move-object/from16 v18, v4

    move-object/from16 v19, v5

    move-object/from16 v20, p2

    move-object/from16 v21, v6

    invoke-static/range {v7 .. v22}, Lnet/bytebuddy/dynamic/scaffold/TypeWriter$Default;->forRedefinition(Lnet/bytebuddy/dynamic/scaffold/MethodRegistry$Prepared;Ljava/util/List;Lnet/bytebuddy/dynamic/scaffold/TypeWriter$FieldPool;Lnet/bytebuddy/dynamic/scaffold/TypeWriter$RecordComponentPool;Lnet/bytebuddy/implementation/attribute/TypeAttributeAppender;Lnet/bytebuddy/asm/AsmVisitorWrapper;Lnet/bytebuddy/ClassFileVersion;Lnet/bytebuddy/implementation/attribute/AnnotationValueFilter$Factory;Lnet/bytebuddy/implementation/attribute/AnnotationRetention;Lnet/bytebuddy/implementation/auxiliary/AuxiliaryType$NamingStrategy;Lnet/bytebuddy/implementation/Implementation$Context$Factory;Lnet/bytebuddy/dynamic/scaffold/TypeValidation;Lnet/bytebuddy/dynamic/scaffold/ClassWriterStrategy;Lnet/bytebuddy/pool/TypePool;Lnet/bytebuddy/description/type/TypeDescription;Lnet/bytebuddy/dynamic/ClassFileLocator;)Lnet/bytebuddy/dynamic/scaffold/TypeWriter;

    move-result-object v2

    .line 224
    invoke-interface/range {p1 .. p1}, Lnet/bytebuddy/dynamic/TypeResolutionStrategy;->resolve()Lnet/bytebuddy/dynamic/TypeResolutionStrategy$Resolved;

    move-result-object v3

    invoke-interface {v2, v3}, Lnet/bytebuddy/dynamic/scaffold/TypeWriter;->make(Lnet/bytebuddy/dynamic/TypeResolutionStrategy$Resolved;)Lnet/bytebuddy/dynamic/DynamicType$Unloaded;

    move-result-object v2

    .line 209
    return-object v2
.end method

.method protected materialize(Lnet/bytebuddy/dynamic/scaffold/InstrumentedType$WithFlexibleName;Lnet/bytebuddy/dynamic/scaffold/FieldRegistry;Lnet/bytebuddy/dynamic/scaffold/MethodRegistry;Lnet/bytebuddy/dynamic/scaffold/RecordComponentRegistry;Lnet/bytebuddy/implementation/attribute/TypeAttributeAppender;Lnet/bytebuddy/asm/AsmVisitorWrapper;Lnet/bytebuddy/ClassFileVersion;Lnet/bytebuddy/implementation/auxiliary/AuxiliaryType$NamingStrategy;Lnet/bytebuddy/implementation/attribute/AnnotationValueFilter$Factory;Lnet/bytebuddy/implementation/attribute/AnnotationRetention;Lnet/bytebuddy/implementation/Implementation$Context$Factory;Lnet/bytebuddy/dynamic/scaffold/MethodGraph$Compiler;Lnet/bytebuddy/dynamic/scaffold/TypeValidation;Lnet/bytebuddy/dynamic/VisibilityBridgeStrategy;Lnet/bytebuddy/dynamic/scaffold/ClassWriterStrategy;Lnet/bytebuddy/matcher/LatentMatcher;Ljava/util/List;)Lnet/bytebuddy/dynamic/DynamicType$Builder;
    .locals 23
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

    .local p0, "this":Lnet/bytebuddy/dynamic/scaffold/inline/RedefinitionDynamicTypeBuilder;, "Lnet/bytebuddy/dynamic/scaffold/inline/RedefinitionDynamicTypeBuilder<TT;>;"
    .local p16, "ignoredMethods":Lnet/bytebuddy/matcher/LatentMatcher;, "Lnet/bytebuddy/matcher/LatentMatcher<-Lnet/bytebuddy/description/method/MethodDescription;>;"
    .local p17, "auxiliaryTypes":Ljava/util/List;, "Ljava/util/List<+Lnet/bytebuddy/dynamic/DynamicType;>;"
    move-object/from16 v0, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    move-object/from16 v9, p8

    move-object/from16 v10, p9

    move-object/from16 v11, p10

    move-object/from16 v12, p11

    move-object/from16 v13, p12

    move-object/from16 v14, p13

    move-object/from16 v15, p14

    move-object/from16 v16, p15

    move-object/from16 v17, p16

    move-object/from16 v18, p17

    .line 179
    new-instance v21, Lnet/bytebuddy/dynamic/scaffold/inline/RedefinitionDynamicTypeBuilder;

    move-object/from16 v1, v21

    move-object/from16 v22, v1

    iget-object v1, v0, Lnet/bytebuddy/dynamic/scaffold/inline/RedefinitionDynamicTypeBuilder;->originalType:Lnet/bytebuddy/description/type/TypeDescription;

    move-object/from16 v19, v1

    iget-object v1, v0, Lnet/bytebuddy/dynamic/scaffold/inline/RedefinitionDynamicTypeBuilder;->classFileLocator:Lnet/bytebuddy/dynamic/ClassFileLocator;

    move-object/from16 v20, v1

    move-object/from16 v1, v22

    invoke-direct/range {v1 .. v20}, Lnet/bytebuddy/dynamic/scaffold/inline/RedefinitionDynamicTypeBuilder;-><init>(Lnet/bytebuddy/dynamic/scaffold/InstrumentedType$WithFlexibleName;Lnet/bytebuddy/dynamic/scaffold/FieldRegistry;Lnet/bytebuddy/dynamic/scaffold/MethodRegistry;Lnet/bytebuddy/dynamic/scaffold/RecordComponentRegistry;Lnet/bytebuddy/implementation/attribute/TypeAttributeAppender;Lnet/bytebuddy/asm/AsmVisitorWrapper;Lnet/bytebuddy/ClassFileVersion;Lnet/bytebuddy/implementation/auxiliary/AuxiliaryType$NamingStrategy;Lnet/bytebuddy/implementation/attribute/AnnotationValueFilter$Factory;Lnet/bytebuddy/implementation/attribute/AnnotationRetention;Lnet/bytebuddy/implementation/Implementation$Context$Factory;Lnet/bytebuddy/dynamic/scaffold/MethodGraph$Compiler;Lnet/bytebuddy/dynamic/scaffold/TypeValidation;Lnet/bytebuddy/dynamic/VisibilityBridgeStrategy;Lnet/bytebuddy/dynamic/scaffold/ClassWriterStrategy;Lnet/bytebuddy/matcher/LatentMatcher;Ljava/util/List;Lnet/bytebuddy/description/type/TypeDescription;Lnet/bytebuddy/dynamic/ClassFileLocator;)V

    return-object v21
.end method
