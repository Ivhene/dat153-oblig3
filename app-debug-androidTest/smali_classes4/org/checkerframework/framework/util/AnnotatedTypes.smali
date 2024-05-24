.class public Lorg/checkerframework/framework/util/AnnotatedTypes;
.super Ljava/lang/Object;
.source "AnnotatedTypes.java"


# static fields
.field static final synthetic $assertionsDisabled:Z

.field private static annotationClassName:Ljava/lang/String;

.field private static asSuperVisitor:Lorg/checkerframework/framework/type/AsSuperVisitor;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 61
    nop

    .line 1010
    const-class v0, Ljava/lang/annotation/Annotation;

    .line 1011
    invoke-virtual {v0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/checkerframework/framework/util/AnnotatedTypes;->annotationClassName:Ljava/lang/String;

    .line 1010
    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 64
    new-instance v0, Ljava/lang/AssertionError;

    const-string v1, "Class AnnotatedTypes cannot be instantiated."

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0
.end method

.method private static addTypeVarMappings(Ljavax/lang/model/util/Types;Lorg/checkerframework/framework/type/AnnotatedTypeFactory;Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Ljavax/lang/model/element/TypeElement;Ljava/util/Map;)V
    .locals 8
    .param p0, "types"    # Ljavax/lang/model/util/Types;
    .param p1, "atypeFactory"    # Lorg/checkerframework/framework/type/AnnotatedTypeFactory;
    .param p2, "t"    # Lorg/checkerframework/framework/type/AnnotatedTypeMirror;
    .param p3, "enclosingClassOfElem"    # Ljavax/lang/model/element/TypeElement;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/lang/model/util/Types;",
            "Lorg/checkerframework/framework/type/AnnotatedTypeFactory;",
            "Lorg/checkerframework/framework/type/AnnotatedTypeMirror;",
            "Ljavax/lang/model/element/TypeElement;",
            "Ljava/util/Map<",
            "Ljavax/lang/model/type/TypeVariable;",
            "Lorg/checkerframework/framework/type/AnnotatedTypeMirror;",
            ">;)V"
        }
    .end annotation

    .line 445
    .local p4, "mappings":Ljava/util/Map;, "Ljava/util/Map<Ljavax/lang/model/type/TypeVariable;Lorg/checkerframework/framework/type/AnnotatedTypeMirror;>;"
    invoke-interface {p3}, Ljavax/lang/model/element/TypeElement;->getTypeParameters()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 446
    return-void

    .line 448
    :cond_0
    invoke-virtual {p1, p3}, Lorg/checkerframework/framework/type/AnnotatedTypeFactory;->getAnnotatedType(Ljavax/lang/model/element/TypeElement;)Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedDeclaredType;

    move-result-object v0

    .line 449
    .local v0, "enclosingType":Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedDeclaredType;
    nop

    .line 450
    invoke-static {p0, p1, p2, v0}, Lorg/checkerframework/framework/util/AnnotatedTypes;->asOuterSuper(Ljavax/lang/model/util/Types;Lorg/checkerframework/framework/type/AnnotatedTypeFactory;Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Lorg/checkerframework/framework/type/AnnotatedTypeMirror;)Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    move-result-object v1

    check-cast v1, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedDeclaredType;

    .line 452
    .local v1, "base":Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedDeclaredType;
    new-instance v2, Ljava/util/ArrayList;

    .line 453
    invoke-virtual {v0}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedDeclaredType;->getTypeArguments()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 454
    .local v2, "ownerParams":Ljava/util/List;, "Ljava/util/List<Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedTypeVariable;>;"
    invoke-virtual {v0}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedDeclaredType;->getTypeArguments()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    .line 455
    .local v4, "typeParam":Lorg/checkerframework/framework/type/AnnotatedTypeMirror;
    invoke-virtual {v4}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror;->getKind()Ljavax/lang/model/type/TypeKind;

    move-result-object v5

    sget-object v6, Ljavax/lang/model/type/TypeKind;->TYPEVAR:Ljavax/lang/model/type/TypeKind;

    if-ne v5, v6, :cond_1

    .line 467
    move-object v5, v4

    check-cast v5, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedTypeVariable;

    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 468
    .end local v4    # "typeParam":Lorg/checkerframework/framework/type/AnnotatedTypeMirror;
    goto :goto_0

    .line 456
    .restart local v4    # "typeParam":Lorg/checkerframework/framework/type/AnnotatedTypeMirror;
    :cond_1
    new-instance v3, Lorg/checkerframework/javacutil/BugInCF;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Type arguments of a declaration should be type variables\nenclosingClassOfElem="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\nenclosingType="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\ntypeMirror="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v5}, Lorg/checkerframework/javacutil/BugInCF;-><init>(Ljava/lang/String;)V

    throw v3

    .line 470
    .end local v4    # "typeParam":Lorg/checkerframework/framework/type/AnnotatedTypeMirror;
    :cond_2
    invoke-virtual {v1}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedDeclaredType;->getTypeArguments()Ljava/util/List;

    move-result-object v3

    .line 471
    .local v3, "baseParams":Ljava/util/List;, "Ljava/util/List<Lorg/checkerframework/framework/type/AnnotatedTypeMirror;>;"
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v4

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v5

    if-eq v4, v5, :cond_4

    invoke-virtual {v1}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedDeclaredType;->wasRaw()Z

    move-result v4

    if-eqz v4, :cond_3

    goto :goto_1

    .line 472
    :cond_3
    new-instance v4, Lorg/checkerframework/javacutil/BugInCF;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unexpected number of parameters.\nenclosingType="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\nbaseType="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Lorg/checkerframework/javacutil/BugInCF;-><init>(Ljava/lang/String;)V

    throw v4

    .line 480
    :cond_4
    :goto_1
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_6

    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_6

    invoke-virtual {v1}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedDeclaredType;->wasRaw()Z

    move-result v4

    if-eqz v4, :cond_6

    .line 481
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 482
    .local v4, "newBaseParams":Ljava/util/List;, "Ljava/util/List<Lorg/checkerframework/framework/type/AnnotatedTypeMirror;>;"
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_2
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_5

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedTypeVariable;

    .line 486
    .local v6, "arg":Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedTypeVariable;
    invoke-virtual {v6}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedTypeVariable;->getErased()Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    move-result-object v7

    invoke-interface {v4, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 487
    .end local v6    # "arg":Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedTypeVariable;
    goto :goto_2

    .line 488
    :cond_5
    move-object v3, v4

    .line 491
    .end local v4    # "newBaseParams":Ljava/util/List;, "Ljava/util/List<Lorg/checkerframework/framework/type/AnnotatedTypeMirror;>;"
    :cond_6
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_3
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v5

    if-ge v4, v5, :cond_7

    .line 492
    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedTypeVariable;

    invoke-virtual {v5}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedTypeVariable;->getUnderlyingType()Ljavax/lang/model/type/TypeVariable;

    move-result-object v5

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    invoke-interface {p4, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 491
    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    .line 494
    .end local v4    # "i":I
    :cond_7
    return-void
.end method

.method public static areCorrespondingTypeVariables(Ljavax/lang/model/util/Elements;Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedTypeVariable;Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedTypeVariable;)Z
    .locals 11
    .param p0, "elements"    # Ljavax/lang/model/util/Elements;
    .param p1, "type1"    # Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedTypeVariable;
    .param p2, "type2"    # Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedTypeVariable;

    .line 1081
    nop

    .line 1082
    invoke-virtual {p1}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedTypeVariable;->getUnderlyingType()Ljavax/lang/model/type/TypeVariable;

    move-result-object v0

    invoke-interface {v0}, Ljavax/lang/model/type/TypeVariable;->asElement()Ljavax/lang/model/element/Element;

    move-result-object v0

    check-cast v0, Ljavax/lang/model/element/TypeParameterElement;

    .line 1083
    .local v0, "type1ParamElem":Ljavax/lang/model/element/TypeParameterElement;
    nop

    .line 1084
    invoke-virtual {p2}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedTypeVariable;->getUnderlyingType()Ljavax/lang/model/type/TypeVariable;

    move-result-object v1

    invoke-interface {v1}, Ljavax/lang/model/type/TypeVariable;->asElement()Ljavax/lang/model/element/Element;

    move-result-object v1

    check-cast v1, Ljavax/lang/model/element/TypeParameterElement;

    .line 1086
    .local v1, "type2ParamElem":Ljavax/lang/model/element/TypeParameterElement;
    invoke-interface {v0}, Ljavax/lang/model/element/TypeParameterElement;->getGenericElement()Ljavax/lang/model/element/Element;

    move-result-object v2

    instance-of v2, v2, Ljavax/lang/model/element/ExecutableElement;

    const/4 v3, 0x0

    if-eqz v2, :cond_3

    .line 1087
    invoke-interface {v1}, Ljavax/lang/model/element/TypeParameterElement;->getGenericElement()Ljavax/lang/model/element/Element;

    move-result-object v2

    instance-of v2, v2, Ljavax/lang/model/element/ExecutableElement;

    if-eqz v2, :cond_3

    .line 1088
    nop

    .line 1089
    invoke-interface {v0}, Ljavax/lang/model/element/TypeParameterElement;->getGenericElement()Ljavax/lang/model/element/Element;

    move-result-object v2

    check-cast v2, Ljavax/lang/model/element/ExecutableElement;

    .line 1090
    .local v2, "type1Executable":Ljavax/lang/model/element/ExecutableElement;
    nop

    .line 1091
    invoke-interface {v1}, Ljavax/lang/model/element/TypeParameterElement;->getGenericElement()Ljavax/lang/model/element/Element;

    move-result-object v4

    check-cast v4, Ljavax/lang/model/element/ExecutableElement;

    .line 1093
    .local v4, "type2Executable":Ljavax/lang/model/element/ExecutableElement;
    invoke-interface {v2}, Ljavax/lang/model/element/ExecutableElement;->getEnclosingElement()Ljavax/lang/model/element/Element;

    move-result-object v5

    check-cast v5, Ljavax/lang/model/element/TypeElement;

    .line 1094
    .local v5, "type1Class":Ljavax/lang/model/element/TypeElement;
    invoke-interface {v4}, Ljavax/lang/model/element/ExecutableElement;->getEnclosingElement()Ljavax/lang/model/element/Element;

    move-result-object v6

    check-cast v6, Ljavax/lang/model/element/TypeElement;

    .line 1096
    .local v6, "type2Class":Ljavax/lang/model/element/TypeElement;
    nop

    .line 1097
    invoke-interface {p0, v2, v4, v5}, Ljavax/lang/model/util/Elements;->overrides(Ljavax/lang/model/element/ExecutableElement;Ljavax/lang/model/element/ExecutableElement;Ljavax/lang/model/element/TypeElement;)Z

    move-result v7

    const/4 v8, 0x1

    if-nez v7, :cond_1

    .line 1098
    invoke-interface {p0, v4, v2, v6}, Ljavax/lang/model/util/Elements;->overrides(Ljavax/lang/model/element/ExecutableElement;Ljavax/lang/model/element/ExecutableElement;Ljavax/lang/model/element/TypeElement;)Z

    move-result v7

    if-eqz v7, :cond_0

    goto :goto_0

    :cond_0
    move v7, v3

    goto :goto_1

    :cond_1
    :goto_0
    move v7, v8

    .line 1099
    .local v7, "methodIsOverriden":Z
    :goto_1
    if-eqz v7, :cond_3

    .line 1100
    nop

    .line 1101
    invoke-interface {v2}, Ljavax/lang/model/element/ExecutableElement;->getTypeParameters()Ljava/util/List;

    move-result-object v9

    invoke-interface {v9, v0}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v9

    .line 1102
    invoke-interface {v4}, Ljavax/lang/model/element/ExecutableElement;->getTypeParameters()Ljava/util/List;

    move-result-object v10

    invoke-interface {v10, v1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v10

    if-ne v9, v10, :cond_2

    move v3, v8

    .line 1103
    .local v3, "haveSameIndex":Z
    :cond_2
    return v3

    .line 1107
    .end local v2    # "type1Executable":Ljavax/lang/model/element/ExecutableElement;
    .end local v3    # "haveSameIndex":Z
    .end local v4    # "type2Executable":Ljavax/lang/model/element/ExecutableElement;
    .end local v5    # "type1Class":Ljavax/lang/model/element/TypeElement;
    .end local v6    # "type2Class":Ljavax/lang/model/element/TypeElement;
    .end local v7    # "methodIsOverriden":Z
    :cond_3
    return v3
.end method

.method public static asMemberOf(Ljavax/lang/model/util/Types;Lorg/checkerframework/framework/type/AnnotatedTypeFactory;Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Ljavax/lang/model/element/ExecutableElement;)Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedExecutableType;
    .locals 1
    .param p0, "types"    # Ljavax/lang/model/util/Types;
    .param p1, "atypeFactory"    # Lorg/checkerframework/framework/type/AnnotatedTypeFactory;
    .param p2, "t"    # Lorg/checkerframework/framework/type/AnnotatedTypeMirror;
    .param p3, "elem"    # Ljavax/lang/model/element/ExecutableElement;

    .line 316
    invoke-static {p0, p1, p2, p3}, Lorg/checkerframework/framework/util/AnnotatedTypes;->asMemberOf(Ljavax/lang/model/util/Types;Lorg/checkerframework/framework/type/AnnotatedTypeFactory;Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Ljavax/lang/model/element/Element;)Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    move-result-object v0

    check-cast v0, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedExecutableType;

    return-object v0
.end method

.method public static asMemberOf(Ljavax/lang/model/util/Types;Lorg/checkerframework/framework/type/AnnotatedTypeFactory;Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Ljavax/lang/model/element/Element;)Lorg/checkerframework/framework/type/AnnotatedTypeMirror;
    .locals 2
    .param p0, "types"    # Ljavax/lang/model/util/Types;
    .param p1, "atypeFactory"    # Lorg/checkerframework/framework/type/AnnotatedTypeFactory;
    .param p2, "t"    # Lorg/checkerframework/framework/type/AnnotatedTypeMirror;
    .param p3, "elem"    # Ljavax/lang/model/element/Element;

    .line 346
    sget-object v0, Lorg/checkerframework/framework/util/AnnotatedTypes$2;->$SwitchMap$javax$lang$model$element$ElementKind:[I

    invoke-interface {p3}, Ljavax/lang/model/element/Element;->getKind()Ljavax/lang/model/element/ElementKind;

    move-result-object v1

    invoke-virtual {v1}, Ljavax/lang/model/element/ElementKind;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 354
    invoke-static {p0, p1, p2, p3}, Lorg/checkerframework/framework/util/AnnotatedTypes;->asMemberOfImpl(Ljavax/lang/model/util/Types;Lorg/checkerframework/framework/type/AnnotatedTypeFactory;Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Ljavax/lang/model/element/Element;)Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    move-result-object v0

    .line 355
    .local v0, "type":Lorg/checkerframework/framework/type/AnnotatedTypeMirror;
    invoke-static {p3}, Lorg/checkerframework/javacutil/ElementUtils;->isStatic(Ljavax/lang/model/element/Element;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 356
    invoke-virtual {p1, v0, p2, p3}, Lorg/checkerframework/framework/type/AnnotatedTypeFactory;->postAsMemberOf(Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Ljavax/lang/model/element/Element;)V

    goto :goto_0

    .line 352
    .end local v0    # "type":Lorg/checkerframework/framework/type/AnnotatedTypeMirror;
    :pswitch_0
    invoke-virtual {p1, p3}, Lorg/checkerframework/framework/type/AnnotatedTypeFactory;->fromElement(Ljavax/lang/model/element/Element;)Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    move-result-object v0

    return-object v0

    .line 358
    .restart local v0    # "type":Lorg/checkerframework/framework/type/AnnotatedTypeMirror;
    :cond_0
    :goto_0
    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private static asMemberOfImpl(Ljavax/lang/model/util/Types;Lorg/checkerframework/framework/type/AnnotatedTypeFactory;Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Ljavax/lang/model/element/Element;)Lorg/checkerframework/framework/type/AnnotatedTypeMirror;
    .locals 4
    .param p0, "types"    # Ljavax/lang/model/util/Types;
    .param p1, "atypeFactory"    # Lorg/checkerframework/framework/type/AnnotatedTypeFactory;
    .param p2, "of"    # Lorg/checkerframework/framework/type/AnnotatedTypeMirror;
    .param p3, "member"    # Ljavax/lang/model/element/Element;

    .line 367
    invoke-virtual {p1, p3}, Lorg/checkerframework/framework/type/AnnotatedTypeFactory;->getAnnotatedType(Ljavax/lang/model/element/Element;)Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    move-result-object v0

    .line 369
    .local v0, "memberType":Lorg/checkerframework/framework/type/AnnotatedTypeMirror;
    invoke-static {p3}, Lorg/checkerframework/javacutil/ElementUtils;->isStatic(Ljavax/lang/model/element/Element;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 370
    return-object v0

    .line 373
    :cond_0
    sget-object v1, Lorg/checkerframework/framework/util/AnnotatedTypes$2;->$SwitchMap$javax$lang$model$type$TypeKind:[I

    invoke-virtual {p2}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror;->getKind()Ljavax/lang/model/type/TypeKind;

    move-result-object v2

    invoke-virtual {v2}, Ljavax/lang/model/type/TypeKind;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 405
    new-instance v1, Lorg/checkerframework/javacutil/BugInCF;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "asMemberOf called on unexpected type.\nt: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/checkerframework/javacutil/BugInCF;-><init>(Ljava/lang/String;)V

    throw v1

    .line 403
    :pswitch_0
    invoke-static {p0, p1, p2, p3, v0}, Lorg/checkerframework/framework/util/AnnotatedTypes;->substituteTypeVariables(Ljavax/lang/model/util/Types;Lorg/checkerframework/framework/type/AnnotatedTypeFactory;Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Ljavax/lang/model/element/Element;Lorg/checkerframework/framework/type/AnnotatedTypeMirror;)Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    move-result-object v1

    return-object v1

    .line 395
    :pswitch_1
    move-object v1, p2

    check-cast v1, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedIntersectionType;

    invoke-virtual {v1}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedIntersectionType;->directSuperTypes()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedDeclaredType;

    .line 396
    .local v2, "superType":Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedDeclaredType;
    nop

    .line 397
    invoke-static {p0, p1, v2, p3, v0}, Lorg/checkerframework/framework/util/AnnotatedTypes;->substituteTypeVariables(Ljavax/lang/model/util/Types;Lorg/checkerframework/framework/type/AnnotatedTypeFactory;Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Ljavax/lang/model/element/Element;Lorg/checkerframework/framework/type/AnnotatedTypeMirror;)Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    move-result-object v0

    .line 399
    .end local v2    # "superType":Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedDeclaredType;
    goto :goto_0

    .line 400
    :cond_1
    return-object v0

    .line 385
    :pswitch_2
    move-object v1, p2

    check-cast v1, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedWildcardType;

    invoke-virtual {v1}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedWildcardType;->isUninferredTypeArgument()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 386
    invoke-static {p1, p3, v0}, Lorg/checkerframework/framework/util/AnnotatedTypes;->substituteUninferredTypeArgs(Lorg/checkerframework/framework/type/AnnotatedTypeFactory;Ljavax/lang/model/element/Element;Lorg/checkerframework/framework/type/AnnotatedTypeMirror;)Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    move-result-object v1

    return-object v1

    .line 388
    :cond_2
    move-object v1, p2

    check-cast v1, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedWildcardType;

    .line 391
    invoke-virtual {v1}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedWildcardType;->getExtendsBound()Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    move-result-object v1

    invoke-virtual {v1}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror;->deepCopy()Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    move-result-object v1

    .line 388
    invoke-static {p0, p1, v1, p3}, Lorg/checkerframework/framework/util/AnnotatedTypes;->asMemberOf(Ljavax/lang/model/util/Types;Lorg/checkerframework/framework/type/AnnotatedTypeFactory;Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Ljavax/lang/model/element/Element;)Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    move-result-object v1

    return-object v1

    .line 382
    :pswitch_3
    move-object v1, p2

    check-cast v1, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedTypeVariable;

    .line 383
    invoke-virtual {v1}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedTypeVariable;->getUpperBound()Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    move-result-object v1

    .line 382
    invoke-static {p0, p1, v1, p3}, Lorg/checkerframework/framework/util/AnnotatedTypes;->asMemberOf(Ljavax/lang/model/util/Types;Lorg/checkerframework/framework/type/AnnotatedTypeFactory;Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Ljavax/lang/model/element/Element;)Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    move-result-object v1

    return-object v1

    .line 377
    :pswitch_4
    invoke-static {p2, p3}, Lorg/checkerframework/framework/type/SyntheticArrays;->isArrayClone(Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Ljavax/lang/model/element/Element;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 378
    move-object v1, p2

    check-cast v1, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedArrayType;

    invoke-static {p3, v1}, Lorg/checkerframework/framework/type/SyntheticArrays;->replaceReturnType(Ljavax/lang/model/element/Element;Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedArrayType;)Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedExecutableType;

    move-result-object v1

    return-object v1

    .line 380
    :cond_3
    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private static asOuterSuper(Ljavax/lang/model/util/Types;Lorg/checkerframework/framework/type/AnnotatedTypeFactory;Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Lorg/checkerframework/framework/type/AnnotatedTypeMirror;)Lorg/checkerframework/framework/type/AnnotatedTypeMirror;
    .locals 5
    .param p0, "types"    # Ljavax/lang/model/util/Types;
    .param p1, "atypeFactory"    # Lorg/checkerframework/framework/type/AnnotatedTypeFactory;
    .param p2, "type"    # Lorg/checkerframework/framework/type/AnnotatedTypeMirror;
    .param p3, "superType"    # Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    .line 284
    invoke-virtual {p2}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror;->getKind()Ljavax/lang/model/type/TypeKind;

    move-result-object v0

    sget-object v1, Ljavax/lang/model/type/TypeKind;->DECLARED:Ljavax/lang/model/type/TypeKind;

    if-ne v0, v1, :cond_3

    .line 285
    move-object v0, p2

    check-cast v0, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedDeclaredType;

    .line 286
    .local v0, "dt":Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedDeclaredType;
    move-object v1, v0

    .line 287
    .local v1, "enclosingType":Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedDeclaredType;
    invoke-virtual {p3}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror;->getUnderlyingType()Ljavax/lang/model/type/TypeMirror;

    move-result-object v2

    invoke-interface {p0, v2}, Ljavax/lang/model/util/Types;->erasure(Ljavax/lang/model/type/TypeMirror;)Ljavax/lang/model/type/TypeMirror;

    move-result-object v2

    .line 288
    .local v2, "superTypeMirror":Ljavax/lang/model/type/TypeMirror;
    :goto_0
    if-eqz v1, :cond_1

    .line 289
    invoke-virtual {v1}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedDeclaredType;->getUnderlyingType()Ljavax/lang/model/type/DeclaredType;

    move-result-object v3

    invoke-interface {p0, v3}, Ljavax/lang/model/util/Types;->erasure(Ljavax/lang/model/type/TypeMirror;)Ljavax/lang/model/type/TypeMirror;

    move-result-object v3

    .line 290
    .local v3, "enclosingTypeMirror":Ljavax/lang/model/type/TypeMirror;
    invoke-interface {p0, v3, v2}, Ljavax/lang/model/util/Types;->isSubtype(Ljavax/lang/model/type/TypeMirror;Ljavax/lang/model/type/TypeMirror;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 291
    move-object v0, v1

    .line 292
    goto :goto_1

    .line 294
    :cond_0
    invoke-virtual {v1}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedDeclaredType;->getEnclosingType()Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedDeclaredType;

    move-result-object v1

    .line 295
    .end local v3    # "enclosingTypeMirror":Ljavax/lang/model/type/TypeMirror;
    goto :goto_0

    .line 296
    :cond_1
    :goto_1
    if-nez v1, :cond_2

    .line 303
    return-object p3

    .line 305
    :cond_2
    invoke-static {p1, v0, p3}, Lorg/checkerframework/framework/util/AnnotatedTypes;->asSuper(Lorg/checkerframework/framework/type/AnnotatedTypeFactory;Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Lorg/checkerframework/framework/type/AnnotatedTypeMirror;)Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    move-result-object v3

    return-object v3

    .line 307
    .end local v0    # "dt":Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedDeclaredType;
    .end local v1    # "enclosingType":Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedDeclaredType;
    .end local v2    # "superTypeMirror":Ljavax/lang/model/type/TypeMirror;
    :cond_3
    invoke-static {p1, p2, p3}, Lorg/checkerframework/framework/util/AnnotatedTypes;->asSuper(Lorg/checkerframework/framework/type/AnnotatedTypeFactory;Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Lorg/checkerframework/framework/type/AnnotatedTypeMirror;)Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    move-result-object v0

    return-object v0
.end method

.method public static asSuper(Lorg/checkerframework/framework/type/AnnotatedTypeFactory;Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Lorg/checkerframework/framework/type/AnnotatedTypeMirror;)Lorg/checkerframework/framework/type/AnnotatedTypeMirror;
    .locals 1
    .param p0, "atypeFactory"    # Lorg/checkerframework/framework/type/AnnotatedTypeFactory;
    .param p1, "type"    # Lorg/checkerframework/framework/type/AnnotatedTypeMirror;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lorg/checkerframework/framework/type/AnnotatedTypeMirror;",
            ">(",
            "Lorg/checkerframework/framework/type/AnnotatedTypeFactory;",
            "Lorg/checkerframework/framework/type/AnnotatedTypeMirror;",
            "TT;)TT;"
        }
    .end annotation

    .line 109
    .local p2, "superType":Lorg/checkerframework/framework/type/AnnotatedTypeMirror;, "TT;"
    sget-object v0, Lorg/checkerframework/framework/util/AnnotatedTypes;->asSuperVisitor:Lorg/checkerframework/framework/type/AsSuperVisitor;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p0}, Lorg/checkerframework/framework/type/AsSuperVisitor;->sameAnnotatedTypeFactory(Lorg/checkerframework/framework/type/AnnotatedTypeFactory;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 110
    :cond_0
    new-instance v0, Lorg/checkerframework/framework/type/AsSuperVisitor;

    invoke-direct {v0, p0}, Lorg/checkerframework/framework/type/AsSuperVisitor;-><init>(Lorg/checkerframework/framework/type/AnnotatedTypeFactory;)V

    sput-object v0, Lorg/checkerframework/framework/util/AnnotatedTypes;->asSuperVisitor:Lorg/checkerframework/framework/type/AsSuperVisitor;

    .line 112
    :cond_1
    sget-object v0, Lorg/checkerframework/framework/util/AnnotatedTypes;->asSuperVisitor:Lorg/checkerframework/framework/type/AsSuperVisitor;

    invoke-virtual {v0, p1, p2}, Lorg/checkerframework/framework/type/AsSuperVisitor;->asSuper(Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Lorg/checkerframework/framework/type/AnnotatedTypeMirror;)Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    move-result-object v0

    return-object v0
.end method

.method public static castedAsSuper(Lorg/checkerframework/framework/type/AnnotatedTypeFactory;Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Lorg/checkerframework/framework/type/AnnotatedTypeMirror;)Lorg/checkerframework/framework/type/AnnotatedTypeMirror;
    .locals 10
    .param p0, "atypeFactory"    # Lorg/checkerframework/framework/type/AnnotatedTypeFactory;
    .param p1, "subtype"    # Lorg/checkerframework/framework/type/AnnotatedTypeMirror;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lorg/checkerframework/framework/type/AnnotatedTypeMirror;",
            ">(",
            "Lorg/checkerframework/framework/type/AnnotatedTypeFactory;",
            "Lorg/checkerframework/framework/type/AnnotatedTypeMirror;",
            "TT;)TT;"
        }
    .end annotation

    .line 127
    .local p2, "supertype":Lorg/checkerframework/framework/type/AnnotatedTypeMirror;, "TT;"
    invoke-virtual {p0}, Lorg/checkerframework/framework/type/AnnotatedTypeFactory;->getProcessingEnv()Ljavax/annotation/processing/ProcessingEnvironment;

    move-result-object v0

    invoke-interface {v0}, Ljavax/annotation/processing/ProcessingEnvironment;->getTypeUtils()Ljavax/lang/model/util/Types;

    move-result-object v0

    .line 128
    .local v0, "types":Ljavax/lang/model/util/Types;
    invoke-virtual {p0}, Lorg/checkerframework/framework/type/AnnotatedTypeFactory;->getProcessingEnv()Ljavax/annotation/processing/ProcessingEnvironment;

    move-result-object v1

    invoke-interface {v1}, Ljavax/annotation/processing/ProcessingEnvironment;->getElementUtils()Ljavax/lang/model/util/Elements;

    move-result-object v1

    .line 130
    .local v1, "elements":Ljavax/lang/model/util/Elements;
    invoke-virtual {p1}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror;->getKind()Ljavax/lang/model/type/TypeKind;

    move-result-object v2

    sget-object v3, Ljavax/lang/model/type/TypeKind;->NULL:Ljavax/lang/model/type/TypeKind;

    if-ne v2, v3, :cond_0

    .line 135
    invoke-virtual {p2}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror;->deepCopy()Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    move-result-object v2

    .line 136
    .local v2, "copy":Lorg/checkerframework/framework/type/AnnotatedTypeMirror;, "TT;"
    invoke-virtual {p1}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror;->getAnnotations()Ljava/util/Set;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror;->replaceAnnotations(Ljava/lang/Iterable;)V

    .line 137
    return-object v2

    .line 140
    .end local v2    # "copy":Lorg/checkerframework/framework/type/AnnotatedTypeMirror;, "TT;"
    :cond_0
    invoke-static {p0, p1, p2}, Lorg/checkerframework/framework/util/AnnotatedTypes;->asSuper(Lorg/checkerframework/framework/type/AnnotatedTypeFactory;Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Lorg/checkerframework/framework/type/AnnotatedTypeMirror;)Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    move-result-object v2

    .line 142
    .local v2, "asSuperType":Lorg/checkerframework/framework/type/AnnotatedTypeMirror;, "TT;"
    invoke-static {p1, v2, p2, v0}, Lorg/checkerframework/framework/util/AnnotatedTypes;->fixUpRawTypes(Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Ljavax/lang/model/util/Types;)V

    .line 151
    if-eqz v2, :cond_2

    .line 152
    invoke-static {v2}, Lorg/checkerframework/framework/util/AnnotatedTypes;->isEnum(Lorg/checkerframework/framework/type/AnnotatedTypeMirror;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 153
    invoke-static {v0, v1, p2}, Lorg/checkerframework/framework/util/AnnotatedTypes;->isDeclarationOfJavaLangEnum(Ljavax/lang/model/util/Types;Ljavax/lang/model/util/Elements;Lorg/checkerframework/framework/type/AnnotatedTypeMirror;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 154
    move-object v3, p2

    check-cast v3, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedDeclaredType;

    invoke-virtual {v3}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedDeclaredType;->deepCopy()Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedDeclaredType;

    move-result-object v3

    .line 155
    .local v3, "resultAtd":Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedDeclaredType;
    invoke-virtual {v3}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedDeclaredType;->clearAnnotations()V

    .line 156
    invoke-virtual {v2}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror;->getAnnotations()Ljava/util/Set;

    move-result-object v4

    invoke-virtual {v3, v4}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedDeclaredType;->addAnnotations(Ljava/lang/Iterable;)V

    .line 158
    move-object v4, v2

    check-cast v4, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedDeclaredType;

    .line 159
    .local v4, "asSuperAdt":Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedDeclaredType;
    invoke-virtual {v3}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedDeclaredType;->getTypeArguments()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_2

    .line 160
    invoke-virtual {v4}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedDeclaredType;->getTypeArguments()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_2

    .line 161
    invoke-virtual {v4}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedDeclaredType;->getTypeArguments()Ljava/util/List;

    move-result-object v5

    const/4 v6, 0x0

    invoke-interface {v5, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    .line 162
    .local v5, "sourceTypeArg":Lorg/checkerframework/framework/type/AnnotatedTypeMirror;
    invoke-virtual {v3}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedDeclaredType;->getTypeArguments()Ljava/util/List;

    move-result-object v7

    invoke-interface {v7, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    .line 163
    .local v6, "resultTypeArg":Lorg/checkerframework/framework/type/AnnotatedTypeMirror;
    invoke-virtual {v6}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror;->clearAnnotations()V

    .line 164
    invoke-virtual {v6}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror;->getKind()Ljavax/lang/model/type/TypeKind;

    move-result-object v7

    sget-object v8, Ljavax/lang/model/type/TypeKind;->TYPEVAR:Ljavax/lang/model/type/TypeKind;

    if-ne v7, v8, :cond_1

    .line 166
    move-object v7, v6

    check-cast v7, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedTypeVariable;

    .line 167
    .local v7, "resultTypeArgTV":Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedTypeVariable;
    invoke-virtual {v7}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedTypeVariable;->getUpperBound()Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    move-result-object v8

    invoke-virtual {v5}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror;->getAnnotations()Ljava/util/Set;

    move-result-object v9

    invoke-virtual {v8, v9}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror;->addAnnotations(Ljava/lang/Iterable;)V

    .line 168
    .end local v7    # "resultTypeArgTV":Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedTypeVariable;
    goto :goto_0

    .line 169
    :cond_1
    invoke-virtual {v5}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror;->getAnnotations()Ljava/util/Set;

    move-result-object v7

    invoke-virtual {v6, v7}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror;->addAnnotations(Ljava/lang/Iterable;)V

    .line 172
    :goto_0
    move-object v7, v3

    .line 173
    .local v7, "result":Lorg/checkerframework/framework/type/AnnotatedTypeMirror;, "TT;"
    return-object v7

    .line 176
    .end local v3    # "resultAtd":Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedDeclaredType;
    .end local v4    # "asSuperAdt":Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedDeclaredType;
    .end local v5    # "sourceTypeArg":Lorg/checkerframework/framework/type/AnnotatedTypeMirror;
    .end local v6    # "resultTypeArg":Lorg/checkerframework/framework/type/AnnotatedTypeMirror;
    .end local v7    # "result":Lorg/checkerframework/framework/type/AnnotatedTypeMirror;, "TT;"
    :cond_2
    return-object v2
.end method

.method public static containsModifier(Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Ljavax/lang/model/element/AnnotationMirror;)Z
    .locals 1
    .param p0, "type"    # Lorg/checkerframework/framework/type/AnnotatedTypeMirror;
    .param p1, "modifier"    # Ljavax/lang/model/element/AnnotationMirror;

    .line 930
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-static {p0, p1, v0}, Lorg/checkerframework/framework/util/AnnotatedTypes;->containsModifierImpl(Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Ljavax/lang/model/element/AnnotationMirror;Ljava/util/List;)Z

    move-result v0

    return v0
.end method

.method private static containsModifierImpl(Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Ljavax/lang/model/element/AnnotationMirror;Ljava/util/List;)Z
    .locals 6
    .param p0, "type"    # Lorg/checkerframework/framework/type/AnnotatedTypeMirror;
    .param p1, "modifier"    # Ljavax/lang/model/element/AnnotationMirror;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/checkerframework/framework/type/AnnotatedTypeMirror;",
            "Ljavax/lang/model/element/AnnotationMirror;",
            "Ljava/util/List<",
            "Lorg/checkerframework/framework/type/AnnotatedTypeMirror;",
            ">;)Z"
        }
    .end annotation

    .line 940
    .local p2, "visited":Ljava/util/List;, "Ljava/util/List<Lorg/checkerframework/framework/type/AnnotatedTypeMirror;>;"
    invoke-virtual {p0, p1}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror;->hasAnnotation(Ljavax/lang/model/element/AnnotationMirror;)Z

    move-result v0

    .line 941
    .local v0, "found":Z
    invoke-interface {p2, p0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    .line 942
    .local v1, "vis":Z
    invoke-interface {p2, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 944
    if-nez v0, :cond_8

    if-nez v1, :cond_8

    .line 945
    invoke-virtual {p0}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror;->getKind()Ljavax/lang/model/type/TypeKind;

    move-result-object v2

    sget-object v3, Ljavax/lang/model/type/TypeKind;->DECLARED:Ljavax/lang/model/type/TypeKind;

    if-ne v2, v3, :cond_2

    .line 946
    move-object v2, p0

    check-cast v2, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedDeclaredType;

    .line 947
    .local v2, "declaredType":Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedDeclaredType;
    invoke-virtual {v2}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedDeclaredType;->getTypeArguments()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    .line 948
    .local v4, "typeMirror":Lorg/checkerframework/framework/type/AnnotatedTypeMirror;
    invoke-static {v4, p1, p2}, Lorg/checkerframework/framework/util/AnnotatedTypes;->containsModifierImpl(Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Ljavax/lang/model/element/AnnotationMirror;Ljava/util/List;)Z

    move-result v5

    or-int/2addr v0, v5

    .line 949
    if-eqz v0, :cond_0

    .line 950
    goto :goto_1

    .line 952
    .end local v4    # "typeMirror":Lorg/checkerframework/framework/type/AnnotatedTypeMirror;
    :cond_0
    goto :goto_0

    .line 953
    .end local v2    # "declaredType":Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedDeclaredType;
    :cond_1
    :goto_1
    goto :goto_2

    :cond_2
    invoke-virtual {p0}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror;->getKind()Ljavax/lang/model/type/TypeKind;

    move-result-object v2

    sget-object v3, Ljavax/lang/model/type/TypeKind;->ARRAY:Ljavax/lang/model/type/TypeKind;

    if-ne v2, v3, :cond_3

    .line 954
    move-object v2, p0

    check-cast v2, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedArrayType;

    .line 955
    .local v2, "arrayType":Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedArrayType;
    invoke-virtual {v2}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedArrayType;->getComponentType()Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    move-result-object v3

    invoke-static {v3, p1, p2}, Lorg/checkerframework/framework/util/AnnotatedTypes;->containsModifierImpl(Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Ljavax/lang/model/element/AnnotationMirror;Ljava/util/List;)Z

    move-result v0

    .line 956
    .end local v2    # "arrayType":Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedArrayType;
    goto :goto_2

    :cond_3
    invoke-virtual {p0}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror;->getKind()Ljavax/lang/model/type/TypeKind;

    move-result-object v2

    sget-object v3, Ljavax/lang/model/type/TypeKind;->TYPEVAR:Ljavax/lang/model/type/TypeKind;

    if-ne v2, v3, :cond_6

    .line 957
    move-object v2, p0

    check-cast v2, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedTypeVariable;

    .line 958
    .local v2, "atv":Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedTypeVariable;
    invoke-virtual {v2}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedTypeVariable;->getUpperBound()Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    move-result-object v3

    if-eqz v3, :cond_4

    .line 959
    invoke-virtual {v2}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedTypeVariable;->getUpperBound()Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    move-result-object v3

    invoke-static {v3, p1, p2}, Lorg/checkerframework/framework/util/AnnotatedTypes;->containsModifierImpl(Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Ljavax/lang/model/element/AnnotationMirror;Ljava/util/List;)Z

    move-result v0

    .line 961
    :cond_4
    if-nez v0, :cond_5

    invoke-virtual {v2}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedTypeVariable;->getLowerBound()Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    move-result-object v3

    if-eqz v3, :cond_5

    .line 962
    invoke-virtual {v2}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedTypeVariable;->getLowerBound()Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    move-result-object v3

    invoke-static {v3, p1, p2}, Lorg/checkerframework/framework/util/AnnotatedTypes;->containsModifierImpl(Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Ljavax/lang/model/element/AnnotationMirror;Ljava/util/List;)Z

    move-result v0

    .line 964
    .end local v2    # "atv":Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedTypeVariable;
    :cond_5
    goto :goto_2

    :cond_6
    invoke-virtual {p0}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror;->getKind()Ljavax/lang/model/type/TypeKind;

    move-result-object v2

    sget-object v3, Ljavax/lang/model/type/TypeKind;->WILDCARD:Ljavax/lang/model/type/TypeKind;

    if-ne v2, v3, :cond_5

    .line 965
    move-object v2, p0

    check-cast v2, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedWildcardType;

    .line 966
    .local v2, "awc":Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedWildcardType;
    invoke-virtual {v2}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedWildcardType;->getExtendsBound()Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    move-result-object v3

    if-eqz v3, :cond_7

    .line 967
    invoke-virtual {v2}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedWildcardType;->getExtendsBound()Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    move-result-object v3

    invoke-static {v3, p1, p2}, Lorg/checkerframework/framework/util/AnnotatedTypes;->containsModifierImpl(Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Ljavax/lang/model/element/AnnotationMirror;Ljava/util/List;)Z

    move-result v0

    .line 969
    :cond_7
    if-nez v0, :cond_8

    invoke-virtual {v2}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedWildcardType;->getSuperBound()Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    move-result-object v3

    if-eqz v3, :cond_8

    .line 970
    invoke-virtual {v2}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedWildcardType;->getSuperBound()Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    move-result-object v3

    invoke-static {v3, p1, p2}, Lorg/checkerframework/framework/util/AnnotatedTypes;->containsModifierImpl(Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Ljavax/lang/model/element/AnnotationMirror;Ljava/util/List;)Z

    move-result v0

    .line 975
    .end local v2    # "awc":Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedWildcardType;
    :cond_8
    :goto_2
    return v0
.end method

.method public static copyOnlyExplicitConstructorAnnotations(Lorg/checkerframework/framework/type/AnnotatedTypeFactory;Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedDeclaredType;Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedExecutableType;)V
    .locals 9
    .param p0, "atypeFactory"    # Lorg/checkerframework/framework/type/AnnotatedTypeFactory;
    .param p1, "returnType"    # Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedDeclaredType;
    .param p2, "constructor"    # Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedExecutableType;

    .line 1356
    nop

    .line 1357
    invoke-virtual {p2}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedExecutableType;->getElement()Ljavax/lang/model/element/ExecutableElement;

    move-result-object v0

    check-cast v0, Lcom/sun/tools/javac/code/Symbol;

    invoke-virtual {v0}, Lcom/sun/tools/javac/code/Symbol;->getRawTypeAttributes()Lcom/sun/tools/javac/util/List;

    move-result-object v0

    .line 1358
    .local v0, "decall":Ljava/util/List;, "Ljava/util/List<Lcom/sun/tools/javac/code/Attribute$TypeCompound;>;"
    invoke-static {}, Lorg/checkerframework/javacutil/AnnotationUtils;->createAnnotationSet()Ljava/util/SortedSet;

    move-result-object v1

    .line 1359
    .local v1, "decret":Ljava/util/Set;, "Ljava/util/Set<Ljavax/lang/model/element/AnnotationMirror;>;"
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sun/tools/javac/code/Attribute$TypeCompound;

    .line 1360
    .local v3, "da":Lcom/sun/tools/javac/code/Attribute$TypeCompound;
    iget-object v4, v3, Lcom/sun/tools/javac/code/Attribute$TypeCompound;->position:Lcom/sun/tools/javac/code/TypeAnnotationPosition;

    iget-object v4, v4, Lcom/sun/tools/javac/code/TypeAnnotationPosition;->type:Lcom/sun/tools/javac/code/TargetType;

    sget-object v5, Lcom/sun/tools/javac/code/TargetType;->METHOD_RETURN:Lcom/sun/tools/javac/code/TargetType;

    if-ne v4, v5, :cond_0

    .line 1361
    invoke-interface {v1, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1363
    .end local v3    # "da":Lcom/sun/tools/javac/code/Attribute$TypeCompound;
    :cond_0
    goto :goto_0

    .line 1366
    :cond_1
    invoke-static {}, Lorg/checkerframework/javacutil/AnnotationUtils;->createAnnotationSet()Ljava/util/SortedSet;

    move-result-object v2

    .line 1367
    .local v2, "polys":Ljava/util/Set;, "Ljava/util/Set<Ljavax/lang/model/element/AnnotationMirror;>;"
    invoke-virtual {p1}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedDeclaredType;->getAnnotations()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljavax/lang/model/element/AnnotationMirror;

    .line 1368
    .local v4, "anno":Ljavax/lang/model/element/AnnotationMirror;
    invoke-static {v4}, Lorg/checkerframework/framework/type/poly/QualifierPolymorphism;->hasPolymorphicQualifier(Ljavax/lang/model/element/AnnotationMirror;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 1369
    invoke-interface {v2, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1371
    .end local v4    # "anno":Ljavax/lang/model/element/AnnotationMirror;
    :cond_2
    goto :goto_1

    .line 1373
    :cond_3
    invoke-virtual {p2}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedExecutableType;->getReturnType()Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    move-result-object v3

    invoke-virtual {v3}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror;->getAnnotations()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_9

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljavax/lang/model/element/AnnotationMirror;

    .line 1374
    .local v4, "cta":Ljavax/lang/model/element/AnnotationMirror;
    invoke-virtual {p0}, Lorg/checkerframework/framework/type/AnnotatedTypeFactory;->getQualifierHierarchy()Lorg/checkerframework/framework/type/QualifierHierarchy;

    move-result-object v5

    invoke-virtual {v5, v4}, Lorg/checkerframework/framework/type/QualifierHierarchy;->getTopAnnotation(Ljavax/lang/model/element/AnnotationMirror;)Ljavax/lang/model/element/AnnotationMirror;

    move-result-object v5

    .line 1375
    .local v5, "ctatop":Ljavax/lang/model/element/AnnotationMirror;
    invoke-virtual {p1, v4}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedDeclaredType;->isAnnotatedInHierarchy(Ljavax/lang/model/element/AnnotationMirror;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 1376
    goto :goto_2

    .line 1378
    :cond_4
    invoke-virtual {p0, v4}, Lorg/checkerframework/framework/type/AnnotatedTypeFactory;->isSupportedQualifier(Ljavax/lang/model/element/AnnotationMirror;)Z

    move-result v6

    if-eqz v6, :cond_6

    invoke-virtual {p1, v4}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedDeclaredType;->isAnnotatedInHierarchy(Ljavax/lang/model/element/AnnotationMirror;)Z

    move-result v6

    if-nez v6, :cond_6

    .line 1379
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_3
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_6

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljavax/lang/model/element/AnnotationMirror;

    .line 1380
    .local v7, "fromDecl":Ljavax/lang/model/element/AnnotationMirror;
    invoke-virtual {p0, v7}, Lorg/checkerframework/framework/type/AnnotatedTypeFactory;->isSupportedQualifier(Ljavax/lang/model/element/AnnotationMirror;)Z

    move-result v8

    if-eqz v8, :cond_5

    .line 1384
    invoke-virtual {p0}, Lorg/checkerframework/framework/type/AnnotatedTypeFactory;->getQualifierHierarchy()Lorg/checkerframework/framework/type/QualifierHierarchy;

    move-result-object v8

    .line 1385
    invoke-virtual {v8, v7}, Lorg/checkerframework/framework/type/QualifierHierarchy;->getTopAnnotation(Ljavax/lang/model/element/AnnotationMirror;)Ljavax/lang/model/element/AnnotationMirror;

    move-result-object v8

    .line 1381
    invoke-static {v5, v8}, Lorg/checkerframework/javacutil/AnnotationUtils;->areSame(Ljavax/lang/model/element/AnnotationMirror;Ljavax/lang/model/element/AnnotationMirror;)Z

    move-result v8

    if-eqz v8, :cond_5

    .line 1386
    invoke-virtual {p1, v4}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedDeclaredType;->addAnnotation(Ljavax/lang/model/element/AnnotationMirror;)V

    .line 1387
    goto :goto_4

    .line 1389
    .end local v7    # "fromDecl":Ljavax/lang/model/element/AnnotationMirror;
    :cond_5
    goto :goto_3

    .line 1394
    :cond_6
    :goto_4
    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_5
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_8

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljavax/lang/model/element/AnnotationMirror;

    .line 1395
    .local v7, "pa":Ljavax/lang/model/element/AnnotationMirror;
    nop

    .line 1396
    invoke-virtual {p0}, Lorg/checkerframework/framework/type/AnnotatedTypeFactory;->getQualifierHierarchy()Lorg/checkerframework/framework/type/QualifierHierarchy;

    move-result-object v8

    invoke-virtual {v8, v7}, Lorg/checkerframework/framework/type/QualifierHierarchy;->getTopAnnotation(Ljavax/lang/model/element/AnnotationMirror;)Ljavax/lang/model/element/AnnotationMirror;

    move-result-object v8

    .line 1395
    invoke-static {v5, v8}, Lorg/checkerframework/javacutil/AnnotationUtils;->areSame(Ljavax/lang/model/element/AnnotationMirror;Ljavax/lang/model/element/AnnotationMirror;)Z

    move-result v8

    if-eqz v8, :cond_7

    .line 1397
    invoke-virtual {p1, v4}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedDeclaredType;->replaceAnnotation(Ljavax/lang/model/element/AnnotationMirror;)V

    .line 1398
    goto :goto_6

    .line 1400
    .end local v7    # "pa":Ljavax/lang/model/element/AnnotationMirror;
    :cond_7
    goto :goto_5

    .line 1401
    .end local v4    # "cta":Ljavax/lang/model/element/AnnotationMirror;
    .end local v5    # "ctatop":Ljavax/lang/model/element/AnnotationMirror;
    :cond_8
    :goto_6
    goto :goto_2

    .line 1402
    :cond_9
    return-void
.end method

.method public static expandVarArgs(Lorg/checkerframework/framework/type/AnnotatedTypeFactory;Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedExecutableType;Ljava/util/List;)Ljava/util/List;
    .locals 5
    .param p0, "atypeFactory"    # Lorg/checkerframework/framework/type/AnnotatedTypeFactory;
    .param p1, "method"    # Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedExecutableType;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/checkerframework/framework/type/AnnotatedTypeFactory;",
            "Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedExecutableType;",
            "Ljava/util/List<",
            "+",
            "Lcom/sun/source/tree/ExpressionTree;",
            ">;)",
            "Ljava/util/List<",
            "Lorg/checkerframework/framework/type/AnnotatedTypeMirror;",
            ">;"
        }
    .end annotation

    .line 778
    .local p2, "args":Ljava/util/List;, "Ljava/util/List<+Lcom/sun/source/tree/ExpressionTree;>;"
    invoke-virtual {p1}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedExecutableType;->getParameterTypes()Ljava/util/List;

    move-result-object v0

    .line 779
    .local v0, "parameters":Ljava/util/List;, "Ljava/util/List<Lorg/checkerframework/framework/type/AnnotatedTypeMirror;>;"
    invoke-virtual {p1}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedExecutableType;->getElement()Ljavax/lang/model/element/ExecutableElement;

    move-result-object v1

    invoke-interface {v1}, Ljavax/lang/model/element/ExecutableElement;->isVarArgs()Z

    move-result v1

    if-nez v1, :cond_0

    .line 780
    return-object v0

    .line 783
    :cond_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedArrayType;

    .line 785
    .local v1, "varargs":Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedArrayType;
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v3

    if-ne v2, v3, :cond_1

    .line 787
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-interface {p2, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sun/source/tree/Tree;

    invoke-virtual {p0, v2}, Lorg/checkerframework/framework/type/AnnotatedTypeFactory;->getAnnotatedType(Lcom/sun/source/tree/Tree;)Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    move-result-object v2

    .line 788
    .local v2, "lastArg":Lorg/checkerframework/framework/type/AnnotatedTypeMirror;
    invoke-virtual {v2}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror;->getKind()Ljavax/lang/model/type/TypeKind;

    move-result-object v3

    sget-object v4, Ljavax/lang/model/type/TypeKind;->ARRAY:Ljavax/lang/model/type/TypeKind;

    if-ne v3, v4, :cond_1

    .line 789
    invoke-static {v1}, Lorg/checkerframework/framework/util/AnnotatedTypes;->getArrayDepth(Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedArrayType;)I

    move-result v3

    move-object v4, v2

    check-cast v4, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedArrayType;

    invoke-static {v4}, Lorg/checkerframework/framework/util/AnnotatedTypes;->getArrayDepth(Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedArrayType;)I

    move-result v4

    if-ne v3, v4, :cond_1

    .line 790
    return-object v0

    .line 794
    .end local v2    # "lastArg":Lorg/checkerframework/framework/type/AnnotatedTypeMirror;
    :cond_1
    new-instance v2, Ljava/util/ArrayList;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    const/4 v4, 0x0

    invoke-interface {v0, v4, v3}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    move-object v0, v2

    .line 795
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v2

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    sub-int/2addr v2, v3

    .local v2, "i":I
    :goto_0
    if-lez v2, :cond_2

    .line 796
    invoke-virtual {v1}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedArrayType;->getComponentType()Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    move-result-object v3

    invoke-virtual {v3}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror;->deepCopy()Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 795
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    .line 799
    .end local v2    # "i":I
    :cond_2
    return-object v0
.end method

.method public static expandVarArgsFromTypes(Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedExecutableType;Ljava/util/List;)Ljava/util/List;
    .locals 5
    .param p0, "method"    # Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedExecutableType;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedExecutableType;",
            "Ljava/util/List<",
            "Lorg/checkerframework/framework/type/AnnotatedTypeMirror;",
            ">;)",
            "Ljava/util/List<",
            "Lorg/checkerframework/framework/type/AnnotatedTypeMirror;",
            ">;"
        }
    .end annotation

    .line 804
    .local p1, "args":Ljava/util/List;, "Ljava/util/List<Lorg/checkerframework/framework/type/AnnotatedTypeMirror;>;"
    invoke-virtual {p0}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedExecutableType;->getParameterTypes()Ljava/util/List;

    move-result-object v0

    .line 805
    .local v0, "parameters":Ljava/util/List;, "Ljava/util/List<Lorg/checkerframework/framework/type/AnnotatedTypeMirror;>;"
    invoke-virtual {p0}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedExecutableType;->getElement()Ljavax/lang/model/element/ExecutableElement;

    move-result-object v1

    invoke-interface {v1}, Ljavax/lang/model/element/ExecutableElement;->isVarArgs()Z

    move-result v1

    if-nez v1, :cond_0

    .line 806
    return-object v0

    .line 809
    :cond_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedArrayType;

    .line 811
    .local v1, "varargs":Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedArrayType;
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    if-ne v2, v3, :cond_2

    .line 813
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    .line 814
    .local v2, "lastArg":Lorg/checkerframework/framework/type/AnnotatedTypeMirror;
    invoke-virtual {v2}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror;->getKind()Ljavax/lang/model/type/TypeKind;

    move-result-object v3

    sget-object v4, Ljavax/lang/model/type/TypeKind;->ARRAY:Ljavax/lang/model/type/TypeKind;

    if-ne v3, v4, :cond_2

    .line 815
    invoke-static {v1}, Lorg/checkerframework/framework/util/AnnotatedTypes;->getArrayDepth(Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedArrayType;)I

    move-result v3

    move-object v4, v2

    check-cast v4, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedArrayType;

    invoke-static {v4}, Lorg/checkerframework/framework/util/AnnotatedTypes;->getArrayDepth(Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedArrayType;)I

    move-result v4

    if-eq v3, v4, :cond_1

    .line 819
    invoke-virtual {v1}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedArrayType;->getComponentType()Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    move-result-object v3

    invoke-virtual {v3}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror;->getKind()Ljavax/lang/model/type/TypeKind;

    move-result-object v3

    sget-object v4, Ljavax/lang/model/type/TypeKind;->TYPEVAR:Ljavax/lang/model/type/TypeKind;

    if-ne v3, v4, :cond_2

    .line 820
    :cond_1
    return-object v0

    .line 824
    .end local v2    # "lastArg":Lorg/checkerframework/framework/type/AnnotatedTypeMirror;
    :cond_2
    new-instance v2, Ljava/util/ArrayList;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    const/4 v4, 0x0

    invoke-interface {v0, v4, v3}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    move-object v0, v2

    .line 825
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    sub-int/2addr v2, v3

    .local v2, "i":I
    :goto_0
    if-lez v2, :cond_3

    .line 826
    invoke-virtual {v1}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedArrayType;->getComponentType()Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 825
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    .line 829
    .end local v2    # "i":I
    :cond_3
    return-object v0
.end method

.method public static findEffectiveAnnotationInHierarchy(Lorg/checkerframework/framework/type/QualifierHierarchy;Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Ljavax/lang/model/element/AnnotationMirror;)Ljavax/lang/model/element/AnnotationMirror;
    .locals 1
    .param p0, "qualifierHierarchy"    # Lorg/checkerframework/framework/type/QualifierHierarchy;
    .param p1, "toSearch"    # Lorg/checkerframework/framework/type/AnnotatedTypeMirror;
    .param p2, "top"    # Ljavax/lang/model/element/AnnotationMirror;

    .line 1122
    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0}, Lorg/checkerframework/framework/util/AnnotatedTypes;->findEffectiveAnnotationInHierarchy(Lorg/checkerframework/framework/type/QualifierHierarchy;Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Ljavax/lang/model/element/AnnotationMirror;Z)Ljavax/lang/model/element/AnnotationMirror;

    move-result-object v0

    return-object v0
.end method

.method public static findEffectiveAnnotationInHierarchy(Lorg/checkerframework/framework/type/QualifierHierarchy;Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Ljavax/lang/model/element/AnnotationMirror;Z)Ljavax/lang/model/element/AnnotationMirror;
    .locals 5
    .param p0, "qualifierHierarchy"    # Lorg/checkerframework/framework/type/QualifierHierarchy;
    .param p1, "toSearch"    # Lorg/checkerframework/framework/type/AnnotatedTypeMirror;
    .param p2, "top"    # Ljavax/lang/model/element/AnnotationMirror;
    .param p3, "canBeEmpty"    # Z

    .line 1141
    move-object v0, p1

    .line 1142
    .local v0, "source":Lorg/checkerframework/framework/type/AnnotatedTypeMirror;
    :goto_0
    invoke-virtual {v0, p2}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror;->getAnnotationInHierarchy(Ljavax/lang/model/element/AnnotationMirror;)Ljavax/lang/model/element/AnnotationMirror;

    move-result-object v1

    if-nez v1, :cond_2

    .line 1144
    sget-object v1, Lorg/checkerframework/framework/util/AnnotatedTypes$2;->$SwitchMap$javax$lang$model$type$TypeKind:[I

    invoke-virtual {v0}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror;->getKind()Ljavax/lang/model/type/TypeKind;

    move-result-object v2

    invoke-virtual {v2}, Ljavax/lang/model/type/TypeKind;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 1169
    if-eqz p3, :cond_1

    .line 1170
    const/4 v1, 0x0

    return-object v1

    .line 1155
    :pswitch_0
    move-object v1, v0

    check-cast v1, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedIntersectionType;

    .line 1156
    invoke-static {v1, p2, p0}, Lorg/checkerframework/framework/util/AnnotatedTypes;->glbOfBoundsInHierarchy(Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedIntersectionType;Ljavax/lang/model/element/AnnotationMirror;Lorg/checkerframework/framework/type/QualifierHierarchy;)Ljavax/lang/model/element/AnnotationMirror;

    move-result-object v1

    .line 1159
    .local v1, "glb":Ljavax/lang/model/element/AnnotationMirror;
    if-eqz v1, :cond_0

    .line 1166
    return-object v1

    .line 1160
    :cond_0
    new-instance v2, Lorg/checkerframework/javacutil/BugInCF;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "AnnotatedIntersectionType has no annotation in hierarchy on any of its supertypes.\nintersectionType="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lorg/checkerframework/javacutil/BugInCF;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1150
    .end local v1    # "glb":Ljavax/lang/model/element/AnnotationMirror;
    :pswitch_1
    move-object v1, v0

    check-cast v1, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedWildcardType;

    invoke-virtual {v1}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedWildcardType;->getExtendsBound()Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    move-result-object v0

    .line 1151
    goto :goto_0

    .line 1146
    :pswitch_2
    move-object v1, v0

    check-cast v1, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedTypeVariable;

    invoke-virtual {v1}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedTypeVariable;->getUpperBound()Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    move-result-object v0

    .line 1147
    goto :goto_0

    .line 1173
    :cond_1
    new-instance v1, Lorg/checkerframework/javacutil/BugInCF;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unexpected AnnotatedTypeMirror with no primary annotation.\ntoSearch="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\ntop="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\nsource="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/checkerframework/javacutil/BugInCF;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1186
    :cond_2
    invoke-virtual {v0, p2}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror;->getAnnotationInHierarchy(Ljavax/lang/model/element/AnnotationMirror;)Ljavax/lang/model/element/AnnotationMirror;

    move-result-object v1

    return-object v1

    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static findEffectiveAnnotations(Lorg/checkerframework/framework/type/QualifierHierarchy;Lorg/checkerframework/framework/type/AnnotatedTypeMirror;)Ljava/util/Set;
    .locals 5
    .param p0, "qualifierHierarchy"    # Lorg/checkerframework/framework/type/QualifierHierarchy;
    .param p1, "toSearch"    # Lorg/checkerframework/framework/type/AnnotatedTypeMirror;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/checkerframework/framework/type/QualifierHierarchy;",
            "Lorg/checkerframework/framework/type/AnnotatedTypeMirror;",
            ")",
            "Ljava/util/Set<",
            "Ljavax/lang/model/element/AnnotationMirror;",
            ">;"
        }
    .end annotation

    .line 1245
    move-object v0, p1

    .line 1246
    .local v0, "source":Lorg/checkerframework/framework/type/AnnotatedTypeMirror;
    invoke-virtual {v0}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror;->getKind()Ljavax/lang/model/type/TypeKind;

    move-result-object v1

    .line 1247
    .local v1, "kind":Ljavax/lang/model/type/TypeKind;
    :goto_0
    sget-object v2, Ljavax/lang/model/type/TypeKind;->TYPEVAR:Ljavax/lang/model/type/TypeKind;

    if-eq v1, v2, :cond_1

    sget-object v2, Ljavax/lang/model/type/TypeKind;->WILDCARD:Ljavax/lang/model/type/TypeKind;

    if-eq v1, v2, :cond_1

    sget-object v2, Ljavax/lang/model/type/TypeKind;->INTERSECTION:Ljavax/lang/model/type/TypeKind;

    if-ne v1, v2, :cond_0

    goto :goto_1

    .line 1278
    :cond_0
    invoke-virtual {v0}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror;->getAnnotations()Ljava/util/Set;

    move-result-object v2

    return-object v2

    .line 1251
    :cond_1
    :goto_1
    sget-object v2, Lorg/checkerframework/framework/util/AnnotatedTypes$2;->$SwitchMap$javax$lang$model$type$TypeKind:[I

    invoke-virtual {v0}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror;->getKind()Ljavax/lang/model/type/TypeKind;

    move-result-object v3

    invoke-virtual {v3}, Ljavax/lang/model/type/TypeKind;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    .line 1267
    new-instance v2, Lorg/checkerframework/javacutil/BugInCF;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unexpected AnnotatedTypeMirror with no primary annotation; toSearch="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " source="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lorg/checkerframework/javacutil/BugInCF;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1262
    :pswitch_0
    move-object v2, v0

    check-cast v2, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedIntersectionType;

    .line 1263
    invoke-static {v2, p0}, Lorg/checkerframework/framework/util/AnnotatedTypes;->glbOfBounds(Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedIntersectionType;Lorg/checkerframework/framework/type/QualifierHierarchy;)Ljava/util/Set;

    move-result-object v2

    .line 1264
    .local v2, "glb":Ljava/util/Set;, "Ljava/util/Set<Ljavax/lang/model/element/AnnotationMirror;>;"
    return-object v2

    .line 1257
    .end local v2    # "glb":Ljava/util/Set;, "Ljava/util/Set<Ljavax/lang/model/element/AnnotationMirror;>;"
    :pswitch_1
    move-object v2, v0

    check-cast v2, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedWildcardType;

    invoke-virtual {v2}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedWildcardType;->getExtendsBound()Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    move-result-object v0

    .line 1258
    goto :goto_2

    .line 1253
    :pswitch_2
    move-object v2, v0

    check-cast v2, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedTypeVariable;

    invoke-virtual {v2}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedTypeVariable;->getUpperBound()Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    move-result-object v0

    .line 1254
    nop

    .line 1275
    :goto_2
    invoke-virtual {v0}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror;->getKind()Ljavax/lang/model/type/TypeKind;

    move-result-object v1

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static findEffectiveLowerBoundAnnotations(Lorg/checkerframework/framework/type/QualifierHierarchy;Lorg/checkerframework/framework/type/AnnotatedTypeMirror;)Ljava/util/Set;
    .locals 5
    .param p0, "qualifierHierarchy"    # Lorg/checkerframework/framework/type/QualifierHierarchy;
    .param p1, "toSearch"    # Lorg/checkerframework/framework/type/AnnotatedTypeMirror;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/checkerframework/framework/type/QualifierHierarchy;",
            "Lorg/checkerframework/framework/type/AnnotatedTypeMirror;",
            ")",
            "Ljava/util/Set<",
            "Ljavax/lang/model/element/AnnotationMirror;",
            ">;"
        }
    .end annotation

    .line 1199
    move-object v0, p1

    .line 1200
    .local v0, "source":Lorg/checkerframework/framework/type/AnnotatedTypeMirror;
    invoke-virtual {v0}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror;->getKind()Ljavax/lang/model/type/TypeKind;

    move-result-object v1

    .line 1201
    .local v1, "kind":Ljavax/lang/model/type/TypeKind;
    :goto_0
    sget-object v2, Ljavax/lang/model/type/TypeKind;->TYPEVAR:Ljavax/lang/model/type/TypeKind;

    if-eq v1, v2, :cond_1

    sget-object v2, Ljavax/lang/model/type/TypeKind;->WILDCARD:Ljavax/lang/model/type/TypeKind;

    if-eq v1, v2, :cond_1

    sget-object v2, Ljavax/lang/model/type/TypeKind;->INTERSECTION:Ljavax/lang/model/type/TypeKind;

    if-ne v1, v2, :cond_0

    goto :goto_1

    .line 1232
    :cond_0
    invoke-virtual {v0}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror;->getAnnotations()Ljava/util/Set;

    move-result-object v2

    return-object v2

    .line 1205
    :cond_1
    :goto_1
    sget-object v2, Lorg/checkerframework/framework/util/AnnotatedTypes$2;->$SwitchMap$javax$lang$model$type$TypeKind:[I

    invoke-virtual {v0}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror;->getKind()Ljavax/lang/model/type/TypeKind;

    move-result-object v3

    invoke-virtual {v3}, Ljavax/lang/model/type/TypeKind;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    .line 1221
    new-instance v2, Lorg/checkerframework/javacutil/BugInCF;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unexpected AnnotatedTypeMirror with no primary annotation; toSearch="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " source="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lorg/checkerframework/javacutil/BugInCF;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1216
    :pswitch_0
    move-object v2, v0

    check-cast v2, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedIntersectionType;

    .line 1217
    invoke-static {v2, p0}, Lorg/checkerframework/framework/util/AnnotatedTypes;->glbOfBounds(Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedIntersectionType;Lorg/checkerframework/framework/type/QualifierHierarchy;)Ljava/util/Set;

    move-result-object v2

    .line 1218
    .local v2, "glb":Ljava/util/Set;, "Ljava/util/Set<Ljavax/lang/model/element/AnnotationMirror;>;"
    return-object v2

    .line 1211
    .end local v2    # "glb":Ljava/util/Set;, "Ljava/util/Set<Ljavax/lang/model/element/AnnotationMirror;>;"
    :pswitch_1
    move-object v2, v0

    check-cast v2, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedWildcardType;

    invoke-virtual {v2}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedWildcardType;->getSuperBound()Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    move-result-object v0

    .line 1212
    goto :goto_2

    .line 1207
    :pswitch_2
    move-object v2, v0

    check-cast v2, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedTypeVariable;

    invoke-virtual {v2}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedTypeVariable;->getLowerBound()Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    move-result-object v0

    .line 1208
    nop

    .line 1229
    :goto_2
    invoke-virtual {v0}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror;->getKind()Ljavax/lang/model/type/TypeKind;

    move-result-object v1

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static findTypeArguments(Ljavax/annotation/processing/ProcessingEnvironment;Lorg/checkerframework/framework/type/AnnotatedTypeFactory;Lcom/sun/source/tree/ExpressionTree;Ljavax/lang/model/element/ExecutableElement;Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedExecutableType;)Ljava/util/Map;
    .locals 7
    .param p0, "processingEnv"    # Ljavax/annotation/processing/ProcessingEnvironment;
    .param p1, "atypeFactory"    # Lorg/checkerframework/framework/type/AnnotatedTypeFactory;
    .param p2, "expr"    # Lcom/sun/source/tree/ExpressionTree;
    .param p3, "elt"    # Ljavax/lang/model/element/ExecutableElement;
    .param p4, "preType"    # Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedExecutableType;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/annotation/processing/ProcessingEnvironment;",
            "Lorg/checkerframework/framework/type/AnnotatedTypeFactory;",
            "Lcom/sun/source/tree/ExpressionTree;",
            "Ljavax/lang/model/element/ExecutableElement;",
            "Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedExecutableType;",
            ")",
            "Ljava/util/Map<",
            "Ljavax/lang/model/type/TypeVariable;",
            "Lorg/checkerframework/framework/type/AnnotatedTypeMirror;",
            ">;"
        }
    .end annotation

    .line 680
    invoke-interface {p3}, Ljavax/lang/model/element/ExecutableElement;->getTypeParameters()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 681
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v0

    return-object v0

    .line 685
    :cond_0
    instance-of v0, p2, Lcom/sun/source/tree/MethodInvocationTree;

    if-eqz v0, :cond_1

    .line 686
    move-object v0, p2

    check-cast v0, Lcom/sun/source/tree/MethodInvocationTree;

    invoke-interface {v0}, Lcom/sun/source/tree/MethodInvocationTree;->getTypeArguments()Ljava/util/List;

    move-result-object v0

    .local v0, "targs":Ljava/util/List;, "Ljava/util/List<+Lcom/sun/source/tree/Tree;>;"
    goto :goto_0

    .line 687
    .end local v0    # "targs":Ljava/util/List;, "Ljava/util/List<+Lcom/sun/source/tree/Tree;>;"
    :cond_1
    instance-of v0, p2, Lcom/sun/source/tree/NewClassTree;

    if-eqz v0, :cond_2

    .line 688
    move-object v0, p2

    check-cast v0, Lcom/sun/source/tree/NewClassTree;

    invoke-interface {v0}, Lcom/sun/source/tree/NewClassTree;->getTypeArguments()Ljava/util/List;

    move-result-object v0

    .restart local v0    # "targs":Ljava/util/List;, "Ljava/util/List<+Lcom/sun/source/tree/Tree;>;"
    goto :goto_0

    .line 689
    .end local v0    # "targs":Ljava/util/List;, "Ljava/util/List<+Lcom/sun/source/tree/Tree;>;"
    :cond_2
    instance-of v0, p2, Lcom/sun/source/tree/MemberReferenceTree;

    if-eqz v0, :cond_6

    .line 690
    move-object v0, p2

    check-cast v0, Lcom/sun/source/tree/MemberReferenceTree;

    invoke-interface {v0}, Lcom/sun/source/tree/MemberReferenceTree;->getTypeArguments()Ljava/util/List;

    move-result-object v0

    .line 691
    .restart local v0    # "targs":Ljava/util/List;, "Ljava/util/List<+Lcom/sun/source/tree/Tree;>;"
    if-nez v0, :cond_3

    .line 693
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    return-object v1

    .line 701
    :cond_3
    :goto_0
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_5

    .line 702
    invoke-virtual {p4}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedExecutableType;->getTypeVariables()Ljava/util/List;

    move-result-object v1

    .line 704
    .local v1, "tvars":Ljava/util/List;, "Ljava/util/List<+Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedTypeVariable;>;"
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 705
    .local v2, "typeArguments":Ljava/util/Map;, "Ljava/util/Map<Ljavax/lang/model/type/TypeVariable;Lorg/checkerframework/framework/type/AnnotatedTypeMirror;>;"
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1
    invoke-interface {p3}, Ljavax/lang/model/element/ExecutableElement;->getTypeParameters()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_4

    .line 706
    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedTypeVariable;

    .line 707
    .local v4, "typeVar":Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedTypeVariable;
    nop

    .line 708
    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/sun/source/tree/Tree;

    invoke-virtual {p1, v5}, Lorg/checkerframework/framework/type/AnnotatedTypeFactory;->getAnnotatedTypeFromTypeTree(Lcom/sun/source/tree/Tree;)Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    move-result-object v5

    .line 711
    .local v5, "typeArg":Lorg/checkerframework/framework/type/AnnotatedTypeMirror;
    invoke-virtual {v4}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedTypeVariable;->getUnderlyingType()Ljavax/lang/model/type/TypeVariable;

    move-result-object v6

    invoke-interface {v2, v6, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 705
    .end local v4    # "typeVar":Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedTypeVariable;
    .end local v5    # "typeArg":Lorg/checkerframework/framework/type/AnnotatedTypeMirror;
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 713
    .end local v3    # "i":I
    :cond_4
    return-object v2

    .line 715
    .end local v1    # "tvars":Ljava/util/List;, "Ljava/util/List<+Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedTypeVariable;>;"
    .end local v2    # "typeArguments":Ljava/util/Map;, "Ljava/util/Map<Ljavax/lang/model/type/TypeVariable;Lorg/checkerframework/framework/type/AnnotatedTypeMirror;>;"
    :cond_5
    nop

    .line 716
    invoke-virtual {p1}, Lorg/checkerframework/framework/type/AnnotatedTypeFactory;->getTypeArgumentInference()Lorg/checkerframework/framework/util/typeinference/TypeArgumentInference;

    move-result-object v1

    .line 717
    invoke-interface {v1, p1, p2, p3, p4}, Lorg/checkerframework/framework/util/typeinference/TypeArgumentInference;->inferTypeArgs(Lorg/checkerframework/framework/type/AnnotatedTypeFactory;Lcom/sun/source/tree/ExpressionTree;Ljavax/lang/model/element/ExecutableElement;Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedExecutableType;)Ljava/util/Map;

    move-result-object v1

    .line 715
    return-object v1

    .line 697
    .end local v0    # "targs":Ljava/util/List;, "Ljava/util/List<+Lcom/sun/source/tree/Tree;>;"
    :cond_6
    new-instance v0, Lorg/checkerframework/javacutil/BugInCF;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "AnnotatedTypes.findTypeArguments: unexpected tree: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/checkerframework/javacutil/BugInCF;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static fixUpRawTypes(Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Ljavax/lang/model/util/Types;)V
    .locals 9
    .param p0, "originalSubtype"    # Lorg/checkerframework/framework/type/AnnotatedTypeMirror;
    .param p1, "asSuperType"    # Lorg/checkerframework/framework/type/AnnotatedTypeMirror;
    .param p2, "supertype"    # Lorg/checkerframework/framework/type/AnnotatedTypeMirror;
    .param p3, "types"    # Ljavax/lang/model/util/Types;

    .line 199
    if-eqz p1, :cond_5

    .line 200
    invoke-virtual {p1}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror;->getKind()Ljavax/lang/model/type/TypeKind;

    move-result-object v0

    sget-object v1, Ljavax/lang/model/type/TypeKind;->DECLARED:Ljavax/lang/model/type/TypeKind;

    if-ne v0, v1, :cond_5

    .line 201
    invoke-virtual {p0}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror;->getKind()Ljavax/lang/model/type/TypeKind;

    move-result-object v0

    sget-object v1, Ljavax/lang/model/type/TypeKind;->DECLARED:Ljavax/lang/model/type/TypeKind;

    if-eq v0, v1, :cond_0

    goto/16 :goto_2

    .line 205
    :cond_0
    move-object v0, p1

    check-cast v0, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedDeclaredType;

    .line 206
    .local v0, "declaredAsSuper":Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedDeclaredType;
    move-object v1, p0

    check-cast v1, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedDeclaredType;

    .line 208
    .local v1, "declaredSubtype":Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedDeclaredType;
    invoke-virtual {v0}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedDeclaredType;->wasRaw()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 209
    invoke-virtual {v0}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedDeclaredType;->getTypeArguments()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 210
    invoke-virtual {v1}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedDeclaredType;->getTypeArguments()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1

    goto/16 :goto_1

    .line 214
    :cond_1
    nop

    .line 216
    invoke-virtual {v1}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedDeclaredType;->getUnderlyingType()Ljavax/lang/model/type/DeclaredType;

    move-result-object v2

    invoke-interface {v2}, Ljavax/lang/model/type/DeclaredType;->asElement()Ljavax/lang/model/element/Element;

    move-result-object v2

    check-cast v2, Ljavax/lang/model/element/TypeElement;

    .line 217
    invoke-virtual {v0}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedDeclaredType;->getUnderlyingType()Ljavax/lang/model/type/DeclaredType;

    move-result-object v3

    invoke-interface {v3}, Ljavax/lang/model/type/DeclaredType;->asElement()Ljavax/lang/model/element/Element;

    move-result-object v3

    check-cast v3, Ljavax/lang/model/element/TypeElement;

    .line 215
    invoke-static {v2, v3, p3}, Lorg/checkerframework/framework/util/TypeArgumentMapper;->mapTypeArgumentIndices(Ljavax/lang/model/element/TypeElement;Ljavax/lang/model/element/TypeElement;Ljavax/lang/model/util/Types;)Ljava/util/Set;

    move-result-object v2

    .line 220
    .local v2, "typeArgMap":Ljava/util/Set;, "Ljava/util/Set<Lorg/checkerframework/javacutil/Pair<Ljava/lang/Integer;Ljava/lang/Integer;>;>;"
    invoke-interface {v2}, Ljava/util/Set;->size()I

    move-result v3

    invoke-virtual {v1}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedDeclaredType;->getTypeArguments()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-eq v3, v4, :cond_2

    .line 221
    return-void

    .line 224
    :cond_2
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 226
    .local v3, "newTypeArgs":Ljava/util/List;, "Ljava/util/List<Lorg/checkerframework/framework/type/AnnotatedTypeMirror;>;"
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 227
    .local v4, "orderedByDestination":Ljava/util/List;, "Ljava/util/List<Lorg/checkerframework/javacutil/Pair<Ljava/lang/Integer;Ljava/lang/Integer;>;>;"
    new-instance v5, Lorg/checkerframework/framework/util/AnnotatedTypes$1;

    invoke-direct {v5}, Lorg/checkerframework/framework/util/AnnotatedTypes$1;-><init>()V

    invoke-static {v4, v5}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 236
    invoke-virtual {v1}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedDeclaredType;->getTypeArguments()Ljava/util/List;

    move-result-object v5

    .line 237
    .local v5, "subTypeArgs":Ljava/util/List;, "Ljava/util/List<+Lorg/checkerframework/framework/type/AnnotatedTypeMirror;>;"
    invoke-interface {v2}, Ljava/util/Set;->size()I

    move-result v6

    move-object v7, p2

    check-cast v7, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedDeclaredType;

    invoke-virtual {v7}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedDeclaredType;->getTypeArguments()Ljava/util/List;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    if-ne v6, v7, :cond_3

    .line 238
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_3

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lorg/checkerframework/javacutil/Pair;

    .line 239
    .local v7, "mapping":Lorg/checkerframework/javacutil/Pair;, "Lorg/checkerframework/javacutil/Pair<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    iget-object v8, v7, Lorg/checkerframework/javacutil/Pair;->first:Ljava/lang/Object;

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    invoke-interface {v5, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    invoke-virtual {v8}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror;->deepCopy()Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    move-result-object v8

    invoke-interface {v3, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 240
    .end local v7    # "mapping":Lorg/checkerframework/javacutil/Pair;, "Lorg/checkerframework/javacutil/Pair<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    goto :goto_0

    .line 242
    :cond_3
    invoke-virtual {v0, v3}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedDeclaredType;->setTypeArguments(Ljava/util/List;)V

    .line 243
    return-void

    .line 211
    .end local v2    # "typeArgMap":Ljava/util/Set;, "Ljava/util/Set<Lorg/checkerframework/javacutil/Pair<Ljava/lang/Integer;Ljava/lang/Integer;>;>;"
    .end local v3    # "newTypeArgs":Ljava/util/List;, "Ljava/util/List<Lorg/checkerframework/framework/type/AnnotatedTypeMirror;>;"
    .end local v4    # "orderedByDestination":Ljava/util/List;, "Ljava/util/List<Lorg/checkerframework/javacutil/Pair<Ljava/lang/Integer;Ljava/lang/Integer;>;>;"
    .end local v5    # "subTypeArgs":Ljava/util/List;, "Ljava/util/List<+Lorg/checkerframework/framework/type/AnnotatedTypeMirror;>;"
    :cond_4
    :goto_1
    return-void

    .line 202
    .end local v0    # "declaredAsSuper":Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedDeclaredType;
    .end local v1    # "declaredSubtype":Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedDeclaredType;
    :cond_5
    :goto_2
    return-void
.end method

.method public static getAnnotatedTypeMirrorOfParameter(Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedExecutableType;I)Lorg/checkerframework/framework/type/AnnotatedTypeMirror;
    .locals 7
    .param p0, "methodType"    # Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedExecutableType;
    .param p1, "index"    # I

    .line 844
    invoke-virtual {p0}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedExecutableType;->getParameterTypes()Ljava/util/List;

    move-result-object v0

    .line 845
    .local v0, "parameterTypes":Ljava/util/List;, "Ljava/util/List<Lorg/checkerframework/framework/type/AnnotatedTypeMirror;>;"
    invoke-virtual {p0}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedExecutableType;->getElement()Ljavax/lang/model/element/ExecutableElement;

    move-result-object v1

    invoke-interface {v1}, Ljavax/lang/model/element/ExecutableElement;->isVarArgs()Z

    move-result v1

    .line 847
    .local v1, "hasVarArg":Z
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x1

    sub-int/2addr v2, v3

    .line 848
    .local v2, "lastIndex":I
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    .line 849
    .local v4, "lastType":Lorg/checkerframework/framework/type/AnnotatedTypeMirror;
    if-ge p1, v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    .line 850
    .local v3, "parameterBeforeVarargs":Z
    :goto_0
    if-nez v3, :cond_1

    instance-of v5, v4, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedArrayType;

    if-eqz v5, :cond_1

    .line 851
    move-object v5, v4

    check-cast v5, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedArrayType;

    .line 852
    .local v5, "arrayType":Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedArrayType;
    if-eqz v1, :cond_1

    .line 853
    invoke-virtual {v5}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedArrayType;->getComponentType()Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    move-result-object v6

    return-object v6

    .line 856
    .end local v5    # "arrayType":Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedArrayType;
    :cond_1
    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    return-object v5
.end method

.method public static getAnnotatedTypes(Lorg/checkerframework/framework/type/AnnotatedTypeFactory;Ljava/util/List;Ljava/util/List;)Ljava/util/List;
    .locals 7
    .param p0, "atypeFactory"    # Lorg/checkerframework/framework/type/AnnotatedTypeFactory;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/checkerframework/framework/type/AnnotatedTypeFactory;",
            "Ljava/util/List<",
            "Lorg/checkerframework/framework/type/AnnotatedTypeMirror;",
            ">;",
            "Ljava/util/List<",
            "+",
            "Lcom/sun/source/tree/ExpressionTree;",
            ">;)",
            "Ljava/util/List<",
            "Lorg/checkerframework/framework/type/AnnotatedTypeMirror;",
            ">;"
        }
    .end annotation

    .line 871
    .local p1, "paramTypes":Ljava/util/List;, "Ljava/util/List<Lorg/checkerframework/framework/type/AnnotatedTypeMirror;>;"
    .local p2, "trees":Ljava/util/List;, "Ljava/util/List<+Lcom/sun/source/tree/ExpressionTree;>;"
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v1

    if-ne v0, v1, :cond_1

    .line 877
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 878
    .local v0, "types":Ljava/util/List;, "Ljava/util/List<Lorg/checkerframework/framework/type/AnnotatedTypeMirror;>;"
    nop

    .line 879
    invoke-virtual {p0}, Lorg/checkerframework/framework/type/AnnotatedTypeFactory;->getVisitorState()Lorg/checkerframework/framework/type/VisitorState;

    move-result-object v1

    invoke-virtual {v1}, Lorg/checkerframework/framework/type/VisitorState;->getAssignmentContext()Lorg/checkerframework/javacutil/Pair;

    move-result-object v1

    .line 882
    .local v1, "preAssCtxt":Lorg/checkerframework/javacutil/Pair;, "Lorg/checkerframework/javacutil/Pair<Lcom/sun/source/tree/Tree;Lorg/checkerframework/framework/type/AnnotatedTypeMirror;>;"
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    :try_start_0
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_0

    .line 883
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    .line 884
    .local v3, "param":Lorg/checkerframework/framework/type/AnnotatedTypeMirror;
    invoke-virtual {p0}, Lorg/checkerframework/framework/type/AnnotatedTypeFactory;->getVisitorState()Lorg/checkerframework/framework/type/VisitorState;

    move-result-object v4

    const/4 v5, 0x0

    move-object v6, v5

    check-cast v6, Lcom/sun/source/tree/Tree;

    invoke-static {v5, v3}, Lorg/checkerframework/javacutil/Pair;->of(Ljava/lang/Object;Ljava/lang/Object;)Lorg/checkerframework/javacutil/Pair;

    move-result-object v5

    invoke-virtual {v4, v5}, Lorg/checkerframework/framework/type/VisitorState;->setAssignmentContext(Lorg/checkerframework/javacutil/Pair;)V

    .line 885
    invoke-interface {p2, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/sun/source/tree/ExpressionTree;

    .line 886
    .local v4, "arg":Lcom/sun/source/tree/ExpressionTree;
    invoke-virtual {p0, v4}, Lorg/checkerframework/framework/type/AnnotatedTypeFactory;->getAnnotatedType(Lcom/sun/source/tree/Tree;)Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    move-result-object v5

    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 882
    nop

    .end local v3    # "param":Lorg/checkerframework/framework/type/AnnotatedTypeMirror;
    .end local v4    # "arg":Lcom/sun/source/tree/ExpressionTree;
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 889
    .end local v2    # "i":I
    :cond_0
    invoke-virtual {p0}, Lorg/checkerframework/framework/type/AnnotatedTypeFactory;->getVisitorState()Lorg/checkerframework/framework/type/VisitorState;

    move-result-object v2

    invoke-virtual {v2, v1}, Lorg/checkerframework/framework/type/VisitorState;->setAssignmentContext(Lorg/checkerframework/javacutil/Pair;)V

    .line 890
    nop

    .line 891
    return-object v0

    .line 889
    :catchall_0
    move-exception v2

    invoke-virtual {p0}, Lorg/checkerframework/framework/type/AnnotatedTypeFactory;->getVisitorState()Lorg/checkerframework/framework/type/VisitorState;

    move-result-object v3

    invoke-virtual {v3, v1}, Lorg/checkerframework/framework/type/VisitorState;->setAssignmentContext(Lorg/checkerframework/javacutil/Pair;)V

    throw v2

    .line 871
    .end local v0    # "types":Ljava/util/List;, "Ljava/util/List<Lorg/checkerframework/framework/type/AnnotatedTypeMirror;>;"
    .end local v1    # "preAssCtxt":Lorg/checkerframework/javacutil/Pair;, "Lorg/checkerframework/javacutil/Pair<Lcom/sun/source/tree/Tree;Lorg/checkerframework/framework/type/AnnotatedTypeMirror;>;"
    :cond_1
    new-instance v0, Ljava/lang/AssertionError;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "AnnotatedTypes.getAnnotatedTypes: size mismatch! Parameter types: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " Arguments: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0
.end method

.method public static getArrayDepth(Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedArrayType;)I
    .locals 4
    .param p0, "array"    # Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedArrayType;

    .line 901
    const/4 v0, 0x0

    .line 902
    .local v0, "counter":I
    move-object v1, p0

    .line 903
    .local v1, "type":Lorg/checkerframework/framework/type/AnnotatedTypeMirror;
    :goto_0
    invoke-virtual {v1}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror;->getKind()Ljavax/lang/model/type/TypeKind;

    move-result-object v2

    sget-object v3, Ljavax/lang/model/type/TypeKind;->ARRAY:Ljavax/lang/model/type/TypeKind;

    if-ne v2, v3, :cond_0

    .line 904
    add-int/lit8 v0, v0, 0x1

    .line 905
    move-object v2, v1

    check-cast v2, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedArrayType;

    invoke-virtual {v2}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedArrayType;->getComponentType()Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    move-result-object v1

    goto :goto_0

    .line 907
    :cond_0
    return v0
.end method

.method public static getIteratedType(Ljavax/annotation/processing/ProcessingEnvironment;Lorg/checkerframework/framework/type/AnnotatedTypeFactory;Lorg/checkerframework/framework/type/AnnotatedTypeMirror;)Lorg/checkerframework/framework/type/AnnotatedTypeMirror;
    .locals 5
    .param p0, "processingEnv"    # Ljavax/annotation/processing/ProcessingEnvironment;
    .param p1, "atypeFactory"    # Lorg/checkerframework/framework/type/AnnotatedTypeFactory;
    .param p2, "iterableType"    # Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    .line 538
    invoke-virtual {p2}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror;->getKind()Ljavax/lang/model/type/TypeKind;

    move-result-object v0

    sget-object v1, Ljavax/lang/model/type/TypeKind;->ARRAY:Ljavax/lang/model/type/TypeKind;

    if-ne v0, v1, :cond_0

    .line 539
    move-object v0, p2

    check-cast v0, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedArrayType;

    invoke-virtual {v0}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedArrayType;->getComponentType()Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    move-result-object v0

    return-object v0

    .line 543
    :cond_0
    invoke-virtual {p2}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror;->getKind()Ljavax/lang/model/type/TypeKind;

    move-result-object v0

    sget-object v1, Ljavax/lang/model/type/TypeKind;->WILDCARD:Ljavax/lang/model/type/TypeKind;

    if-ne v0, v1, :cond_1

    .line 544
    move-object v0, p2

    check-cast v0, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedWildcardType;

    .line 547
    invoke-virtual {v0}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedWildcardType;->getExtendsBound()Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    move-result-object v0

    invoke-virtual {v0}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror;->deepCopy()Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    move-result-object v0

    .line 544
    invoke-static {p0, p1, v0}, Lorg/checkerframework/framework/util/AnnotatedTypes;->getIteratedType(Ljavax/annotation/processing/ProcessingEnvironment;Lorg/checkerframework/framework/type/AnnotatedTypeFactory;Lorg/checkerframework/framework/type/AnnotatedTypeMirror;)Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    move-result-object v0

    return-object v0

    .line 549
    :cond_1
    invoke-virtual {p2}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror;->getKind()Ljavax/lang/model/type/TypeKind;

    move-result-object v0

    sget-object v1, Ljavax/lang/model/type/TypeKind;->TYPEVAR:Ljavax/lang/model/type/TypeKind;

    if-ne v0, v1, :cond_2

    .line 550
    move-object v0, p2

    check-cast v0, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedTypeVariable;

    .line 553
    invoke-virtual {v0}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedTypeVariable;->getUpperBound()Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    move-result-object v0

    .line 550
    invoke-static {p0, p1, v0}, Lorg/checkerframework/framework/util/AnnotatedTypes;->getIteratedType(Ljavax/annotation/processing/ProcessingEnvironment;Lorg/checkerframework/framework/type/AnnotatedTypeFactory;Lorg/checkerframework/framework/type/AnnotatedTypeMirror;)Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    move-result-object v0

    return-object v0

    .line 556
    :cond_2
    invoke-virtual {p2}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror;->getKind()Ljavax/lang/model/type/TypeKind;

    move-result-object v0

    sget-object v1, Ljavax/lang/model/type/TypeKind;->DECLARED:Ljavax/lang/model/type/TypeKind;

    if-ne v0, v1, :cond_4

    .line 560
    nop

    .line 561
    invoke-interface {p0}, Ljavax/annotation/processing/ProcessingEnvironment;->getElementUtils()Ljavax/lang/model/util/Elements;

    move-result-object v0

    const-string v1, "java.lang.Iterable"

    invoke-interface {v0, v1}, Ljavax/lang/model/util/Elements;->getTypeElement(Ljava/lang/CharSequence;)Ljavax/lang/model/element/TypeElement;

    move-result-object v0

    .line 562
    .local v0, "iterableElement":Ljavax/lang/model/element/TypeElement;
    invoke-virtual {p1, v0}, Lorg/checkerframework/framework/type/AnnotatedTypeFactory;->getAnnotatedType(Ljavax/lang/model/element/TypeElement;)Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedDeclaredType;

    move-result-object v1

    .line 563
    .local v1, "iterableElmType":Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedDeclaredType;
    invoke-static {p1, p2, v1}, Lorg/checkerframework/framework/util/AnnotatedTypes;->asSuper(Lorg/checkerframework/framework/type/AnnotatedTypeFactory;Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Lorg/checkerframework/framework/type/AnnotatedTypeMirror;)Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    move-result-object v2

    check-cast v2, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedDeclaredType;

    .line 564
    .local v2, "dt":Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedDeclaredType;
    invoke-virtual {v2}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedDeclaredType;->getTypeArguments()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 565
    invoke-interface {p0}, Ljavax/annotation/processing/ProcessingEnvironment;->getElementUtils()Ljavax/lang/model/util/Elements;

    move-result-object v3

    const-string v4, "java.lang.Object"

    invoke-interface {v3, v4}, Ljavax/lang/model/util/Elements;->getTypeElement(Ljava/lang/CharSequence;)Ljavax/lang/model/element/TypeElement;

    move-result-object v3

    .line 566
    .local v3, "e":Ljavax/lang/model/element/TypeElement;
    invoke-virtual {p1, v3}, Lorg/checkerframework/framework/type/AnnotatedTypeFactory;->getAnnotatedType(Ljavax/lang/model/element/TypeElement;)Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedDeclaredType;

    move-result-object v4

    .line 567
    .local v4, "t":Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedDeclaredType;
    return-object v4

    .line 569
    .end local v3    # "e":Ljavax/lang/model/element/TypeElement;
    .end local v4    # "t":Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedDeclaredType;
    :cond_3
    invoke-virtual {v2}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedDeclaredType;->getTypeArguments()Ljava/util/List;

    move-result-object v3

    const/4 v4, 0x0

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    return-object v3

    .line 557
    .end local v0    # "iterableElement":Ljavax/lang/model/element/TypeElement;
    .end local v1    # "iterableElmType":Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedDeclaredType;
    .end local v2    # "dt":Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedDeclaredType;
    :cond_4
    new-instance v0, Lorg/checkerframework/javacutil/BugInCF;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "AnnotatedTypes.getIteratedType: not iterable type: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/checkerframework/javacutil/BugInCF;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static getSuperTypes(Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedDeclaredType;)Ljava/util/Set;
    .locals 6
    .param p0, "type"    # Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedDeclaredType;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedDeclaredType;",
            ")",
            "Ljava/util/Set<",
            "Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedDeclaredType;",
            ">;"
        }
    .end annotation

    .line 581
    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    .line 582
    .local v0, "supertypes":Ljava/util/Set;, "Ljava/util/Set<Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedDeclaredType;>;"
    if-nez p0, :cond_0

    .line 583
    return-object v0

    .line 588
    :cond_0
    new-instance v1, Ljava/util/ArrayDeque;

    invoke-direct {v1}, Ljava/util/ArrayDeque;-><init>()V

    .line 589
    .local v1, "stack":Ljava/util/Deque;, "Ljava/util/Deque<Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedDeclaredType;>;"
    invoke-interface {v1, p0}, Ljava/util/Deque;->push(Ljava/lang/Object;)V

    .line 591
    :goto_0
    invoke-interface {v1}, Ljava/util/Deque;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_3

    .line 592
    invoke-interface {v1}, Ljava/util/Deque;->pop()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedDeclaredType;

    .line 597
    .local v2, "current":Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedDeclaredType;
    invoke-virtual {v2}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedDeclaredType;->directSuperTypes()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedDeclaredType;

    .line 598
    .local v4, "supertype":Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedDeclaredType;
    invoke-interface {v0, v4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 599
    invoke-interface {v1, v4}, Ljava/util/Deque;->push(Ljava/lang/Object;)V

    .line 600
    invoke-interface {v0, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 602
    .end local v4    # "supertype":Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedDeclaredType;
    :cond_1
    goto :goto_1

    .line 603
    .end local v2    # "current":Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedDeclaredType;
    :cond_2
    goto :goto_0

    .line 605
    :cond_3
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v2

    return-object v2
.end method

.method public static glbOfBounds(Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedIntersectionType;Lorg/checkerframework/framework/type/QualifierHierarchy;)Ljava/util/Set;
    .locals 4
    .param p0, "isect"    # Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedIntersectionType;
    .param p1, "qualifierHierarchy"    # Lorg/checkerframework/framework/type/QualifierHierarchy;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedIntersectionType;",
            "Lorg/checkerframework/framework/type/QualifierHierarchy;",
            ")",
            "Ljava/util/Set<",
            "Ljavax/lang/model/element/AnnotationMirror;",
            ">;"
        }
    .end annotation

    .line 1306
    invoke-static {}, Lorg/checkerframework/javacutil/AnnotationUtils;->createAnnotationSet()Ljava/util/SortedSet;

    move-result-object v0

    .line 1307
    .local v0, "result":Ljava/util/Set;, "Ljava/util/Set<Ljavax/lang/model/element/AnnotationMirror;>;"
    invoke-virtual {p1}, Lorg/checkerframework/framework/type/QualifierHierarchy;->getTopAnnotations()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljavax/lang/model/element/AnnotationMirror;

    .line 1308
    .local v2, "top":Ljavax/lang/model/element/AnnotationMirror;
    invoke-static {p0, v2, p1}, Lorg/checkerframework/framework/util/AnnotatedTypes;->glbOfBoundsInHierarchy(Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedIntersectionType;Ljavax/lang/model/element/AnnotationMirror;Lorg/checkerframework/framework/type/QualifierHierarchy;)Ljavax/lang/model/element/AnnotationMirror;

    move-result-object v3

    .line 1309
    .local v3, "glbAnno":Ljavax/lang/model/element/AnnotationMirror;
    if-eqz v3, :cond_0

    .line 1310
    invoke-interface {v0, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1312
    .end local v2    # "top":Ljavax/lang/model/element/AnnotationMirror;
    .end local v3    # "glbAnno":Ljavax/lang/model/element/AnnotationMirror;
    :cond_0
    goto :goto_0

    .line 1314
    :cond_1
    return-object v0
.end method

.method private static glbOfBoundsInHierarchy(Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedIntersectionType;Ljavax/lang/model/element/AnnotationMirror;Lorg/checkerframework/framework/type/QualifierHierarchy;)Ljavax/lang/model/element/AnnotationMirror;
    .locals 5
    .param p0, "isect"    # Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedIntersectionType;
    .param p1, "top"    # Ljavax/lang/model/element/AnnotationMirror;
    .param p2, "qualifierHierarchy"    # Lorg/checkerframework/framework/type/QualifierHierarchy;

    .line 1285
    invoke-virtual {p0, p1}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedIntersectionType;->getAnnotationInHierarchy(Ljavax/lang/model/element/AnnotationMirror;)Ljavax/lang/model/element/AnnotationMirror;

    move-result-object v0

    .line 1286
    .local v0, "anno":Ljavax/lang/model/element/AnnotationMirror;
    invoke-virtual {p0}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedIntersectionType;->directSuperTypes()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    .line 1287
    .local v2, "supertype":Lorg/checkerframework/framework/type/AnnotatedTypeMirror;
    invoke-virtual {v2, p1}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror;->getAnnotationInHierarchy(Ljavax/lang/model/element/AnnotationMirror;)Ljavax/lang/model/element/AnnotationMirror;

    move-result-object v3

    .line 1288
    .local v3, "superAnno":Ljavax/lang/model/element/AnnotationMirror;
    if-eqz v3, :cond_1

    if-eqz v0, :cond_0

    .line 1289
    invoke-virtual {p2, v3, v0}, Lorg/checkerframework/framework/type/QualifierHierarchy;->isSubtype(Ljavax/lang/model/element/AnnotationMirror;Ljavax/lang/model/element/AnnotationMirror;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 1290
    :cond_0
    move-object v0, v3

    .line 1292
    .end local v2    # "supertype":Lorg/checkerframework/framework/type/AnnotatedTypeMirror;
    .end local v3    # "superAnno":Ljavax/lang/model/element/AnnotationMirror;
    :cond_1
    goto :goto_0

    .line 1294
    :cond_2
    return-object v0
.end method

.method public static hasExplicitExtendsBound(Lorg/checkerframework/framework/type/AnnotatedTypeMirror;)Z
    .locals 2
    .param p0, "wildcard"    # Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    .line 267
    invoke-virtual {p0}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror;->getUnderlyingType()Ljavax/lang/model/type/TypeMirror;

    move-result-object v0

    check-cast v0, Lcom/sun/tools/javac/code/Type$WildcardType;

    .line 268
    .local v0, "wildcardType":Lcom/sun/tools/javac/code/Type$WildcardType;
    invoke-virtual {v0}, Lcom/sun/tools/javac/code/Type$WildcardType;->isExtendsBound()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 269
    invoke-virtual {p0}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror;->getUnderlyingType()Ljavax/lang/model/type/TypeMirror;

    move-result-object v1

    check-cast v1, Lcom/sun/tools/javac/code/Type$WildcardType;

    invoke-virtual {v1}, Lcom/sun/tools/javac/code/Type$WildcardType;->isUnbound()Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 268
    :goto_0
    return v1
.end method

.method public static hasExplicitSuperBound(Lorg/checkerframework/framework/type/AnnotatedTypeMirror;)Z
    .locals 2
    .param p0, "wildcard"    # Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    .line 256
    invoke-virtual {p0}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror;->getUnderlyingType()Ljavax/lang/model/type/TypeMirror;

    move-result-object v0

    check-cast v0, Lcom/sun/tools/javac/code/Type$WildcardType;

    .line 257
    .local v0, "wildcardType":Lcom/sun/tools/javac/code/Type$WildcardType;
    invoke-virtual {v0}, Lcom/sun/tools/javac/code/Type$WildcardType;->isSuperBound()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 258
    invoke-virtual {p0}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror;->getUnderlyingType()Ljavax/lang/model/type/TypeMirror;

    move-result-object v1

    check-cast v1, Lcom/sun/tools/javac/code/Type$WildcardType;

    invoke-virtual {v1}, Lcom/sun/tools/javac/code/Type$WildcardType;->isUnbound()Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 257
    :goto_0
    return v1
.end method

.method public static hasNoExplicitBound(Lorg/checkerframework/framework/type/AnnotatedTypeMirror;)Z
    .locals 1
    .param p0, "wildcard"    # Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    .line 247
    invoke-virtual {p0}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror;->getUnderlyingType()Ljavax/lang/model/type/TypeMirror;

    move-result-object v0

    check-cast v0, Lcom/sun/tools/javac/code/Type$WildcardType;

    invoke-virtual {v0}, Lcom/sun/tools/javac/code/Type$WildcardType;->isUnbound()Z

    move-result v0

    return v0
.end method

.method public static hasTypeQualifierElementTypes([Ljava/lang/annotation/ElementType;Ljava/lang/Class;)Z
    .locals 1
    .param p0, "elements"    # [Ljava/lang/annotation/ElementType;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/annotation/ElementType;",
            "Ljava/lang/Class<",
            "*>;)Z"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1007
    .local p1, "cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-static {p0, p1}, Lorg/checkerframework/javacutil/AnnotationUtils;->hasTypeQualifierElementTypes([Ljava/lang/annotation/ElementType;Ljava/lang/Class;)Z

    move-result v0

    return v0
.end method

.method public static haveSameDeclaration(Ljavax/lang/model/util/Types;Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedTypeVariable;Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedTypeVariable;)Z
    .locals 2
    .param p0, "types"    # Ljavax/lang/model/util/Types;
    .param p1, "typeVar1"    # Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedTypeVariable;
    .param p2, "typeVar2"    # Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedTypeVariable;

    .line 1066
    invoke-virtual {p1}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedTypeVariable;->getUnderlyingType()Ljavax/lang/model/type/TypeVariable;

    move-result-object v0

    invoke-virtual {p2}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedTypeVariable;->getUnderlyingType()Ljavax/lang/model/type/TypeVariable;

    move-result-object v1

    invoke-interface {p0, v0, v1}, Ljavax/lang/model/util/Types;->isSameType(Ljavax/lang/model/type/TypeMirror;Ljavax/lang/model/type/TypeMirror;)Z

    move-result v0

    return v0
.end method

.method public static implementsAnnotation(Lorg/checkerframework/framework/type/AnnotatedTypeMirror;)Z
    .locals 6
    .param p0, "atm"    # Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    .line 1024
    invoke-virtual {p0}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror;->getKind()Ljavax/lang/model/type/TypeKind;

    move-result-object v0

    sget-object v1, Ljavax/lang/model/type/TypeKind;->DECLARED:Ljavax/lang/model/type/TypeKind;

    const/4 v2, 0x0

    if-eq v0, v1, :cond_0

    .line 1025
    return v2

    .line 1027
    :cond_0
    move-object v0, p0

    check-cast v0, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedDeclaredType;

    .line 1030
    .local v0, "declaredType":Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedDeclaredType;
    nop

    .line 1031
    invoke-virtual {v0}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedDeclaredType;->getUnderlyingType()Ljavax/lang/model/type/DeclaredType;

    move-result-object v1

    invoke-interface {v1}, Ljavax/lang/model/type/DeclaredType;->asElement()Ljavax/lang/model/element/Element;

    move-result-object v1

    check-cast v1, Lcom/sun/tools/javac/code/Symbol$ClassSymbol;

    .line 1032
    .local v1, "classSymbol":Lcom/sun/tools/javac/code/Symbol$ClassSymbol;
    invoke-virtual {v1}, Lcom/sun/tools/javac/code/Symbol$ClassSymbol;->getInterfaces()Lcom/sun/tools/javac/util/List;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sun/tools/javac/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/sun/tools/javac/code/Type;

    .line 1033
    .local v4, "iface":Lcom/sun/tools/javac/code/Type;
    sget-object v5, Lorg/checkerframework/framework/util/AnnotatedTypes;->annotationClassName:Ljava/lang/String;

    invoke-static {v4, v5}, Lorg/checkerframework/javacutil/TypesUtils;->isDeclaredOfName(Ljavax/lang/model/type/TypeMirror;Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 1034
    const/4 v2, 0x1

    return v2

    .line 1036
    .end local v4    # "iface":Lcom/sun/tools/javac/code/Type;
    :cond_1
    goto :goto_0

    .line 1038
    :cond_2
    return v2
.end method

.method public static innerMostType(Lorg/checkerframework/framework/type/AnnotatedTypeMirror;)Lorg/checkerframework/framework/type/AnnotatedTypeMirror;
    .locals 3
    .param p0, "t"    # Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    .line 912
    move-object v0, p0

    .line 913
    .local v0, "inner":Lorg/checkerframework/framework/type/AnnotatedTypeMirror;
    :goto_0
    invoke-virtual {v0}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror;->getKind()Ljavax/lang/model/type/TypeKind;

    move-result-object v1

    sget-object v2, Ljavax/lang/model/type/TypeKind;->ARRAY:Ljavax/lang/model/type/TypeKind;

    if-ne v1, v2, :cond_0

    .line 914
    move-object v1, v0

    check-cast v1, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedArrayType;

    invoke-virtual {v1}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedArrayType;->getComponentType()Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    move-result-object v0

    goto :goto_0

    .line 916
    :cond_0
    return-object v0
.end method

.method public static isDeclarationOfJavaLangEnum(Ljavax/lang/model/util/Types;Ljavax/lang/model/util/Elements;Lorg/checkerframework/framework/type/AnnotatedTypeMirror;)Z
    .locals 2
    .param p0, "types"    # Ljavax/lang/model/util/Types;
    .param p1, "elements"    # Ljavax/lang/model/util/Elements;
    .param p2, "typeMirror"    # Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    .line 1053
    invoke-static {p2}, Lorg/checkerframework/framework/util/AnnotatedTypes;->isEnum(Lorg/checkerframework/framework/type/AnnotatedTypeMirror;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1054
    const-string v0, "java.lang.Enum"

    invoke-interface {p1, v0}, Ljavax/lang/model/util/Elements;->getTypeElement(Ljava/lang/CharSequence;)Ljavax/lang/model/element/TypeElement;

    move-result-object v0

    move-object v1, p2

    check-cast v1, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedDeclaredType;

    .line 1055
    invoke-virtual {v1}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedDeclaredType;->getUnderlyingType()Ljavax/lang/model/type/DeclaredType;

    move-result-object v1

    invoke-interface {v1}, Ljavax/lang/model/type/DeclaredType;->asElement()Ljavax/lang/model/element/Element;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 1054
    return v0

    .line 1058
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public static isEnum(Lorg/checkerframework/framework/type/AnnotatedTypeMirror;)Z
    .locals 3
    .param p0, "typeMirror"    # Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    .line 1042
    invoke-virtual {p0}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror;->getKind()Ljavax/lang/model/type/TypeKind;

    move-result-object v0

    sget-object v1, Ljavax/lang/model/type/TypeKind;->DECLARED:Ljavax/lang/model/type/TypeKind;

    if-ne v0, v1, :cond_0

    .line 1043
    move-object v0, p0

    check-cast v0, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedDeclaredType;

    .line 1044
    .local v0, "adt":Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedDeclaredType;
    nop

    .line 1045
    invoke-virtual {v0}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedDeclaredType;->getUnderlyingType()Ljavax/lang/model/type/DeclaredType;

    move-result-object v1

    const-class v2, Ljava/lang/Enum;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    .line 1044
    invoke-static {v1, v2}, Lorg/checkerframework/javacutil/TypesUtils;->isDeclaredOfName(Ljavax/lang/model/type/TypeMirror;Ljava/lang/CharSequence;)Z

    move-result v1

    return v1

    .line 1048
    .end local v0    # "adt":Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedDeclaredType;
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public static isExplicitlyExtendsBounded(Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedWildcardType;)Z
    .locals 1
    .param p0, "wildcardType"    # Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedWildcardType;

    .line 1326
    invoke-virtual {p0}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedWildcardType;->getUnderlyingType()Ljavax/lang/model/type/WildcardType;

    move-result-object v0

    check-cast v0, Lcom/sun/tools/javac/code/Type$WildcardType;

    invoke-virtual {v0}, Lcom/sun/tools/javac/code/Type$WildcardType;->isExtendsBound()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1327
    invoke-virtual {p0}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedWildcardType;->getUnderlyingType()Ljavax/lang/model/type/WildcardType;

    move-result-object v0

    check-cast v0, Lcom/sun/tools/javac/code/Type$WildcardType;

    invoke-virtual {v0}, Lcom/sun/tools/javac/code/Type$WildcardType;->isUnbound()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 1326
    :goto_0
    return v0
.end method

.method public static isExplicitlySuperBounded(Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedWildcardType;)Z
    .locals 1
    .param p0, "wildcardType"    # Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedWildcardType;

    .line 1320
    invoke-virtual {p0}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedWildcardType;->getUnderlyingType()Ljavax/lang/model/type/WildcardType;

    move-result-object v0

    check-cast v0, Lcom/sun/tools/javac/code/Type$WildcardType;

    invoke-virtual {v0}, Lcom/sun/tools/javac/code/Type$WildcardType;->isSuperBound()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1321
    invoke-virtual {p0}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedWildcardType;->getUnderlyingType()Ljavax/lang/model/type/WildcardType;

    move-result-object v0

    check-cast v0, Lcom/sun/tools/javac/code/Type$WildcardType;

    invoke-virtual {v0}, Lcom/sun/tools/javac/code/Type$WildcardType;->isUnbound()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 1320
    :goto_0
    return v0
.end method

.method public static isJavaLangAnnotation(Lorg/checkerframework/framework/type/AnnotatedTypeMirror;)Z
    .locals 2
    .param p0, "atm"    # Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    .line 1015
    invoke-virtual {p0}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror;->getUnderlyingType()Ljavax/lang/model/type/TypeMirror;

    move-result-object v0

    sget-object v1, Lorg/checkerframework/framework/util/AnnotatedTypes;->annotationClassName:Ljava/lang/String;

    invoke-static {v0, v1}, Lorg/checkerframework/javacutil/TypesUtils;->isDeclaredOfName(Ljavax/lang/model/type/TypeMirror;Ljava/lang/CharSequence;)Z

    move-result v0

    return v0
.end method

.method public static isTypeAnnotation(Ljavax/lang/model/element/AnnotationMirror;Ljava/lang/Class;)Z
    .locals 2
    .param p0, "anno"    # Ljavax/lang/model/element/AnnotationMirror;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/lang/model/element/AnnotationMirror;",
            "Ljava/lang/Class<",
            "*>;)Z"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 991
    .local p1, "cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-interface {p0}, Ljavax/lang/model/element/AnnotationMirror;->getAnnotationType()Ljavax/lang/model/type/DeclaredType;

    move-result-object v0

    invoke-interface {v0}, Ljavax/lang/model/type/DeclaredType;->asElement()Ljavax/lang/model/element/Element;

    move-result-object v0

    check-cast v0, Ljavax/lang/model/element/TypeElement;

    .line 992
    .local v0, "elem":Ljavax/lang/model/element/TypeElement;
    const-class v1, Ljava/lang/annotation/Target;

    invoke-interface {v0, v1}, Ljavax/lang/model/element/TypeElement;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v1

    check-cast v1, Ljava/lang/annotation/Target;

    invoke-interface {v1}, Ljava/lang/annotation/Target;->value()[Ljava/lang/annotation/ElementType;

    move-result-object v1

    invoke-static {v1, p1}, Lorg/checkerframework/framework/util/AnnotatedTypes;->hasTypeQualifierElementTypes([Ljava/lang/annotation/ElementType;Ljava/lang/Class;)Z

    move-result v1

    return v1
.end method

.method public static isUnboundedOrExtendsBounded(Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedWildcardType;)Z
    .locals 1
    .param p0, "wildcardType"    # Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedWildcardType;

    .line 1337
    invoke-virtual {p0}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedWildcardType;->getUnderlyingType()Ljavax/lang/model/type/WildcardType;

    move-result-object v0

    check-cast v0, Lcom/sun/tools/javac/code/Type$WildcardType;

    invoke-virtual {v0}, Lcom/sun/tools/javac/code/Type$WildcardType;->isExtendsBound()Z

    move-result v0

    return v0
.end method

.method public static isUnboundedOrSuperBounded(Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedWildcardType;)Z
    .locals 1
    .param p0, "wildcardType"    # Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedWildcardType;

    .line 1332
    invoke-virtual {p0}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedWildcardType;->getUnderlyingType()Ljavax/lang/model/type/WildcardType;

    move-result-object v0

    check-cast v0, Lcom/sun/tools/javac/code/Type$WildcardType;

    invoke-virtual {v0}, Lcom/sun/tools/javac/code/Type$WildcardType;->isSuperBound()Z

    move-result v0

    return v0
.end method

.method public static leastUpperBound(Lorg/checkerframework/framework/type/AnnotatedTypeFactory;Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Lorg/checkerframework/framework/type/AnnotatedTypeMirror;)Lorg/checkerframework/framework/type/AnnotatedTypeMirror;
    .locals 3
    .param p0, "atypeFactory"    # Lorg/checkerframework/framework/type/AnnotatedTypeFactory;
    .param p1, "type1"    # Lorg/checkerframework/framework/type/AnnotatedTypeMirror;
    .param p2, "type2"    # Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    .line 733
    nop

    .line 735
    invoke-virtual {p1}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror;->getUnderlyingType()Ljavax/lang/model/type/TypeMirror;

    move-result-object v0

    .line 736
    invoke-virtual {p2}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror;->getUnderlyingType()Ljavax/lang/model/type/TypeMirror;

    move-result-object v1

    .line 737
    invoke-virtual {p0}, Lorg/checkerframework/framework/type/AnnotatedTypeFactory;->getProcessingEnv()Ljavax/annotation/processing/ProcessingEnvironment;

    move-result-object v2

    .line 734
    invoke-static {v0, v1, v2}, Lorg/checkerframework/javacutil/TypesUtils;->leastUpperBound(Ljavax/lang/model/type/TypeMirror;Ljavax/lang/model/type/TypeMirror;Ljavax/annotation/processing/ProcessingEnvironment;)Ljavax/lang/model/type/TypeMirror;

    move-result-object v0

    .line 738
    .local v0, "lub":Ljavax/lang/model/type/TypeMirror;
    invoke-static {p0, p1, p2, v0}, Lorg/checkerframework/framework/util/AnnotatedTypes;->leastUpperBound(Lorg/checkerframework/framework/type/AnnotatedTypeFactory;Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Ljavax/lang/model/type/TypeMirror;)Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    move-result-object v1

    return-object v1
.end method

.method public static leastUpperBound(Lorg/checkerframework/framework/type/AnnotatedTypeFactory;Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Ljavax/lang/model/type/TypeMirror;)Lorg/checkerframework/framework/type/AnnotatedTypeMirror;
    .locals 1
    .param p0, "atypeFactory"    # Lorg/checkerframework/framework/type/AnnotatedTypeFactory;
    .param p1, "type1"    # Lorg/checkerframework/framework/type/AnnotatedTypeMirror;
    .param p2, "type2"    # Lorg/checkerframework/framework/type/AnnotatedTypeMirror;
    .param p3, "lubTypeMirror"    # Ljavax/lang/model/type/TypeMirror;

    .line 757
    new-instance v0, Lorg/checkerframework/framework/util/AtmLubVisitor;

    invoke-direct {v0, p0}, Lorg/checkerframework/framework/util/AtmLubVisitor;-><init>(Lorg/checkerframework/framework/type/AnnotatedTypeFactory;)V

    invoke-virtual {v0, p1, p2, p3}, Lorg/checkerframework/framework/util/AtmLubVisitor;->lub(Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Ljavax/lang/model/type/TypeMirror;)Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    move-result-object v0

    return-object v0
.end method

.method public static overriddenMethods(Ljavax/lang/model/util/Elements;Ljavax/lang/model/element/ExecutableElement;Ljava/util/Collection;)Ljava/util/Map;
    .locals 7
    .param p0, "elements"    # Ljavax/lang/model/util/Elements;
    .param p1, "method"    # Ljavax/lang/model/element/ExecutableElement;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/lang/model/util/Elements;",
            "Ljavax/lang/model/element/ExecutableElement;",
            "Ljava/util/Collection<",
            "Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedDeclaredType;",
            ">;)",
            "Ljava/util/Map<",
            "Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedDeclaredType;",
            "Ljavax/lang/model/element/ExecutableElement;",
            ">;"
        }
    .end annotation

    .line 636
    .local p2, "supertypes":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedDeclaredType;>;"
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    .line 638
    .local v0, "overrides":Ljava/util/Map;, "Ljava/util/Map<Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedDeclaredType;Ljavax/lang/model/element/ExecutableElement;>;"
    invoke-interface {p2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedDeclaredType;

    .line 639
    .local v2, "supertype":Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedDeclaredType;
    invoke-virtual {v2}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedDeclaredType;->getUnderlyingType()Ljavax/lang/model/type/DeclaredType;

    move-result-object v3

    invoke-interface {v3}, Ljavax/lang/model/type/DeclaredType;->asElement()Ljavax/lang/model/element/Element;

    move-result-object v3

    check-cast v3, Ljavax/lang/model/element/TypeElement;

    .line 640
    .local v3, "superElement":Ljavax/lang/model/element/TypeElement;
    if-eqz v3, :cond_2

    .line 644
    invoke-interface {v3}, Ljavax/lang/model/element/TypeElement;->getEnclosedElements()Ljava/util/List;

    move-result-object v4

    invoke-static {v4}, Ljavax/lang/model/util/ElementFilter;->methodsIn(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljavax/lang/model/element/ExecutableElement;

    .line 645
    .local v5, "supermethod":Ljavax/lang/model/element/ExecutableElement;
    invoke-interface {p0, p1, v5, v3}, Ljavax/lang/model/util/Elements;->overrides(Ljavax/lang/model/element/ExecutableElement;Ljavax/lang/model/element/ExecutableElement;Ljavax/lang/model/element/TypeElement;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 646
    invoke-interface {v0, v2, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 647
    goto :goto_2

    .line 649
    .end local v5    # "supermethod":Ljavax/lang/model/element/ExecutableElement;
    :cond_0
    goto :goto_1

    .line 650
    .end local v2    # "supertype":Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedDeclaredType;
    .end local v3    # "superElement":Ljavax/lang/model/element/TypeElement;
    :cond_1
    :goto_2
    goto :goto_0

    .line 640
    .restart local v2    # "supertype":Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedDeclaredType;
    .restart local v3    # "superElement":Ljavax/lang/model/element/TypeElement;
    :cond_2
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    .line 652
    .end local v2    # "supertype":Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedDeclaredType;
    .end local v3    # "superElement":Ljavax/lang/model/element/TypeElement;
    :cond_3
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v1

    return-object v1
.end method

.method public static overriddenMethods(Ljavax/lang/model/util/Elements;Lorg/checkerframework/framework/type/AnnotatedTypeFactory;Ljavax/lang/model/element/ExecutableElement;)Ljava/util/Map;
    .locals 4
    .param p0, "elements"    # Ljavax/lang/model/util/Elements;
    .param p1, "atypeFactory"    # Lorg/checkerframework/framework/type/AnnotatedTypeFactory;
    .param p2, "method"    # Ljavax/lang/model/element/ExecutableElement;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/lang/model/util/Elements;",
            "Lorg/checkerframework/framework/type/AnnotatedTypeFactory;",
            "Ljavax/lang/model/element/ExecutableElement;",
            ")",
            "Ljava/util/Map<",
            "Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedDeclaredType;",
            "Ljavax/lang/model/element/ExecutableElement;",
            ">;"
        }
    .end annotation

    .line 616
    invoke-interface {p2}, Ljavax/lang/model/element/ExecutableElement;->getEnclosingElement()Ljavax/lang/model/element/Element;

    move-result-object v0

    check-cast v0, Ljavax/lang/model/element/TypeElement;

    .line 617
    .local v0, "elem":Ljavax/lang/model/element/TypeElement;
    invoke-virtual {p1, v0}, Lorg/checkerframework/framework/type/AnnotatedTypeFactory;->getAnnotatedType(Ljavax/lang/model/element/TypeElement;)Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedDeclaredType;

    move-result-object v1

    .line 618
    .local v1, "type":Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedDeclaredType;
    invoke-static {v1}, Lorg/checkerframework/framework/util/AnnotatedTypes;->getSuperTypes(Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedDeclaredType;)Ljava/util/Set;

    move-result-object v2

    .line 619
    .local v2, "supertypes":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedDeclaredType;>;"
    invoke-static {p0, p2, v2}, Lorg/checkerframework/framework/util/AnnotatedTypes;->overriddenMethods(Ljavax/lang/model/util/Elements;Ljavax/lang/model/element/ExecutableElement;Ljava/util/Collection;)Ljava/util/Map;

    move-result-object v3

    return-object v3
.end method

.method private static substituteTypeVariables(Ljavax/lang/model/util/Types;Lorg/checkerframework/framework/type/AnnotatedTypeFactory;Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Ljavax/lang/model/element/Element;Lorg/checkerframework/framework/type/AnnotatedTypeMirror;)Lorg/checkerframework/framework/type/AnnotatedTypeMirror;
    .locals 3
    .param p0, "types"    # Ljavax/lang/model/util/Types;
    .param p1, "atypeFactory"    # Lorg/checkerframework/framework/type/AnnotatedTypeFactory;
    .param p2, "of"    # Lorg/checkerframework/framework/type/AnnotatedTypeMirror;
    .param p3, "member"    # Ljavax/lang/model/element/Element;
    .param p4, "memberType"    # Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    .line 421
    invoke-static {p3}, Lorg/checkerframework/javacutil/ElementUtils;->enclosingClass(Ljavax/lang/model/element/Element;)Ljavax/lang/model/element/TypeElement;

    move-result-object v0

    .line 422
    .local v0, "enclosingClassOfMember":Ljavax/lang/model/element/TypeElement;
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 426
    .local v1, "mappings":Ljava/util/Map;, "Ljava/util/Map<Ljavax/lang/model/type/TypeVariable;Lorg/checkerframework/framework/type/AnnotatedTypeMirror;>;"
    :goto_0
    if-eqz v0, :cond_0

    .line 427
    invoke-static {p0, p1, p2, v0, v1}, Lorg/checkerframework/framework/util/AnnotatedTypes;->addTypeVarMappings(Ljavax/lang/model/util/Types;Lorg/checkerframework/framework/type/AnnotatedTypeFactory;Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Ljavax/lang/model/element/TypeElement;Ljava/util/Map;)V

    .line 428
    nop

    .line 429
    invoke-interface {v0}, Ljavax/lang/model/element/TypeElement;->getEnclosingElement()Ljavax/lang/model/element/Element;

    move-result-object v2

    invoke-static {v2}, Lorg/checkerframework/javacutil/ElementUtils;->enclosingClass(Ljavax/lang/model/element/Element;)Ljavax/lang/model/element/TypeElement;

    move-result-object v0

    goto :goto_0

    .line 432
    :cond_0
    invoke-interface {v1}, Ljava/util/Map;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_1

    .line 433
    invoke-virtual {p1}, Lorg/checkerframework/framework/type/AnnotatedTypeFactory;->getTypeVarSubstitutor()Lorg/checkerframework/framework/type/TypeVariableSubstitutor;

    move-result-object v2

    invoke-virtual {v2, v1, p4}, Lorg/checkerframework/framework/type/TypeVariableSubstitutor;->substitute(Ljava/util/Map;Lorg/checkerframework/framework/type/AnnotatedTypeMirror;)Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    move-result-object p4

    .line 436
    :cond_1
    return-object p4
.end method

.method private static substituteUninferredTypeArgs(Lorg/checkerframework/framework/type/AnnotatedTypeFactory;Ljavax/lang/model/element/Element;Lorg/checkerframework/framework/type/AnnotatedTypeMirror;)Lorg/checkerframework/framework/type/AnnotatedTypeMirror;
    .locals 8
    .param p0, "atypeFactory"    # Lorg/checkerframework/framework/type/AnnotatedTypeFactory;
    .param p1, "member"    # Ljavax/lang/model/element/Element;
    .param p2, "memberType"    # Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    .line 499
    invoke-static {p1}, Lorg/checkerframework/javacutil/ElementUtils;->enclosingClass(Ljavax/lang/model/element/Element;)Ljavax/lang/model/element/TypeElement;

    move-result-object v0

    .line 500
    .local v0, "enclosingClassOfMember":Ljavax/lang/model/element/TypeElement;
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 502
    .local v1, "mappings":Ljava/util/Map;, "Ljava/util/Map<Ljavax/lang/model/type/TypeVariable;Lorg/checkerframework/framework/type/AnnotatedTypeMirror;>;"
    :goto_0
    if-eqz v0, :cond_1

    .line 503
    invoke-interface {v0}, Ljavax/lang/model/element/TypeElement;->getTypeParameters()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    .line 504
    nop

    .line 505
    invoke-virtual {p0, v0}, Lorg/checkerframework/framework/type/AnnotatedTypeFactory;->getAnnotatedType(Ljavax/lang/model/element/TypeElement;)Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedDeclaredType;

    move-result-object v2

    .line 506
    .local v2, "enclosingType":Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedDeclaredType;
    invoke-virtual {v2}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedDeclaredType;->getTypeArguments()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    .line 507
    .local v4, "type":Lorg/checkerframework/framework/type/AnnotatedTypeMirror;
    move-object v5, v4

    check-cast v5, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedTypeVariable;

    .line 508
    .local v5, "typeParameter":Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedTypeVariable;
    nop

    .line 509
    invoke-virtual {v5}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedTypeVariable;->getUnderlyingType()Ljavax/lang/model/type/TypeVariable;

    move-result-object v6

    .line 510
    invoke-virtual {p0, v5}, Lorg/checkerframework/framework/type/AnnotatedTypeFactory;->getUninferredWildcardType(Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedTypeVariable;)Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedWildcardType;

    move-result-object v7

    .line 508
    invoke-interface {v1, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 511
    .end local v4    # "type":Lorg/checkerframework/framework/type/AnnotatedTypeMirror;
    .end local v5    # "typeParameter":Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedTypeVariable;
    goto :goto_1

    .line 513
    .end local v2    # "enclosingType":Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedDeclaredType;
    :cond_0
    nop

    .line 514
    invoke-interface {v0}, Ljavax/lang/model/element/TypeElement;->getEnclosingElement()Ljavax/lang/model/element/Element;

    move-result-object v2

    invoke-static {v2}, Lorg/checkerframework/javacutil/ElementUtils;->enclosingClass(Ljavax/lang/model/element/Element;)Ljavax/lang/model/element/TypeElement;

    move-result-object v0

    goto :goto_0

    .line 517
    :cond_1
    invoke-interface {v1}, Ljava/util/Map;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_2

    .line 518
    invoke-virtual {p0}, Lorg/checkerframework/framework/type/AnnotatedTypeFactory;->getTypeVarSubstitutor()Lorg/checkerframework/framework/type/TypeVariableSubstitutor;

    move-result-object v2

    invoke-virtual {v2, v1, p2}, Lorg/checkerframework/framework/type/TypeVariableSubstitutor;->substitute(Ljava/util/Map;Lorg/checkerframework/framework/type/AnnotatedTypeMirror;)Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    move-result-object v2

    return-object v2

    .line 521
    :cond_2
    return-object p2
.end method
