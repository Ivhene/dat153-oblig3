.class public Lnet/bytebuddy/dynamic/scaffold/TypeWriter$Default$ForCreation;
.super Lnet/bytebuddy/dynamic/scaffold/TypeWriter$Default;
.source "TypeWriter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/bytebuddy/dynamic/scaffold/TypeWriter$Default;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ForCreation"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<U:",
        "Ljava/lang/Object;",
        ">",
        "Lnet/bytebuddy/dynamic/scaffold/TypeWriter$Default<",
        "TU;>;"
    }
.end annotation

.annotation runtime Lnet/bytebuddy/build/HashCodeAndEqualsPlugin$Enhance;
.end annotation


# instance fields
.field private final methodPool:Lnet/bytebuddy/dynamic/scaffold/TypeWriter$MethodPool;


# direct methods
.method protected constructor <init>(Lnet/bytebuddy/description/type/TypeDescription;Lnet/bytebuddy/ClassFileVersion;Lnet/bytebuddy/dynamic/scaffold/TypeWriter$FieldPool;Lnet/bytebuddy/dynamic/scaffold/TypeWriter$MethodPool;Lnet/bytebuddy/dynamic/scaffold/TypeWriter$RecordComponentPool;Ljava/util/List;Lnet/bytebuddy/description/field/FieldList;Lnet/bytebuddy/description/method/MethodList;Lnet/bytebuddy/description/method/MethodList;Lnet/bytebuddy/description/type/RecordComponentList;Lnet/bytebuddy/implementation/LoadedTypeInitializer;Lnet/bytebuddy/dynamic/scaffold/TypeInitializer;Lnet/bytebuddy/implementation/attribute/TypeAttributeAppender;Lnet/bytebuddy/asm/AsmVisitorWrapper;Lnet/bytebuddy/implementation/attribute/AnnotationValueFilter$Factory;Lnet/bytebuddy/implementation/attribute/AnnotationRetention;Lnet/bytebuddy/implementation/auxiliary/AuxiliaryType$NamingStrategy;Lnet/bytebuddy/implementation/Implementation$Context$Factory;Lnet/bytebuddy/dynamic/scaffold/TypeValidation;Lnet/bytebuddy/dynamic/scaffold/ClassWriterStrategy;Lnet/bytebuddy/pool/TypePool;)V
    .locals 21
    .param p1, "instrumentedType"    # Lnet/bytebuddy/description/type/TypeDescription;
    .param p2, "classFileVersion"    # Lnet/bytebuddy/ClassFileVersion;
    .param p3, "fieldPool"    # Lnet/bytebuddy/dynamic/scaffold/TypeWriter$FieldPool;
    .param p4, "methodPool"    # Lnet/bytebuddy/dynamic/scaffold/TypeWriter$MethodPool;
    .param p5, "recordComponentPool"    # Lnet/bytebuddy/dynamic/scaffold/TypeWriter$RecordComponentPool;
    .param p11, "loadedTypeInitializer"    # Lnet/bytebuddy/implementation/LoadedTypeInitializer;
    .param p12, "typeInitializer"    # Lnet/bytebuddy/dynamic/scaffold/TypeInitializer;
    .param p13, "typeAttributeAppender"    # Lnet/bytebuddy/implementation/attribute/TypeAttributeAppender;
    .param p14, "asmVisitorWrapper"    # Lnet/bytebuddy/asm/AsmVisitorWrapper;
    .param p15, "annotationValueFilterFactory"    # Lnet/bytebuddy/implementation/attribute/AnnotationValueFilter$Factory;
    .param p16, "annotationRetention"    # Lnet/bytebuddy/implementation/attribute/AnnotationRetention;
    .param p17, "auxiliaryTypeNamingStrategy"    # Lnet/bytebuddy/implementation/auxiliary/AuxiliaryType$NamingStrategy;
    .param p18, "implementationContextFactory"    # Lnet/bytebuddy/implementation/Implementation$Context$Factory;
    .param p19, "typeValidation"    # Lnet/bytebuddy/dynamic/scaffold/TypeValidation;
    .param p20, "classWriterStrategy"    # Lnet/bytebuddy/dynamic/scaffold/ClassWriterStrategy;
    .param p21, "typePool"    # Lnet/bytebuddy/pool/TypePool;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnet/bytebuddy/description/type/TypeDescription;",
            "Lnet/bytebuddy/ClassFileVersion;",
            "Lnet/bytebuddy/dynamic/scaffold/TypeWriter$FieldPool;",
            "Lnet/bytebuddy/dynamic/scaffold/TypeWriter$MethodPool;",
            "Lnet/bytebuddy/dynamic/scaffold/TypeWriter$RecordComponentPool;",
            "Ljava/util/List<",
            "+",
            "Lnet/bytebuddy/dynamic/DynamicType;",
            ">;",
            "Lnet/bytebuddy/description/field/FieldList<",
            "Lnet/bytebuddy/description/field/FieldDescription$InDefinedShape;",
            ">;",
            "Lnet/bytebuddy/description/method/MethodList<",
            "*>;",
            "Lnet/bytebuddy/description/method/MethodList<",
            "*>;",
            "Lnet/bytebuddy/description/type/RecordComponentList<",
            "Lnet/bytebuddy/description/type/RecordComponentDescription$InDefinedShape;",
            ">;",
            "Lnet/bytebuddy/implementation/LoadedTypeInitializer;",
            "Lnet/bytebuddy/dynamic/scaffold/TypeInitializer;",
            "Lnet/bytebuddy/implementation/attribute/TypeAttributeAppender;",
            "Lnet/bytebuddy/asm/AsmVisitorWrapper;",
            "Lnet/bytebuddy/implementation/attribute/AnnotationValueFilter$Factory;",
            "Lnet/bytebuddy/implementation/attribute/AnnotationRetention;",
            "Lnet/bytebuddy/implementation/auxiliary/AuxiliaryType$NamingStrategy;",
            "Lnet/bytebuddy/implementation/Implementation$Context$Factory;",
            "Lnet/bytebuddy/dynamic/scaffold/TypeValidation;",
            "Lnet/bytebuddy/dynamic/scaffold/ClassWriterStrategy;",
            "Lnet/bytebuddy/pool/TypePool;",
            ")V"
        }
    .end annotation

    .local p0, "this":Lnet/bytebuddy/dynamic/scaffold/TypeWriter$Default$ForCreation;, "Lnet/bytebuddy/dynamic/scaffold/TypeWriter$Default$ForCreation<TU;>;"
    .local p6, "auxiliaryTypes":Ljava/util/List;, "Ljava/util/List<+Lnet/bytebuddy/dynamic/DynamicType;>;"
    .local p7, "fields":Lnet/bytebuddy/description/field/FieldList;, "Lnet/bytebuddy/description/field/FieldList<Lnet/bytebuddy/description/field/FieldDescription$InDefinedShape;>;"
    .local p8, "methods":Lnet/bytebuddy/description/method/MethodList;, "Lnet/bytebuddy/description/method/MethodList<*>;"
    .local p9, "instrumentedMethods":Lnet/bytebuddy/description/method/MethodList;, "Lnet/bytebuddy/description/method/MethodList<*>;"
    .local p10, "recordComponents":Lnet/bytebuddy/description/type/RecordComponentList;, "Lnet/bytebuddy/description/type/RecordComponentList<Lnet/bytebuddy/description/type/RecordComponentDescription$InDefinedShape;>;"
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p5

    move-object/from16 v5, p6

    move-object/from16 v6, p7

    move-object/from16 v7, p8

    move-object/from16 v8, p9

    move-object/from16 v9, p10

    move-object/from16 v10, p11

    move-object/from16 v11, p12

    move-object/from16 v12, p13

    move-object/from16 v13, p14

    move-object/from16 v14, p15

    move-object/from16 v15, p16

    move-object/from16 v16, p17

    move-object/from16 v17, p18

    move-object/from16 v18, p19

    move-object/from16 v19, p20

    move-object/from16 v20, p21

    .line 5683
    invoke-direct/range {v0 .. v20}, Lnet/bytebuddy/dynamic/scaffold/TypeWriter$Default;-><init>(Lnet/bytebuddy/description/type/TypeDescription;Lnet/bytebuddy/ClassFileVersion;Lnet/bytebuddy/dynamic/scaffold/TypeWriter$FieldPool;Lnet/bytebuddy/dynamic/scaffold/TypeWriter$RecordComponentPool;Ljava/util/List;Lnet/bytebuddy/description/field/FieldList;Lnet/bytebuddy/description/method/MethodList;Lnet/bytebuddy/description/method/MethodList;Lnet/bytebuddy/description/type/RecordComponentList;Lnet/bytebuddy/implementation/LoadedTypeInitializer;Lnet/bytebuddy/dynamic/scaffold/TypeInitializer;Lnet/bytebuddy/implementation/attribute/TypeAttributeAppender;Lnet/bytebuddy/asm/AsmVisitorWrapper;Lnet/bytebuddy/implementation/attribute/AnnotationValueFilter$Factory;Lnet/bytebuddy/implementation/attribute/AnnotationRetention;Lnet/bytebuddy/implementation/auxiliary/AuxiliaryType$NamingStrategy;Lnet/bytebuddy/implementation/Implementation$Context$Factory;Lnet/bytebuddy/dynamic/scaffold/TypeValidation;Lnet/bytebuddy/dynamic/scaffold/ClassWriterStrategy;Lnet/bytebuddy/pool/TypePool;)V

    .line 5703
    move-object/from16 v1, p4

    iput-object v1, v0, Lnet/bytebuddy/dynamic/scaffold/TypeWriter$Default$ForCreation;->methodPool:Lnet/bytebuddy/dynamic/scaffold/TypeWriter$MethodPool;

    .line 5704
    return-void
.end method


# virtual methods
.method protected create(Lnet/bytebuddy/dynamic/scaffold/TypeInitializer;Lnet/bytebuddy/dynamic/scaffold/TypeWriter$Default$ClassDumpAction$Dispatcher;)Lnet/bytebuddy/dynamic/scaffold/TypeWriter$Default$UnresolvedType;
    .locals 21
    .param p1, "typeInitializer"    # Lnet/bytebuddy/dynamic/scaffold/TypeInitializer;
    .param p2, "dispatcher"    # Lnet/bytebuddy/dynamic/scaffold/TypeWriter$Default$ClassDumpAction$Dispatcher;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnet/bytebuddy/dynamic/scaffold/TypeInitializer;",
            "Lnet/bytebuddy/dynamic/scaffold/TypeWriter$Default$ClassDumpAction$Dispatcher;",
            ")",
            "Lnet/bytebuddy/dynamic/scaffold/TypeWriter$Default<",
            "TU;>.UnresolvedType;"
        }
    .end annotation

    .line 5708
    .local p0, "this":Lnet/bytebuddy/dynamic/scaffold/TypeWriter$Default$ForCreation;, "Lnet/bytebuddy/dynamic/scaffold/TypeWriter$Default$ForCreation<TU;>;"
    move-object/from16 v0, p0

    iget-object v1, v0, Lnet/bytebuddy/dynamic/scaffold/TypeWriter$Default$ForCreation;->asmVisitorWrapper:Lnet/bytebuddy/asm/AsmVisitorWrapper;

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Lnet/bytebuddy/asm/AsmVisitorWrapper;->mergeWriter(I)I

    move-result v1

    .line 5709
    .local v1, "writerFlags":I
    iget-object v3, v0, Lnet/bytebuddy/dynamic/scaffold/TypeWriter$Default$ForCreation;->classWriterStrategy:Lnet/bytebuddy/dynamic/scaffold/ClassWriterStrategy;

    iget-object v4, v0, Lnet/bytebuddy/dynamic/scaffold/TypeWriter$Default$ForCreation;->typePool:Lnet/bytebuddy/pool/TypePool;

    invoke-interface {v3, v1, v4}, Lnet/bytebuddy/dynamic/scaffold/ClassWriterStrategy;->resolve(ILnet/bytebuddy/pool/TypePool;)Lnet/bytebuddy/jar/asm/ClassWriter;

    move-result-object v12

    .line 5710
    .local v12, "classWriter":Lnet/bytebuddy/jar/asm/ClassWriter;
    iget-object v3, v0, Lnet/bytebuddy/dynamic/scaffold/TypeWriter$Default$ForCreation;->implementationContextFactory:Lnet/bytebuddy/implementation/Implementation$Context$Factory;

    iget-object v4, v0, Lnet/bytebuddy/dynamic/scaffold/TypeWriter$Default$ForCreation;->instrumentedType:Lnet/bytebuddy/description/type/TypeDescription;

    iget-object v5, v0, Lnet/bytebuddy/dynamic/scaffold/TypeWriter$Default$ForCreation;->auxiliaryTypeNamingStrategy:Lnet/bytebuddy/implementation/auxiliary/AuxiliaryType$NamingStrategy;

    iget-object v7, v0, Lnet/bytebuddy/dynamic/scaffold/TypeWriter$Default$ForCreation;->classFileVersion:Lnet/bytebuddy/ClassFileVersion;

    iget-object v8, v0, Lnet/bytebuddy/dynamic/scaffold/TypeWriter$Default$ForCreation;->classFileVersion:Lnet/bytebuddy/ClassFileVersion;

    move-object/from16 v6, p1

    invoke-interface/range {v3 .. v8}, Lnet/bytebuddy/implementation/Implementation$Context$Factory;->make(Lnet/bytebuddy/description/type/TypeDescription;Lnet/bytebuddy/implementation/auxiliary/AuxiliaryType$NamingStrategy;Lnet/bytebuddy/dynamic/scaffold/TypeInitializer;Lnet/bytebuddy/ClassFileVersion;Lnet/bytebuddy/ClassFileVersion;)Lnet/bytebuddy/implementation/Implementation$Context$ExtractableView;

    move-result-object v13

    .line 5715
    .local v13, "implementationContext":Lnet/bytebuddy/implementation/Implementation$Context$ExtractableView;
    iget-object v3, v0, Lnet/bytebuddy/dynamic/scaffold/TypeWriter$Default$ForCreation;->asmVisitorWrapper:Lnet/bytebuddy/asm/AsmVisitorWrapper;

    iget-object v4, v0, Lnet/bytebuddy/dynamic/scaffold/TypeWriter$Default$ForCreation;->instrumentedType:Lnet/bytebuddy/description/type/TypeDescription;

    iget-object v5, v0, Lnet/bytebuddy/dynamic/scaffold/TypeWriter$Default$ForCreation;->typeValidation:Lnet/bytebuddy/dynamic/scaffold/TypeValidation;

    .line 5716
    invoke-static {v12, v5}, Lnet/bytebuddy/dynamic/scaffold/TypeWriter$Default$ValidatingClassVisitor;->of(Lnet/bytebuddy/jar/asm/ClassVisitor;Lnet/bytebuddy/dynamic/scaffold/TypeValidation;)Lnet/bytebuddy/jar/asm/ClassVisitor;

    move-result-object v5

    iget-object v7, v0, Lnet/bytebuddy/dynamic/scaffold/TypeWriter$Default$ForCreation;->typePool:Lnet/bytebuddy/pool/TypePool;

    iget-object v8, v0, Lnet/bytebuddy/dynamic/scaffold/TypeWriter$Default$ForCreation;->fields:Lnet/bytebuddy/description/field/FieldList;

    iget-object v9, v0, Lnet/bytebuddy/dynamic/scaffold/TypeWriter$Default$ForCreation;->methods:Lnet/bytebuddy/description/method/MethodList;

    iget-object v6, v0, Lnet/bytebuddy/dynamic/scaffold/TypeWriter$Default$ForCreation;->asmVisitorWrapper:Lnet/bytebuddy/asm/AsmVisitorWrapper;

    .line 5722
    invoke-interface {v6, v2}, Lnet/bytebuddy/asm/AsmVisitorWrapper;->mergeReader(I)I

    move-result v11

    .line 5715
    move-object v6, v13

    move v10, v1

    invoke-interface/range {v3 .. v11}, Lnet/bytebuddy/asm/AsmVisitorWrapper;->wrap(Lnet/bytebuddy/description/type/TypeDescription;Lnet/bytebuddy/jar/asm/ClassVisitor;Lnet/bytebuddy/implementation/Implementation$Context;Lnet/bytebuddy/pool/TypePool;Lnet/bytebuddy/description/field/FieldList;Lnet/bytebuddy/description/method/MethodList;II)Lnet/bytebuddy/jar/asm/ClassVisitor;

    move-result-object v2

    .line 5723
    .local v2, "classVisitor":Lnet/bytebuddy/jar/asm/ClassVisitor;
    iget-object v3, v0, Lnet/bytebuddy/dynamic/scaffold/TypeWriter$Default$ForCreation;->classFileVersion:Lnet/bytebuddy/ClassFileVersion;

    invoke-virtual {v3}, Lnet/bytebuddy/ClassFileVersion;->getMinorMajorVersion()I

    move-result v15

    iget-object v3, v0, Lnet/bytebuddy/dynamic/scaffold/TypeWriter$Default$ForCreation;->instrumentedType:Lnet/bytebuddy/description/type/TypeDescription;

    iget-object v4, v0, Lnet/bytebuddy/dynamic/scaffold/TypeWriter$Default$ForCreation;->instrumentedType:Lnet/bytebuddy/description/type/TypeDescription;

    .line 5724
    invoke-interface {v4}, Lnet/bytebuddy/description/type/TypeDescription;->isInterface()Z

    move-result v4

    xor-int/lit8 v4, v4, 0x1

    invoke-interface {v3, v4}, Lnet/bytebuddy/description/type/TypeDescription;->getActualModifiers(Z)I

    move-result v16

    iget-object v3, v0, Lnet/bytebuddy/dynamic/scaffold/TypeWriter$Default$ForCreation;->instrumentedType:Lnet/bytebuddy/description/type/TypeDescription;

    .line 5725
    invoke-interface {v3}, Lnet/bytebuddy/description/type/TypeDescription;->getInternalName()Ljava/lang/String;

    move-result-object v17

    iget-object v3, v0, Lnet/bytebuddy/dynamic/scaffold/TypeWriter$Default$ForCreation;->instrumentedType:Lnet/bytebuddy/description/type/TypeDescription;

    .line 5726
    invoke-interface {v3}, Lnet/bytebuddy/description/type/TypeDescription;->getGenericSignature()Ljava/lang/String;

    move-result-object v18

    iget-object v3, v0, Lnet/bytebuddy/dynamic/scaffold/TypeWriter$Default$ForCreation;->instrumentedType:Lnet/bytebuddy/description/type/TypeDescription;

    .line 5727
    invoke-interface {v3}, Lnet/bytebuddy/description/type/TypeDescription;->getSuperClass()Lnet/bytebuddy/description/type/TypeDescription$Generic;

    move-result-object v3

    if-nez v3, :cond_0

    sget-object v3, Lnet/bytebuddy/description/type/TypeDescription;->OBJECT:Lnet/bytebuddy/description/type/TypeDescription;

    goto :goto_0

    :cond_0
    iget-object v3, v0, Lnet/bytebuddy/dynamic/scaffold/TypeWriter$Default$ForCreation;->instrumentedType:Lnet/bytebuddy/description/type/TypeDescription;

    .line 5729
    invoke-interface {v3}, Lnet/bytebuddy/description/type/TypeDescription;->getSuperClass()Lnet/bytebuddy/description/type/TypeDescription$Generic;

    move-result-object v3

    invoke-interface {v3}, Lnet/bytebuddy/description/type/TypeDescription$Generic;->asErasure()Lnet/bytebuddy/description/type/TypeDescription;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Lnet/bytebuddy/description/type/TypeDescription;->getInternalName()Ljava/lang/String;

    move-result-object v19

    iget-object v3, v0, Lnet/bytebuddy/dynamic/scaffold/TypeWriter$Default$ForCreation;->instrumentedType:Lnet/bytebuddy/description/type/TypeDescription;

    .line 5730
    invoke-interface {v3}, Lnet/bytebuddy/description/type/TypeDescription;->getInterfaces()Lnet/bytebuddy/description/type/TypeList$Generic;

    move-result-object v3

    invoke-interface {v3}, Lnet/bytebuddy/description/type/TypeList$Generic;->asErasures()Lnet/bytebuddy/description/type/TypeList;

    move-result-object v3

    invoke-interface {v3}, Lnet/bytebuddy/description/type/TypeList;->toInternalNames()[Ljava/lang/String;

    move-result-object v20

    .line 5723
    move-object v14, v2

    invoke-virtual/range {v14 .. v20}, Lnet/bytebuddy/jar/asm/ClassVisitor;->visit(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    .line 5731
    iget-object v3, v0, Lnet/bytebuddy/dynamic/scaffold/TypeWriter$Default$ForCreation;->instrumentedType:Lnet/bytebuddy/description/type/TypeDescription;

    invoke-interface {v3}, Lnet/bytebuddy/description/type/TypeDescription;->isNestHost()Z

    move-result v3

    if-nez v3, :cond_1

    .line 5732
    iget-object v3, v0, Lnet/bytebuddy/dynamic/scaffold/TypeWriter$Default$ForCreation;->instrumentedType:Lnet/bytebuddy/description/type/TypeDescription;

    invoke-interface {v3}, Lnet/bytebuddy/description/type/TypeDescription;->getNestHost()Lnet/bytebuddy/description/type/TypeDescription;

    move-result-object v3

    invoke-interface {v3}, Lnet/bytebuddy/description/type/TypeDescription;->getInternalName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lnet/bytebuddy/jar/asm/ClassVisitor;->visitNestHost(Ljava/lang/String;)V

    .line 5734
    :cond_1
    iget-object v3, v0, Lnet/bytebuddy/dynamic/scaffold/TypeWriter$Default$ForCreation;->instrumentedType:Lnet/bytebuddy/description/type/TypeDescription;

    invoke-interface {v3}, Lnet/bytebuddy/description/type/TypeDescription;->getEnclosingMethod()Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;

    move-result-object v3

    .line 5735
    .local v3, "enclosingMethod":Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;
    if-eqz v3, :cond_2

    .line 5736
    invoke-interface {v3}, Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;->getDeclaringType()Lnet/bytebuddy/description/type/TypeDescription;

    move-result-object v4

    invoke-interface {v4}, Lnet/bytebuddy/description/type/TypeDescription;->getInternalName()Ljava/lang/String;

    move-result-object v4

    .line 5737
    invoke-interface {v3}, Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;->getInternalName()Ljava/lang/String;

    move-result-object v5

    .line 5738
    invoke-interface {v3}, Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;->getDescriptor()Ljava/lang/String;

    move-result-object v6

    .line 5736
    invoke-virtual {v2, v4, v5, v6}, Lnet/bytebuddy/jar/asm/ClassVisitor;->visitOuterClass(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 5739
    :cond_2
    iget-object v4, v0, Lnet/bytebuddy/dynamic/scaffold/TypeWriter$Default$ForCreation;->instrumentedType:Lnet/bytebuddy/description/type/TypeDescription;

    invoke-interface {v4}, Lnet/bytebuddy/description/type/TypeDescription;->isLocalType()Z

    move-result v4

    if-nez v4, :cond_3

    iget-object v4, v0, Lnet/bytebuddy/dynamic/scaffold/TypeWriter$Default$ForCreation;->instrumentedType:Lnet/bytebuddy/description/type/TypeDescription;

    invoke-interface {v4}, Lnet/bytebuddy/description/type/TypeDescription;->isAnonymousType()Z

    move-result v4

    if-eqz v4, :cond_4

    .line 5740
    :cond_3
    iget-object v4, v0, Lnet/bytebuddy/dynamic/scaffold/TypeWriter$Default$ForCreation;->instrumentedType:Lnet/bytebuddy/description/type/TypeDescription;

    invoke-interface {v4}, Lnet/bytebuddy/description/type/TypeDescription;->getEnclosingType()Lnet/bytebuddy/description/type/TypeDescription;

    move-result-object v4

    invoke-interface {v4}, Lnet/bytebuddy/description/type/TypeDescription;->getInternalName()Ljava/lang/String;

    move-result-object v4

    invoke-static {}, Lnet/bytebuddy/dynamic/scaffold/TypeWriter$Default;->access$300()Ljava/lang/String;

    move-result-object v5

    invoke-static {}, Lnet/bytebuddy/dynamic/scaffold/TypeWriter$Default;->access$300()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v4, v5, v6}, Lnet/bytebuddy/jar/asm/ClassVisitor;->visitOuterClass(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 5742
    :cond_4
    :goto_1
    iget-object v4, v0, Lnet/bytebuddy/dynamic/scaffold/TypeWriter$Default$ForCreation;->typeAttributeAppender:Lnet/bytebuddy/implementation/attribute/TypeAttributeAppender;

    iget-object v5, v0, Lnet/bytebuddy/dynamic/scaffold/TypeWriter$Default$ForCreation;->instrumentedType:Lnet/bytebuddy/description/type/TypeDescription;

    iget-object v6, v0, Lnet/bytebuddy/dynamic/scaffold/TypeWriter$Default$ForCreation;->annotationValueFilterFactory:Lnet/bytebuddy/implementation/attribute/AnnotationValueFilter$Factory;

    iget-object v7, v0, Lnet/bytebuddy/dynamic/scaffold/TypeWriter$Default$ForCreation;->instrumentedType:Lnet/bytebuddy/description/type/TypeDescription;

    invoke-interface {v6, v7}, Lnet/bytebuddy/implementation/attribute/AnnotationValueFilter$Factory;->on(Lnet/bytebuddy/description/type/TypeDescription;)Lnet/bytebuddy/implementation/attribute/AnnotationValueFilter;

    move-result-object v6

    invoke-interface {v4, v2, v5, v6}, Lnet/bytebuddy/implementation/attribute/TypeAttributeAppender;->apply(Lnet/bytebuddy/jar/asm/ClassVisitor;Lnet/bytebuddy/description/type/TypeDescription;Lnet/bytebuddy/implementation/attribute/AnnotationValueFilter;)V

    .line 5743
    iget-object v4, v0, Lnet/bytebuddy/dynamic/scaffold/TypeWriter$Default$ForCreation;->instrumentedType:Lnet/bytebuddy/description/type/TypeDescription;

    invoke-interface {v4}, Lnet/bytebuddy/description/type/TypeDescription;->isNestHost()Z

    move-result v4

    if-eqz v4, :cond_5

    .line 5744
    iget-object v4, v0, Lnet/bytebuddy/dynamic/scaffold/TypeWriter$Default$ForCreation;->instrumentedType:Lnet/bytebuddy/description/type/TypeDescription;

    invoke-interface {v4}, Lnet/bytebuddy/description/type/TypeDescription;->getNestMembers()Lnet/bytebuddy/description/type/TypeList;

    move-result-object v4

    iget-object v5, v0, Lnet/bytebuddy/dynamic/scaffold/TypeWriter$Default$ForCreation;->instrumentedType:Lnet/bytebuddy/description/type/TypeDescription;

    invoke-static {v5}, Lnet/bytebuddy/matcher/ElementMatchers;->is(Ljava/lang/Object;)Lnet/bytebuddy/matcher/ElementMatcher$Junction;

    move-result-object v5

    invoke-static {v5}, Lnet/bytebuddy/matcher/ElementMatchers;->not(Lnet/bytebuddy/matcher/ElementMatcher;)Lnet/bytebuddy/matcher/ElementMatcher$Junction;

    move-result-object v5

    invoke-interface {v4, v5}, Lnet/bytebuddy/description/type/TypeList;->filter(Lnet/bytebuddy/matcher/ElementMatcher;)Lnet/bytebuddy/matcher/FilterableList;

    move-result-object v4

    check-cast v4, Lnet/bytebuddy/description/type/TypeList;

    invoke-interface {v4}, Lnet/bytebuddy/description/type/TypeList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_5

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lnet/bytebuddy/description/type/TypeDescription;

    .line 5745
    .local v5, "typeDescription":Lnet/bytebuddy/description/type/TypeDescription;
    invoke-interface {v5}, Lnet/bytebuddy/description/type/TypeDescription;->getInternalName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Lnet/bytebuddy/jar/asm/ClassVisitor;->visitNestMember(Ljava/lang/String;)V

    .line 5746
    .end local v5    # "typeDescription":Lnet/bytebuddy/description/type/TypeDescription;
    goto :goto_2

    .line 5748
    :cond_5
    iget-object v4, v0, Lnet/bytebuddy/dynamic/scaffold/TypeWriter$Default$ForCreation;->instrumentedType:Lnet/bytebuddy/description/type/TypeDescription;

    invoke-interface {v4}, Lnet/bytebuddy/description/type/TypeDescription;->getPermittedSubtypes()Lnet/bytebuddy/description/type/TypeList;

    move-result-object v4

    invoke-interface {v4}, Lnet/bytebuddy/description/type/TypeList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_3
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_6

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lnet/bytebuddy/description/type/TypeDescription;

    .line 5749
    .restart local v5    # "typeDescription":Lnet/bytebuddy/description/type/TypeDescription;
    invoke-interface {v5}, Lnet/bytebuddy/description/type/TypeDescription;->getInternalName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Lnet/bytebuddy/jar/asm/ClassVisitor;->visitPermittedSubclass(Ljava/lang/String;)V

    .line 5750
    .end local v5    # "typeDescription":Lnet/bytebuddy/description/type/TypeDescription;
    goto :goto_3

    .line 5751
    :cond_6
    iget-object v4, v0, Lnet/bytebuddy/dynamic/scaffold/TypeWriter$Default$ForCreation;->instrumentedType:Lnet/bytebuddy/description/type/TypeDescription;

    invoke-interface {v4}, Lnet/bytebuddy/description/type/TypeDescription;->getDeclaringType()Lnet/bytebuddy/description/type/TypeDescription;

    move-result-object v4

    .line 5752
    .local v4, "declaringType":Lnet/bytebuddy/description/type/TypeDescription;
    if-eqz v4, :cond_7

    .line 5753
    iget-object v5, v0, Lnet/bytebuddy/dynamic/scaffold/TypeWriter$Default$ForCreation;->instrumentedType:Lnet/bytebuddy/description/type/TypeDescription;

    invoke-interface {v5}, Lnet/bytebuddy/description/type/TypeDescription;->getInternalName()Ljava/lang/String;

    move-result-object v5

    .line 5754
    invoke-interface {v4}, Lnet/bytebuddy/description/type/TypeDescription;->getInternalName()Ljava/lang/String;

    move-result-object v6

    iget-object v7, v0, Lnet/bytebuddy/dynamic/scaffold/TypeWriter$Default$ForCreation;->instrumentedType:Lnet/bytebuddy/description/type/TypeDescription;

    .line 5755
    invoke-interface {v7}, Lnet/bytebuddy/description/type/TypeDescription;->getSimpleName()Ljava/lang/String;

    move-result-object v7

    iget-object v8, v0, Lnet/bytebuddy/dynamic/scaffold/TypeWriter$Default$ForCreation;->instrumentedType:Lnet/bytebuddy/description/type/TypeDescription;

    .line 5756
    invoke-interface {v8}, Lnet/bytebuddy/description/type/TypeDescription;->getModifiers()I

    move-result v8

    .line 5753
    invoke-virtual {v2, v5, v6, v7, v8}, Lnet/bytebuddy/jar/asm/ClassVisitor;->visitInnerClass(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    goto :goto_4

    .line 5757
    :cond_7
    iget-object v5, v0, Lnet/bytebuddy/dynamic/scaffold/TypeWriter$Default$ForCreation;->instrumentedType:Lnet/bytebuddy/description/type/TypeDescription;

    invoke-interface {v5}, Lnet/bytebuddy/description/type/TypeDescription;->isLocalType()Z

    move-result v5

    if-eqz v5, :cond_8

    .line 5758
    iget-object v5, v0, Lnet/bytebuddy/dynamic/scaffold/TypeWriter$Default$ForCreation;->instrumentedType:Lnet/bytebuddy/description/type/TypeDescription;

    invoke-interface {v5}, Lnet/bytebuddy/description/type/TypeDescription;->getInternalName()Ljava/lang/String;

    move-result-object v5

    .line 5759
    invoke-static {}, Lnet/bytebuddy/dynamic/scaffold/TypeWriter$Default;->access$300()Ljava/lang/String;

    move-result-object v6

    iget-object v7, v0, Lnet/bytebuddy/dynamic/scaffold/TypeWriter$Default$ForCreation;->instrumentedType:Lnet/bytebuddy/description/type/TypeDescription;

    .line 5760
    invoke-interface {v7}, Lnet/bytebuddy/description/type/TypeDescription;->getSimpleName()Ljava/lang/String;

    move-result-object v7

    iget-object v8, v0, Lnet/bytebuddy/dynamic/scaffold/TypeWriter$Default$ForCreation;->instrumentedType:Lnet/bytebuddy/description/type/TypeDescription;

    .line 5761
    invoke-interface {v8}, Lnet/bytebuddy/description/type/TypeDescription;->getModifiers()I

    move-result v8

    .line 5758
    invoke-virtual {v2, v5, v6, v7, v8}, Lnet/bytebuddy/jar/asm/ClassVisitor;->visitInnerClass(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    goto :goto_4

    .line 5762
    :cond_8
    iget-object v5, v0, Lnet/bytebuddy/dynamic/scaffold/TypeWriter$Default$ForCreation;->instrumentedType:Lnet/bytebuddy/description/type/TypeDescription;

    invoke-interface {v5}, Lnet/bytebuddy/description/type/TypeDescription;->isAnonymousType()Z

    move-result v5

    if-eqz v5, :cond_9

    .line 5763
    iget-object v5, v0, Lnet/bytebuddy/dynamic/scaffold/TypeWriter$Default$ForCreation;->instrumentedType:Lnet/bytebuddy/description/type/TypeDescription;

    invoke-interface {v5}, Lnet/bytebuddy/description/type/TypeDescription;->getInternalName()Ljava/lang/String;

    move-result-object v5

    .line 5764
    invoke-static {}, Lnet/bytebuddy/dynamic/scaffold/TypeWriter$Default;->access$300()Ljava/lang/String;

    move-result-object v6

    .line 5765
    invoke-static {}, Lnet/bytebuddy/dynamic/scaffold/TypeWriter$Default;->access$300()Ljava/lang/String;

    move-result-object v7

    iget-object v8, v0, Lnet/bytebuddy/dynamic/scaffold/TypeWriter$Default$ForCreation;->instrumentedType:Lnet/bytebuddy/description/type/TypeDescription;

    .line 5766
    invoke-interface {v8}, Lnet/bytebuddy/description/type/TypeDescription;->getModifiers()I

    move-result v8

    .line 5763
    invoke-virtual {v2, v5, v6, v7, v8}, Lnet/bytebuddy/jar/asm/ClassVisitor;->visitInnerClass(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    .line 5768
    :cond_9
    :goto_4
    iget-object v5, v0, Lnet/bytebuddy/dynamic/scaffold/TypeWriter$Default$ForCreation;->instrumentedType:Lnet/bytebuddy/description/type/TypeDescription;

    invoke-interface {v5}, Lnet/bytebuddy/description/type/TypeDescription;->getDeclaredTypes()Lnet/bytebuddy/description/type/TypeList;

    move-result-object v5

    invoke-interface {v5}, Lnet/bytebuddy/description/type/TypeList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_5
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_c

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lnet/bytebuddy/description/type/TypeDescription;

    .line 5769
    .local v6, "typeDescription":Lnet/bytebuddy/description/type/TypeDescription;
    invoke-interface {v6}, Lnet/bytebuddy/description/type/TypeDescription;->getInternalName()Ljava/lang/String;

    move-result-object v7

    .line 5770
    invoke-interface {v6}, Lnet/bytebuddy/description/type/TypeDescription;->isMemberType()Z

    move-result v8

    if-eqz v8, :cond_a

    iget-object v8, v0, Lnet/bytebuddy/dynamic/scaffold/TypeWriter$Default$ForCreation;->instrumentedType:Lnet/bytebuddy/description/type/TypeDescription;

    .line 5771
    invoke-interface {v8}, Lnet/bytebuddy/description/type/TypeDescription;->getInternalName()Ljava/lang/String;

    move-result-object v8

    goto :goto_6

    .line 5772
    :cond_a
    invoke-static {}, Lnet/bytebuddy/dynamic/scaffold/TypeWriter$Default;->access$300()Ljava/lang/String;

    move-result-object v8

    .line 5773
    :goto_6
    invoke-interface {v6}, Lnet/bytebuddy/description/type/TypeDescription;->isAnonymousType()Z

    move-result v9

    if-eqz v9, :cond_b

    .line 5774
    invoke-static {}, Lnet/bytebuddy/dynamic/scaffold/TypeWriter$Default;->access$300()Ljava/lang/String;

    move-result-object v9

    goto :goto_7

    .line 5775
    :cond_b
    invoke-interface {v6}, Lnet/bytebuddy/description/type/TypeDescription;->getSimpleName()Ljava/lang/String;

    move-result-object v9

    .line 5776
    :goto_7
    invoke-interface {v6}, Lnet/bytebuddy/description/type/TypeDescription;->getModifiers()I

    move-result v10

    .line 5769
    invoke-virtual {v2, v7, v8, v9, v10}, Lnet/bytebuddy/jar/asm/ClassVisitor;->visitInnerClass(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    .line 5777
    .end local v6    # "typeDescription":Lnet/bytebuddy/description/type/TypeDescription;
    goto :goto_5

    .line 5778
    :cond_c
    iget-object v5, v0, Lnet/bytebuddy/dynamic/scaffold/TypeWriter$Default$ForCreation;->recordComponents:Lnet/bytebuddy/description/type/RecordComponentList;

    invoke-interface {v5}, Lnet/bytebuddy/description/type/RecordComponentList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_8
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_d

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lnet/bytebuddy/description/type/RecordComponentDescription;

    .line 5779
    .local v6, "recordComponentDescription":Lnet/bytebuddy/description/type/RecordComponentDescription;
    iget-object v7, v0, Lnet/bytebuddy/dynamic/scaffold/TypeWriter$Default$ForCreation;->recordComponentPool:Lnet/bytebuddy/dynamic/scaffold/TypeWriter$RecordComponentPool;

    invoke-interface {v7, v6}, Lnet/bytebuddy/dynamic/scaffold/TypeWriter$RecordComponentPool;->target(Lnet/bytebuddy/description/type/RecordComponentDescription;)Lnet/bytebuddy/dynamic/scaffold/TypeWriter$RecordComponentPool$Record;

    move-result-object v7

    iget-object v8, v0, Lnet/bytebuddy/dynamic/scaffold/TypeWriter$Default$ForCreation;->annotationValueFilterFactory:Lnet/bytebuddy/implementation/attribute/AnnotationValueFilter$Factory;

    invoke-interface {v7, v2, v8}, Lnet/bytebuddy/dynamic/scaffold/TypeWriter$RecordComponentPool$Record;->apply(Lnet/bytebuddy/jar/asm/ClassVisitor;Lnet/bytebuddy/implementation/attribute/AnnotationValueFilter$Factory;)V

    .line 5780
    .end local v6    # "recordComponentDescription":Lnet/bytebuddy/description/type/RecordComponentDescription;
    goto :goto_8

    .line 5781
    :cond_d
    iget-object v5, v0, Lnet/bytebuddy/dynamic/scaffold/TypeWriter$Default$ForCreation;->fields:Lnet/bytebuddy/description/field/FieldList;

    invoke-interface {v5}, Lnet/bytebuddy/description/field/FieldList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_9
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_e

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lnet/bytebuddy/description/field/FieldDescription;

    .line 5782
    .local v6, "fieldDescription":Lnet/bytebuddy/description/field/FieldDescription;
    iget-object v7, v0, Lnet/bytebuddy/dynamic/scaffold/TypeWriter$Default$ForCreation;->fieldPool:Lnet/bytebuddy/dynamic/scaffold/TypeWriter$FieldPool;

    invoke-interface {v7, v6}, Lnet/bytebuddy/dynamic/scaffold/TypeWriter$FieldPool;->target(Lnet/bytebuddy/description/field/FieldDescription;)Lnet/bytebuddy/dynamic/scaffold/TypeWriter$FieldPool$Record;

    move-result-object v7

    iget-object v8, v0, Lnet/bytebuddy/dynamic/scaffold/TypeWriter$Default$ForCreation;->annotationValueFilterFactory:Lnet/bytebuddy/implementation/attribute/AnnotationValueFilter$Factory;

    invoke-interface {v7, v2, v8}, Lnet/bytebuddy/dynamic/scaffold/TypeWriter$FieldPool$Record;->apply(Lnet/bytebuddy/jar/asm/ClassVisitor;Lnet/bytebuddy/implementation/attribute/AnnotationValueFilter$Factory;)V

    .line 5783
    .end local v6    # "fieldDescription":Lnet/bytebuddy/description/field/FieldDescription;
    goto :goto_9

    .line 5784
    :cond_e
    iget-object v5, v0, Lnet/bytebuddy/dynamic/scaffold/TypeWriter$Default$ForCreation;->instrumentedMethods:Lnet/bytebuddy/description/method/MethodList;

    invoke-interface {v5}, Lnet/bytebuddy/description/method/MethodList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_a
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_f

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lnet/bytebuddy/description/method/MethodDescription;

    .line 5785
    .local v6, "methodDescription":Lnet/bytebuddy/description/method/MethodDescription;
    iget-object v7, v0, Lnet/bytebuddy/dynamic/scaffold/TypeWriter$Default$ForCreation;->methodPool:Lnet/bytebuddy/dynamic/scaffold/TypeWriter$MethodPool;

    invoke-interface {v7, v6}, Lnet/bytebuddy/dynamic/scaffold/TypeWriter$MethodPool;->target(Lnet/bytebuddy/description/method/MethodDescription;)Lnet/bytebuddy/dynamic/scaffold/TypeWriter$MethodPool$Record;

    move-result-object v7

    iget-object v8, v0, Lnet/bytebuddy/dynamic/scaffold/TypeWriter$Default$ForCreation;->annotationValueFilterFactory:Lnet/bytebuddy/implementation/attribute/AnnotationValueFilter$Factory;

    invoke-interface {v7, v2, v13, v8}, Lnet/bytebuddy/dynamic/scaffold/TypeWriter$MethodPool$Record;->apply(Lnet/bytebuddy/jar/asm/ClassVisitor;Lnet/bytebuddy/implementation/Implementation$Context;Lnet/bytebuddy/implementation/attribute/AnnotationValueFilter$Factory;)V

    .line 5786
    .end local v6    # "methodDescription":Lnet/bytebuddy/description/method/MethodDescription;
    goto :goto_a

    .line 5787
    :cond_f
    new-instance v5, Lnet/bytebuddy/dynamic/scaffold/TypeInitializer$Drain$Default;

    iget-object v6, v0, Lnet/bytebuddy/dynamic/scaffold/TypeWriter$Default$ForCreation;->instrumentedType:Lnet/bytebuddy/description/type/TypeDescription;

    iget-object v7, v0, Lnet/bytebuddy/dynamic/scaffold/TypeWriter$Default$ForCreation;->methodPool:Lnet/bytebuddy/dynamic/scaffold/TypeWriter$MethodPool;

    iget-object v8, v0, Lnet/bytebuddy/dynamic/scaffold/TypeWriter$Default$ForCreation;->annotationValueFilterFactory:Lnet/bytebuddy/implementation/attribute/AnnotationValueFilter$Factory;

    invoke-direct {v5, v6, v7, v8}, Lnet/bytebuddy/dynamic/scaffold/TypeInitializer$Drain$Default;-><init>(Lnet/bytebuddy/description/type/TypeDescription;Lnet/bytebuddy/dynamic/scaffold/TypeWriter$MethodPool;Lnet/bytebuddy/implementation/attribute/AnnotationValueFilter$Factory;)V

    iget-object v6, v0, Lnet/bytebuddy/dynamic/scaffold/TypeWriter$Default$ForCreation;->annotationValueFilterFactory:Lnet/bytebuddy/implementation/attribute/AnnotationValueFilter$Factory;

    invoke-interface {v13, v5, v2, v6}, Lnet/bytebuddy/implementation/Implementation$Context$ExtractableView;->drain(Lnet/bytebuddy/dynamic/scaffold/TypeInitializer$Drain;Lnet/bytebuddy/jar/asm/ClassVisitor;Lnet/bytebuddy/implementation/attribute/AnnotationValueFilter$Factory;)V

    .line 5790
    invoke-virtual {v2}, Lnet/bytebuddy/jar/asm/ClassVisitor;->visitEnd()V

    .line 5791
    new-instance v5, Lnet/bytebuddy/dynamic/scaffold/TypeWriter$Default$UnresolvedType;

    invoke-virtual {v12}, Lnet/bytebuddy/jar/asm/ClassWriter;->toByteArray()[B

    move-result-object v6

    invoke-interface {v13}, Lnet/bytebuddy/implementation/Implementation$Context$ExtractableView;->getAuxiliaryTypes()Ljava/util/List;

    move-result-object v7

    invoke-direct {v5, v0, v6, v7}, Lnet/bytebuddy/dynamic/scaffold/TypeWriter$Default$UnresolvedType;-><init>(Lnet/bytebuddy/dynamic/scaffold/TypeWriter$Default;[BLjava/util/List;)V

    return-object v5
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    invoke-super {p0, p1}, Lnet/bytebuddy/dynamic/scaffold/TypeWriter$Default;->equals(Ljava/lang/Object;)Z

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
    iget-object v2, p0, Lnet/bytebuddy/dynamic/scaffold/TypeWriter$Default$ForCreation;->methodPool:Lnet/bytebuddy/dynamic/scaffold/TypeWriter$MethodPool;

    check-cast p1, Lnet/bytebuddy/dynamic/scaffold/TypeWriter$Default$ForCreation;

    iget-object p1, p1, Lnet/bytebuddy/dynamic/scaffold/TypeWriter$Default$ForCreation;->methodPool:Lnet/bytebuddy/dynamic/scaffold/TypeWriter$MethodPool;

    invoke-virtual {v2, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_4

    return v1

    :cond_4
    return v0
.end method

.method public hashCode()I
    .locals 2

    invoke-super {p0}, Lnet/bytebuddy/dynamic/scaffold/TypeWriter$Default;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lnet/bytebuddy/dynamic/scaffold/TypeWriter$Default$ForCreation;->methodPool:Lnet/bytebuddy/dynamic/scaffold/TypeWriter$MethodPool;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method
