.class public Lorg/checkerframework/framework/util/element/TypeVarUseApplier;
.super Ljava/lang/Object;
.source "TypeVarUseApplier.java"


# static fields
.field private static acceptedKinds:[Ljavax/lang/model/element/ElementKind;


# instance fields
.field private final arrayType:Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedArrayType;

.field private final declarationElem:Ljavax/lang/model/element/TypeParameterElement;

.field private typeFactory:Lorg/checkerframework/framework/type/AnnotatedTypeFactory;

.field private final typeVariable:Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedTypeVariable;

.field private final useElem:Ljavax/lang/model/element/Element;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 36
    const/4 v0, 0x5

    new-array v0, v0, [Ljavax/lang/model/element/ElementKind;

    const/4 v1, 0x0

    sget-object v2, Ljavax/lang/model/element/ElementKind;->PARAMETER:Ljavax/lang/model/element/ElementKind;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    sget-object v2, Ljavax/lang/model/element/ElementKind;->FIELD:Ljavax/lang/model/element/ElementKind;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    sget-object v2, Ljavax/lang/model/element/ElementKind;->LOCAL_VARIABLE:Ljavax/lang/model/element/ElementKind;

    aput-object v2, v0, v1

    const/4 v1, 0x3

    sget-object v2, Ljavax/lang/model/element/ElementKind;->RESOURCE_VARIABLE:Ljavax/lang/model/element/ElementKind;

    aput-object v2, v0, v1

    const/4 v1, 0x4

    sget-object v2, Ljavax/lang/model/element/ElementKind;->METHOD:Ljavax/lang/model/element/ElementKind;

    aput-object v2, v0, v1

    sput-object v0, Lorg/checkerframework/framework/util/element/TypeVarUseApplier;->acceptedKinds:[Ljavax/lang/model/element/ElementKind;

    return-void
.end method

.method constructor <init>(Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Ljavax/lang/model/element/Element;Lorg/checkerframework/framework/type/AnnotatedTypeFactory;)V
    .locals 3
    .param p1, "type"    # Lorg/checkerframework/framework/type/AnnotatedTypeMirror;
    .param p2, "element"    # Ljavax/lang/model/element/Element;
    .param p3, "typeFactory"    # Lorg/checkerframework/framework/type/AnnotatedTypeFactory;

    .line 81
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 82
    invoke-static {p1, p2}, Lorg/checkerframework/framework/util/element/TypeVarUseApplier;->accepts(Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Ljavax/lang/model/element/Element;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 92
    invoke-static {p1}, Lorg/checkerframework/framework/util/element/TypeVarUseApplier;->isGenericArrayType(Lorg/checkerframework/framework/type/AnnotatedTypeMirror;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 93
    move-object v0, p1

    check-cast v0, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedArrayType;

    iput-object v0, p0, Lorg/checkerframework/framework/util/element/TypeVarUseApplier;->arrayType:Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedArrayType;

    .line 94
    invoke-static {p1}, Lorg/checkerframework/framework/util/element/TypeVarUseApplier;->getNestedComponentType(Lorg/checkerframework/framework/type/AnnotatedTypeMirror;)Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    move-result-object v0

    check-cast v0, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedTypeVariable;

    iput-object v0, p0, Lorg/checkerframework/framework/util/element/TypeVarUseApplier;->typeVariable:Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedTypeVariable;

    .line 95
    nop

    .line 96
    invoke-virtual {v0}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedTypeVariable;->getUnderlyingType()Ljavax/lang/model/type/TypeVariable;

    move-result-object v0

    invoke-interface {v0}, Ljavax/lang/model/type/TypeVariable;->asElement()Ljavax/lang/model/element/Element;

    move-result-object v0

    check-cast v0, Ljavax/lang/model/element/TypeParameterElement;

    iput-object v0, p0, Lorg/checkerframework/framework/util/element/TypeVarUseApplier;->declarationElem:Ljavax/lang/model/element/TypeParameterElement;

    .line 97
    iput-object p2, p0, Lorg/checkerframework/framework/util/element/TypeVarUseApplier;->useElem:Ljavax/lang/model/element/Element;

    .line 98
    iput-object p3, p0, Lorg/checkerframework/framework/util/element/TypeVarUseApplier;->typeFactory:Lorg/checkerframework/framework/type/AnnotatedTypeFactory;

    goto :goto_0

    .line 101
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/checkerframework/framework/util/element/TypeVarUseApplier;->arrayType:Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedArrayType;

    .line 102
    move-object v0, p1

    check-cast v0, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedTypeVariable;

    iput-object v0, p0, Lorg/checkerframework/framework/util/element/TypeVarUseApplier;->typeVariable:Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedTypeVariable;

    .line 103
    nop

    .line 104
    invoke-virtual {v0}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedTypeVariable;->getUnderlyingType()Ljavax/lang/model/type/TypeVariable;

    move-result-object v0

    invoke-interface {v0}, Ljavax/lang/model/type/TypeVariable;->asElement()Ljavax/lang/model/element/Element;

    move-result-object v0

    check-cast v0, Ljavax/lang/model/element/TypeParameterElement;

    iput-object v0, p0, Lorg/checkerframework/framework/util/element/TypeVarUseApplier;->declarationElem:Ljavax/lang/model/element/TypeParameterElement;

    .line 105
    iput-object p2, p0, Lorg/checkerframework/framework/util/element/TypeVarUseApplier;->useElem:Ljavax/lang/model/element/Element;

    .line 106
    iput-object p3, p0, Lorg/checkerframework/framework/util/element/TypeVarUseApplier;->typeFactory:Lorg/checkerframework/framework/type/AnnotatedTypeFactory;

    .line 108
    :goto_0
    return-void

    .line 83
    :cond_1
    new-instance v0, Lorg/checkerframework/javacutil/BugInCF;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "TypeParamUseApplier does not accept type/element combination ( type ( "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " ) element ( "

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

    .line 49
    instance-of v0, p0, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedTypeVariable;

    if-nez v0, :cond_0

    invoke-static {p0}, Lorg/checkerframework/framework/util/element/TypeVarUseApplier;->isGenericArrayType(Lorg/checkerframework/framework/type/AnnotatedTypeMirror;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 50
    :cond_0
    invoke-interface {p1}, Ljavax/lang/model/element/Element;->getKind()Ljavax/lang/model/element/ElementKind;

    move-result-object v0

    sget-object v1, Lorg/checkerframework/framework/util/element/TypeVarUseApplier;->acceptedKinds:[Ljavax/lang/model/element/ElementKind;

    invoke-static {v0, v1}, Lorg/checkerframework/framework/util/element/ElementAnnotationUtil;->contains(Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 49
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

    .line 33
    new-instance v0, Lorg/checkerframework/framework/util/element/TypeVarUseApplier;

    invoke-direct {v0, p0, p1, p2}, Lorg/checkerframework/framework/util/element/TypeVarUseApplier;-><init>(Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Ljavax/lang/model/element/Element;Lorg/checkerframework/framework/type/AnnotatedTypeFactory;)V

    invoke-virtual {v0}, Lorg/checkerframework/framework/util/element/TypeVarUseApplier;->extractAndApply()V

    .line 34
    return-void
.end method

.method private static getAnnotations(Ljavax/lang/model/element/Element;Ljavax/lang/model/element/Element;)Ljava/util/List;
    .locals 3
    .param p0, "useElem"    # Ljavax/lang/model/element/Element;
    .param p1, "declarationElem"    # Ljavax/lang/model/element/Element;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/lang/model/element/Element;",
            "Ljavax/lang/model/element/Element;",
            ")",
            "Ljava/util/List<",
            "Lcom/sun/tools/javac/code/Attribute$TypeCompound;",
            ">;"
        }
    .end annotation

    .line 196
    sget-object v0, Lorg/checkerframework/framework/util/element/TypeVarUseApplier$1;->$SwitchMap$javax$lang$model$element$ElementKind:[I

    invoke-interface {p0}, Ljavax/lang/model/element/Element;->getKind()Ljavax/lang/model/element/ElementKind;

    move-result-object v1

    invoke-virtual {v1}, Ljavax/lang/model/element/ElementKind;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 212
    new-instance v0, Lorg/checkerframework/javacutil/BugInCF;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "TypeVarUseApplier::extractAndApply : Unhandled element kind "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 215
    invoke-interface {p0}, Ljavax/lang/model/element/Element;->getKind()Ljavax/lang/model/element/ElementKind;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "useElem ( "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " ) declarationElem ( "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " ) "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/checkerframework/javacutil/BugInCF;-><init>(Ljava/lang/String;)V

    throw v0

    .line 208
    :pswitch_0
    invoke-static {p0}, Lorg/checkerframework/framework/util/element/TypeVarUseApplier;->getVariableAnnos(Ljavax/lang/model/element/Element;)Ljava/util/List;

    move-result-object v0

    .line 209
    .local v0, "annotations":Ljava/util/List;, "Ljava/util/List<Lcom/sun/tools/javac/code/Attribute$TypeCompound;>;"
    goto :goto_0

    .line 202
    .end local v0    # "annotations":Ljava/util/List;, "Ljava/util/List<Lcom/sun/tools/javac/code/Attribute$TypeCompound;>;"
    :pswitch_1
    invoke-static {p0}, Lorg/checkerframework/framework/util/element/TypeVarUseApplier;->getParameterAnnos(Ljavax/lang/model/element/Element;)Ljava/util/List;

    move-result-object v0

    .line 203
    .restart local v0    # "annotations":Ljava/util/List;, "Ljava/util/List<Lcom/sun/tools/javac/code/Attribute$TypeCompound;>;"
    goto :goto_0

    .line 198
    .end local v0    # "annotations":Ljava/util/List;, "Ljava/util/List<Lcom/sun/tools/javac/code/Attribute$TypeCompound;>;"
    :pswitch_2
    invoke-static {p0}, Lorg/checkerframework/framework/util/element/TypeVarUseApplier;->getReturnAnnos(Ljavax/lang/model/element/Element;)Ljava/util/List;

    move-result-object v0

    .line 199
    .restart local v0    # "annotations":Ljava/util/List;, "Ljava/util/List<Lcom/sun/tools/javac/code/Attribute$TypeCompound;>;"
    nop

    .line 224
    :goto_0
    return-object v0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private static getNestedComponentType(Lorg/checkerframework/framework/type/AnnotatedTypeMirror;)Lorg/checkerframework/framework/type/AnnotatedTypeMirror;
    .locals 2
    .param p0, "type"    # Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    .line 60
    move-object v0, p0

    .line 61
    .local v0, "componentType":Lorg/checkerframework/framework/type/AnnotatedTypeMirror;
    :goto_0
    instance-of v1, v0, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedArrayType;

    if-eqz v1, :cond_0

    .line 62
    move-object v1, v0

    check-cast v1, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedArrayType;

    invoke-virtual {v1}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedArrayType;->getComponentType()Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    move-result-object v0

    goto :goto_0

    .line 65
    :cond_0
    return-object v0
.end method

.method private static getParameterAnnos(Ljavax/lang/model/element/Element;)Ljava/util/List;
    .locals 9
    .param p0, "paramElem"    # Ljavax/lang/model/element/Element;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/lang/model/element/Element;",
            ")",
            "Ljava/util/List<",
            "Lcom/sun/tools/javac/code/Attribute$TypeCompound;",
            ">;"
        }
    .end annotation

    .line 260
    invoke-interface {p0}, Ljavax/lang/model/element/Element;->getEnclosingElement()Ljavax/lang/model/element/Element;

    move-result-object v0

    .line 261
    .local v0, "enclosingElement":Ljavax/lang/model/element/Element;
    instance-of v1, v0, Ljavax/lang/model/element/ExecutableElement;

    if-eqz v1, :cond_3

    .line 270
    move-object v1, v0

    check-cast v1, Lcom/sun/tools/javac/code/Symbol$MethodSymbol;

    .line 272
    .local v1, "enclosingMethod":Lcom/sun/tools/javac/code/Symbol$MethodSymbol;
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 273
    .local v2, "result":Ljava/util/List;, "Ljava/util/List<Lcom/sun/tools/javac/code/Attribute$TypeCompound;>;"
    invoke-virtual {v1}, Lcom/sun/tools/javac/code/Symbol$MethodSymbol;->getKind()Ljavax/lang/model/element/ElementKind;

    move-result-object v3

    sget-object v4, Ljavax/lang/model/element/ElementKind;->CONSTRUCTOR:Ljavax/lang/model/element/ElementKind;

    if-eq v3, v4, :cond_0

    .line 274
    invoke-virtual {v1}, Lcom/sun/tools/javac/code/Symbol$MethodSymbol;->getKind()Ljavax/lang/model/element/ElementKind;

    move-result-object v3

    sget-object v4, Ljavax/lang/model/element/ElementKind;->METHOD:Ljavax/lang/model/element/ElementKind;

    if-eq v3, v4, :cond_0

    .line 276
    return-object v2

    .line 282
    :cond_0
    invoke-virtual {v1}, Lcom/sun/tools/javac/code/Symbol$MethodSymbol;->getParameters()Lcom/sun/tools/javac/util/List;

    move-result-object v3

    invoke-virtual {v3, p0}, Lcom/sun/tools/javac/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v3

    .line 283
    .local v3, "paramIndex":I
    invoke-virtual {v1}, Lcom/sun/tools/javac/code/Symbol$MethodSymbol;->getRawTypeAttributes()Lcom/sun/tools/javac/util/List;

    move-result-object v4

    .line 285
    .local v4, "annotations":Ljava/util/List;, "Ljava/util/List<Lcom/sun/tools/javac/code/Attribute$TypeCompound;>;"
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/sun/tools/javac/code/Attribute$TypeCompound;

    .line 286
    .local v6, "typeAnno":Lcom/sun/tools/javac/code/Attribute$TypeCompound;
    iget-object v7, v6, Lcom/sun/tools/javac/code/Attribute$TypeCompound;->position:Lcom/sun/tools/javac/code/TypeAnnotationPosition;

    iget-object v7, v7, Lcom/sun/tools/javac/code/TypeAnnotationPosition;->type:Lcom/sun/tools/javac/code/TargetType;

    sget-object v8, Lcom/sun/tools/javac/code/TargetType;->METHOD_FORMAL_PARAMETER:Lcom/sun/tools/javac/code/TargetType;

    if-ne v7, v8, :cond_1

    .line 287
    iget-object v7, v6, Lcom/sun/tools/javac/code/Attribute$TypeCompound;->position:Lcom/sun/tools/javac/code/TypeAnnotationPosition;

    iget v7, v7, Lcom/sun/tools/javac/code/TypeAnnotationPosition;->parameter_index:I

    if-ne v7, v3, :cond_1

    .line 288
    invoke-interface {v2, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 291
    .end local v6    # "typeAnno":Lcom/sun/tools/javac/code/Attribute$TypeCompound;
    :cond_1
    goto :goto_0

    .line 293
    :cond_2
    return-object v2

    .line 262
    .end local v1    # "enclosingMethod":Lcom/sun/tools/javac/code/Symbol$MethodSymbol;
    .end local v2    # "result":Ljava/util/List;, "Ljava/util/List<Lcom/sun/tools/javac/code/Attribute$TypeCompound;>;"
    .end local v3    # "paramIndex":I
    .end local v4    # "annotations":Ljava/util/List;, "Ljava/util/List<Lcom/sun/tools/javac/code/Attribute$TypeCompound;>;"
    :cond_3
    new-instance v1, Lorg/checkerframework/javacutil/BugInCF;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Bad element passed to TypeFromElement.getTypeParameterAnnotationAttributes: element: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " not found in enclosing executable: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/checkerframework/javacutil/BugInCF;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private static getReturnAnnos(Ljavax/lang/model/element/Element;)Ljava/util/List;
    .locals 7
    .param p0, "methodElem"    # Ljavax/lang/model/element/Element;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/lang/model/element/Element;",
            ")",
            "Ljava/util/List<",
            "Lcom/sun/tools/javac/code/Attribute$TypeCompound;",
            ">;"
        }
    .end annotation

    .line 298
    instance-of v0, p0, Ljavax/lang/model/element/ExecutableElement;

    if-eqz v0, :cond_2

    .line 303
    move-object v0, p0

    check-cast v0, Lcom/sun/tools/javac/code/Symbol$MethodSymbol;

    .line 305
    .local v0, "enclosingMethod":Lcom/sun/tools/javac/code/Symbol$MethodSymbol;
    invoke-virtual {v0}, Lcom/sun/tools/javac/code/Symbol$MethodSymbol;->getRawTypeAttributes()Lcom/sun/tools/javac/util/List;

    move-result-object v1

    .line 306
    .local v1, "annotations":Ljava/util/List;, "Ljava/util/List<Lcom/sun/tools/javac/code/Attribute$TypeCompound;>;"
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 307
    .local v2, "result":Ljava/util/List;, "Ljava/util/List<Lcom/sun/tools/javac/code/Attribute$TypeCompound;>;"
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/sun/tools/javac/code/Attribute$TypeCompound;

    .line 308
    .local v4, "typeAnno":Lcom/sun/tools/javac/code/Attribute$TypeCompound;
    iget-object v5, v4, Lcom/sun/tools/javac/code/Attribute$TypeCompound;->position:Lcom/sun/tools/javac/code/TypeAnnotationPosition;

    iget-object v5, v5, Lcom/sun/tools/javac/code/TypeAnnotationPosition;->type:Lcom/sun/tools/javac/code/TargetType;

    sget-object v6, Lcom/sun/tools/javac/code/TargetType;->METHOD_RETURN:Lcom/sun/tools/javac/code/TargetType;

    if-ne v5, v6, :cond_0

    .line 309
    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 311
    .end local v4    # "typeAnno":Lcom/sun/tools/javac/code/Attribute$TypeCompound;
    :cond_0
    goto :goto_0

    .line 313
    :cond_1
    return-object v2

    .line 299
    .end local v0    # "enclosingMethod":Lcom/sun/tools/javac/code/Symbol$MethodSymbol;
    .end local v1    # "annotations":Ljava/util/List;, "Ljava/util/List<Lcom/sun/tools/javac/code/Attribute$TypeCompound;>;"
    .end local v2    # "result":Ljava/util/List;, "Ljava/util/List<Lcom/sun/tools/javac/code/Attribute$TypeCompound;>;"
    :cond_2
    new-instance v0, Lorg/checkerframework/javacutil/BugInCF;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Bad element passed to TypeVarUseApplier.getReturnAnnos:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/checkerframework/javacutil/BugInCF;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static getVariableAnnos(Ljavax/lang/model/element/Element;)Ljava/util/List;
    .locals 7
    .param p0, "variableElem"    # Ljavax/lang/model/element/Element;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/lang/model/element/Element;",
            ")",
            "Ljava/util/List<",
            "Lcom/sun/tools/javac/code/Attribute$TypeCompound;",
            ">;"
        }
    .end annotation

    .line 229
    move-object v0, p0

    check-cast v0, Lcom/sun/tools/javac/code/Symbol$VarSymbol;

    .line 230
    .local v0, "varSymbol":Lcom/sun/tools/javac/code/Symbol$VarSymbol;
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 232
    .local v1, "annotations":Ljava/util/List;, "Ljava/util/List<Lcom/sun/tools/javac/code/Attribute$TypeCompound;>;"
    invoke-virtual {v0}, Lcom/sun/tools/javac/code/Symbol$VarSymbol;->getRawTypeAttributes()Lcom/sun/tools/javac/util/List;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sun/tools/javac/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sun/tools/javac/code/Attribute$TypeCompound;

    .line 234
    .local v3, "anno":Lcom/sun/tools/javac/code/Attribute$TypeCompound;
    iget-object v4, v3, Lcom/sun/tools/javac/code/Attribute$TypeCompound;->position:Lcom/sun/tools/javac/code/TypeAnnotationPosition;

    .line 235
    .local v4, "pos":Lcom/sun/tools/javac/code/TypeAnnotationPosition;
    sget-object v5, Lorg/checkerframework/framework/util/element/TypeVarUseApplier$1;->$SwitchMap$com$sun$tools$javac$code$TargetType:[I

    iget-object v6, v4, Lcom/sun/tools/javac/code/TypeAnnotationPosition;->type:Lcom/sun/tools/javac/code/TargetType;

    invoke-virtual {v6}, Lcom/sun/tools/javac/code/TargetType;->ordinal()I

    move-result v6

    aget v5, v5, v6

    packed-switch v5, :pswitch_data_0

    goto :goto_1

    .line 240
    :pswitch_0
    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 241
    nop

    .line 245
    .end local v3    # "anno":Lcom/sun/tools/javac/code/Attribute$TypeCompound;
    .end local v4    # "pos":Lcom/sun/tools/javac/code/TypeAnnotationPosition;
    :goto_1
    goto :goto_0

    .line 247
    :cond_0
    return-object v1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private isBaseComponent(Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedArrayType;Lcom/sun/tools/javac/code/Attribute$TypeCompound;)Z
    .locals 3
    .param p1, "arrayType"    # Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedArrayType;
    .param p2, "anno"    # Lcom/sun/tools/javac/code/Attribute$TypeCompound;

    .line 180
    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p2}, Lcom/sun/tools/javac/code/Attribute$TypeCompound;->getPosition()Lcom/sun/tools/javac/code/TypeAnnotationPosition;

    move-result-object v1

    iget-object v1, v1, Lcom/sun/tools/javac/code/TypeAnnotationPosition;->location:Lcom/sun/tools/javac/util/List;

    invoke-static {p1, v1}, Lorg/checkerframework/framework/util/element/ElementAnnotationUtil;->getTypeAtLocation(Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Ljava/util/List;)Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    move-result-object v1

    .line 181
    invoke-virtual {v1}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror;->getKind()Ljavax/lang/model/type/TypeKind;

    move-result-object v1

    sget-object v2, Ljavax/lang/model/type/TypeKind;->TYPEVAR:Ljavax/lang/model/type/TypeKind;
    :try_end_0
    .catch Lorg/checkerframework/framework/util/element/ElementAnnotationUtil$UnexpectedAnnotationLocationException; {:try_start_0 .. :try_end_0} :catch_0

    if-ne v1, v2, :cond_0

    const/4 v0, 0x1

    .line 180
    :cond_0
    return v0

    .line 183
    :catch_0
    move-exception v1

    .line 184
    .local v1, "ex":Lorg/checkerframework/framework/util/element/ElementAnnotationUtil$UnexpectedAnnotationLocationException;
    return v0
.end method

.method private static isGenericArrayType(Lorg/checkerframework/framework/type/AnnotatedTypeMirror;)Z
    .locals 1
    .param p0, "type"    # Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    .line 54
    instance-of v0, p0, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedArrayType;

    if-eqz v0, :cond_0

    .line 55
    invoke-static {p0}, Lorg/checkerframework/framework/util/element/TypeVarUseApplier;->getNestedComponentType(Lorg/checkerframework/framework/type/AnnotatedTypeMirror;)Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    move-result-object v0

    instance-of v0, v0, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedTypeVariable;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 54
    :goto_0
    return v0
.end method

.method private removeComponentAnnotations(Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedArrayType;Ljava/util/List;)Ljava/util/List;
    .locals 4
    .param p1, "arrayType"    # Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedArrayType;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedArrayType;",
            "Ljava/util/List<",
            "Lcom/sun/tools/javac/code/Attribute$TypeCompound;",
            ">;)",
            "Ljava/util/List<",
            "Lcom/sun/tools/javac/code/Attribute$TypeCompound;",
            ">;"
        }
    .end annotation

    .line 160
    .local p2, "annotations":Ljava/util/List;, "Ljava/util/List<Lcom/sun/tools/javac/code/Attribute$TypeCompound;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 162
    .local v0, "componentAnnotations":Ljava/util/List;, "Ljava/util/List<Lcom/sun/tools/javac/code/Attribute$TypeCompound;>;"
    if-eqz p1, :cond_1

    .line 163
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 164
    invoke-interface {p2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sun/tools/javac/code/Attribute$TypeCompound;

    .line 165
    .local v2, "anno":Lcom/sun/tools/javac/code/Attribute$TypeCompound;
    invoke-direct {p0, p1, v2}, Lorg/checkerframework/framework/util/element/TypeVarUseApplier;->isBaseComponent(Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedArrayType;Lcom/sun/tools/javac/code/Attribute$TypeCompound;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 166
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 167
    invoke-interface {p2, v2}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    goto :goto_1

    .line 169
    :cond_0
    add-int/lit8 v1, v1, 0x1

    .line 171
    .end local v2    # "anno":Lcom/sun/tools/javac/code/Attribute$TypeCompound;
    :goto_1
    goto :goto_0

    .line 174
    .end local v1    # "i":I
    :cond_1
    return-object v0
.end method


# virtual methods
.method public extractAndApply()V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/checkerframework/framework/util/element/ElementAnnotationUtil$UnexpectedAnnotationLocationException;
        }
    .end annotation

    .line 118
    iget-object v0, p0, Lorg/checkerframework/framework/util/element/TypeVarUseApplier;->typeVariable:Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedTypeVariable;

    iget-object v1, p0, Lorg/checkerframework/framework/util/element/TypeVarUseApplier;->useElem:Ljavax/lang/model/element/Element;

    .line 119
    invoke-interface {v1}, Ljavax/lang/model/element/Element;->getAnnotationMirrors()Ljava/util/List;

    move-result-object v1

    .line 118
    invoke-static {v0, v1}, Lorg/checkerframework/framework/util/element/ElementAnnotationUtil;->addDeclarationAnnotationsFromElement(Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Ljava/util/List;)V

    .line 122
    iget-object v0, p0, Lorg/checkerframework/framework/util/element/TypeVarUseApplier;->typeVariable:Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedTypeVariable;

    iget-object v1, p0, Lorg/checkerframework/framework/util/element/TypeVarUseApplier;->declarationElem:Ljavax/lang/model/element/TypeParameterElement;

    iget-object v2, p0, Lorg/checkerframework/framework/util/element/TypeVarUseApplier;->typeFactory:Lorg/checkerframework/framework/type/AnnotatedTypeFactory;

    invoke-static {v0, v1, v2}, Lorg/checkerframework/framework/type/ElementAnnotationApplier;->apply(Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Ljavax/lang/model/element/Element;Lorg/checkerframework/framework/type/AnnotatedTypeFactory;)V

    .line 124
    iget-object v0, p0, Lorg/checkerframework/framework/util/element/TypeVarUseApplier;->useElem:Ljavax/lang/model/element/Element;

    iget-object v1, p0, Lorg/checkerframework/framework/util/element/TypeVarUseApplier;->declarationElem:Ljavax/lang/model/element/TypeParameterElement;

    invoke-static {v0, v1}, Lorg/checkerframework/framework/util/element/TypeVarUseApplier;->getAnnotations(Ljavax/lang/model/element/Element;Ljavax/lang/model/element/Element;)Ljava/util/List;

    move-result-object v0

    .line 127
    .local v0, "annotations":Ljava/util/List;, "Ljava/util/List<Lcom/sun/tools/javac/code/Attribute$TypeCompound;>;"
    iget-object v1, p0, Lorg/checkerframework/framework/util/element/TypeVarUseApplier;->arrayType:Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedArrayType;

    if-eqz v1, :cond_0

    .line 130
    invoke-direct {p0, v1, v0}, Lorg/checkerframework/framework/util/element/TypeVarUseApplier;->removeComponentAnnotations(Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedArrayType;Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    .line 131
    .local v1, "typeVarAnnotations":Ljava/util/List;, "Ljava/util/List<Lcom/sun/tools/javac/code/Attribute$TypeCompound;>;"
    iget-object v2, p0, Lorg/checkerframework/framework/util/element/TypeVarUseApplier;->arrayType:Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedArrayType;

    invoke-static {v2, v0}, Lorg/checkerframework/framework/util/element/ElementAnnotationUtil;->annotateViaTypeAnnoPosition(Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Ljava/util/Collection;)V

    goto :goto_0

    .line 134
    .end local v1    # "typeVarAnnotations":Ljava/util/List;, "Ljava/util/List<Lcom/sun/tools/javac/code/Attribute$TypeCompound;>;"
    :cond_0
    move-object v1, v0

    .line 137
    .restart local v1    # "typeVarAnnotations":Ljava/util/List;, "Ljava/util/List<Lcom/sun/tools/javac/code/Attribute$TypeCompound;>;"
    :goto_0
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sun/tools/javac/code/Attribute$TypeCompound;

    .line 138
    .local v3, "annotation":Lcom/sun/tools/javac/code/Attribute$TypeCompound;
    iget-object v4, p0, Lorg/checkerframework/framework/util/element/TypeVarUseApplier;->typeVariable:Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedTypeVariable;

    invoke-virtual {v4, v3}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedTypeVariable;->removeAnnotationInHierarchy(Ljavax/lang/model/element/AnnotationMirror;)Z

    .line 139
    iget-object v4, p0, Lorg/checkerframework/framework/util/element/TypeVarUseApplier;->typeVariable:Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedTypeVariable;

    invoke-virtual {v4, v3}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedTypeVariable;->addAnnotation(Ljavax/lang/model/element/AnnotationMirror;)V

    .line 142
    iget-object v4, p0, Lorg/checkerframework/framework/util/element/TypeVarUseApplier;->typeVariable:Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedTypeVariable;

    invoke-virtual {v4}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedTypeVariable;->getUpperBound()Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    move-result-object v4

    instance-of v4, v4, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedIntersectionType;

    if-eqz v4, :cond_1

    .line 143
    iget-object v4, p0, Lorg/checkerframework/framework/util/element/TypeVarUseApplier;->typeVariable:Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedTypeVariable;

    invoke-virtual {v4}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedTypeVariable;->getUpperBound()Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    move-result-object v4

    invoke-virtual {v4}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror;->directSuperTypes()Ljava/util/List;

    move-result-object v4

    .local v4, "upperBounds":Ljava/util/List;, "Ljava/util/List<+Lorg/checkerframework/framework/type/AnnotatedTypeMirror;>;"
    goto :goto_2

    .line 145
    .end local v4    # "upperBounds":Ljava/util/List;, "Ljava/util/List<+Lorg/checkerframework/framework/type/AnnotatedTypeMirror;>;"
    :cond_1
    const/4 v4, 0x1

    new-array v4, v4, [Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    iget-object v5, p0, Lorg/checkerframework/framework/util/element/TypeVarUseApplier;->typeVariable:Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedTypeVariable;

    invoke-virtual {v5}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedTypeVariable;->getUpperBound()Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    move-result-object v5

    const/4 v6, 0x0

    aput-object v5, v4, v6

    invoke-static {v4}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v4

    .line 150
    .restart local v4    # "upperBounds":Ljava/util/List;, "Ljava/util/List<+Lorg/checkerframework/framework/type/AnnotatedTypeMirror;>;"
    :goto_2
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_3
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    .line 151
    .local v6, "bound":Lorg/checkerframework/framework/type/AnnotatedTypeMirror;
    invoke-virtual {v6, v3}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror;->removeAnnotationInHierarchy(Ljavax/lang/model/element/AnnotationMirror;)Z

    .line 152
    invoke-virtual {v6, v3}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror;->addAnnotation(Ljavax/lang/model/element/AnnotationMirror;)V

    .line 153
    .end local v6    # "bound":Lorg/checkerframework/framework/type/AnnotatedTypeMirror;
    goto :goto_3

    .line 154
    .end local v3    # "annotation":Lcom/sun/tools/javac/code/Attribute$TypeCompound;
    .end local v4    # "upperBounds":Ljava/util/List;, "Ljava/util/List<+Lorg/checkerframework/framework/type/AnnotatedTypeMirror;>;"
    :cond_2
    goto :goto_1

    .line 155
    :cond_3
    return-void
.end method
