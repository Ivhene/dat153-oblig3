.class public Lorg/checkerframework/framework/util/element/TypeDeclarationApplier;
.super Lorg/checkerframework/framework/util/element/TargetedElementAnnotationApplier;
.source "TypeDeclarationApplier.java"


# static fields
.field public static final SUPERCLASS_INDEX:I = -0x1


# instance fields
.field private final declaredType:Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedDeclaredType;

.field private final typeFactory:Lorg/checkerframework/framework/type/AnnotatedTypeFactory;

.field private final typeSymbol:Lcom/sun/tools/javac/code/Symbol$ClassSymbol;


# direct methods
.method constructor <init>(Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Ljavax/lang/model/element/Element;Lorg/checkerframework/framework/type/AnnotatedTypeFactory;)V
    .locals 1
    .param p1, "type"    # Lorg/checkerframework/framework/type/AnnotatedTypeMirror;
    .param p2, "element"    # Ljavax/lang/model/element/Element;
    .param p3, "typeFactory"    # Lorg/checkerframework/framework/type/AnnotatedTypeFactory;

    .line 45
    invoke-direct {p0, p1, p2}, Lorg/checkerframework/framework/util/element/TargetedElementAnnotationApplier;-><init>(Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Ljavax/lang/model/element/Element;)V

    .line 46
    iput-object p3, p0, Lorg/checkerframework/framework/util/element/TypeDeclarationApplier;->typeFactory:Lorg/checkerframework/framework/type/AnnotatedTypeFactory;

    .line 47
    move-object v0, p2

    check-cast v0, Lcom/sun/tools/javac/code/Symbol$ClassSymbol;

    iput-object v0, p0, Lorg/checkerframework/framework/util/element/TypeDeclarationApplier;->typeSymbol:Lcom/sun/tools/javac/code/Symbol$ClassSymbol;

    .line 48
    move-object v0, p1

    check-cast v0, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedDeclaredType;

    iput-object v0, p0, Lorg/checkerframework/framework/util/element/TypeDeclarationApplier;->declaredType:Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedDeclaredType;

    .line 49
    return-void
.end method

.method public static accepts(Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Ljavax/lang/model/element/Element;)Z
    .locals 1
    .param p0, "type"    # Lorg/checkerframework/framework/type/AnnotatedTypeMirror;
    .param p1, "element"    # Ljavax/lang/model/element/Element;

    .line 34
    instance-of v0, p0, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedDeclaredType;

    if-eqz v0, :cond_0

    instance-of v0, p1, Lcom/sun/tools/javac/code/Symbol$ClassSymbol;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static apply(Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Ljavax/lang/model/element/Element;Lorg/checkerframework/framework/type/AnnotatedTypeFactory;)V
    .locals 1
    .param p0, "type"    # Lorg/checkerframework/framework/type/AnnotatedTypeMirror;
    .param p1, "element"    # Ljavax/lang/model/element/Element;
    .param p2, "typeFactory"    # Lorg/checkerframework/framework/type/AnnotatedTypeFactory;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/checkerframework/framework/util/element/ElementAnnotationUtil$UnexpectedAnnotationLocationException;
        }
    .end annotation

    .line 23
    new-instance v0, Lorg/checkerframework/framework/util/element/TypeDeclarationApplier;

    invoke-direct {v0, p0, p1, p2}, Lorg/checkerframework/framework/util/element/TypeDeclarationApplier;-><init>(Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Ljavax/lang/model/element/Element;Lorg/checkerframework/framework/type/AnnotatedTypeFactory;)V

    invoke-virtual {v0}, Lorg/checkerframework/framework/util/element/TypeDeclarationApplier;->extractAndApply()V

    .line 24
    return-void
.end method


# virtual methods
.method protected annotatedTargets()[Lcom/sun/tools/javac/code/TargetType;
    .locals 3

    .line 72
    const/4 v0, 0x1

    new-array v0, v0, [Lcom/sun/tools/javac/code/TargetType;

    const/4 v1, 0x0

    sget-object v2, Lcom/sun/tools/javac/code/TargetType;->CLASS_EXTENDS:Lcom/sun/tools/javac/code/TargetType;

    aput-object v2, v0, v1

    return-object v0
.end method

.method public extractAndApply()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/checkerframework/framework/util/element/ElementAnnotationUtil$UnexpectedAnnotationLocationException;
        }
    .end annotation

    .line 109
    invoke-super {p0}, Lorg/checkerframework/framework/util/element/TargetedElementAnnotationApplier;->extractAndApply()V

    .line 112
    iget-object v0, p0, Lorg/checkerframework/framework/util/element/TypeDeclarationApplier;->type:Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    iget-object v1, p0, Lorg/checkerframework/framework/util/element/TypeDeclarationApplier;->typeSymbol:Lcom/sun/tools/javac/code/Symbol$ClassSymbol;

    invoke-virtual {v1}, Lcom/sun/tools/javac/code/Symbol$ClassSymbol;->getAnnotationMirrors()Lcom/sun/tools/javac/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror;->addAnnotations(Ljava/lang/Iterable;)V

    .line 114
    iget-object v0, p0, Lorg/checkerframework/framework/util/element/TypeDeclarationApplier;->declaredType:Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedDeclaredType;

    .line 115
    invoke-virtual {v0}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedDeclaredType;->getTypeArguments()Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lorg/checkerframework/framework/util/element/TypeDeclarationApplier;->typeSymbol:Lcom/sun/tools/javac/code/Symbol$ClassSymbol;

    invoke-virtual {v1}, Lcom/sun/tools/javac/code/Symbol$ClassSymbol;->getTypeParameters()Lcom/sun/tools/javac/util/List;

    move-result-object v1

    iget-object v2, p0, Lorg/checkerframework/framework/util/element/TypeDeclarationApplier;->typeFactory:Lorg/checkerframework/framework/type/AnnotatedTypeFactory;

    .line 114
    invoke-static {v0, v1, v2}, Lorg/checkerframework/framework/util/element/ElementAnnotationUtil;->applyAllElementAnnotations(Ljava/util/List;Ljava/util/List;Lorg/checkerframework/framework/type/AnnotatedTypeFactory;)V

    .line 116
    return-void
.end method

.method protected getRawTypeAttributes()Ljava/lang/Iterable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Iterable<",
            "Lcom/sun/tools/javac/code/Attribute$TypeCompound;",
            ">;"
        }
    .end annotation

    .line 78
    iget-object v0, p0, Lorg/checkerframework/framework/util/element/TypeDeclarationApplier;->typeSymbol:Lcom/sun/tools/javac/code/Symbol$ClassSymbol;

    invoke-virtual {v0}, Lcom/sun/tools/javac/code/Symbol$ClassSymbol;->getRawTypeAttributes()Lcom/sun/tools/javac/util/List;

    move-result-object v0

    return-object v0
.end method

.method protected handleTargeted(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/sun/tools/javac/code/Attribute$TypeCompound;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/checkerframework/framework/util/element/ElementAnnotationUtil$UnexpectedAnnotationLocationException;
        }
    .end annotation

    .line 91
    .local p1, "extendsAndImplementsAnnos":Ljava/util/List;, "Ljava/util/List<Lcom/sun/tools/javac/code/Attribute$TypeCompound;>;"
    iget-object v0, p0, Lorg/checkerframework/framework/util/element/TypeDeclarationApplier;->typeSymbol:Lcom/sun/tools/javac/code/Symbol$ClassSymbol;

    iget-object v0, v0, Lcom/sun/tools/javac/code/Symbol$ClassSymbol;->type:Lcom/sun/tools/javac/code/Type;

    invoke-static {v0}, Lorg/checkerframework/javacutil/TypesUtils;->isAnonymous(Ljavax/lang/model/type/TypeMirror;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 95
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sun/tools/javac/code/Attribute$TypeCompound;

    .line 96
    .local v1, "anno":Lcom/sun/tools/javac/code/Attribute$TypeCompound;
    iget-object v2, v1, Lcom/sun/tools/javac/code/Attribute$TypeCompound;->position:Lcom/sun/tools/javac/code/TypeAnnotationPosition;

    iget v2, v2, Lcom/sun/tools/javac/code/TypeAnnotationPosition;->type_index:I

    const/4 v3, -0x1

    if-lt v2, v3, :cond_0

    iget-object v2, v1, Lcom/sun/tools/javac/code/Attribute$TypeCompound;->position:Lcom/sun/tools/javac/code/TypeAnnotationPosition;

    iget-object v2, v2, Lcom/sun/tools/javac/code/TypeAnnotationPosition;->location:Lcom/sun/tools/javac/util/List;

    .line 97
    invoke-virtual {v2}, Lcom/sun/tools/javac/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 98
    iget-object v2, p0, Lorg/checkerframework/framework/util/element/TypeDeclarationApplier;->type:Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    invoke-virtual {v2, v1}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror;->addAnnotation(Ljavax/lang/model/element/AnnotationMirror;)V

    .line 100
    .end local v1    # "anno":Lcom/sun/tools/javac/code/Attribute$TypeCompound;
    :cond_0
    goto :goto_0

    .line 102
    :cond_1
    return-void
.end method

.method protected isAccepted()Z
    .locals 2

    .line 120
    iget-object v0, p0, Lorg/checkerframework/framework/util/element/TypeDeclarationApplier;->type:Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    iget-object v1, p0, Lorg/checkerframework/framework/util/element/TypeDeclarationApplier;->element:Ljavax/lang/model/element/Element;

    invoke-static {v0, v1}, Lorg/checkerframework/framework/util/element/TypeDeclarationApplier;->accepts(Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Ljavax/lang/model/element/Element;)Z

    move-result v0

    return v0
.end method

.method protected validTargets()[Lcom/sun/tools/javac/code/TargetType;
    .locals 3

    .line 53
    const/16 v0, 0xd

    new-array v0, v0, [Lcom/sun/tools/javac/code/TargetType;

    const/4 v1, 0x0

    sget-object v2, Lcom/sun/tools/javac/code/TargetType;->RESOURCE_VARIABLE:Lcom/sun/tools/javac/code/TargetType;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    sget-object v2, Lcom/sun/tools/javac/code/TargetType;->EXCEPTION_PARAMETER:Lcom/sun/tools/javac/code/TargetType;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    sget-object v2, Lcom/sun/tools/javac/code/TargetType;->NEW:Lcom/sun/tools/javac/code/TargetType;

    aput-object v2, v0, v1

    const/4 v1, 0x3

    sget-object v2, Lcom/sun/tools/javac/code/TargetType;->CAST:Lcom/sun/tools/javac/code/TargetType;

    aput-object v2, v0, v1

    const/4 v1, 0x4

    sget-object v2, Lcom/sun/tools/javac/code/TargetType;->INSTANCEOF:Lcom/sun/tools/javac/code/TargetType;

    aput-object v2, v0, v1

    const/4 v1, 0x5

    sget-object v2, Lcom/sun/tools/javac/code/TargetType;->METHOD_INVOCATION_TYPE_ARGUMENT:Lcom/sun/tools/javac/code/TargetType;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/sun/tools/javac/code/TargetType;->CONSTRUCTOR_INVOCATION_TYPE_ARGUMENT:Lcom/sun/tools/javac/code/TargetType;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/sun/tools/javac/code/TargetType;->METHOD_REFERENCE:Lcom/sun/tools/javac/code/TargetType;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/sun/tools/javac/code/TargetType;->CONSTRUCTOR_REFERENCE:Lcom/sun/tools/javac/code/TargetType;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lcom/sun/tools/javac/code/TargetType;->METHOD_REFERENCE_TYPE_ARGUMENT:Lcom/sun/tools/javac/code/TargetType;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    sget-object v2, Lcom/sun/tools/javac/code/TargetType;->CONSTRUCTOR_REFERENCE_TYPE_ARGUMENT:Lcom/sun/tools/javac/code/TargetType;

    aput-object v2, v0, v1

    const/16 v1, 0xb

    sget-object v2, Lcom/sun/tools/javac/code/TargetType;->CLASS_TYPE_PARAMETER:Lcom/sun/tools/javac/code/TargetType;

    aput-object v2, v0, v1

    const/16 v1, 0xc

    sget-object v2, Lcom/sun/tools/javac/code/TargetType;->CLASS_TYPE_PARAMETER_BOUND:Lcom/sun/tools/javac/code/TargetType;

    aput-object v2, v0, v1

    return-object v0
.end method
