.class public abstract Lorg/checkerframework/com/github/javaparser/resolution/types/ResolvedReferenceType;
.super Ljava/lang/Object;
.source "ResolvedReferenceType.java"

# interfaces
.implements Lorg/checkerframework/com/github/javaparser/resolution/types/ResolvedType;
.implements Lorg/checkerframework/com/github/javaparser/resolution/types/parametrization/ResolvedTypeParametrized;
.implements Lorg/checkerframework/com/github/javaparser/resolution/types/parametrization/ResolvedTypeParameterValueProvider;


# instance fields
.field protected typeDeclaration:Lorg/checkerframework/com/github/javaparser/resolution/declarations/ResolvedReferenceTypeDeclaration;

.field protected typeParametersMap:Lorg/checkerframework/com/github/javaparser/resolution/types/parametrization/ResolvedTypeParametersMap;


# direct methods
.method public constructor <init>(Lorg/checkerframework/com/github/javaparser/resolution/declarations/ResolvedReferenceTypeDeclaration;)V
    .locals 1
    .param p1, "typeDeclaration"    # Lorg/checkerframework/com/github/javaparser/resolution/declarations/ResolvedReferenceTypeDeclaration;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "typeDeclaration"
        }
    .end annotation

    .line 61
    invoke-static {p1}, Lorg/checkerframework/com/github/javaparser/resolution/types/ResolvedReferenceType;->deriveParams(Lorg/checkerframework/com/github/javaparser/resolution/declarations/ResolvedReferenceTypeDeclaration;)Ljava/util/List;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lorg/checkerframework/com/github/javaparser/resolution/types/ResolvedReferenceType;-><init>(Lorg/checkerframework/com/github/javaparser/resolution/declarations/ResolvedReferenceTypeDeclaration;Ljava/util/List;)V

    .line 62
    return-void
.end method

.method public constructor <init>(Lorg/checkerframework/com/github/javaparser/resolution/declarations/ResolvedReferenceTypeDeclaration;Ljava/util/List;)V
    .locals 4
    .param p1, "typeDeclaration"    # Lorg/checkerframework/com/github/javaparser/resolution/declarations/ResolvedReferenceTypeDeclaration;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "typeDeclaration",
            "typeArguments"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/checkerframework/com/github/javaparser/resolution/declarations/ResolvedReferenceTypeDeclaration;",
            "Ljava/util/List<",
            "Lorg/checkerframework/com/github/javaparser/resolution/types/ResolvedType;",
            ">;)V"
        }
    .end annotation

    .line 64
    .local p2, "typeArguments":Ljava/util/List;, "Ljava/util/List<Lorg/checkerframework/com/github/javaparser/resolution/types/ResolvedType;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 65
    if-eqz p1, :cond_4

    .line 68
    invoke-interface {p1}, Lorg/checkerframework/com/github/javaparser/resolution/declarations/ResolvedReferenceTypeDeclaration;->isTypeParameter()Z

    move-result v0

    if-nez v0, :cond_3

    .line 71
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_1

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    invoke-interface {p1}, Lorg/checkerframework/com/github/javaparser/resolution/declarations/ResolvedReferenceTypeDeclaration;->getTypeParameters()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ne v0, v1, :cond_0

    goto :goto_0

    .line 72
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 74
    invoke-interface {p1}, Lorg/checkerframework/com/github/javaparser/resolution/declarations/ResolvedReferenceTypeDeclaration;->getTypeParameters()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    filled-new-array {v1, v2}, [Ljava/lang/Object;

    move-result-object v1

    .line 72
    const-string v2, "expected either zero type arguments or has many as defined in the declaration (%d). Found %d"

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 76
    :cond_1
    :goto_0
    new-instance v0, Lorg/checkerframework/com/github/javaparser/resolution/types/parametrization/ResolvedTypeParametersMap$Builder;

    invoke-direct {v0}, Lorg/checkerframework/com/github/javaparser/resolution/types/parametrization/ResolvedTypeParametersMap$Builder;-><init>()V

    .line 77
    .local v0, "typeParametersMapBuilder":Lorg/checkerframework/com/github/javaparser/resolution/types/parametrization/ResolvedTypeParametersMap$Builder;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_2

    .line 78
    invoke-interface {p1}, Lorg/checkerframework/com/github/javaparser/resolution/declarations/ResolvedReferenceTypeDeclaration;->getTypeParameters()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/checkerframework/com/github/javaparser/resolution/declarations/ResolvedTypeParameterDeclaration;

    invoke-interface {p2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/checkerframework/com/github/javaparser/resolution/types/ResolvedType;

    invoke-virtual {v0, v2, v3}, Lorg/checkerframework/com/github/javaparser/resolution/types/parametrization/ResolvedTypeParametersMap$Builder;->setValue(Lorg/checkerframework/com/github/javaparser/resolution/declarations/ResolvedTypeParameterDeclaration;Lorg/checkerframework/com/github/javaparser/resolution/types/ResolvedType;)Lorg/checkerframework/com/github/javaparser/resolution/types/parametrization/ResolvedTypeParametersMap$Builder;

    .line 77
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 80
    .end local v1    # "i":I
    :cond_2
    invoke-virtual {v0}, Lorg/checkerframework/com/github/javaparser/resolution/types/parametrization/ResolvedTypeParametersMap$Builder;->build()Lorg/checkerframework/com/github/javaparser/resolution/types/parametrization/ResolvedTypeParametersMap;

    move-result-object v1

    iput-object v1, p0, Lorg/checkerframework/com/github/javaparser/resolution/types/ResolvedReferenceType;->typeParametersMap:Lorg/checkerframework/com/github/javaparser/resolution/types/parametrization/ResolvedTypeParametersMap;

    .line 81
    iput-object p1, p0, Lorg/checkerframework/com/github/javaparser/resolution/types/ResolvedReferenceType;->typeDeclaration:Lorg/checkerframework/com/github/javaparser/resolution/declarations/ResolvedReferenceTypeDeclaration;

    .line 82
    return-void

    .line 69
    .end local v0    # "typeParametersMapBuilder":Lorg/checkerframework/com/github/javaparser/resolution/types/parametrization/ResolvedTypeParametersMap$Builder;
    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "You should use only Classes, Interfaces and enums"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 66
    :cond_4
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "TypeDeclaration is not expected to be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static deriveParams(Lorg/checkerframework/com/github/javaparser/resolution/declarations/ResolvedReferenceTypeDeclaration;)Ljava/util/List;
    .locals 3
    .param p0, "typeDeclaration"    # Lorg/checkerframework/com/github/javaparser/resolution/declarations/ResolvedReferenceTypeDeclaration;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "typeDeclaration"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/checkerframework/com/github/javaparser/resolution/declarations/ResolvedReferenceTypeDeclaration;",
            ")",
            "Ljava/util/List<",
            "Lorg/checkerframework/com/github/javaparser/resolution/types/ResolvedType;",
            ">;"
        }
    .end annotation

    .line 496
    if-eqz p0, :cond_1

    .line 499
    invoke-interface {p0}, Lorg/checkerframework/com/github/javaparser/resolution/declarations/ResolvedReferenceTypeDeclaration;->getTypeParameters()Ljava/util/List;

    move-result-object v0

    .line 500
    .local v0, "typeParameters":Ljava/util/List;, "Ljava/util/List<Lorg/checkerframework/com/github/javaparser/resolution/declarations/ResolvedTypeParameterDeclaration;>;"
    if-eqz v0, :cond_0

    .line 503
    invoke-interface {v0}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v1

    new-instance v2, Lorg/checkerframework/com/github/javaparser/resolution/types/ResolvedReferenceType$$ExternalSyntheticLambda2;

    invoke-direct {v2}, Lorg/checkerframework/com/github/javaparser/resolution/types/ResolvedReferenceType$$ExternalSyntheticLambda2;-><init>()V

    invoke-interface {v1, v2}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v1

    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    return-object v1

    .line 501
    :cond_0
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Type parameters are not expected to be null"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 497
    .end local v0    # "typeParameters":Ljava/util/List;, "Ljava/util/List<Lorg/checkerframework/com/github/javaparser/resolution/declarations/ResolvedTypeParameterDeclaration;>;"
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "TypeDeclaration is not expected to be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method static synthetic lambda$getAllClassesAncestors$2(Lorg/checkerframework/com/github/javaparser/resolution/types/ResolvedReferenceType;)Z
    .locals 1
    .param p0, "it"    # Lorg/checkerframework/com/github/javaparser/resolution/types/ResolvedReferenceType;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "it"
        }
    .end annotation

    .line 243
    invoke-virtual {p0}, Lorg/checkerframework/com/github/javaparser/resolution/types/ResolvedReferenceType;->getTypeDeclaration()Lorg/checkerframework/com/github/javaparser/resolution/declarations/ResolvedReferenceTypeDeclaration;

    move-result-object v0

    invoke-interface {v0}, Lorg/checkerframework/com/github/javaparser/resolution/declarations/ResolvedReferenceTypeDeclaration;->isClass()Z

    move-result v0

    return v0
.end method

.method static synthetic lambda$getAllFieldsVisibleToInheritors$5(Lorg/checkerframework/com/github/javaparser/resolution/declarations/ResolvedFieldDeclaration;)Z
    .locals 2
    .param p0, "f"    # Lorg/checkerframework/com/github/javaparser/resolution/declarations/ResolvedFieldDeclaration;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "f"
        }
    .end annotation

    .line 398
    invoke-interface {p0}, Lorg/checkerframework/com/github/javaparser/resolution/declarations/ResolvedFieldDeclaration;->accessSpecifier()Lorg/checkerframework/com/github/javaparser/ast/AccessSpecifier;

    move-result-object v0

    sget-object v1, Lorg/checkerframework/com/github/javaparser/ast/AccessSpecifier;->PRIVATE:Lorg/checkerframework/com/github/javaparser/ast/AccessSpecifier;

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method static synthetic lambda$getAllFieldsVisibleToInheritors$6(Ljava/util/List;Lorg/checkerframework/com/github/javaparser/resolution/types/ResolvedReferenceType;)V
    .locals 1
    .param p0, "res"    # Ljava/util/List;
    .param p1, "a"    # Lorg/checkerframework/com/github/javaparser/resolution/types/ResolvedReferenceType;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x1000
        }
        names = {
            "res",
            "a"
        }
    .end annotation

    .line 402
    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/resolution/types/ResolvedReferenceType;->getAllFieldsVisibleToInheritors()Ljava/util/List;

    move-result-object v0

    invoke-interface {p0, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    return-void
.end method

.method static synthetic lambda$getAllInterfacesAncestors$1(Lorg/checkerframework/com/github/javaparser/resolution/types/ResolvedReferenceType;)Z
    .locals 1
    .param p0, "it"    # Lorg/checkerframework/com/github/javaparser/resolution/types/ResolvedReferenceType;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "it"
        }
    .end annotation

    .line 237
    invoke-virtual {p0}, Lorg/checkerframework/com/github/javaparser/resolution/types/ResolvedReferenceType;->getTypeDeclaration()Lorg/checkerframework/com/github/javaparser/resolution/declarations/ResolvedReferenceTypeDeclaration;

    move-result-object v0

    invoke-interface {v0}, Lorg/checkerframework/com/github/javaparser/resolution/declarations/ResolvedReferenceTypeDeclaration;->isInterface()Z

    move-result v0

    return v0
.end method

.method static synthetic lambda$getAllMethods$4(Ljava/util/List;Lorg/checkerframework/com/github/javaparser/resolution/types/ResolvedReferenceType;)V
    .locals 1
    .param p0, "allMethods"    # Ljava/util/List;
    .param p1, "a"    # Lorg/checkerframework/com/github/javaparser/resolution/types/ResolvedReferenceType;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x1000
        }
        names = {
            "allMethods",
            "a"
        }
    .end annotation

    .line 388
    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/resolution/types/ResolvedReferenceType;->getAllMethods()Ljava/util/List;

    move-result-object v0

    invoke-interface {p0, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    return-void
.end method

.method static synthetic lambda$getAllMethodsVisibleToInheritors$7(Lorg/checkerframework/com/github/javaparser/resolution/declarations/ResolvedMethodDeclaration;)Z
    .locals 2
    .param p0, "m"    # Lorg/checkerframework/com/github/javaparser/resolution/declarations/ResolvedMethodDeclaration;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "m"
        }
    .end annotation

    .line 409
    invoke-interface {p0}, Lorg/checkerframework/com/github/javaparser/resolution/declarations/ResolvedMethodDeclaration;->accessSpecifier()Lorg/checkerframework/com/github/javaparser/ast/AccessSpecifier;

    move-result-object v0

    sget-object v1, Lorg/checkerframework/com/github/javaparser/ast/AccessSpecifier;->PRIVATE:Lorg/checkerframework/com/github/javaparser/ast/AccessSpecifier;

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method


# virtual methods
.method public asReferenceType()Lorg/checkerframework/com/github/javaparser/resolution/types/ResolvedReferenceType;
    .locals 0

    .line 130
    return-object p0
.end method

.method protected compareConsideringTypeParameters(Lorg/checkerframework/com/github/javaparser/resolution/types/ResolvedReferenceType;)Z
    .locals 9
    .param p1, "other"    # Lorg/checkerframework/com/github/javaparser/resolution/types/ResolvedReferenceType;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "other"
        }
    .end annotation

    .line 451
    invoke-virtual {p1, p0}, Lorg/checkerframework/com/github/javaparser/resolution/types/ResolvedReferenceType;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 452
    return v1

    .line 454
    :cond_0
    invoke-virtual {p0}, Lorg/checkerframework/com/github/javaparser/resolution/types/ResolvedReferenceType;->getQualifiedName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/resolution/types/ResolvedReferenceType;->getQualifiedName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v2, 0x0

    if-eqz v0, :cond_c

    .line 455
    invoke-virtual {p0}, Lorg/checkerframework/com/github/javaparser/resolution/types/ResolvedReferenceType;->isRawType()Z

    move-result v0

    if-nez v0, :cond_b

    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/resolution/types/ResolvedReferenceType;->isRawType()Z

    move-result v0

    if-eqz v0, :cond_1

    goto/16 :goto_4

    .line 458
    :cond_1
    invoke-virtual {p0}, Lorg/checkerframework/com/github/javaparser/resolution/types/ResolvedReferenceType;->typeParametersValues()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/resolution/types/ResolvedReferenceType;->typeParametersValues()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ne v0, v3, :cond_a

    .line 461
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-virtual {p0}, Lorg/checkerframework/com/github/javaparser/resolution/types/ResolvedReferenceType;->typeParametersValues()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v0, v3, :cond_9

    .line 462
    invoke-virtual {p0}, Lorg/checkerframework/com/github/javaparser/resolution/types/ResolvedReferenceType;->typeParametersValues()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/checkerframework/com/github/javaparser/resolution/types/ResolvedType;

    .line 463
    .local v3, "thisParam":Lorg/checkerframework/com/github/javaparser/resolution/types/ResolvedType;
    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/resolution/types/ResolvedReferenceType;->typeParametersValues()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/checkerframework/com/github/javaparser/resolution/types/ResolvedType;

    .line 464
    .local v4, "otherParam":Lorg/checkerframework/com/github/javaparser/resolution/types/ResolvedType;
    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_8

    .line 465
    instance-of v5, v3, Lorg/checkerframework/com/github/javaparser/resolution/types/ResolvedWildcard;

    if-eqz v5, :cond_5

    .line 466
    move-object v5, v3

    check-cast v5, Lorg/checkerframework/com/github/javaparser/resolution/types/ResolvedWildcard;

    .line 467
    .local v5, "thisParamAsWildcard":Lorg/checkerframework/com/github/javaparser/resolution/types/ResolvedWildcard;
    invoke-virtual {v5}, Lorg/checkerframework/com/github/javaparser/resolution/types/ResolvedWildcard;->isSuper()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-virtual {v5}, Lorg/checkerframework/com/github/javaparser/resolution/types/ResolvedWildcard;->getBoundedType()Lorg/checkerframework/com/github/javaparser/resolution/types/ResolvedType;

    move-result-object v6

    invoke-interface {v4, v6}, Lorg/checkerframework/com/github/javaparser/resolution/types/ResolvedType;->isAssignableBy(Lorg/checkerframework/com/github/javaparser/resolution/types/ResolvedType;)Z

    move-result v6

    if-eqz v6, :cond_2

    goto :goto_1

    .line 469
    :cond_2
    invoke-virtual {v5}, Lorg/checkerframework/com/github/javaparser/resolution/types/ResolvedWildcard;->isExtends()Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-virtual {v5}, Lorg/checkerframework/com/github/javaparser/resolution/types/ResolvedWildcard;->getBoundedType()Lorg/checkerframework/com/github/javaparser/resolution/types/ResolvedType;

    move-result-object v6

    invoke-interface {v6, v4}, Lorg/checkerframework/com/github/javaparser/resolution/types/ResolvedType;->isAssignableBy(Lorg/checkerframework/com/github/javaparser/resolution/types/ResolvedType;)Z

    move-result v6

    if-eqz v6, :cond_3

    goto :goto_1

    .line 471
    :cond_3
    invoke-virtual {v5}, Lorg/checkerframework/com/github/javaparser/resolution/types/ResolvedWildcard;->isBounded()Z

    move-result v6

    if-nez v6, :cond_4

    .line 476
    .end local v5    # "thisParamAsWildcard":Lorg/checkerframework/com/github/javaparser/resolution/types/ResolvedWildcard;
    :goto_1
    goto :goto_3

    .line 474
    .restart local v5    # "thisParamAsWildcard":Lorg/checkerframework/com/github/javaparser/resolution/types/ResolvedWildcard;
    :cond_4
    return v2

    .line 477
    .end local v5    # "thisParamAsWildcard":Lorg/checkerframework/com/github/javaparser/resolution/types/ResolvedWildcard;
    :cond_5
    instance-of v5, v3, Lorg/checkerframework/com/github/javaparser/resolution/types/ResolvedTypeVariable;

    if-eqz v5, :cond_7

    instance-of v5, v4, Lorg/checkerframework/com/github/javaparser/resolution/types/ResolvedTypeVariable;

    if-eqz v5, :cond_7

    .line 478
    invoke-interface {v3}, Lorg/checkerframework/com/github/javaparser/resolution/types/ResolvedType;->asTypeVariable()Lorg/checkerframework/com/github/javaparser/resolution/types/ResolvedTypeVariable;

    move-result-object v5

    invoke-virtual {v5}, Lorg/checkerframework/com/github/javaparser/resolution/types/ResolvedTypeVariable;->asTypeParameter()Lorg/checkerframework/com/github/javaparser/resolution/declarations/ResolvedTypeParameterDeclaration;

    move-result-object v5

    invoke-interface {v5}, Lorg/checkerframework/com/github/javaparser/resolution/declarations/ResolvedTypeParameterDeclaration;->getBounds()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v5

    new-instance v6, Lorg/checkerframework/com/github/javaparser/resolution/types/ResolvedReferenceType$$ExternalSyntheticLambda6;

    invoke-direct {v6}, Lorg/checkerframework/com/github/javaparser/resolution/types/ResolvedReferenceType$$ExternalSyntheticLambda6;-><init>()V

    invoke-interface {v5, v6}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v5

    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    .line 479
    .local v5, "thisBounds":Ljava/util/List;, "Ljava/util/List<Lorg/checkerframework/com/github/javaparser/resolution/types/ResolvedType;>;"
    invoke-interface {v4}, Lorg/checkerframework/com/github/javaparser/resolution/types/ResolvedType;->asTypeVariable()Lorg/checkerframework/com/github/javaparser/resolution/types/ResolvedTypeVariable;

    move-result-object v6

    invoke-virtual {v6}, Lorg/checkerframework/com/github/javaparser/resolution/types/ResolvedTypeVariable;->asTypeParameter()Lorg/checkerframework/com/github/javaparser/resolution/declarations/ResolvedTypeParameterDeclaration;

    move-result-object v6

    invoke-interface {v6}, Lorg/checkerframework/com/github/javaparser/resolution/declarations/ResolvedTypeParameterDeclaration;->getBounds()Ljava/util/List;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v6

    new-instance v7, Lorg/checkerframework/com/github/javaparser/resolution/types/ResolvedReferenceType$$ExternalSyntheticLambda6;

    invoke-direct {v7}, Lorg/checkerframework/com/github/javaparser/resolution/types/ResolvedReferenceType$$ExternalSyntheticLambda6;-><init>()V

    invoke-interface {v6, v7}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v6

    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    move-result-object v7

    invoke-interface {v6, v7}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    .line 480
    .local v6, "otherBounds":Ljava/util/List;, "Ljava/util/List<Lorg/checkerframework/com/github/javaparser/resolution/types/ResolvedType;>;"
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v7

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v8

    if-ne v7, v8, :cond_6

    invoke-interface {v6, v5}, Ljava/util/List;->containsAll(Ljava/util/Collection;)Z

    move-result v7

    if-eqz v7, :cond_6

    goto :goto_2

    :cond_6
    move v1, v2

    :goto_2
    return v1

    .line 482
    .end local v5    # "thisBounds":Ljava/util/List;, "Ljava/util/List<Lorg/checkerframework/com/github/javaparser/resolution/types/ResolvedType;>;"
    .end local v6    # "otherBounds":Ljava/util/List;, "Ljava/util/List<Lorg/checkerframework/com/github/javaparser/resolution/types/ResolvedType;>;"
    :cond_7
    return v2

    .line 461
    .end local v3    # "thisParam":Lorg/checkerframework/com/github/javaparser/resolution/types/ResolvedType;
    .end local v4    # "otherParam":Lorg/checkerframework/com/github/javaparser/resolution/types/ResolvedType;
    :cond_8
    :goto_3
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_0

    .line 486
    .end local v0    # "i":I
    :cond_9
    return v1

    .line 459
    :cond_a
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    .line 456
    :cond_b
    :goto_4
    return v1

    .line 488
    :cond_c
    return v2
.end method

.method protected abstract create(Lorg/checkerframework/com/github/javaparser/resolution/declarations/ResolvedReferenceTypeDeclaration;)Lorg/checkerframework/com/github/javaparser/resolution/types/ResolvedReferenceType;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "typeDeclaration"
        }
    .end annotation
.end method

.method protected abstract create(Lorg/checkerframework/com/github/javaparser/resolution/declarations/ResolvedReferenceTypeDeclaration;Ljava/util/List;)Lorg/checkerframework/com/github/javaparser/resolution/types/ResolvedReferenceType;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "typeDeclaration",
            "typeParameters"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/checkerframework/com/github/javaparser/resolution/declarations/ResolvedReferenceTypeDeclaration;",
            "Ljava/util/List<",
            "Lorg/checkerframework/com/github/javaparser/resolution/types/ResolvedType;",
            ">;)",
            "Lorg/checkerframework/com/github/javaparser/resolution/types/ResolvedReferenceType;"
        }
    .end annotation
.end method

.method protected create(Lorg/checkerframework/com/github/javaparser/resolution/declarations/ResolvedReferenceTypeDeclaration;Lorg/checkerframework/com/github/javaparser/resolution/types/parametrization/ResolvedTypeParametersMap;)Lorg/checkerframework/com/github/javaparser/resolution/types/ResolvedReferenceType;
    .locals 2
    .param p1, "typeDeclaration"    # Lorg/checkerframework/com/github/javaparser/resolution/declarations/ResolvedReferenceTypeDeclaration;
    .param p2, "typeParametersMap"    # Lorg/checkerframework/com/github/javaparser/resolution/types/parametrization/ResolvedTypeParametersMap;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "typeDeclaration",
            "typeParametersMap"
        }
    .end annotation

    .line 420
    invoke-interface {p1}, Lorg/checkerframework/com/github/javaparser/resolution/declarations/ResolvedReferenceTypeDeclaration;->getTypeParameters()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v1, Lorg/checkerframework/com/github/javaparser/resolution/types/ResolvedReferenceType$$ExternalSyntheticLambda1;

    invoke-direct {v1, p2}, Lorg/checkerframework/com/github/javaparser/resolution/types/ResolvedReferenceType$$ExternalSyntheticLambda1;-><init>(Lorg/checkerframework/com/github/javaparser/resolution/types/parametrization/ResolvedTypeParametersMap;)V

    .line 421
    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v0

    .line 422
    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 420
    invoke-virtual {p0, p1, v0}, Lorg/checkerframework/com/github/javaparser/resolution/types/ResolvedReferenceType;->create(Lorg/checkerframework/com/github/javaparser/resolution/declarations/ResolvedReferenceTypeDeclaration;Ljava/util/List;)Lorg/checkerframework/com/github/javaparser/resolution/types/ResolvedReferenceType;

    move-result-object v0

    return-object v0
.end method

.method public abstract deriveTypeParameters(Lorg/checkerframework/com/github/javaparser/resolution/types/parametrization/ResolvedTypeParametersMap;)Lorg/checkerframework/com/github/javaparser/resolution/types/ResolvedReferenceType;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "typeParametersMap"
        }
    .end annotation
.end method

.method public describe()Ljava/lang/String;
    .locals 3

    .line 139
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 140
    .local v0, "sb":Ljava/lang/StringBuilder;
    invoke-virtual {p0}, Lorg/checkerframework/com/github/javaparser/resolution/types/ResolvedReferenceType;->hasName()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 141
    iget-object v1, p0, Lorg/checkerframework/com/github/javaparser/resolution/types/ResolvedReferenceType;->typeDeclaration:Lorg/checkerframework/com/github/javaparser/resolution/declarations/ResolvedReferenceTypeDeclaration;

    invoke-interface {v1}, Lorg/checkerframework/com/github/javaparser/resolution/declarations/ResolvedReferenceTypeDeclaration;->getQualifiedName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 143
    :cond_0
    const-string v1, "<anonymous class>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 145
    :goto_0
    invoke-virtual {p0}, Lorg/checkerframework/com/github/javaparser/resolution/types/ResolvedReferenceType;->typeParametersMap()Lorg/checkerframework/com/github/javaparser/resolution/types/parametrization/ResolvedTypeParametersMap;

    move-result-object v1

    invoke-virtual {v1}, Lorg/checkerframework/com/github/javaparser/resolution/types/parametrization/ResolvedTypeParametersMap;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    .line 146
    const-string v1, "<"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 147
    iget-object v1, p0, Lorg/checkerframework/com/github/javaparser/resolution/types/ResolvedReferenceType;->typeDeclaration:Lorg/checkerframework/com/github/javaparser/resolution/declarations/ResolvedReferenceTypeDeclaration;

    invoke-interface {v1}, Lorg/checkerframework/com/github/javaparser/resolution/declarations/ResolvedReferenceTypeDeclaration;->getTypeParameters()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v1

    new-instance v2, Lorg/checkerframework/com/github/javaparser/resolution/types/ResolvedReferenceType$$ExternalSyntheticLambda4;

    invoke-direct {v2, p0}, Lorg/checkerframework/com/github/javaparser/resolution/types/ResolvedReferenceType$$ExternalSyntheticLambda4;-><init>(Lorg/checkerframework/com/github/javaparser/resolution/types/ResolvedReferenceType;)V

    .line 148
    invoke-interface {v1, v2}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v1

    .line 149
    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Iterable;

    .line 147
    const-string v2, ", "

    invoke-static {v2, v1}, Ljava/lang/String;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 150
    const-string v1, ">"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 152
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "o"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "o"
        }
    .end annotation

    .line 90
    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    .line 91
    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_4

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_0

    .line 93
    :cond_1
    move-object v2, p1

    check-cast v2, Lorg/checkerframework/com/github/javaparser/resolution/types/ResolvedReferenceType;

    .line 95
    .local v2, "that":Lorg/checkerframework/com/github/javaparser/resolution/types/ResolvedReferenceType;
    iget-object v3, p0, Lorg/checkerframework/com/github/javaparser/resolution/types/ResolvedReferenceType;->typeDeclaration:Lorg/checkerframework/com/github/javaparser/resolution/declarations/ResolvedReferenceTypeDeclaration;

    iget-object v4, v2, Lorg/checkerframework/com/github/javaparser/resolution/types/ResolvedReferenceType;->typeDeclaration:Lorg/checkerframework/com/github/javaparser/resolution/declarations/ResolvedReferenceTypeDeclaration;

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    return v1

    .line 96
    :cond_2
    iget-object v3, p0, Lorg/checkerframework/com/github/javaparser/resolution/types/ResolvedReferenceType;->typeParametersMap:Lorg/checkerframework/com/github/javaparser/resolution/types/parametrization/ResolvedTypeParametersMap;

    iget-object v4, v2, Lorg/checkerframework/com/github/javaparser/resolution/types/ResolvedReferenceType;->typeParametersMap:Lorg/checkerframework/com/github/javaparser/resolution/types/parametrization/ResolvedTypeParametersMap;

    invoke-virtual {v3, v4}, Lorg/checkerframework/com/github/javaparser/resolution/types/parametrization/ResolvedTypeParametersMap;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    return v1

    .line 98
    :cond_3
    return v0

    .line 91
    .end local v2    # "that":Lorg/checkerframework/com/github/javaparser/resolution/types/ResolvedReferenceType;
    :cond_4
    :goto_0
    return v1
.end method

.method public abstract getAllAncestors()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/checkerframework/com/github/javaparser/resolution/types/ResolvedReferenceType;",
            ">;"
        }
    .end annotation
.end method

.method public final getAllClassesAncestors()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/checkerframework/com/github/javaparser/resolution/types/ResolvedReferenceType;",
            ">;"
        }
    .end annotation

    .line 242
    invoke-virtual {p0}, Lorg/checkerframework/com/github/javaparser/resolution/types/ResolvedReferenceType;->getAllAncestors()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lorg/checkerframework/com/github/javaparser/resolution/types/ResolvedReferenceType$$ExternalSyntheticLambda5;

    invoke-direct {v1}, Lorg/checkerframework/com/github/javaparser/resolution/types/ResolvedReferenceType$$ExternalSyntheticLambda5;-><init>()V

    .line 243
    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v0

    .line 244
    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 242
    return-object v0
.end method

.method public getAllFieldsVisibleToInheritors()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/checkerframework/com/github/javaparser/resolution/declarations/ResolvedFieldDeclaration;",
            ">;"
        }
    .end annotation

    .line 397
    new-instance v0, Ljava/util/LinkedList;

    invoke-virtual {p0}, Lorg/checkerframework/com/github/javaparser/resolution/types/ResolvedReferenceType;->getDeclaredFields()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->stream()Ljava/util/stream/Stream;

    move-result-object v1

    new-instance v2, Lorg/checkerframework/com/github/javaparser/resolution/types/ResolvedReferenceType$$ExternalSyntheticLambda8;

    invoke-direct {v2}, Lorg/checkerframework/com/github/javaparser/resolution/types/ResolvedReferenceType$$ExternalSyntheticLambda8;-><init>()V

    .line 398
    invoke-interface {v1, v2}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v1

    .line 399
    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Collection;

    invoke-direct {v0, v1}, Ljava/util/LinkedList;-><init>(Ljava/util/Collection;)V

    .line 401
    .local v0, "res":Ljava/util/List;, "Ljava/util/List<Lorg/checkerframework/com/github/javaparser/resolution/declarations/ResolvedFieldDeclaration;>;"
    invoke-virtual {p0}, Lorg/checkerframework/com/github/javaparser/resolution/types/ResolvedReferenceType;->getDirectAncestors()Ljava/util/List;

    move-result-object v1

    new-instance v2, Lorg/checkerframework/com/github/javaparser/resolution/types/ResolvedReferenceType$$ExternalSyntheticLambda9;

    invoke-direct {v2, v0}, Lorg/checkerframework/com/github/javaparser/resolution/types/ResolvedReferenceType$$ExternalSyntheticLambda9;-><init>(Ljava/util/List;)V

    invoke-interface {v1, v2}, Ljava/util/List;->forEach(Ljava/util/function/Consumer;)V

    .line 404
    return-object v0
.end method

.method public final getAllInterfacesAncestors()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/checkerframework/com/github/javaparser/resolution/types/ResolvedReferenceType;",
            ">;"
        }
    .end annotation

    .line 236
    invoke-virtual {p0}, Lorg/checkerframework/com/github/javaparser/resolution/types/ResolvedReferenceType;->getAllAncestors()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lorg/checkerframework/com/github/javaparser/resolution/types/ResolvedReferenceType$$ExternalSyntheticLambda10;

    invoke-direct {v1}, Lorg/checkerframework/com/github/javaparser/resolution/types/ResolvedReferenceType$$ExternalSyntheticLambda10;-><init>()V

    .line 237
    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v0

    .line 238
    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 236
    return-object v0
.end method

.method public getAllMethods()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/checkerframework/com/github/javaparser/resolution/declarations/ResolvedMethodDeclaration;",
            ">;"
        }
    .end annotation

    .line 386
    new-instance v0, Ljava/util/LinkedList;

    invoke-virtual {p0}, Lorg/checkerframework/com/github/javaparser/resolution/types/ResolvedReferenceType;->getTypeDeclaration()Lorg/checkerframework/com/github/javaparser/resolution/declarations/ResolvedReferenceTypeDeclaration;

    move-result-object v1

    invoke-interface {v1}, Lorg/checkerframework/com/github/javaparser/resolution/declarations/ResolvedReferenceTypeDeclaration;->getDeclaredMethods()Ljava/util/Set;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/LinkedList;-><init>(Ljava/util/Collection;)V

    .line 387
    .local v0, "allMethods":Ljava/util/List;, "Ljava/util/List<Lorg/checkerframework/com/github/javaparser/resolution/declarations/ResolvedMethodDeclaration;>;"
    invoke-virtual {p0}, Lorg/checkerframework/com/github/javaparser/resolution/types/ResolvedReferenceType;->getDirectAncestors()Ljava/util/List;

    move-result-object v1

    new-instance v2, Lorg/checkerframework/com/github/javaparser/resolution/types/ResolvedReferenceType$$ExternalSyntheticLambda7;

    invoke-direct {v2, v0}, Lorg/checkerframework/com/github/javaparser/resolution/types/ResolvedReferenceType$$ExternalSyntheticLambda7;-><init>(Ljava/util/List;)V

    invoke-interface {v1, v2}, Ljava/util/List;->forEach(Ljava/util/function/Consumer;)V

    .line 389
    return-object v0
.end method

.method public getAllMethodsVisibleToInheritors()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/checkerframework/com/github/javaparser/resolution/declarations/ResolvedMethodDeclaration;",
            ">;"
        }
    .end annotation

    .line 408
    invoke-virtual {p0}, Lorg/checkerframework/com/github/javaparser/resolution/types/ResolvedReferenceType;->getAllMethods()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lorg/checkerframework/com/github/javaparser/resolution/types/ResolvedReferenceType$$ExternalSyntheticLambda0;

    invoke-direct {v1}, Lorg/checkerframework/com/github/javaparser/resolution/types/ResolvedReferenceType$$ExternalSyntheticLambda0;-><init>()V

    .line 409
    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v0

    .line 410
    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 408
    return-object v0
.end method

.method public abstract getDeclaredFields()Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Lorg/checkerframework/com/github/javaparser/resolution/declarations/ResolvedFieldDeclaration;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getDeclaredMethods()Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Lorg/checkerframework/com/github/javaparser/resolution/MethodUsage;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getDirectAncestors()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/checkerframework/com/github/javaparser/resolution/types/ResolvedReferenceType;",
            ">;"
        }
    .end annotation
.end method

.method public getFieldType(Ljava/lang/String;)Ljava/util/Optional;
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "name"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Optional<",
            "Lorg/checkerframework/com/github/javaparser/resolution/types/ResolvedType;",
            ">;"
        }
    .end annotation

    .line 307
    iget-object v0, p0, Lorg/checkerframework/com/github/javaparser/resolution/types/ResolvedReferenceType;->typeDeclaration:Lorg/checkerframework/com/github/javaparser/resolution/declarations/ResolvedReferenceTypeDeclaration;

    invoke-interface {v0, p1}, Lorg/checkerframework/com/github/javaparser/resolution/declarations/ResolvedReferenceTypeDeclaration;->hasField(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 308
    invoke-static {}, Ljava/util/Optional;->empty()Ljava/util/Optional;

    move-result-object v0

    return-object v0

    .line 310
    :cond_0
    iget-object v0, p0, Lorg/checkerframework/com/github/javaparser/resolution/types/ResolvedReferenceType;->typeDeclaration:Lorg/checkerframework/com/github/javaparser/resolution/declarations/ResolvedReferenceTypeDeclaration;

    invoke-interface {v0, p1}, Lorg/checkerframework/com/github/javaparser/resolution/declarations/ResolvedReferenceTypeDeclaration;->getField(Ljava/lang/String;)Lorg/checkerframework/com/github/javaparser/resolution/declarations/ResolvedFieldDeclaration;

    move-result-object v0

    invoke-interface {v0}, Lorg/checkerframework/com/github/javaparser/resolution/declarations/ResolvedFieldDeclaration;->getType()Lorg/checkerframework/com/github/javaparser/resolution/types/ResolvedType;

    move-result-object v0

    .line 311
    .local v0, "type":Lorg/checkerframework/com/github/javaparser/resolution/types/ResolvedType;
    invoke-virtual {p0, v0}, Lorg/checkerframework/com/github/javaparser/resolution/types/ResolvedReferenceType;->useThisTypeParametersOnTheGivenType(Lorg/checkerframework/com/github/javaparser/resolution/types/ResolvedType;)Lorg/checkerframework/com/github/javaparser/resolution/types/ResolvedType;

    move-result-object v0

    .line 312
    invoke-static {v0}, Ljava/util/Optional;->of(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v1

    return-object v1
.end method

.method public getGenericParameterByName(Ljava/lang/String;)Ljava/util/Optional;
    .locals 3
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "name"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Optional<",
            "Lorg/checkerframework/com/github/javaparser/resolution/types/ResolvedType;",
            ">;"
        }
    .end annotation

    .line 256
    iget-object v0, p0, Lorg/checkerframework/com/github/javaparser/resolution/types/ResolvedReferenceType;->typeDeclaration:Lorg/checkerframework/com/github/javaparser/resolution/declarations/ResolvedReferenceTypeDeclaration;

    invoke-interface {v0}, Lorg/checkerframework/com/github/javaparser/resolution/declarations/ResolvedReferenceTypeDeclaration;->getTypeParameters()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/checkerframework/com/github/javaparser/resolution/declarations/ResolvedTypeParameterDeclaration;

    .line 257
    .local v1, "tp":Lorg/checkerframework/com/github/javaparser/resolution/declarations/ResolvedTypeParameterDeclaration;
    invoke-interface {v1}, Lorg/checkerframework/com/github/javaparser/resolution/declarations/ResolvedTypeParameterDeclaration;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 258
    invoke-virtual {p0}, Lorg/checkerframework/com/github/javaparser/resolution/types/ResolvedReferenceType;->typeParametersMap()Lorg/checkerframework/com/github/javaparser/resolution/types/parametrization/ResolvedTypeParametersMap;

    move-result-object v0

    invoke-virtual {v0, v1}, Lorg/checkerframework/com/github/javaparser/resolution/types/parametrization/ResolvedTypeParametersMap;->getValue(Lorg/checkerframework/com/github/javaparser/resolution/declarations/ResolvedTypeParameterDeclaration;)Lorg/checkerframework/com/github/javaparser/resolution/types/ResolvedType;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Optional;->of(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v0

    return-object v0

    .line 260
    .end local v1    # "tp":Lorg/checkerframework/com/github/javaparser/resolution/declarations/ResolvedTypeParameterDeclaration;
    :cond_0
    goto :goto_0

    .line 261
    :cond_1
    invoke-static {}, Ljava/util/Optional;->empty()Ljava/util/Optional;

    move-result-object v0

    return-object v0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    .line 333
    iget-object v0, p0, Lorg/checkerframework/com/github/javaparser/resolution/types/ResolvedReferenceType;->typeDeclaration:Lorg/checkerframework/com/github/javaparser/resolution/declarations/ResolvedReferenceTypeDeclaration;

    invoke-interface {v0}, Lorg/checkerframework/com/github/javaparser/resolution/declarations/ResolvedReferenceTypeDeclaration;->getId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getQualifiedName()Ljava/lang/String;
    .locals 1

    .line 326
    iget-object v0, p0, Lorg/checkerframework/com/github/javaparser/resolution/types/ResolvedReferenceType;->typeDeclaration:Lorg/checkerframework/com/github/javaparser/resolution/declarations/ResolvedReferenceTypeDeclaration;

    invoke-interface {v0}, Lorg/checkerframework/com/github/javaparser/resolution/declarations/ResolvedReferenceTypeDeclaration;->getQualifiedName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final getTypeDeclaration()Lorg/checkerframework/com/github/javaparser/resolution/declarations/ResolvedReferenceTypeDeclaration;
    .locals 1

    .line 299
    iget-object v0, p0, Lorg/checkerframework/com/github/javaparser/resolution/types/ResolvedReferenceType;->typeDeclaration:Lorg/checkerframework/com/github/javaparser/resolution/declarations/ResolvedReferenceTypeDeclaration;

    return-object v0
.end method

.method public getTypeParametersMap()Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/checkerframework/com/github/javaparser/utils/Pair<",
            "Lorg/checkerframework/com/github/javaparser/resolution/declarations/ResolvedTypeParameterDeclaration;",
            "Lorg/checkerframework/com/github/javaparser/resolution/types/ResolvedType;",
            ">;>;"
        }
    .end annotation

    .line 277
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 278
    .local v0, "typeParametersMap":Ljava/util/List;, "Ljava/util/List<Lorg/checkerframework/com/github/javaparser/utils/Pair<Lorg/checkerframework/com/github/javaparser/resolution/declarations/ResolvedTypeParameterDeclaration;Lorg/checkerframework/com/github/javaparser/resolution/types/ResolvedType;>;>;"
    invoke-virtual {p0}, Lorg/checkerframework/com/github/javaparser/resolution/types/ResolvedReferenceType;->isRawType()Z

    move-result v1

    if-nez v1, :cond_0

    .line 279
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Lorg/checkerframework/com/github/javaparser/resolution/types/ResolvedReferenceType;->typeDeclaration:Lorg/checkerframework/com/github/javaparser/resolution/declarations/ResolvedReferenceTypeDeclaration;

    invoke-interface {v2}, Lorg/checkerframework/com/github/javaparser/resolution/declarations/ResolvedReferenceTypeDeclaration;->getTypeParameters()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 280
    new-instance v2, Lorg/checkerframework/com/github/javaparser/utils/Pair;

    iget-object v3, p0, Lorg/checkerframework/com/github/javaparser/resolution/types/ResolvedReferenceType;->typeDeclaration:Lorg/checkerframework/com/github/javaparser/resolution/declarations/ResolvedReferenceTypeDeclaration;

    invoke-interface {v3}, Lorg/checkerframework/com/github/javaparser/resolution/declarations/ResolvedReferenceTypeDeclaration;->getTypeParameters()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {p0}, Lorg/checkerframework/com/github/javaparser/resolution/types/ResolvedReferenceType;->typeParametersValues()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Lorg/checkerframework/com/github/javaparser/utils/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 279
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 283
    .end local v1    # "i":I
    :cond_0
    return-object v0
.end method

.method public hasName()Z
    .locals 1

    .line 319
    iget-object v0, p0, Lorg/checkerframework/com/github/javaparser/resolution/types/ResolvedReferenceType;->typeDeclaration:Lorg/checkerframework/com/github/javaparser/resolution/declarations/ResolvedReferenceTypeDeclaration;

    invoke-interface {v0}, Lorg/checkerframework/com/github/javaparser/resolution/declarations/ResolvedReferenceTypeDeclaration;->hasName()Z

    move-result v0

    return v0
.end method

.method public hashCode()I
    .locals 3

    .line 103
    iget-object v0, p0, Lorg/checkerframework/com/github/javaparser/resolution/types/ResolvedReferenceType;->typeDeclaration:Lorg/checkerframework/com/github/javaparser/resolution/declarations/ResolvedReferenceTypeDeclaration;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    .line 104
    .local v0, "result":I
    mul-int/lit8 v1, v0, 0x1f

    iget-object v2, p0, Lorg/checkerframework/com/github/javaparser/resolution/types/ResolvedReferenceType;->typeParametersMap:Lorg/checkerframework/com/github/javaparser/resolution/types/parametrization/ResolvedTypeParametersMap;

    invoke-virtual {v2}, Lorg/checkerframework/com/github/javaparser/resolution/types/parametrization/ResolvedTypeParametersMap;->hashCode()I

    move-result v2

    add-int/2addr v1, v2

    .line 105
    .end local v0    # "result":I
    .local v1, "result":I
    return v1
.end method

.method public abstract isAssignableBy(Lorg/checkerframework/com/github/javaparser/resolution/types/ResolvedType;)Z
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "other"
        }
    .end annotation
.end method

.method protected isCorrespondingBoxingType(Ljava/lang/String;)Z
    .locals 2
    .param p1, "typeName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "typeName"
        }
    .end annotation

    .line 428
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    :cond_0
    goto :goto_0

    :sswitch_0
    const-string v0, "short"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x3

    goto :goto_1

    :sswitch_1
    const-string v0, "float"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x6

    goto :goto_1

    :sswitch_2
    const-string v0, "boolean"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    goto :goto_1

    :sswitch_3
    const-string v0, "long"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x5

    goto :goto_1

    :sswitch_4
    const-string v0, "char"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_1

    :sswitch_5
    const-string v0, "byte"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x2

    goto :goto_1

    :sswitch_6
    const-string v0, "int"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x4

    goto :goto_1

    :sswitch_7
    const-string v0, "double"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x7

    goto :goto_1

    :goto_0
    const/4 v0, -0x1

    :goto_1
    packed-switch v0, :pswitch_data_0

    .line 446
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 444
    :pswitch_0
    invoke-virtual {p0}, Lorg/checkerframework/com/github/javaparser/resolution/types/ResolvedReferenceType;->getQualifiedName()Ljava/lang/String;

    move-result-object v0

    const-class v1, Ljava/lang/Double;

    invoke-virtual {v1}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0

    .line 442
    :pswitch_1
    invoke-virtual {p0}, Lorg/checkerframework/com/github/javaparser/resolution/types/ResolvedReferenceType;->getQualifiedName()Ljava/lang/String;

    move-result-object v0

    const-class v1, Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0

    .line 440
    :pswitch_2
    invoke-virtual {p0}, Lorg/checkerframework/com/github/javaparser/resolution/types/ResolvedReferenceType;->getQualifiedName()Ljava/lang/String;

    move-result-object v0

    const-class v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0

    .line 438
    :pswitch_3
    invoke-virtual {p0}, Lorg/checkerframework/com/github/javaparser/resolution/types/ResolvedReferenceType;->getQualifiedName()Ljava/lang/String;

    move-result-object v0

    const-class v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0

    .line 436
    :pswitch_4
    invoke-virtual {p0}, Lorg/checkerframework/com/github/javaparser/resolution/types/ResolvedReferenceType;->getQualifiedName()Ljava/lang/String;

    move-result-object v0

    const-class v1, Ljava/lang/Short;

    invoke-virtual {v1}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0

    .line 434
    :pswitch_5
    invoke-virtual {p0}, Lorg/checkerframework/com/github/javaparser/resolution/types/ResolvedReferenceType;->getQualifiedName()Ljava/lang/String;

    move-result-object v0

    const-class v1, Ljava/lang/Byte;

    invoke-virtual {v1}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0

    .line 432
    :pswitch_6
    invoke-virtual {p0}, Lorg/checkerframework/com/github/javaparser/resolution/types/ResolvedReferenceType;->getQualifiedName()Ljava/lang/String;

    move-result-object v0

    const-class v1, Ljava/lang/Character;

    invoke-virtual {v1}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0

    .line 430
    :pswitch_7
    invoke-virtual {p0}, Lorg/checkerframework/com/github/javaparser/resolution/types/ResolvedReferenceType;->getQualifiedName()Ljava/lang/String;

    move-result-object v0

    const-class v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0

    :sswitch_data_0
    .sparse-switch
        -0x4f08842f -> :sswitch_7
        0x197ef -> :sswitch_6
        0x2e6108 -> :sswitch_5
        0x2e9356 -> :sswitch_4
        0x32c67c -> :sswitch_3
        0x3db6c28 -> :sswitch_2
        0x5d0225c -> :sswitch_1
        0x685847c -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
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

.method public isRawType()Z
    .locals 6

    .line 347
    iget-object v0, p0, Lorg/checkerframework/com/github/javaparser/resolution/types/ResolvedReferenceType;->typeDeclaration:Lorg/checkerframework/com/github/javaparser/resolution/declarations/ResolvedReferenceTypeDeclaration;

    invoke-interface {v0}, Lorg/checkerframework/com/github/javaparser/resolution/declarations/ResolvedReferenceTypeDeclaration;->getTypeParameters()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_4

    .line 348
    invoke-virtual {p0}, Lorg/checkerframework/com/github/javaparser/resolution/types/ResolvedReferenceType;->typeParametersMap()Lorg/checkerframework/com/github/javaparser/resolution/types/parametrization/ResolvedTypeParametersMap;

    move-result-object v0

    invoke-virtual {v0}, Lorg/checkerframework/com/github/javaparser/resolution/types/parametrization/ResolvedTypeParametersMap;->isEmpty()Z

    move-result v0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    .line 349
    return v2

    .line 351
    :cond_0
    invoke-virtual {p0}, Lorg/checkerframework/com/github/javaparser/resolution/types/ResolvedReferenceType;->typeParametersMap()Lorg/checkerframework/com/github/javaparser/resolution/types/parametrization/ResolvedTypeParametersMap;

    move-result-object v0

    invoke-virtual {v0}, Lorg/checkerframework/com/github/javaparser/resolution/types/parametrization/ResolvedTypeParametersMap;->getNames()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 352
    .local v3, "name":Ljava/lang/String;
    invoke-virtual {p0}, Lorg/checkerframework/com/github/javaparser/resolution/types/ResolvedReferenceType;->typeParametersMap()Lorg/checkerframework/com/github/javaparser/resolution/types/parametrization/ResolvedTypeParametersMap;

    move-result-object v4

    invoke-virtual {v4, v3}, Lorg/checkerframework/com/github/javaparser/resolution/types/parametrization/ResolvedTypeParametersMap;->getValueBySignature(Ljava/lang/String;)Ljava/util/Optional;

    move-result-object v4

    .line 353
    .local v4, "value":Ljava/util/Optional;, "Ljava/util/Optional<Lorg/checkerframework/com/github/javaparser/resolution/types/ResolvedType;>;"
    invoke-virtual {v4}, Ljava/util/Optional;->isPresent()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-virtual {v4}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/checkerframework/com/github/javaparser/resolution/types/ResolvedType;

    invoke-interface {v5}, Lorg/checkerframework/com/github/javaparser/resolution/types/ResolvedType;->isTypeVariable()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-virtual {v4}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/checkerframework/com/github/javaparser/resolution/types/ResolvedType;

    invoke-interface {v5}, Lorg/checkerframework/com/github/javaparser/resolution/types/ResolvedType;->asTypeVariable()Lorg/checkerframework/com/github/javaparser/resolution/types/ResolvedTypeVariable;

    move-result-object v5

    invoke-virtual {v5}, Lorg/checkerframework/com/github/javaparser/resolution/types/ResolvedTypeVariable;->qualifiedName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    goto :goto_1

    .line 356
    .end local v3    # "name":Ljava/lang/String;
    .end local v4    # "value":Ljava/util/Optional;, "Ljava/util/Optional<Lorg/checkerframework/com/github/javaparser/resolution/types/ResolvedType;>;"
    :cond_1
    goto :goto_0

    .line 354
    .restart local v3    # "name":Ljava/lang/String;
    .restart local v4    # "value":Ljava/util/Optional;, "Ljava/util/Optional<Lorg/checkerframework/com/github/javaparser/resolution/types/ResolvedType;>;"
    :cond_2
    :goto_1
    return v1

    .line 357
    .end local v3    # "name":Ljava/lang/String;
    .end local v4    # "value":Ljava/util/Optional;, "Ljava/util/Optional<Lorg/checkerframework/com/github/javaparser/resolution/types/ResolvedType;>;"
    :cond_3
    return v2

    .line 359
    :cond_4
    return v1
.end method

.method public final isReferenceType()Z
    .locals 1

    .line 121
    const/4 v0, 0x1

    return v0
.end method

.method synthetic lambda$describe$0$org-checkerframework-com-github-javaparser-resolution-types-ResolvedReferenceType(Lorg/checkerframework/com/github/javaparser/resolution/declarations/ResolvedTypeParameterDeclaration;)Ljava/lang/String;
    .locals 1
    .param p1, "tp"    # Lorg/checkerframework/com/github/javaparser/resolution/declarations/ResolvedTypeParameterDeclaration;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "tp"
        }
    .end annotation

    .line 148
    invoke-virtual {p0}, Lorg/checkerframework/com/github/javaparser/resolution/types/ResolvedReferenceType;->typeParametersMap()Lorg/checkerframework/com/github/javaparser/resolution/types/parametrization/ResolvedTypeParametersMap;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/checkerframework/com/github/javaparser/resolution/types/parametrization/ResolvedTypeParametersMap;->getValue(Lorg/checkerframework/com/github/javaparser/resolution/declarations/ResolvedTypeParameterDeclaration;)Lorg/checkerframework/com/github/javaparser/resolution/types/ResolvedType;

    move-result-object v0

    invoke-interface {v0}, Lorg/checkerframework/com/github/javaparser/resolution/types/ResolvedType;->describe()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method synthetic lambda$typeParametersValues$3$org-checkerframework-com-github-javaparser-resolution-types-ResolvedReferenceType(Lorg/checkerframework/com/github/javaparser/resolution/declarations/ResolvedTypeParameterDeclaration;)Lorg/checkerframework/com/github/javaparser/resolution/types/ResolvedType;
    .locals 1
    .param p1, "tp"    # Lorg/checkerframework/com/github/javaparser/resolution/declarations/ResolvedTypeParameterDeclaration;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "tp"
        }
    .end annotation

    .line 269
    iget-object v0, p0, Lorg/checkerframework/com/github/javaparser/resolution/types/ResolvedReferenceType;->typeParametersMap:Lorg/checkerframework/com/github/javaparser/resolution/types/parametrization/ResolvedTypeParametersMap;

    invoke-virtual {v0, p1}, Lorg/checkerframework/com/github/javaparser/resolution/types/parametrization/ResolvedTypeParametersMap;->getValue(Lorg/checkerframework/com/github/javaparser/resolution/declarations/ResolvedTypeParameterDeclaration;)Lorg/checkerframework/com/github/javaparser/resolution/types/ResolvedType;

    move-result-object v0

    return-object v0
.end method

.method public replaceTypeVariables(Lorg/checkerframework/com/github/javaparser/resolution/declarations/ResolvedTypeParameterDeclaration;Lorg/checkerframework/com/github/javaparser/resolution/types/ResolvedType;Ljava/util/Map;)Lorg/checkerframework/com/github/javaparser/resolution/types/ResolvedType;
    .locals 7
    .param p1, "tpToReplace"    # Lorg/checkerframework/com/github/javaparser/resolution/declarations/ResolvedTypeParameterDeclaration;
    .param p2, "replaced"    # Lorg/checkerframework/com/github/javaparser/resolution/types/ResolvedType;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "tpToReplace",
            "replaced",
            "inferredTypes"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/checkerframework/com/github/javaparser/resolution/declarations/ResolvedTypeParameterDeclaration;",
            "Lorg/checkerframework/com/github/javaparser/resolution/types/ResolvedType;",
            "Ljava/util/Map<",
            "Lorg/checkerframework/com/github/javaparser/resolution/declarations/ResolvedTypeParameterDeclaration;",
            "Lorg/checkerframework/com/github/javaparser/resolution/types/ResolvedType;",
            ">;)",
            "Lorg/checkerframework/com/github/javaparser/resolution/types/ResolvedType;"
        }
    .end annotation

    .line 167
    .local p3, "inferredTypes":Ljava/util/Map;, "Ljava/util/Map<Lorg/checkerframework/com/github/javaparser/resolution/declarations/ResolvedTypeParameterDeclaration;Lorg/checkerframework/com/github/javaparser/resolution/types/ResolvedType;>;"
    if-eqz p2, :cond_3

    .line 171
    move-object v0, p0

    .line 172
    .local v0, "result":Lorg/checkerframework/com/github/javaparser/resolution/types/ResolvedReferenceType;
    const/4 v1, 0x0

    .line 173
    .local v1, "i":I
    invoke-virtual {p0}, Lorg/checkerframework/com/github/javaparser/resolution/types/ResolvedReferenceType;->typeParametersValues()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/checkerframework/com/github/javaparser/resolution/types/ResolvedType;

    .line 174
    .local v3, "tp":Lorg/checkerframework/com/github/javaparser/resolution/types/ResolvedType;
    invoke-interface {v3, p1, p2, p3}, Lorg/checkerframework/com/github/javaparser/resolution/types/ResolvedType;->replaceTypeVariables(Lorg/checkerframework/com/github/javaparser/resolution/declarations/ResolvedTypeParameterDeclaration;Lorg/checkerframework/com/github/javaparser/resolution/types/ResolvedType;Ljava/util/Map;)Lorg/checkerframework/com/github/javaparser/resolution/types/ResolvedType;

    move-result-object v4

    .line 176
    .local v4, "transformedTp":Lorg/checkerframework/com/github/javaparser/resolution/types/ResolvedType;
    invoke-interface {v3}, Lorg/checkerframework/com/github/javaparser/resolution/types/ResolvedType;->isTypeVariable()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v3}, Lorg/checkerframework/com/github/javaparser/resolution/types/ResolvedType;->asTypeVariable()Lorg/checkerframework/com/github/javaparser/resolution/types/ResolvedTypeVariable;

    move-result-object v5

    invoke-virtual {v5}, Lorg/checkerframework/com/github/javaparser/resolution/types/ResolvedTypeVariable;->describe()Ljava/lang/String;

    move-result-object v5

    invoke-interface {p1}, Lorg/checkerframework/com/github/javaparser/resolution/declarations/ResolvedTypeParameterDeclaration;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 177
    invoke-interface {v3}, Lorg/checkerframework/com/github/javaparser/resolution/types/ResolvedType;->asTypeParameter()Lorg/checkerframework/com/github/javaparser/resolution/declarations/ResolvedTypeParameterDeclaration;

    move-result-object v5

    invoke-interface {p3, v5, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 181
    :cond_0
    invoke-virtual {v0}, Lorg/checkerframework/com/github/javaparser/resolution/types/ResolvedReferenceType;->asReferenceType()Lorg/checkerframework/com/github/javaparser/resolution/types/ResolvedReferenceType;

    move-result-object v5

    invoke-virtual {v5}, Lorg/checkerframework/com/github/javaparser/resolution/types/ResolvedReferenceType;->typeParametersValues()Ljava/util/List;

    move-result-object v5

    .line 182
    .local v5, "typeParametersCorrected":Ljava/util/List;, "Ljava/util/List<Lorg/checkerframework/com/github/javaparser/resolution/types/ResolvedType;>;"
    invoke-interface {v5, v1, v4}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 183
    iget-object v6, p0, Lorg/checkerframework/com/github/javaparser/resolution/types/ResolvedReferenceType;->typeDeclaration:Lorg/checkerframework/com/github/javaparser/resolution/declarations/ResolvedReferenceTypeDeclaration;

    invoke-virtual {p0, v6, v5}, Lorg/checkerframework/com/github/javaparser/resolution/types/ResolvedReferenceType;->create(Lorg/checkerframework/com/github/javaparser/resolution/declarations/ResolvedReferenceTypeDeclaration;Ljava/util/List;)Lorg/checkerframework/com/github/javaparser/resolution/types/ResolvedReferenceType;

    move-result-object v0

    .line 185
    .end local v5    # "typeParametersCorrected":Ljava/util/List;, "Ljava/util/List<Lorg/checkerframework/com/github/javaparser/resolution/types/ResolvedType;>;"
    nop

    .end local v3    # "tp":Lorg/checkerframework/com/github/javaparser/resolution/types/ResolvedType;
    .end local v4    # "transformedTp":Lorg/checkerframework/com/github/javaparser/resolution/types/ResolvedType;
    add-int/lit8 v1, v1, 0x1

    .line 186
    goto :goto_0

    .line 188
    :cond_1
    invoke-virtual {v0}, Lorg/checkerframework/com/github/javaparser/resolution/types/ResolvedReferenceType;->typeParametersValues()Ljava/util/List;

    move-result-object v2

    .line 190
    .local v2, "values":Ljava/util/List;, "Ljava/util/List<Lorg/checkerframework/com/github/javaparser/resolution/types/ResolvedType;>;"
    invoke-interface {v2, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 191
    invoke-interface {v2, p1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v3

    .line 192
    .local v3, "index":I
    invoke-interface {v2, v3, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 193
    invoke-virtual {v0}, Lorg/checkerframework/com/github/javaparser/resolution/types/ResolvedReferenceType;->getTypeDeclaration()Lorg/checkerframework/com/github/javaparser/resolution/declarations/ResolvedReferenceTypeDeclaration;

    move-result-object v4

    invoke-virtual {p0, v4, v2}, Lorg/checkerframework/com/github/javaparser/resolution/types/ResolvedReferenceType;->create(Lorg/checkerframework/com/github/javaparser/resolution/declarations/ResolvedReferenceTypeDeclaration;Ljava/util/List;)Lorg/checkerframework/com/github/javaparser/resolution/types/ResolvedReferenceType;

    move-result-object v4

    return-object v4

    .line 196
    .end local v3    # "index":I
    :cond_2
    return-object v0

    .line 168
    .end local v0    # "result":Lorg/checkerframework/com/github/javaparser/resolution/types/ResolvedReferenceType;
    .end local v1    # "i":I
    .end local v2    # "values":Ljava/util/List;, "Ljava/util/List<Lorg/checkerframework/com/github/javaparser/resolution/types/ResolvedType;>;"
    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0
.end method

.method public abstract toRawType()Lorg/checkerframework/com/github/javaparser/resolution/types/ResolvedType;
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 110
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ReferenceType{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lorg/checkerframework/com/github/javaparser/resolution/types/ResolvedReferenceType;->getQualifiedName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", typeParametersMap="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/checkerframework/com/github/javaparser/resolution/types/ResolvedReferenceType;->typeParametersMap:Lorg/checkerframework/com/github/javaparser/resolution/types/parametrization/ResolvedTypeParametersMap;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public abstract transformTypeParameters(Lorg/checkerframework/com/github/javaparser/resolution/types/ResolvedTypeTransformer;)Lorg/checkerframework/com/github/javaparser/resolution/types/ResolvedType;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "transformer"
        }
    .end annotation
.end method

.method public typeParamValue(Lorg/checkerframework/com/github/javaparser/resolution/declarations/ResolvedTypeParameterDeclaration;)Ljava/util/Optional;
    .locals 5
    .param p1, "typeParameterDeclaration"    # Lorg/checkerframework/com/github/javaparser/resolution/declarations/ResolvedTypeParameterDeclaration;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "typeParameterDeclaration"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/checkerframework/com/github/javaparser/resolution/declarations/ResolvedTypeParameterDeclaration;",
            ")",
            "Ljava/util/Optional<",
            "Lorg/checkerframework/com/github/javaparser/resolution/types/ResolvedType;",
            ">;"
        }
    .end annotation

    .line 363
    invoke-interface {p1}, Lorg/checkerframework/com/github/javaparser/resolution/declarations/ResolvedTypeParameterDeclaration;->declaredOnMethod()Z

    move-result v0

    if-nez v0, :cond_3

    .line 366
    invoke-virtual {p0}, Lorg/checkerframework/com/github/javaparser/resolution/types/ResolvedReferenceType;->getTypeDeclaration()Lorg/checkerframework/com/github/javaparser/resolution/declarations/ResolvedReferenceTypeDeclaration;

    move-result-object v0

    invoke-interface {v0}, Lorg/checkerframework/com/github/javaparser/resolution/declarations/ResolvedReferenceTypeDeclaration;->getId()Ljava/lang/String;

    move-result-object v0

    .line 367
    .local v0, "typeId":Ljava/lang/String;
    invoke-interface {p1}, Lorg/checkerframework/com/github/javaparser/resolution/declarations/ResolvedTypeParameterDeclaration;->getContainerId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 368
    invoke-virtual {p0}, Lorg/checkerframework/com/github/javaparser/resolution/types/ResolvedReferenceType;->typeParametersMap()Lorg/checkerframework/com/github/javaparser/resolution/types/parametrization/ResolvedTypeParametersMap;

    move-result-object v1

    invoke-virtual {v1, p1}, Lorg/checkerframework/com/github/javaparser/resolution/types/parametrization/ResolvedTypeParametersMap;->getValue(Lorg/checkerframework/com/github/javaparser/resolution/declarations/ResolvedTypeParameterDeclaration;)Lorg/checkerframework/com/github/javaparser/resolution/types/ResolvedType;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Optional;->of(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v1

    return-object v1

    .line 370
    :cond_0
    invoke-virtual {p0}, Lorg/checkerframework/com/github/javaparser/resolution/types/ResolvedReferenceType;->getAllAncestors()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/checkerframework/com/github/javaparser/resolution/types/ResolvedReferenceType;

    .line 371
    .local v2, "ancestor":Lorg/checkerframework/com/github/javaparser/resolution/types/ResolvedReferenceType;
    invoke-virtual {v2}, Lorg/checkerframework/com/github/javaparser/resolution/types/ResolvedReferenceType;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-interface {p1}, Lorg/checkerframework/com/github/javaparser/resolution/declarations/ResolvedTypeParameterDeclaration;->getContainerId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 372
    invoke-virtual {v2}, Lorg/checkerframework/com/github/javaparser/resolution/types/ResolvedReferenceType;->typeParametersMap()Lorg/checkerframework/com/github/javaparser/resolution/types/parametrization/ResolvedTypeParametersMap;

    move-result-object v1

    invoke-virtual {v1, p1}, Lorg/checkerframework/com/github/javaparser/resolution/types/parametrization/ResolvedTypeParametersMap;->getValue(Lorg/checkerframework/com/github/javaparser/resolution/declarations/ResolvedTypeParameterDeclaration;)Lorg/checkerframework/com/github/javaparser/resolution/types/ResolvedType;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Optional;->of(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v1

    return-object v1

    .line 374
    .end local v2    # "ancestor":Lorg/checkerframework/com/github/javaparser/resolution/types/ResolvedReferenceType;
    :cond_1
    goto :goto_0

    .line 375
    :cond_2
    invoke-static {}, Ljava/util/Optional;->empty()Ljava/util/Optional;

    move-result-object v1

    return-object v1

    .line 364
    .end local v0    # "typeId":Ljava/lang/String;
    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0
.end method

.method public typeParametersMap()Lorg/checkerframework/com/github/javaparser/resolution/types/parametrization/ResolvedTypeParametersMap;
    .locals 1

    .line 288
    iget-object v0, p0, Lorg/checkerframework/com/github/javaparser/resolution/types/ResolvedReferenceType;->typeParametersMap:Lorg/checkerframework/com/github/javaparser/resolution/types/parametrization/ResolvedTypeParametersMap;

    return-object v0
.end method

.method public typeParametersValues()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/checkerframework/com/github/javaparser/resolution/types/ResolvedType;",
            ">;"
        }
    .end annotation

    .line 269
    iget-object v0, p0, Lorg/checkerframework/com/github/javaparser/resolution/types/ResolvedReferenceType;->typeParametersMap:Lorg/checkerframework/com/github/javaparser/resolution/types/parametrization/ResolvedTypeParametersMap;

    invoke-virtual {v0}, Lorg/checkerframework/com/github/javaparser/resolution/types/parametrization/ResolvedTypeParametersMap;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lorg/checkerframework/com/github/javaparser/resolution/types/ResolvedReferenceType;->typeDeclaration:Lorg/checkerframework/com/github/javaparser/resolution/declarations/ResolvedReferenceTypeDeclaration;

    invoke-interface {v0}, Lorg/checkerframework/com/github/javaparser/resolution/declarations/ResolvedReferenceTypeDeclaration;->getTypeParameters()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lorg/checkerframework/com/github/javaparser/resolution/types/ResolvedReferenceType$$ExternalSyntheticLambda3;

    invoke-direct {v1, p0}, Lorg/checkerframework/com/github/javaparser/resolution/types/ResolvedReferenceType$$ExternalSyntheticLambda3;-><init>(Lorg/checkerframework/com/github/javaparser/resolution/types/ResolvedReferenceType;)V

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v0

    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    :goto_0
    return-object v0
.end method
