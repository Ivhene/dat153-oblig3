.class public final Lorg/checkerframework/javacutil/TypesUtils;
.super Ljava/lang/Object;
.source "TypesUtils.java"


# static fields
.field static final synthetic $assertionsDisabled:Z


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .line 31
    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    new-instance v0, Ljava/lang/AssertionError;

    const-string v1, "Class TypesUtils cannot be instantiated."

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0
.end method

.method public static areSameDeclaredTypes(Lcom/sun/tools/javac/code/Type$ClassType;Lcom/sun/tools/javac/code/Type$ClassType;)Z
    .locals 2
    .param p0, "t1"    # Lcom/sun/tools/javac/code/Type$ClassType;
    .param p1, "t2"    # Lcom/sun/tools/javac/code/Type$ClassType;

    .line 187
    iget-object v0, p0, Lcom/sun/tools/javac/code/Type$ClassType;->tsym:Lcom/sun/tools/javac/code/Symbol$TypeSymbol;

    iget-object v0, v0, Lcom/sun/tools/javac/code/Symbol$TypeSymbol;->name:Lcom/sun/tools/javac/util/Name;

    iget-object v1, p1, Lcom/sun/tools/javac/code/Type$ClassType;->tsym:Lcom/sun/tools/javac/code/Symbol$TypeSymbol;

    iget-object v1, v1, Lcom/sun/tools/javac/code/Symbol$TypeSymbol;->name:Lcom/sun/tools/javac/util/Name;

    if-eq v0, v1, :cond_0

    .line 188
    const/4 v0, 0x0

    return v0

    .line 190
    :cond_0
    invoke-virtual {p0}, Lcom/sun/tools/javac/code/Type$ClassType;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/sun/tools/javac/code/Type$ClassType;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static areSamePrimitiveTypes(Ljavax/lang/model/type/TypeMirror;Ljavax/lang/model/type/TypeMirror;)Z
    .locals 3
    .param p0, "left"    # Ljavax/lang/model/type/TypeMirror;
    .param p1, "right"    # Ljavax/lang/model/type/TypeMirror;

    .line 199
    invoke-static {p0}, Lorg/checkerframework/javacutil/TypesUtils;->isPrimitive(Ljavax/lang/model/type/TypeMirror;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    invoke-static {p1}, Lorg/checkerframework/javacutil/TypesUtils;->isPrimitive(Ljavax/lang/model/type/TypeMirror;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 203
    :cond_0
    invoke-interface {p0}, Ljavax/lang/model/type/TypeMirror;->getKind()Ljavax/lang/model/type/TypeKind;

    move-result-object v0

    invoke-interface {p1}, Ljavax/lang/model/type/TypeMirror;->getKind()Ljavax/lang/model/type/TypeKind;

    move-result-object v2

    if-ne v0, v2, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1

    .line 200
    :cond_2
    :goto_0
    return v1
.end method

.method public static asSuper(Ljavax/lang/model/type/TypeMirror;Ljavax/lang/model/type/TypeMirror;Ljavax/annotation/processing/ProcessingEnvironment;)Ljavax/lang/model/type/TypeMirror;
    .locals 4
    .param p0, "type"    # Ljavax/lang/model/type/TypeMirror;
    .param p1, "superType"    # Ljavax/lang/model/type/TypeMirror;
    .param p2, "env"    # Ljavax/annotation/processing/ProcessingEnvironment;

    .line 658
    move-object v0, p2

    check-cast v0, Lcom/sun/tools/javac/processing/JavacProcessingEnvironment;

    invoke-virtual {v0}, Lcom/sun/tools/javac/processing/JavacProcessingEnvironment;->getContext()Lcom/sun/tools/javac/util/Context;

    move-result-object v0

    .line 659
    .local v0, "ctx":Lcom/sun/tools/javac/util/Context;
    invoke-static {v0}, Lcom/sun/tools/javac/code/Types;->instance(Lcom/sun/tools/javac/util/Context;)Lcom/sun/tools/javac/code/Types;

    move-result-object v1

    .line 660
    .local v1, "javacTypes":Lcom/sun/tools/javac/code/Types;
    move-object v2, p0

    check-cast v2, Lcom/sun/tools/javac/code/Type;

    move-object v3, p1

    check-cast v3, Lcom/sun/tools/javac/code/Type;

    iget-object v3, v3, Lcom/sun/tools/javac/code/Type;->tsym:Lcom/sun/tools/javac/code/Symbol$TypeSymbol;

    invoke-virtual {v1, v2, v3}, Lcom/sun/tools/javac/code/Types;->asSuper(Lcom/sun/tools/javac/code/Type;Lcom/sun/tools/javac/code/Symbol;)Lcom/sun/tools/javac/code/Type;

    move-result-object v2

    return-object v2
.end method

.method public static createArrayType(Ljavax/lang/model/type/TypeMirror;Ljavax/lang/model/util/Types;)Ljavax/lang/model/type/ArrayType;
    .locals 2
    .param p0, "componentType"    # Ljavax/lang/model/type/TypeMirror;
    .param p1, "types"    # Ljavax/lang/model/util/Types;

    .line 403
    move-object v0, p1

    check-cast v0, Lcom/sun/tools/javac/model/JavacTypes;

    .line 404
    .local v0, "t":Lcom/sun/tools/javac/model/JavacTypes;
    invoke-virtual {v0, p0}, Lcom/sun/tools/javac/model/JavacTypes;->getArrayType(Ljavax/lang/model/type/TypeMirror;)Ljavax/lang/model/type/ArrayType;

    move-result-object v1

    return-object v1
.end method

.method public static findConcreteUpperBound(Ljavax/lang/model/type/TypeMirror;)Ljavax/lang/model/type/TypeMirror;
    .locals 3
    .param p0, "boundedType"    # Ljavax/lang/model/type/TypeMirror;

    .line 449
    move-object v0, p0

    .line 452
    .local v0, "effectiveUpper":Ljavax/lang/model/type/TypeMirror;
    :cond_0
    :goto_0
    sget-object v1, Lorg/checkerframework/javacutil/TypesUtils$1;->$SwitchMap$javax$lang$model$type$TypeKind:[I

    invoke-interface {v0}, Ljavax/lang/model/type/TypeMirror;->getKind()Ljavax/lang/model/type/TypeKind;

    move-result-object v2

    invoke-virtual {v2}, Ljavax/lang/model/type/TypeKind;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 466
    goto :goto_1

    .line 462
    :pswitch_0
    move-object v1, v0

    check-cast v1, Ljavax/lang/model/type/TypeVariable;

    invoke-interface {v1}, Ljavax/lang/model/type/TypeVariable;->getUpperBound()Ljavax/lang/model/type/TypeMirror;

    move-result-object v0

    .line 463
    goto :goto_0

    .line 454
    :pswitch_1
    move-object v1, v0

    check-cast v1, Ljavax/lang/model/type/WildcardType;

    .line 455
    invoke-interface {v1}, Ljavax/lang/model/type/WildcardType;->getExtendsBound()Ljavax/lang/model/type/TypeMirror;

    move-result-object v0

    .line 456
    if-nez v0, :cond_0

    .line 457
    const/4 v1, 0x0

    return-object v1

    .line 469
    :goto_1
    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x9
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static getCapturedWildcard(Ljavax/lang/model/type/TypeVariable;)Ljavax/lang/model/type/WildcardType;
    .locals 1
    .param p0, "typeVar"    # Ljavax/lang/model/type/TypeVariable;

    .line 494
    invoke-static {p0}, Lorg/checkerframework/javacutil/TypesUtils;->isCaptured(Ljavax/lang/model/type/TypeMirror;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 495
    invoke-static {p0}, Lorg/checkerframework/javacutil/TypeAnnotationUtils;->unannotatedType(Ljavax/lang/model/type/TypeMirror;)Lcom/sun/tools/javac/code/Type;

    move-result-object v0

    check-cast v0, Lcom/sun/tools/javac/code/Type$CapturedType;

    iget-object v0, v0, Lcom/sun/tools/javac/code/Type$CapturedType;->wildcard:Lcom/sun/tools/javac/code/Type$WildcardType;

    return-object v0

    .line 497
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public static getQualifiedName(Ljavax/lang/model/type/DeclaredType;)Ljavax/lang/model/element/Name;
    .locals 2
    .param p0, "type"    # Ljavax/lang/model/type/DeclaredType;

    .line 46
    invoke-interface {p0}, Ljavax/lang/model/type/DeclaredType;->asElement()Ljavax/lang/model/element/Element;

    move-result-object v0

    check-cast v0, Ljavax/lang/model/element/TypeElement;

    .line 47
    .local v0, "element":Ljavax/lang/model/element/TypeElement;
    invoke-interface {v0}, Ljavax/lang/model/element/TypeElement;->getQualifiedName()Ljavax/lang/model/element/Name;

    move-result-object v1

    return-object v1
.end method

.method public static getTypeElement(Ljavax/lang/model/type/TypeMirror;)Ljavax/lang/model/element/TypeElement;
    .locals 2
    .param p0, "type"    # Ljavax/lang/model/type/TypeMirror;

    .line 645
    move-object v0, p0

    check-cast v0, Lcom/sun/tools/javac/code/Type;

    invoke-virtual {v0}, Lcom/sun/tools/javac/code/Type;->asElement()Lcom/sun/tools/javac/code/Symbol$TypeSymbol;

    move-result-object v0

    .line 646
    .local v0, "element":Ljavax/lang/model/element/Element;
    invoke-static {v0}, Lorg/checkerframework/javacutil/ElementUtils;->isClassElement(Ljavax/lang/model/element/Element;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 647
    move-object v1, v0

    check-cast v1, Ljavax/lang/model/element/TypeElement;

    return-object v1

    .line 649
    :cond_0
    const/4 v1, 0x0

    return-object v1
.end method

.method public static greatestLowerBound(Ljavax/lang/model/type/TypeMirror;Ljavax/lang/model/type/TypeMirror;Ljavax/annotation/processing/ProcessingEnvironment;)Ljavax/lang/model/type/TypeMirror;
    .locals 6
    .param p0, "tm1"    # Ljavax/lang/model/type/TypeMirror;
    .param p1, "tm2"    # Ljavax/lang/model/type/TypeMirror;
    .param p2, "processingEnv"    # Ljavax/annotation/processing/ProcessingEnvironment;

    .line 583
    invoke-static {p0}, Lorg/checkerframework/javacutil/TypeAnnotationUtils;->unannotatedType(Ljavax/lang/model/type/TypeMirror;)Lcom/sun/tools/javac/code/Type;

    move-result-object v0

    .line 584
    .local v0, "t1":Lcom/sun/tools/javac/code/Type;
    invoke-static {p1}, Lorg/checkerframework/javacutil/TypeAnnotationUtils;->unannotatedType(Ljavax/lang/model/type/TypeMirror;)Lcom/sun/tools/javac/code/Type;

    move-result-object v1

    .line 585
    .local v1, "t2":Lcom/sun/tools/javac/code/Type;
    move-object v2, p2

    check-cast v2, Lcom/sun/tools/javac/processing/JavacProcessingEnvironment;

    .line 586
    .local v2, "javacEnv":Lcom/sun/tools/javac/processing/JavacProcessingEnvironment;
    nop

    .line 587
    invoke-virtual {v2}, Lcom/sun/tools/javac/processing/JavacProcessingEnvironment;->getContext()Lcom/sun/tools/javac/util/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/sun/tools/javac/code/Types;->instance(Lcom/sun/tools/javac/util/Context;)Lcom/sun/tools/javac/code/Types;

    move-result-object v3

    .line 588
    .local v3, "types":Lcom/sun/tools/javac/code/Types;
    invoke-virtual {v3, v0, v1}, Lcom/sun/tools/javac/code/Types;->isSameType(Lcom/sun/tools/javac/code/Type;Lcom/sun/tools/javac/code/Type;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 590
    return-object v0

    .line 593
    :cond_0
    invoke-virtual {v0}, Lcom/sun/tools/javac/code/Type;->getKind()Ljavax/lang/model/type/TypeKind;

    move-result-object v4

    sget-object v5, Ljavax/lang/model/type/TypeKind;->NULL:Ljavax/lang/model/type/TypeKind;

    if-ne v4, v5, :cond_1

    .line 594
    return-object v0

    .line 596
    :cond_1
    invoke-virtual {v1}, Lcom/sun/tools/javac/code/Type;->getKind()Ljavax/lang/model/type/TypeKind;

    move-result-object v4

    sget-object v5, Ljavax/lang/model/type/TypeKind;->NULL:Ljavax/lang/model/type/TypeKind;

    if-ne v4, v5, :cond_2

    .line 597
    return-object v1

    .line 600
    :cond_2
    invoke-static {v0}, Lorg/checkerframework/javacutil/TypesUtils;->isPrimitive(Ljavax/lang/model/type/TypeMirror;)Z

    move-result v4

    if-nez v4, :cond_6

    invoke-static {v1}, Lorg/checkerframework/javacutil/TypesUtils;->isPrimitive(Ljavax/lang/model/type/TypeMirror;)Z

    move-result v4

    if-eqz v4, :cond_3

    goto :goto_0

    .line 612
    :cond_3
    invoke-virtual {v0}, Lcom/sun/tools/javac/code/Type;->getKind()Ljavax/lang/model/type/TypeKind;

    move-result-object v4

    sget-object v5, Ljavax/lang/model/type/TypeKind;->WILDCARD:Ljavax/lang/model/type/TypeKind;

    if-ne v4, v5, :cond_4

    .line 613
    return-object v1

    .line 615
    :cond_4
    invoke-virtual {v1}, Lcom/sun/tools/javac/code/Type;->getKind()Ljavax/lang/model/type/TypeKind;

    move-result-object v4

    sget-object v5, Ljavax/lang/model/type/TypeKind;->WILDCARD:Ljavax/lang/model/type/TypeKind;

    if-ne v4, v5, :cond_5

    .line 616
    return-object v0

    .line 621
    :cond_5
    invoke-virtual {v3, v0, v1}, Lcom/sun/tools/javac/code/Types;->glb(Lcom/sun/tools/javac/code/Type;Lcom/sun/tools/javac/code/Type;)Lcom/sun/tools/javac/code/Type;

    move-result-object v4

    return-object v4

    .line 601
    :cond_6
    :goto_0
    invoke-virtual {v3, v0, v1}, Lcom/sun/tools/javac/code/Types;->isAssignable(Lcom/sun/tools/javac/code/Type;Lcom/sun/tools/javac/code/Type;)Z

    move-result v4

    if-eqz v4, :cond_7

    .line 602
    return-object v0

    .line 603
    :cond_7
    invoke-virtual {v3, v1, v0}, Lcom/sun/tools/javac/code/Types;->isAssignable(Lcom/sun/tools/javac/code/Type;Lcom/sun/tools/javac/code/Type;)Z

    move-result v4

    if-eqz v4, :cond_8

    .line 604
    return-object v1

    .line 609
    :cond_8
    invoke-interface {p2}, Ljavax/annotation/processing/ProcessingEnvironment;->getTypeUtils()Ljavax/lang/model/util/Types;

    move-result-object v4

    sget-object v5, Ljavax/lang/model/type/TypeKind;->NONE:Ljavax/lang/model/type/TypeKind;

    invoke-interface {v4, v5}, Ljavax/lang/model/util/Types;->getNoType(Ljavax/lang/model/type/TypeKind;)Ljavax/lang/model/type/NoType;

    move-result-object v4

    return-object v4
.end method

.method public static isAnonymous(Ljavax/lang/model/type/TypeMirror;)Z
    .locals 2
    .param p0, "type"    # Ljavax/lang/model/type/TypeMirror;

    .line 152
    instance-of v0, p0, Ljavax/lang/model/type/DeclaredType;

    if-eqz v0, :cond_0

    move-object v0, p0

    check-cast v0, Ljavax/lang/model/type/DeclaredType;

    .line 153
    invoke-interface {v0}, Ljavax/lang/model/type/DeclaredType;->asElement()Ljavax/lang/model/element/Element;

    move-result-object v0

    check-cast v0, Ljavax/lang/model/element/TypeElement;

    invoke-interface {v0}, Ljavax/lang/model/element/TypeElement;->getNestingKind()Ljavax/lang/model/element/NestingKind;

    move-result-object v0

    sget-object v1, Ljavax/lang/model/element/NestingKind;->ANONYMOUS:Ljavax/lang/model/element/NestingKind;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 152
    :goto_0
    return v0
.end method

.method public static isBooleanType(Ljavax/lang/model/type/TypeMirror;)Z
    .locals 2
    .param p0, "type"    # Ljavax/lang/model/type/TypeMirror;

    .line 88
    const-string v0, "java.lang.Boolean"

    invoke-static {p0, v0}, Lorg/checkerframework/javacutil/TypesUtils;->isDeclaredOfName(Ljavax/lang/model/type/TypeMirror;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-interface {p0}, Ljavax/lang/model/type/TypeMirror;->getKind()Ljavax/lang/model/type/TypeKind;

    move-result-object v0

    sget-object v1, Ljavax/lang/model/type/TypeKind;->BOOLEAN:Ljavax/lang/model/type/TypeKind;

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public static isBoxOf(Ljavax/lang/model/type/TypeMirror;Ljavax/lang/model/type/TypeMirror;)Z
    .locals 4
    .param p0, "declaredType"    # Ljavax/lang/model/type/TypeMirror;
    .param p1, "primitiveType"    # Ljavax/lang/model/type/TypeMirror;

    .line 412
    invoke-interface {p0}, Ljavax/lang/model/type/TypeMirror;->getKind()Ljavax/lang/model/type/TypeKind;

    move-result-object v0

    sget-object v1, Ljavax/lang/model/type/TypeKind;->DECLARED:Ljavax/lang/model/type/TypeKind;

    const/4 v2, 0x0

    if-eq v0, v1, :cond_0

    .line 413
    return v2

    .line 416
    :cond_0
    move-object v0, p0

    check-cast v0, Ljavax/lang/model/type/DeclaredType;

    invoke-static {v0}, Lorg/checkerframework/javacutil/TypesUtils;->getQualifiedName(Ljavax/lang/model/type/DeclaredType;)Ljavax/lang/model/element/Name;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 417
    .local v0, "qualifiedName":Ljava/lang/String;
    sget-object v1, Lorg/checkerframework/javacutil/TypesUtils$1;->$SwitchMap$javax$lang$model$type$TypeKind:[I

    invoke-interface {p1}, Ljavax/lang/model/type/TypeMirror;->getKind()Ljavax/lang/model/type/TypeKind;

    move-result-object v3

    invoke-virtual {v3}, Ljavax/lang/model/type/TypeKind;->ordinal()I

    move-result v3

    aget v1, v1, v3

    packed-switch v1, :pswitch_data_0

    .line 436
    return v2

    .line 433
    :pswitch_0
    const-string v1, "java.lang.Short"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    return v1

    .line 431
    :pswitch_1
    const-string v1, "java.lang.Long"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    return v1

    .line 429
    :pswitch_2
    const-string v1, "java.lang.Integer"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    return v1

    .line 427
    :pswitch_3
    const-string v1, "java.lang.Float"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    return v1

    .line 425
    :pswitch_4
    const-string v1, "java.lang.Double"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    return v1

    .line 423
    :pswitch_5
    const-string v1, "java.lang.Character"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    return v1

    .line 421
    :pswitch_6
    const-string v1, "java.lang.Byte"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    return v1

    .line 419
    :pswitch_7
    const-string v1, "java.lang.Boolean"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    return v1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static isBoxedPrimitive(Ljavax/lang/model/type/TypeMirror;)Z
    .locals 3
    .param p0, "type"    # Ljavax/lang/model/type/TypeMirror;

    .line 103
    invoke-interface {p0}, Ljavax/lang/model/type/TypeMirror;->getKind()Ljavax/lang/model/type/TypeKind;

    move-result-object v0

    sget-object v1, Ljavax/lang/model/type/TypeKind;->DECLARED:Ljavax/lang/model/type/TypeKind;

    const/4 v2, 0x0

    if-eq v0, v1, :cond_0

    .line 104
    return v2

    .line 107
    :cond_0
    move-object v0, p0

    check-cast v0, Ljavax/lang/model/type/DeclaredType;

    invoke-static {v0}, Lorg/checkerframework/javacutil/TypesUtils;->getQualifiedName(Ljavax/lang/model/type/DeclaredType;)Ljavax/lang/model/element/Name;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 109
    .local v0, "qualifiedName":Ljava/lang/String;
    const-string v1, "java.lang.Boolean"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 110
    const-string v1, "java.lang.Byte"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 111
    const-string v1, "java.lang.Character"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 112
    const-string v1, "java.lang.Short"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 113
    const-string v1, "java.lang.Integer"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 114
    const-string v1, "java.lang.Long"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 115
    const-string v1, "java.lang.Double"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 116
    const-string v1, "java.lang.Float"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    :cond_1
    const/4 v2, 0x1

    .line 109
    :cond_2
    return v2
.end method

.method public static isCaptured(Ljavax/lang/model/type/TypeMirror;)Z
    .locals 2
    .param p0, "typeVar"    # Ljavax/lang/model/type/TypeMirror;

    .line 486
    invoke-interface {p0}, Ljavax/lang/model/type/TypeMirror;->getKind()Ljavax/lang/model/type/TypeKind;

    move-result-object v0

    sget-object v1, Ljavax/lang/model/type/TypeKind;->TYPEVAR:Ljavax/lang/model/type/TypeKind;

    if-eq v0, v1, :cond_0

    .line 487
    const/4 v0, 0x0

    return v0

    .line 489
    :cond_0
    invoke-static {p0}, Lorg/checkerframework/javacutil/TypeAnnotationUtils;->unannotatedType(Ljavax/lang/model/type/TypeMirror;)Lcom/sun/tools/javac/code/Type;

    move-result-object v0

    check-cast v0, Lcom/sun/tools/javac/code/Type$TypeVar;

    invoke-virtual {v0}, Lcom/sun/tools/javac/code/Type$TypeVar;->isCaptured()Z

    move-result v0

    return v0
.end method

.method public static isClass(Ljavax/lang/model/type/TypeMirror;)Z
    .locals 1
    .param p0, "type"    # Ljavax/lang/model/type/TypeMirror;

    .line 67
    const-string v0, "java.lang.Class"

    invoke-static {p0, v0}, Lorg/checkerframework/javacutil/TypesUtils;->isDeclaredOfName(Ljavax/lang/model/type/TypeMirror;Ljava/lang/CharSequence;)Z

    move-result v0

    return v0
.end method

.method public static isClassType(Ljavax/lang/model/type/TypeMirror;)Z
    .locals 1
    .param p0, "type"    # Ljavax/lang/model/type/TypeMirror;

    .line 502
    instance-of v0, p0, Lcom/sun/tools/javac/code/Type$ClassType;

    return v0
.end method

.method public static isDeclaredOfName(Ljavax/lang/model/type/TypeMirror;Ljava/lang/CharSequence;)Z
    .locals 2
    .param p0, "type"    # Ljavax/lang/model/type/TypeMirror;
    .param p1, "qualifiedName"    # Ljava/lang/CharSequence;

    .line 98
    invoke-interface {p0}, Ljavax/lang/model/type/TypeMirror;->getKind()Ljavax/lang/model/type/TypeKind;

    move-result-object v0

    sget-object v1, Ljavax/lang/model/type/TypeKind;->DECLARED:Ljavax/lang/model/type/TypeKind;

    if-ne v0, v1, :cond_0

    move-object v0, p0

    check-cast v0, Ljavax/lang/model/type/DeclaredType;

    .line 99
    invoke-static {v0}, Lorg/checkerframework/javacutil/TypesUtils;->getQualifiedName(Ljavax/lang/model/type/DeclaredType;)Ljavax/lang/model/element/Name;

    move-result-object v0

    invoke-interface {v0, p1}, Ljavax/lang/model/element/Name;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 98
    :goto_0
    return v0
.end method

.method public static isErasedSubtype(Ljavax/lang/model/type/TypeMirror;Ljavax/lang/model/type/TypeMirror;Ljavax/lang/model/util/Types;)Z
    .locals 2
    .param p0, "subtype"    # Ljavax/lang/model/type/TypeMirror;
    .param p1, "supertype"    # Ljavax/lang/model/type/TypeMirror;
    .param p2, "types"    # Ljavax/lang/model/util/Types;

    .line 481
    invoke-interface {p2, p0}, Ljavax/lang/model/util/Types;->erasure(Ljavax/lang/model/type/TypeMirror;)Ljavax/lang/model/type/TypeMirror;

    move-result-object v0

    invoke-interface {p2, p1}, Ljavax/lang/model/util/Types;->erasure(Ljavax/lang/model/type/TypeMirror;)Ljavax/lang/model/type/TypeMirror;

    move-result-object v1

    invoke-interface {p2, v0, v1}, Ljavax/lang/model/util/Types;->isSubtype(Ljavax/lang/model/type/TypeMirror;Ljavax/lang/model/type/TypeMirror;)Z

    move-result v0

    return v0
.end method

.method public static isFloating(Ljavax/lang/model/type/TypeMirror;)Z
    .locals 2
    .param p0, "type"    # Ljavax/lang/model/type/TypeMirror;

    .line 250
    sget-object v0, Lorg/checkerframework/javacutil/TypesUtils$1;->$SwitchMap$javax$lang$model$type$TypeKind:[I

    invoke-interface {p0}, Ljavax/lang/model/type/TypeMirror;->getKind()Ljavax/lang/model/type/TypeKind;

    move-result-object v1

    invoke-virtual {v1}, Ljavax/lang/model/type/TypeKind;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 255
    const/4 v0, 0x0

    return v0

    .line 253
    :pswitch_0
    const/4 v0, 0x1

    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public static isFunctionalInterface(Ljavax/lang/model/type/TypeMirror;Ljavax/annotation/processing/ProcessingEnvironment;)Z
    .locals 3
    .param p0, "type"    # Ljavax/lang/model/type/TypeMirror;
    .param p1, "env"    # Ljavax/annotation/processing/ProcessingEnvironment;

    .line 671
    move-object v0, p1

    check-cast v0, Lcom/sun/tools/javac/processing/JavacProcessingEnvironment;

    invoke-virtual {v0}, Lcom/sun/tools/javac/processing/JavacProcessingEnvironment;->getContext()Lcom/sun/tools/javac/util/Context;

    move-result-object v0

    .line 672
    .local v0, "ctx":Lcom/sun/tools/javac/util/Context;
    invoke-static {v0}, Lcom/sun/tools/javac/code/Types;->instance(Lcom/sun/tools/javac/util/Context;)Lcom/sun/tools/javac/code/Types;

    move-result-object v1

    .line 673
    .local v1, "javacTypes":Lcom/sun/tools/javac/code/Types;
    move-object v2, p0

    check-cast v2, Lcom/sun/tools/javac/code/Type;

    invoke-virtual {v1, v2}, Lcom/sun/tools/javac/code/Types;->isFunctionalInterface(Lcom/sun/tools/javac/code/Type;)Z

    move-result v2

    return v2
.end method

.method public static isImmutableTypeInJdk(Ljavax/lang/model/type/TypeMirror;)Z
    .locals 2
    .param p0, "type"    # Ljavax/lang/model/type/TypeMirror;

    .line 126
    invoke-static {p0}, Lorg/checkerframework/javacutil/TypesUtils;->isPrimitive(Ljavax/lang/model/type/TypeMirror;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 127
    invoke-interface {p0}, Ljavax/lang/model/type/TypeMirror;->getKind()Ljavax/lang/model/type/TypeKind;

    move-result-object v0

    sget-object v1, Ljavax/lang/model/type/TypeKind;->DECLARED:Ljavax/lang/model/type/TypeKind;

    if-ne v0, v1, :cond_0

    move-object v0, p0

    check-cast v0, Ljavax/lang/model/type/DeclaredType;

    .line 129
    invoke-static {v0}, Lorg/checkerframework/javacutil/TypesUtils;->getQualifiedName(Ljavax/lang/model/type/DeclaredType;)Ljavax/lang/model/element/Name;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 128
    invoke-static {v0}, Lorg/checkerframework/org/plumelib/util/ImmutableTypes;->isImmutable(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    .line 126
    :goto_1
    return v0
.end method

.method public static isIntegral(Ljavax/lang/model/type/TypeMirror;)Z
    .locals 2
    .param p0, "type"    # Ljavax/lang/model/type/TypeMirror;

    .line 232
    sget-object v0, Lorg/checkerframework/javacutil/TypesUtils$1;->$SwitchMap$javax$lang$model$type$TypeKind:[I

    invoke-interface {p0}, Ljavax/lang/model/type/TypeMirror;->getKind()Ljavax/lang/model/type/TypeKind;

    move-result-object v1

    invoke-virtual {v1}, Ljavax/lang/model/type/TypeKind;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 240
    :pswitch_0
    const/4 v0, 0x0

    return v0

    .line 238
    :pswitch_1
    const/4 v0, 0x1

    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method public static isNumeric(Ljavax/lang/model/type/TypeMirror;)Z
    .locals 2
    .param p0, "type"    # Ljavax/lang/model/type/TypeMirror;

    .line 212
    sget-object v0, Lorg/checkerframework/javacutil/TypesUtils$1;->$SwitchMap$javax$lang$model$type$TypeKind:[I

    invoke-interface {p0}, Ljavax/lang/model/type/TypeMirror;->getKind()Ljavax/lang/model/type/TypeKind;

    move-result-object v1

    invoke-virtual {v1}, Ljavax/lang/model/type/TypeKind;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 222
    const/4 v0, 0x0

    return v0

    .line 220
    :pswitch_0
    const/4 v0, 0x1

    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public static isObject(Ljavax/lang/model/type/TypeMirror;)Z
    .locals 1
    .param p0, "type"    # Ljavax/lang/model/type/TypeMirror;

    .line 57
    const-string v0, "java.lang.Object"

    invoke-static {p0, v0}, Lorg/checkerframework/javacutil/TypesUtils;->isDeclaredOfName(Ljavax/lang/model/type/TypeMirror;Ljava/lang/CharSequence;)Z

    move-result v0

    return v0
.end method

.method public static isPrimitive(Ljavax/lang/model/type/TypeMirror;)Z
    .locals 2
    .param p0, "type"    # Ljavax/lang/model/type/TypeMirror;

    .line 163
    sget-object v0, Lorg/checkerframework/javacutil/TypesUtils$1;->$SwitchMap$javax$lang$model$type$TypeKind:[I

    invoke-interface {p0}, Ljavax/lang/model/type/TypeMirror;->getKind()Ljavax/lang/model/type/TypeKind;

    move-result-object v1

    invoke-virtual {v1}, Ljavax/lang/model/type/TypeKind;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 174
    const/4 v0, 0x0

    return v0

    .line 172
    :pswitch_0
    const/4 v0, 0x1

    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public static isString(Ljavax/lang/model/type/TypeMirror;)Z
    .locals 1
    .param p0, "type"    # Ljavax/lang/model/type/TypeMirror;

    .line 77
    const-string v0, "java.lang.String"

    invoke-static {p0, v0}, Lorg/checkerframework/javacutil/TypesUtils;->isDeclaredOfName(Ljavax/lang/model/type/TypeMirror;Ljava/lang/CharSequence;)Z

    move-result v0

    return v0
.end method

.method public static isThrowable(Ljavax/lang/model/type/TypeMirror;)Z
    .locals 4
    .param p0, "type"    # Ljavax/lang/model/type/TypeMirror;

    .line 134
    nop

    :goto_0
    if-eqz p0, :cond_1

    invoke-interface {p0}, Ljavax/lang/model/type/TypeMirror;->getKind()Ljavax/lang/model/type/TypeKind;

    move-result-object v0

    sget-object v1, Ljavax/lang/model/type/TypeKind;->DECLARED:Ljavax/lang/model/type/TypeKind;

    if-ne v0, v1, :cond_1

    .line 135
    move-object v0, p0

    check-cast v0, Ljavax/lang/model/type/DeclaredType;

    .line 136
    .local v0, "dt":Ljavax/lang/model/type/DeclaredType;
    invoke-interface {v0}, Ljavax/lang/model/type/DeclaredType;->asElement()Ljavax/lang/model/element/Element;

    move-result-object v1

    check-cast v1, Ljavax/lang/model/element/TypeElement;

    .line 137
    .local v1, "elem":Ljavax/lang/model/element/TypeElement;
    invoke-interface {v1}, Ljavax/lang/model/element/TypeElement;->getQualifiedName()Ljavax/lang/model/element/Name;

    move-result-object v2

    .line 138
    .local v2, "name":Ljavax/lang/model/element/Name;
    const-string v3, "java.lang.Throwable"

    invoke-virtual {v3, v2}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 139
    const/4 v3, 0x1

    return v3

    .line 141
    :cond_0
    invoke-interface {v1}, Ljavax/lang/model/element/TypeElement;->getSuperclass()Ljavax/lang/model/type/TypeMirror;

    move-result-object p0

    .line 142
    .end local v0    # "dt":Ljavax/lang/model/type/DeclaredType;
    .end local v1    # "elem":Ljavax/lang/model/element/TypeElement;
    .end local v2    # "name":Ljavax/lang/model/element/Name;
    goto :goto_0

    .line 143
    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public static leastUpperBound(Ljavax/lang/model/type/TypeMirror;Ljavax/lang/model/type/TypeMirror;Ljavax/annotation/processing/ProcessingEnvironment;)Ljavax/lang/model/type/TypeMirror;
    .locals 8
    .param p0, "tm1"    # Ljavax/lang/model/type/TypeMirror;
    .param p1, "tm2"    # Ljavax/lang/model/type/TypeMirror;
    .param p2, "processingEnv"    # Ljavax/annotation/processing/ProcessingEnvironment;

    .line 519
    invoke-static {p0}, Lorg/checkerframework/javacutil/TypeAnnotationUtils;->unannotatedType(Ljavax/lang/model/type/TypeMirror;)Lcom/sun/tools/javac/code/Type;

    move-result-object v0

    .line 520
    .local v0, "t1":Lcom/sun/tools/javac/code/Type;
    invoke-static {p1}, Lorg/checkerframework/javacutil/TypeAnnotationUtils;->unannotatedType(Ljavax/lang/model/type/TypeMirror;)Lcom/sun/tools/javac/code/Type;

    move-result-object v1

    .line 521
    .local v1, "t2":Lcom/sun/tools/javac/code/Type;
    move-object v2, p2

    check-cast v2, Lcom/sun/tools/javac/processing/JavacProcessingEnvironment;

    .line 522
    .local v2, "javacEnv":Lcom/sun/tools/javac/processing/JavacProcessingEnvironment;
    nop

    .line 523
    invoke-virtual {v2}, Lcom/sun/tools/javac/processing/JavacProcessingEnvironment;->getContext()Lcom/sun/tools/javac/util/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/sun/tools/javac/code/Types;->instance(Lcom/sun/tools/javac/util/Context;)Lcom/sun/tools/javac/code/Types;

    move-result-object v3

    .line 525
    .local v3, "types":Lcom/sun/tools/javac/code/Types;
    invoke-virtual {v0}, Lcom/sun/tools/javac/code/Type;->getKind()Ljavax/lang/model/type/TypeKind;

    move-result-object v4

    sget-object v5, Ljavax/lang/model/type/TypeKind;->NULL:Ljavax/lang/model/type/TypeKind;

    if-ne v4, v5, :cond_0

    .line 526
    return-object v1

    .line 528
    :cond_0
    invoke-virtual {v1}, Lcom/sun/tools/javac/code/Type;->getKind()Ljavax/lang/model/type/TypeKind;

    move-result-object v4

    sget-object v5, Ljavax/lang/model/type/TypeKind;->NULL:Ljavax/lang/model/type/TypeKind;

    if-ne v4, v5, :cond_1

    .line 529
    return-object v0

    .line 531
    :cond_1
    invoke-virtual {v0}, Lcom/sun/tools/javac/code/Type;->getKind()Ljavax/lang/model/type/TypeKind;

    move-result-object v4

    sget-object v5, Ljavax/lang/model/type/TypeKind;->WILDCARD:Ljavax/lang/model/type/TypeKind;

    const-string v6, "java.lang.Object"

    if-ne v4, v5, :cond_3

    .line 532
    move-object v4, v0

    check-cast v4, Ljavax/lang/model/type/WildcardType;

    .line 533
    .local v4, "wc1":Ljavax/lang/model/type/WildcardType;
    invoke-interface {v4}, Ljavax/lang/model/type/WildcardType;->getExtendsBound()Ljavax/lang/model/type/TypeMirror;

    move-result-object v5

    check-cast v5, Lcom/sun/tools/javac/code/Type;

    .line 534
    .local v5, "bound":Lcom/sun/tools/javac/code/Type;
    if-nez v5, :cond_2

    .line 536
    invoke-interface {p2}, Ljavax/annotation/processing/ProcessingEnvironment;->getElementUtils()Ljavax/lang/model/util/Elements;

    move-result-object v7

    .line 537
    .local v7, "elements":Ljavax/lang/model/util/Elements;
    invoke-interface {v7, v6}, Ljavax/lang/model/util/Elements;->getTypeElement(Ljava/lang/CharSequence;)Ljavax/lang/model/element/TypeElement;

    move-result-object v6

    invoke-interface {v6}, Ljavax/lang/model/element/TypeElement;->asType()Ljavax/lang/model/type/TypeMirror;

    move-result-object v6

    return-object v6

    .line 539
    .end local v7    # "elements":Ljavax/lang/model/util/Elements;
    :cond_2
    move-object v0, v5

    .line 541
    .end local v4    # "wc1":Ljavax/lang/model/type/WildcardType;
    .end local v5    # "bound":Lcom/sun/tools/javac/code/Type;
    :cond_3
    invoke-virtual {v1}, Lcom/sun/tools/javac/code/Type;->getKind()Ljavax/lang/model/type/TypeKind;

    move-result-object v4

    sget-object v5, Ljavax/lang/model/type/TypeKind;->WILDCARD:Ljavax/lang/model/type/TypeKind;

    if-ne v4, v5, :cond_5

    .line 542
    move-object v4, v1

    check-cast v4, Ljavax/lang/model/type/WildcardType;

    .line 543
    .local v4, "wc2":Ljavax/lang/model/type/WildcardType;
    invoke-interface {v4}, Ljavax/lang/model/type/WildcardType;->getExtendsBound()Ljavax/lang/model/type/TypeMirror;

    move-result-object v5

    check-cast v5, Lcom/sun/tools/javac/code/Type;

    .line 544
    .restart local v5    # "bound":Lcom/sun/tools/javac/code/Type;
    if-nez v5, :cond_4

    .line 546
    invoke-interface {p2}, Ljavax/annotation/processing/ProcessingEnvironment;->getElementUtils()Ljavax/lang/model/util/Elements;

    move-result-object v7

    .line 547
    .restart local v7    # "elements":Ljavax/lang/model/util/Elements;
    invoke-interface {v7, v6}, Ljavax/lang/model/util/Elements;->getTypeElement(Ljava/lang/CharSequence;)Ljavax/lang/model/element/TypeElement;

    move-result-object v6

    invoke-interface {v6}, Ljavax/lang/model/element/TypeElement;->asType()Ljavax/lang/model/type/TypeMirror;

    move-result-object v6

    return-object v6

    .line 549
    .end local v7    # "elements":Ljavax/lang/model/util/Elements;
    :cond_4
    move-object v1, v5

    .line 551
    .end local v4    # "wc2":Ljavax/lang/model/type/WildcardType;
    .end local v5    # "bound":Lcom/sun/tools/javac/code/Type;
    :cond_5
    invoke-virtual {v3, v0, v1}, Lcom/sun/tools/javac/code/Types;->isSameType(Lcom/sun/tools/javac/code/Type;Lcom/sun/tools/javac/code/Type;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 553
    return-object v0

    .line 556
    :cond_6
    invoke-static {v0}, Lorg/checkerframework/javacutil/TypesUtils;->isPrimitive(Ljavax/lang/model/type/TypeMirror;)Z

    move-result v4

    if-nez v4, :cond_8

    invoke-static {v1}, Lorg/checkerframework/javacutil/TypesUtils;->isPrimitive(Ljavax/lang/model/type/TypeMirror;)Z

    move-result v4

    if-eqz v4, :cond_7

    goto :goto_0

    .line 566
    :cond_7
    const/4 v4, 0x2

    new-array v4, v4, [Lcom/sun/tools/javac/code/Type;

    const/4 v5, 0x0

    aput-object v0, v4, v5

    const/4 v5, 0x1

    aput-object v1, v4, v5

    invoke-virtual {v3, v4}, Lcom/sun/tools/javac/code/Types;->lub([Lcom/sun/tools/javac/code/Type;)Lcom/sun/tools/javac/code/Type;

    move-result-object v4

    return-object v4

    .line 557
    :cond_8
    :goto_0
    invoke-virtual {v3, v0, v1}, Lcom/sun/tools/javac/code/Types;->isAssignable(Lcom/sun/tools/javac/code/Type;Lcom/sun/tools/javac/code/Type;)Z

    move-result v4

    if-eqz v4, :cond_9

    .line 558
    return-object v1

    .line 559
    :cond_9
    invoke-virtual {v3, v1, v0}, Lcom/sun/tools/javac/code/Types;->isAssignable(Lcom/sun/tools/javac/code/Type;Lcom/sun/tools/javac/code/Type;)Z

    move-result v4

    if-eqz v4, :cond_a

    .line 560
    return-object v0

    .line 562
    :cond_a
    invoke-interface {p2}, Ljavax/annotation/processing/ProcessingEnvironment;->getElementUtils()Ljavax/lang/model/util/Elements;

    move-result-object v4

    .line 563
    .local v4, "elements":Ljavax/lang/model/util/Elements;
    invoke-interface {v4, v6}, Ljavax/lang/model/util/Elements;->getTypeElement(Ljava/lang/CharSequence;)Ljavax/lang/model/element/TypeElement;

    move-result-object v5

    invoke-interface {v5}, Ljavax/lang/model/element/TypeElement;->asType()Ljavax/lang/model/type/TypeMirror;

    move-result-object v5

    return-object v5
.end method

.method public static substituteMethodReturnType(Ljavax/lang/model/element/Element;Ljavax/lang/model/type/TypeMirror;Ljavax/annotation/processing/ProcessingEnvironment;)Ljavax/lang/model/type/TypeMirror;
    .locals 3
    .param p0, "methodElement"    # Ljavax/lang/model/element/Element;
    .param p1, "substitutedReceiverType"    # Ljavax/lang/model/type/TypeMirror;
    .param p2, "env"    # Ljavax/annotation/processing/ProcessingEnvironment;

    .line 628
    nop

    .line 629
    invoke-static {p2}, Lorg/checkerframework/javacutil/InternalUtils;->getJavacContext(Ljavax/annotation/processing/ProcessingEnvironment;)Lcom/sun/tools/javac/util/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/sun/tools/javac/code/Types;->instance(Lcom/sun/tools/javac/util/Context;)Lcom/sun/tools/javac/code/Types;

    move-result-object v0

    .line 631
    .local v0, "types":Lcom/sun/tools/javac/code/Types;
    move-object v1, p1

    check-cast v1, Lcom/sun/tools/javac/code/Type;

    move-object v2, p0

    check-cast v2, Lcom/sun/tools/javac/code/Symbol;

    .line 632
    invoke-virtual {v0, v1, v2}, Lcom/sun/tools/javac/code/Types;->memberType(Lcom/sun/tools/javac/code/Type;Lcom/sun/tools/javac/code/Symbol;)Lcom/sun/tools/javac/code/Type;

    move-result-object v1

    .line 633
    .local v1, "substitutedMethodType":Lcom/sun/tools/javac/code/Type;
    invoke-virtual {v1}, Lcom/sun/tools/javac/code/Type;->getReturnType()Lcom/sun/tools/javac/code/Type;

    move-result-object v2

    return-object v2
.end method

.method public static typeFromClass(Ljava/lang/Class;Ljavax/lang/model/util/Types;Ljavax/lang/model/util/Elements;)Ljavax/lang/model/type/TypeMirror;
    .locals 5
    .param p1, "types"    # Ljavax/lang/model/util/Types;
    .param p2, "elements"    # Ljavax/lang/model/util/Elements;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljavax/lang/model/util/Types;",
            "Ljavax/lang/model/util/Elements;",
            ")",
            "Ljavax/lang/model/type/TypeMirror;"
        }
    .end annotation

    .line 381
    .local p0, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    sget-object v0, Ljava/lang/Void;->TYPE:Ljava/lang/Class;

    if-ne p0, v0, :cond_0

    .line 382
    sget-object v0, Ljavax/lang/model/type/TypeKind;->VOID:Ljavax/lang/model/type/TypeKind;

    invoke-interface {p1, v0}, Ljavax/lang/model/util/Types;->getNoType(Ljavax/lang/model/type/TypeKind;)Ljavax/lang/model/type/NoType;

    move-result-object v0

    return-object v0

    .line 383
    :cond_0
    invoke-virtual {p0}, Ljava/lang/Class;->isPrimitive()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 384
    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    .line 385
    .local v0, "primitiveName":Ljava/lang/String;
    invoke-static {v0}, Ljavax/lang/model/type/TypeKind;->valueOf(Ljava/lang/String;)Ljavax/lang/model/type/TypeKind;

    move-result-object v1

    .line 386
    .local v1, "primitiveKind":Ljavax/lang/model/type/TypeKind;
    invoke-interface {p1, v1}, Ljavax/lang/model/util/Types;->getPrimitiveType(Ljavax/lang/model/type/TypeKind;)Ljavax/lang/model/type/PrimitiveType;

    move-result-object v2

    return-object v2

    .line 387
    .end local v0    # "primitiveName":Ljava/lang/String;
    .end local v1    # "primitiveKind":Ljavax/lang/model/type/TypeKind;
    :cond_1
    invoke-virtual {p0}, Ljava/lang/Class;->isArray()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 388
    invoke-virtual {p0}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0, p1, p2}, Lorg/checkerframework/javacutil/TypesUtils;->typeFromClass(Ljava/lang/Class;Ljavax/lang/model/util/Types;Ljavax/lang/model/util/Elements;)Ljavax/lang/model/type/TypeMirror;

    move-result-object v0

    .line 389
    .local v0, "componentType":Ljavax/lang/model/type/TypeMirror;
    invoke-interface {p1, v0}, Ljavax/lang/model/util/Types;->getArrayType(Ljavax/lang/model/type/TypeMirror;)Ljavax/lang/model/type/ArrayType;

    move-result-object v1

    return-object v1

    .line 391
    .end local v0    # "componentType":Ljavax/lang/model/type/TypeMirror;
    :cond_2
    invoke-virtual {p0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v0

    .line 392
    .local v0, "name":Ljava/lang/String;
    if-eqz v0, :cond_4

    .line 393
    invoke-interface {p2, v0}, Ljavax/lang/model/util/Elements;->getTypeElement(Ljava/lang/CharSequence;)Ljavax/lang/model/element/TypeElement;

    move-result-object v1

    .line 394
    .local v1, "element":Ljavax/lang/model/element/TypeElement;
    if-eqz v1, :cond_3

    .line 397
    invoke-interface {v1}, Ljavax/lang/model/element/TypeElement;->asType()Ljavax/lang/model/type/TypeMirror;

    move-result-object v2

    return-object v2

    .line 395
    :cond_3
    new-instance v2, Lorg/checkerframework/javacutil/BugInCF;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unrecognized class: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lorg/checkerframework/javacutil/BugInCF;-><init>(Ljava/lang/String;)V

    throw v2

    .line 392
    .end local v1    # "element":Ljavax/lang/model/element/TypeElement;
    :cond_4
    new-instance v1, Ljava/lang/AssertionError;

    const-string v2, "@AssumeAssertion(nullness): assumption"

    invoke-direct {v1, v2}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v1
.end method

.method public static upperBound(Ljavax/lang/model/type/TypeMirror;)Ljavax/lang/model/type/TypeMirror;
    .locals 2
    .param p0, "type"    # Ljavax/lang/model/type/TypeMirror;

    .line 301
    nop

    :goto_0
    instance-of v0, p0, Ljavax/lang/model/type/TypeVariable;

    if-eqz v0, :cond_0

    .line 302
    move-object v0, p0

    check-cast v0, Ljavax/lang/model/type/TypeVariable;

    .line 303
    .local v0, "tvar":Ljavax/lang/model/type/TypeVariable;
    invoke-interface {v0}, Ljavax/lang/model/type/TypeVariable;->getUpperBound()Ljavax/lang/model/type/TypeMirror;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 304
    invoke-interface {v0}, Ljavax/lang/model/type/TypeVariable;->getUpperBound()Ljavax/lang/model/type/TypeMirror;

    move-result-object p0

    .line 308
    .end local v0    # "tvar":Ljavax/lang/model/type/TypeVariable;
    goto :goto_0

    :cond_0
    instance-of v0, p0, Ljavax/lang/model/type/WildcardType;

    if-eqz v0, :cond_1

    .line 309
    move-object v0, p0

    check-cast v0, Ljavax/lang/model/type/WildcardType;

    .line 310
    .local v0, "wc":Ljavax/lang/model/type/WildcardType;
    invoke-interface {v0}, Ljavax/lang/model/type/WildcardType;->getExtendsBound()Ljavax/lang/model/type/TypeMirror;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 311
    invoke-interface {v0}, Ljavax/lang/model/type/WildcardType;->getExtendsBound()Ljavax/lang/model/type/TypeMirror;

    move-result-object p0

    .line 315
    .end local v0    # "wc":Ljavax/lang/model/type/WildcardType;
    goto :goto_0

    .line 319
    :cond_1
    return-object p0
.end method

.method public static widenedNumericType(Ljavax/lang/model/type/TypeMirror;Ljavax/lang/model/type/TypeMirror;)Ljavax/lang/model/type/TypeKind;
    .locals 3
    .param p0, "left"    # Ljavax/lang/model/type/TypeMirror;
    .param p1, "right"    # Ljavax/lang/model/type/TypeMirror;

    .line 269
    invoke-static {p0}, Lorg/checkerframework/javacutil/TypesUtils;->isNumeric(Ljavax/lang/model/type/TypeMirror;)Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-static {p1}, Lorg/checkerframework/javacutil/TypesUtils;->isNumeric(Ljavax/lang/model/type/TypeMirror;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_3

    .line 273
    :cond_0
    invoke-interface {p0}, Ljavax/lang/model/type/TypeMirror;->getKind()Ljavax/lang/model/type/TypeKind;

    move-result-object v0

    .line 274
    .local v0, "leftKind":Ljavax/lang/model/type/TypeKind;
    invoke-interface {p1}, Ljavax/lang/model/type/TypeMirror;->getKind()Ljavax/lang/model/type/TypeKind;

    move-result-object v1

    .line 276
    .local v1, "rightKind":Ljavax/lang/model/type/TypeKind;
    sget-object v2, Ljavax/lang/model/type/TypeKind;->DOUBLE:Ljavax/lang/model/type/TypeKind;

    if-eq v0, v2, :cond_6

    sget-object v2, Ljavax/lang/model/type/TypeKind;->DOUBLE:Ljavax/lang/model/type/TypeKind;

    if-ne v1, v2, :cond_1

    goto :goto_2

    .line 280
    :cond_1
    sget-object v2, Ljavax/lang/model/type/TypeKind;->FLOAT:Ljavax/lang/model/type/TypeKind;

    if-eq v0, v2, :cond_5

    sget-object v2, Ljavax/lang/model/type/TypeKind;->FLOAT:Ljavax/lang/model/type/TypeKind;

    if-ne v1, v2, :cond_2

    goto :goto_1

    .line 284
    :cond_2
    sget-object v2, Ljavax/lang/model/type/TypeKind;->LONG:Ljavax/lang/model/type/TypeKind;

    if-eq v0, v2, :cond_4

    sget-object v2, Ljavax/lang/model/type/TypeKind;->LONG:Ljavax/lang/model/type/TypeKind;

    if-ne v1, v2, :cond_3

    goto :goto_0

    .line 288
    :cond_3
    sget-object v2, Ljavax/lang/model/type/TypeKind;->INT:Ljavax/lang/model/type/TypeKind;

    return-object v2

    .line 285
    :cond_4
    :goto_0
    sget-object v2, Ljavax/lang/model/type/TypeKind;->LONG:Ljavax/lang/model/type/TypeKind;

    return-object v2

    .line 281
    :cond_5
    :goto_1
    sget-object v2, Ljavax/lang/model/type/TypeKind;->FLOAT:Ljavax/lang/model/type/TypeKind;

    return-object v2

    .line 277
    :cond_6
    :goto_2
    sget-object v2, Ljavax/lang/model/type/TypeKind;->DOUBLE:Ljavax/lang/model/type/TypeKind;

    return-object v2

    .line 270
    .end local v0    # "leftKind":Ljavax/lang/model/type/TypeKind;
    .end local v1    # "rightKind":Ljavax/lang/model/type/TypeKind;
    :cond_7
    :goto_3
    sget-object v0, Ljavax/lang/model/type/TypeKind;->NONE:Ljavax/lang/model/type/TypeKind;

    return-object v0
.end method

.method public static wildLowerBound(Ljavax/lang/model/type/TypeMirror;Ljavax/annotation/processing/ProcessingEnvironment;)Lcom/sun/tools/javac/code/Type;
    .locals 5
    .param p0, "tm"    # Ljavax/lang/model/type/TypeMirror;
    .param p1, "env"    # Ljavax/annotation/processing/ProcessingEnvironment;

    .line 368
    move-object v0, p0

    check-cast v0, Lcom/sun/tools/javac/code/Type;

    .line 369
    .local v0, "t":Lcom/sun/tools/javac/code/Type;
    sget-object v1, Lcom/sun/tools/javac/code/TypeTag;->WILDCARD:Lcom/sun/tools/javac/code/TypeTag;

    invoke-virtual {v0, v1}, Lcom/sun/tools/javac/code/Type;->hasTag(Lcom/sun/tools/javac/code/TypeTag;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 370
    move-object v1, p1

    check-cast v1, Lcom/sun/tools/javac/processing/JavacProcessingEnvironment;

    invoke-virtual {v1}, Lcom/sun/tools/javac/processing/JavacProcessingEnvironment;->getContext()Lcom/sun/tools/javac/util/Context;

    move-result-object v1

    .line 371
    .local v1, "context":Lcom/sun/tools/javac/util/Context;
    invoke-static {v1}, Lcom/sun/tools/javac/code/Symtab;->instance(Lcom/sun/tools/javac/util/Context;)Lcom/sun/tools/javac/code/Symtab;

    move-result-object v2

    .line 372
    .local v2, "syms":Lcom/sun/tools/javac/code/Symtab;
    invoke-static {v0}, Lorg/checkerframework/javacutil/TypeAnnotationUtils;->unannotatedType(Ljavax/lang/model/type/TypeMirror;)Lcom/sun/tools/javac/code/Type;

    move-result-object v3

    check-cast v3, Lcom/sun/tools/javac/code/Type$WildcardType;

    .line 373
    .local v3, "w":Lcom/sun/tools/javac/code/Type$WildcardType;
    invoke-virtual {v3}, Lcom/sun/tools/javac/code/Type$WildcardType;->isExtendsBound()Z

    move-result v4

    if-eqz v4, :cond_0

    iget-object v4, v2, Lcom/sun/tools/javac/code/Symtab;->botType:Lcom/sun/tools/javac/code/Type;

    goto :goto_0

    :cond_0
    iget-object v4, v3, Lcom/sun/tools/javac/code/Type$WildcardType;->type:Lcom/sun/tools/javac/code/Type;

    invoke-static {v4, p1}, Lorg/checkerframework/javacutil/TypesUtils;->wildLowerBound(Ljavax/lang/model/type/TypeMirror;Ljavax/annotation/processing/ProcessingEnvironment;)Lcom/sun/tools/javac/code/Type;

    move-result-object v4

    :goto_0
    return-object v4

    .line 375
    .end local v1    # "context":Lcom/sun/tools/javac/util/Context;
    .end local v2    # "syms":Lcom/sun/tools/javac/code/Symtab;
    .end local v3    # "w":Lcom/sun/tools/javac/code/Type$WildcardType;
    :cond_1
    invoke-static {v0}, Lorg/checkerframework/javacutil/TypeAnnotationUtils;->unannotatedType(Ljavax/lang/model/type/TypeMirror;)Lcom/sun/tools/javac/code/Type;

    move-result-object v1

    return-object v1
.end method

.method public static wildUpperBound(Ljavax/lang/model/type/TypeMirror;Ljavax/annotation/processing/ProcessingEnvironment;)Lcom/sun/tools/javac/code/Type;
    .locals 5
    .param p0, "tm"    # Ljavax/lang/model/type/TypeMirror;
    .param p1, "env"    # Ljavax/annotation/processing/ProcessingEnvironment;

    .line 347
    move-object v0, p0

    check-cast v0, Lcom/sun/tools/javac/code/Type;

    .line 348
    .local v0, "t":Lcom/sun/tools/javac/code/Type;
    sget-object v1, Lcom/sun/tools/javac/code/TypeTag;->WILDCARD:Lcom/sun/tools/javac/code/TypeTag;

    invoke-virtual {v0, v1}, Lcom/sun/tools/javac/code/Type;->hasTag(Lcom/sun/tools/javac/code/TypeTag;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 349
    move-object v1, p1

    check-cast v1, Lcom/sun/tools/javac/processing/JavacProcessingEnvironment;

    invoke-virtual {v1}, Lcom/sun/tools/javac/processing/JavacProcessingEnvironment;->getContext()Lcom/sun/tools/javac/util/Context;

    move-result-object v1

    .line 350
    .local v1, "context":Lcom/sun/tools/javac/util/Context;
    invoke-static {v0}, Lorg/checkerframework/javacutil/TypeAnnotationUtils;->unannotatedType(Ljavax/lang/model/type/TypeMirror;)Lcom/sun/tools/javac/code/Type;

    move-result-object v2

    check-cast v2, Lcom/sun/tools/javac/code/Type$WildcardType;

    .line 351
    .local v2, "w":Lcom/sun/tools/javac/code/Type$WildcardType;
    invoke-virtual {v2}, Lcom/sun/tools/javac/code/Type$WildcardType;->isSuperBound()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 352
    invoke-static {v1}, Lcom/sun/tools/javac/code/Symtab;->instance(Lcom/sun/tools/javac/util/Context;)Lcom/sun/tools/javac/code/Symtab;

    move-result-object v3

    .line 354
    .local v3, "syms":Lcom/sun/tools/javac/code/Symtab;
    iget-object v4, v2, Lcom/sun/tools/javac/code/Type$WildcardType;->bound:Lcom/sun/tools/javac/code/Type$TypeVar;

    if-nez v4, :cond_0

    iget-object v4, v3, Lcom/sun/tools/javac/code/Symtab;->objectType:Lcom/sun/tools/javac/code/Type;

    goto :goto_0

    :cond_0
    iget-object v4, v2, Lcom/sun/tools/javac/code/Type$WildcardType;->bound:Lcom/sun/tools/javac/code/Type$TypeVar;

    invoke-virtual {v4}, Lcom/sun/tools/javac/code/Type$TypeVar;->getUpperBound()Lcom/sun/tools/javac/code/Type;

    move-result-object v4

    :goto_0
    return-object v4

    .line 356
    .end local v3    # "syms":Lcom/sun/tools/javac/code/Symtab;
    :cond_1
    iget-object v3, v2, Lcom/sun/tools/javac/code/Type$WildcardType;->type:Lcom/sun/tools/javac/code/Type;

    invoke-static {v3, p1}, Lorg/checkerframework/javacutil/TypesUtils;->wildUpperBound(Ljavax/lang/model/type/TypeMirror;Ljavax/annotation/processing/ProcessingEnvironment;)Lcom/sun/tools/javac/code/Type;

    move-result-object v3

    return-object v3

    .line 359
    .end local v1    # "context":Lcom/sun/tools/javac/util/Context;
    .end local v2    # "w":Lcom/sun/tools/javac/code/Type$WildcardType;
    :cond_2
    invoke-static {v0}, Lorg/checkerframework/javacutil/TypeAnnotationUtils;->unannotatedType(Ljavax/lang/model/type/TypeMirror;)Lcom/sun/tools/javac/code/Type;

    move-result-object v1

    return-object v1
.end method

.method public static wildcardToTypeParam(Lcom/sun/tools/javac/code/Type$WildcardType;)Ljavax/lang/model/element/TypeParameterElement;
    .locals 2
    .param p0, "wildcard"    # Lcom/sun/tools/javac/code/Type$WildcardType;

    .line 332
    iget-object v0, p0, Lcom/sun/tools/javac/code/Type$WildcardType;->bound:Lcom/sun/tools/javac/code/Type$TypeVar;

    if-eqz v0, :cond_0

    .line 333
    iget-object v0, p0, Lcom/sun/tools/javac/code/Type$WildcardType;->bound:Lcom/sun/tools/javac/code/Type$TypeVar;

    invoke-virtual {v0}, Lcom/sun/tools/javac/code/Type$TypeVar;->asElement()Lcom/sun/tools/javac/code/Symbol$TypeSymbol;

    move-result-object v0

    .local v0, "typeParamElement":Ljavax/lang/model/element/Element;
    goto :goto_0

    .line 335
    .end local v0    # "typeParamElement":Ljavax/lang/model/element/Element;
    :cond_0
    const/4 v0, 0x0

    .line 338
    .restart local v0    # "typeParamElement":Ljavax/lang/model/element/Element;
    :goto_0
    move-object v1, v0

    check-cast v1, Ljavax/lang/model/element/TypeParameterElement;

    return-object v1
.end method
