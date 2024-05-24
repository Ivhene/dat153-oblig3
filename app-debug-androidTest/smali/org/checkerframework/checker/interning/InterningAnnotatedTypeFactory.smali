.class public Lorg/checkerframework/checker/interning/InterningAnnotatedTypeFactory;
.super Lorg/checkerframework/common/basetype/BaseAnnotatedTypeFactory;
.source "InterningAnnotatedTypeFactory.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/checkerframework/checker/interning/InterningAnnotatedTypeFactory$InterningTypeAnnotator;,
        Lorg/checkerframework/checker/interning/InterningAnnotatedTypeFactory$InterningTreeAnnotator;,
        Lorg/checkerframework/checker/interning/InterningAnnotatedTypeFactory$InterningDefaultQualifierForUseTypeAnnotator;
    }
.end annotation


# instance fields
.field final INTERNED:Ljavax/lang/model/element/AnnotationMirror;

.field final TOP:Ljavax/lang/model/element/AnnotationMirror;


# direct methods
.method public constructor <init>(Lorg/checkerframework/common/basetype/BaseTypeChecker;)V
    .locals 2
    .param p1, "checker"    # Lorg/checkerframework/common/basetype/BaseTypeChecker;

    .line 69
    invoke-direct {p0, p1}, Lorg/checkerframework/common/basetype/BaseAnnotatedTypeFactory;-><init>(Lorg/checkerframework/common/basetype/BaseTypeChecker;)V

    .line 59
    iget-object v0, p0, Lorg/checkerframework/checker/interning/InterningAnnotatedTypeFactory;->elements:Ljavax/lang/model/util/Elements;

    const-class v1, Lorg/checkerframework/checker/interning/qual/UnknownInterned;

    invoke-static {v0, v1}, Lorg/checkerframework/javacutil/AnnotationBuilder;->fromClass(Ljavax/lang/model/util/Elements;Ljava/lang/Class;)Ljavax/lang/model/element/AnnotationMirror;

    move-result-object v0

    iput-object v0, p0, Lorg/checkerframework/checker/interning/InterningAnnotatedTypeFactory;->TOP:Ljavax/lang/model/element/AnnotationMirror;

    .line 61
    iget-object v0, p0, Lorg/checkerframework/checker/interning/InterningAnnotatedTypeFactory;->elements:Ljavax/lang/model/util/Elements;

    const-class v1, Lorg/checkerframework/checker/interning/qual/Interned;

    invoke-static {v0, v1}, Lorg/checkerframework/javacutil/AnnotationBuilder;->fromClass(Ljavax/lang/model/util/Elements;Ljava/lang/Class;)Ljavax/lang/model/element/AnnotationMirror;

    move-result-object v0

    iput-object v0, p0, Lorg/checkerframework/checker/interning/InterningAnnotatedTypeFactory;->INTERNED:Ljavax/lang/model/element/AnnotationMirror;

    .line 72
    const-string v1, "com.sun.istack.internal.Interned"

    invoke-virtual {p0, v1, v0}, Lorg/checkerframework/checker/interning/InterningAnnotatedTypeFactory;->addAliasedAnnotation(Ljava/lang/String;Ljavax/lang/model/element/AnnotationMirror;)V

    .line 74
    invoke-virtual {p0}, Lorg/checkerframework/checker/interning/InterningAnnotatedTypeFactory;->postInit()V

    .line 75
    return-void
.end method


# virtual methods
.method public addComputedTypeAnnotations(Lcom/sun/source/tree/Tree;Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Z)V
    .locals 2
    .param p1, "tree"    # Lcom/sun/source/tree/Tree;
    .param p2, "type"    # Lorg/checkerframework/framework/type/AnnotatedTypeMirror;
    .param p3, "useFlow"    # Z

    .line 135
    invoke-static {p1}, Lorg/checkerframework/javacutil/TreeUtils;->elementFromTree(Lcom/sun/source/tree/Tree;)Ljavax/lang/model/element/Element;

    move-result-object v0

    .line 136
    .local v0, "element":Ljavax/lang/model/element/Element;
    iget-object v1, p0, Lorg/checkerframework/checker/interning/InterningAnnotatedTypeFactory;->INTERNED:Ljavax/lang/model/element/AnnotationMirror;

    invoke-virtual {p2, v1}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror;->isAnnotatedInHierarchy(Ljavax/lang/model/element/AnnotationMirror;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {v0}, Lorg/checkerframework/javacutil/ElementUtils;->isCompileTimeConstant(Ljavax/lang/model/element/Element;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 137
    iget-object v1, p0, Lorg/checkerframework/checker/interning/InterningAnnotatedTypeFactory;->INTERNED:Ljavax/lang/model/element/AnnotationMirror;

    invoke-virtual {p2, v1}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror;->addAnnotation(Ljavax/lang/model/element/AnnotationMirror;)V

    .line 139
    :cond_0
    invoke-super {p0, p1, p2, p3}, Lorg/checkerframework/common/basetype/BaseAnnotatedTypeFactory;->addComputedTypeAnnotations(Lcom/sun/source/tree/Tree;Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Z)V

    .line 140
    return-void
.end method

.method public addComputedTypeAnnotations(Ljavax/lang/model/element/Element;Lorg/checkerframework/framework/type/AnnotatedTypeMirror;)V
    .locals 1
    .param p1, "element"    # Ljavax/lang/model/element/Element;
    .param p2, "type"    # Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    .line 144
    iget-object v0, p0, Lorg/checkerframework/checker/interning/InterningAnnotatedTypeFactory;->INTERNED:Ljavax/lang/model/element/AnnotationMirror;

    invoke-virtual {p2, v0}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror;->isAnnotatedInHierarchy(Ljavax/lang/model/element/AnnotationMirror;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p1}, Lorg/checkerframework/javacutil/ElementUtils;->isCompileTimeConstant(Ljavax/lang/model/element/Element;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 145
    iget-object v0, p0, Lorg/checkerframework/checker/interning/InterningAnnotatedTypeFactory;->INTERNED:Ljavax/lang/model/element/AnnotationMirror;

    invoke-virtual {p2, v0}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror;->addAnnotation(Ljavax/lang/model/element/AnnotationMirror;)V

    .line 147
    :cond_0
    invoke-super {p0, p1, p2}, Lorg/checkerframework/common/basetype/BaseAnnotatedTypeFactory;->addComputedTypeAnnotations(Ljavax/lang/model/element/Element;Lorg/checkerframework/framework/type/AnnotatedTypeMirror;)V

    .line 148
    return-void
.end method

.method protected createDefaultForUseTypeAnnotator()Lorg/checkerframework/framework/type/typeannotator/DefaultQualifierForUseTypeAnnotator;
    .locals 1

    .line 79
    new-instance v0, Lorg/checkerframework/checker/interning/InterningAnnotatedTypeFactory$InterningDefaultQualifierForUseTypeAnnotator;

    invoke-direct {v0, p0}, Lorg/checkerframework/checker/interning/InterningAnnotatedTypeFactory$InterningDefaultQualifierForUseTypeAnnotator;-><init>(Lorg/checkerframework/framework/type/AnnotatedTypeFactory;)V

    return-object v0
.end method

.method protected createTreeAnnotator()Lorg/checkerframework/framework/type/treeannotator/TreeAnnotator;
    .locals 4

    .line 125
    new-instance v0, Lorg/checkerframework/framework/type/treeannotator/ListTreeAnnotator;

    const/4 v1, 0x2

    new-array v1, v1, [Lorg/checkerframework/framework/type/treeannotator/TreeAnnotator;

    const/4 v2, 0x0

    invoke-super {p0}, Lorg/checkerframework/common/basetype/BaseAnnotatedTypeFactory;->createTreeAnnotator()Lorg/checkerframework/framework/type/treeannotator/TreeAnnotator;

    move-result-object v3

    aput-object v3, v1, v2

    new-instance v2, Lorg/checkerframework/checker/interning/InterningAnnotatedTypeFactory$InterningTreeAnnotator;

    invoke-direct {v2, p0, p0}, Lorg/checkerframework/checker/interning/InterningAnnotatedTypeFactory$InterningTreeAnnotator;-><init>(Lorg/checkerframework/checker/interning/InterningAnnotatedTypeFactory;Lorg/checkerframework/checker/interning/InterningAnnotatedTypeFactory;)V

    const/4 v3, 0x1

    aput-object v2, v1, v3

    invoke-direct {v0, v1}, Lorg/checkerframework/framework/type/treeannotator/ListTreeAnnotator;-><init>([Lorg/checkerframework/framework/type/treeannotator/TreeAnnotator;)V

    return-object v0
.end method

.method protected createTypeAnnotator()Lorg/checkerframework/framework/type/typeannotator/TypeAnnotator;
    .locals 4

    .line 130
    new-instance v0, Lorg/checkerframework/framework/type/typeannotator/ListTypeAnnotator;

    const/4 v1, 0x2

    new-array v1, v1, [Lorg/checkerframework/framework/type/typeannotator/TypeAnnotator;

    new-instance v2, Lorg/checkerframework/checker/interning/InterningAnnotatedTypeFactory$InterningTypeAnnotator;

    invoke-direct {v2, p0, p0}, Lorg/checkerframework/checker/interning/InterningAnnotatedTypeFactory$InterningTypeAnnotator;-><init>(Lorg/checkerframework/checker/interning/InterningAnnotatedTypeFactory;Lorg/checkerframework/checker/interning/InterningAnnotatedTypeFactory;)V

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const/4 v2, 0x1

    invoke-super {p0}, Lorg/checkerframework/common/basetype/BaseAnnotatedTypeFactory;->createTypeAnnotator()Lorg/checkerframework/framework/type/typeannotator/TypeAnnotator;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-direct {v0, v1}, Lorg/checkerframework/framework/type/typeannotator/ListTypeAnnotator;-><init>([Lorg/checkerframework/framework/type/typeannotator/TypeAnnotator;)V

    return-object v0
.end method

.method public getTypeDeclarationBounds(Ljavax/lang/model/type/TypeMirror;)Ljava/util/Set;
    .locals 2
    .param p1, "typeMirror"    # Ljavax/lang/model/type/TypeMirror;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/lang/model/type/TypeMirror;",
            ")",
            "Ljava/util/Set<",
            "Ljavax/lang/model/element/AnnotationMirror;",
            ">;"
        }
    .end annotation

    .line 116
    invoke-interface {p1}, Ljavax/lang/model/type/TypeMirror;->getKind()Ljavax/lang/model/type/TypeKind;

    move-result-object v0

    sget-object v1, Ljavax/lang/model/type/TypeKind;->DECLARED:Ljavax/lang/model/type/TypeKind;

    if-ne v0, v1, :cond_0

    move-object v0, p1

    check-cast v0, Ljavax/lang/model/type/DeclaredType;

    .line 117
    invoke-interface {v0}, Ljavax/lang/model/type/DeclaredType;->asElement()Ljavax/lang/model/element/Element;

    move-result-object v0

    invoke-interface {v0}, Ljavax/lang/model/element/Element;->getKind()Ljavax/lang/model/element/ElementKind;

    move-result-object v0

    sget-object v1, Ljavax/lang/model/element/ElementKind;->ENUM:Ljavax/lang/model/element/ElementKind;

    if-ne v0, v1, :cond_0

    .line 118
    iget-object v0, p0, Lorg/checkerframework/checker/interning/InterningAnnotatedTypeFactory;->INTERNED:Ljavax/lang/model/element/AnnotationMirror;

    invoke-static {v0}, Lorg/checkerframework/framework/util/AnnotationMirrorSet;->singleElementSet(Ljavax/lang/model/element/AnnotationMirror;)Lorg/checkerframework/framework/util/AnnotationMirrorSet;

    move-result-object v0

    return-object v0

    .line 120
    :cond_0
    invoke-super {p0, p1}, Lorg/checkerframework/common/basetype/BaseAnnotatedTypeFactory;->getTypeDeclarationBounds(Ljavax/lang/model/type/TypeMirror;)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public getUnboxedType(Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedDeclaredType;)Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedPrimitiveType;
    .locals 2
    .param p1, "type"    # Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedDeclaredType;

    .line 215
    invoke-super {p0, p1}, Lorg/checkerframework/common/basetype/BaseAnnotatedTypeFactory;->getUnboxedType(Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedDeclaredType;)Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedPrimitiveType;

    move-result-object v0

    .line 216
    .local v0, "primitive":Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedPrimitiveType;
    iget-object v1, p0, Lorg/checkerframework/checker/interning/InterningAnnotatedTypeFactory;->INTERNED:Ljavax/lang/model/element/AnnotationMirror;

    invoke-virtual {v0, v1}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedPrimitiveType;->replaceAnnotation(Ljavax/lang/model/element/AnnotationMirror;)V

    .line 217
    return-object v0
.end method
