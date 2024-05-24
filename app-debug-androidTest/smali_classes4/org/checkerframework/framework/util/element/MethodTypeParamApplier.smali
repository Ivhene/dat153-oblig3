.class public Lorg/checkerframework/framework/util/element/MethodTypeParamApplier;
.super Lorg/checkerframework/framework/util/element/TypeParamElementAnnotationApplier;
.source "MethodTypeParamApplier.java"


# instance fields
.field private final enclosingMethod:Lcom/sun/tools/javac/code/Symbol$MethodSymbol;


# direct methods
.method constructor <init>(Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedTypeVariable;Ljavax/lang/model/element/Element;Lorg/checkerframework/framework/type/AnnotatedTypeFactory;)V
    .locals 3
    .param p1, "type"    # Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedTypeVariable;
    .param p2, "element"    # Ljavax/lang/model/element/Element;
    .param p3, "typeFactory"    # Lorg/checkerframework/framework/type/AnnotatedTypeFactory;

    .line 34
    invoke-direct {p0, p1, p2, p3}, Lorg/checkerframework/framework/util/element/TypeParamElementAnnotationApplier;-><init>(Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedTypeVariable;Ljavax/lang/model/element/Element;Lorg/checkerframework/framework/type/AnnotatedTypeFactory;)V

    .line 36
    invoke-interface {p2}, Ljavax/lang/model/element/Element;->getEnclosingElement()Ljavax/lang/model/element/Element;

    move-result-object v0

    instance-of v0, v0, Lcom/sun/tools/javac/code/Symbol$MethodSymbol;

    if-eqz v0, :cond_0

    .line 46
    invoke-interface {p2}, Ljavax/lang/model/element/Element;->getEnclosingElement()Ljavax/lang/model/element/Element;

    move-result-object v0

    check-cast v0, Lcom/sun/tools/javac/code/Symbol$MethodSymbol;

    iput-object v0, p0, Lorg/checkerframework/framework/util/element/MethodTypeParamApplier;->enclosingMethod:Lcom/sun/tools/javac/code/Symbol$MethodSymbol;

    .line 47
    return-void

    .line 37
    :cond_0
    new-instance v0, Lorg/checkerframework/javacutil/BugInCF;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "TypeParameter not enclosed by method?  Type( "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " ) Element ( "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " ) "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/checkerframework/javacutil/BugInCF;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static accepts(Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Ljavax/lang/model/element/Element;)Z
    .locals 2
    .param p0, "type"    # Lorg/checkerframework/framework/type/AnnotatedTypeMirror;
    .param p1, "element"    # Ljavax/lang/model/element/Element;

    .line 26
    invoke-interface {p1}, Ljavax/lang/model/element/Element;->getKind()Ljavax/lang/model/element/ElementKind;

    move-result-object v0

    sget-object v1, Ljavax/lang/model/element/ElementKind;->TYPE_PARAMETER:Ljavax/lang/model/element/ElementKind;

    if-ne v0, v1, :cond_0

    .line 27
    invoke-interface {p1}, Ljavax/lang/model/element/Element;->getEnclosingElement()Ljavax/lang/model/element/Element;

    move-result-object v0

    instance-of v0, v0, Lcom/sun/tools/javac/code/Symbol$MethodSymbol;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 26
    :goto_0
    return v0
.end method

.method public static apply(Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedTypeVariable;Ljavax/lang/model/element/Element;Lorg/checkerframework/framework/type/AnnotatedTypeFactory;)V
    .locals 1
    .param p0, "type"    # Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedTypeVariable;
    .param p1, "element"    # Ljavax/lang/model/element/Element;
    .param p2, "typeFactory"    # Lorg/checkerframework/framework/type/AnnotatedTypeFactory;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/checkerframework/framework/util/element/ElementAnnotationUtil$UnexpectedAnnotationLocationException;
        }
    .end annotation

    .line 21
    new-instance v0, Lorg/checkerframework/framework/util/element/MethodTypeParamApplier;

    invoke-direct {v0, p0, p1, p2}, Lorg/checkerframework/framework/util/element/MethodTypeParamApplier;-><init>(Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedTypeVariable;Ljavax/lang/model/element/Element;Lorg/checkerframework/framework/type/AnnotatedTypeFactory;)V

    invoke-virtual {v0}, Lorg/checkerframework/framework/util/element/MethodTypeParamApplier;->extractAndApply()V

    .line 22
    return-void
.end method


# virtual methods
.method public bridge synthetic extractAndApply()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/checkerframework/framework/util/element/ElementAnnotationUtil$UnexpectedAnnotationLocationException;
        }
    .end annotation

    .line 15
    invoke-super {p0}, Lorg/checkerframework/framework/util/element/TypeParamElementAnnotationApplier;->extractAndApply()V

    return-void
.end method

.method public getElementIndex()I
    .locals 2

    .line 64
    iget-object v0, p0, Lorg/checkerframework/framework/util/element/MethodTypeParamApplier;->enclosingMethod:Lcom/sun/tools/javac/code/Symbol$MethodSymbol;

    invoke-virtual {v0}, Lcom/sun/tools/javac/code/Symbol$MethodSymbol;->getTypeParameters()Lcom/sun/tools/javac/util/List;

    move-result-object v0

    iget-object v1, p0, Lorg/checkerframework/framework/util/element/MethodTypeParamApplier;->element:Ljavax/lang/model/element/Element;

    invoke-virtual {v0, v1}, Lcom/sun/tools/javac/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v0

    return v0
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

    .line 92
    iget-object v0, p0, Lorg/checkerframework/framework/util/element/MethodTypeParamApplier;->enclosingMethod:Lcom/sun/tools/javac/code/Symbol$MethodSymbol;

    invoke-virtual {v0}, Lcom/sun/tools/javac/code/Symbol$MethodSymbol;->getRawTypeAttributes()Lcom/sun/tools/javac/util/List;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getTypeCompoundIndex(Lcom/sun/tools/javac/code/Attribute$TypeCompound;)I
    .locals 0

    .line 15
    invoke-super {p0, p1}, Lorg/checkerframework/framework/util/element/TypeParamElementAnnotationApplier;->getTypeCompoundIndex(Lcom/sun/tools/javac/code/Attribute$TypeCompound;)I

    move-result p1

    return p1
.end method

.method protected isAccepted()Z
    .locals 2

    .line 97
    iget-object v0, p0, Lorg/checkerframework/framework/util/element/MethodTypeParamApplier;->type:Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    iget-object v1, p0, Lorg/checkerframework/framework/util/element/MethodTypeParamApplier;->element:Ljavax/lang/model/element/Element;

    invoke-static {v0, v1}, Lorg/checkerframework/framework/util/element/MethodTypeParamApplier;->accepts(Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Ljavax/lang/model/element/Element;)Z

    move-result v0

    return v0
.end method

.method protected lowerBoundTarget()Lcom/sun/tools/javac/code/TargetType;
    .locals 1

    .line 52
    sget-object v0, Lcom/sun/tools/javac/code/TargetType;->METHOD_TYPE_PARAMETER:Lcom/sun/tools/javac/code/TargetType;

    return-object v0
.end method

.method protected upperBoundTarget()Lcom/sun/tools/javac/code/TargetType;
    .locals 1

    .line 58
    sget-object v0, Lcom/sun/tools/javac/code/TargetType;->METHOD_TYPE_PARAMETER_BOUND:Lcom/sun/tools/javac/code/TargetType;

    return-object v0
.end method

.method protected validTargets()[Lcom/sun/tools/javac/code/TargetType;
    .locals 3

    .line 69
    const/16 v0, 0x10

    new-array v0, v0, [Lcom/sun/tools/javac/code/TargetType;

    const/4 v1, 0x0

    sget-object v2, Lcom/sun/tools/javac/code/TargetType;->METHOD_RETURN:Lcom/sun/tools/javac/code/TargetType;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    sget-object v2, Lcom/sun/tools/javac/code/TargetType;->METHOD_FORMAL_PARAMETER:Lcom/sun/tools/javac/code/TargetType;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    sget-object v2, Lcom/sun/tools/javac/code/TargetType;->METHOD_RECEIVER:Lcom/sun/tools/javac/code/TargetType;

    aput-object v2, v0, v1

    const/4 v1, 0x3

    sget-object v2, Lcom/sun/tools/javac/code/TargetType;->THROWS:Lcom/sun/tools/javac/code/TargetType;

    aput-object v2, v0, v1

    const/4 v1, 0x4

    sget-object v2, Lcom/sun/tools/javac/code/TargetType;->LOCAL_VARIABLE:Lcom/sun/tools/javac/code/TargetType;

    aput-object v2, v0, v1

    const/4 v1, 0x5

    sget-object v2, Lcom/sun/tools/javac/code/TargetType;->RESOURCE_VARIABLE:Lcom/sun/tools/javac/code/TargetType;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/sun/tools/javac/code/TargetType;->EXCEPTION_PARAMETER:Lcom/sun/tools/javac/code/TargetType;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/sun/tools/javac/code/TargetType;->NEW:Lcom/sun/tools/javac/code/TargetType;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/sun/tools/javac/code/TargetType;->CAST:Lcom/sun/tools/javac/code/TargetType;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lcom/sun/tools/javac/code/TargetType;->INSTANCEOF:Lcom/sun/tools/javac/code/TargetType;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    sget-object v2, Lcom/sun/tools/javac/code/TargetType;->METHOD_INVOCATION_TYPE_ARGUMENT:Lcom/sun/tools/javac/code/TargetType;

    aput-object v2, v0, v1

    const/16 v1, 0xb

    sget-object v2, Lcom/sun/tools/javac/code/TargetType;->CONSTRUCTOR_INVOCATION_TYPE_ARGUMENT:Lcom/sun/tools/javac/code/TargetType;

    aput-object v2, v0, v1

    const/16 v1, 0xc

    sget-object v2, Lcom/sun/tools/javac/code/TargetType;->METHOD_REFERENCE:Lcom/sun/tools/javac/code/TargetType;

    aput-object v2, v0, v1

    const/16 v1, 0xd

    sget-object v2, Lcom/sun/tools/javac/code/TargetType;->CONSTRUCTOR_REFERENCE:Lcom/sun/tools/javac/code/TargetType;

    aput-object v2, v0, v1

    const/16 v1, 0xe

    sget-object v2, Lcom/sun/tools/javac/code/TargetType;->METHOD_REFERENCE_TYPE_ARGUMENT:Lcom/sun/tools/javac/code/TargetType;

    aput-object v2, v0, v1

    const/16 v1, 0xf

    sget-object v2, Lcom/sun/tools/javac/code/TargetType;->CONSTRUCTOR_REFERENCE_TYPE_ARGUMENT:Lcom/sun/tools/javac/code/TargetType;

    aput-object v2, v0, v1

    return-object v0
.end method
