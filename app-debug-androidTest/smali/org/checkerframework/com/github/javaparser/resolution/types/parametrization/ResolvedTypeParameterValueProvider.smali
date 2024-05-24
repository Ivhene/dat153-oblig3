.class public interface abstract Lorg/checkerframework/com/github/javaparser/resolution/types/parametrization/ResolvedTypeParameterValueProvider;
.super Ljava/lang/Object;
.source "ResolvedTypeParameterValueProvider.java"


# virtual methods
.method public abstract getGenericParameterByName(Ljava/lang/String;)Ljava/util/Optional;
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
.end method

.method public abstract typeParamValue(Lorg/checkerframework/com/github/javaparser/resolution/declarations/ResolvedTypeParameterDeclaration;)Ljava/util/Optional;
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
.end method

.method public useThisTypeParametersOnTheGivenType(Lorg/checkerframework/com/github/javaparser/resolution/types/ResolvedType;)Lorg/checkerframework/com/github/javaparser/resolution/types/ResolvedType;
    .locals 3
    .param p1, "type"    # Lorg/checkerframework/com/github/javaparser/resolution/types/ResolvedType;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "type"
        }
    .end annotation

    .line 46
    invoke-interface {p1}, Lorg/checkerframework/com/github/javaparser/resolution/types/ResolvedType;->isTypeVariable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 47
    invoke-interface {p1}, Lorg/checkerframework/com/github/javaparser/resolution/types/ResolvedType;->asTypeParameter()Lorg/checkerframework/com/github/javaparser/resolution/declarations/ResolvedTypeParameterDeclaration;

    move-result-object v0

    .line 48
    .local v0, "typeParameter":Lorg/checkerframework/com/github/javaparser/resolution/declarations/ResolvedTypeParameterDeclaration;
    invoke-interface {v0}, Lorg/checkerframework/com/github/javaparser/resolution/declarations/ResolvedTypeParameterDeclaration;->declaredOnType()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 49
    invoke-interface {p0, v0}, Lorg/checkerframework/com/github/javaparser/resolution/types/parametrization/ResolvedTypeParameterValueProvider;->typeParamValue(Lorg/checkerframework/com/github/javaparser/resolution/declarations/ResolvedTypeParameterDeclaration;)Ljava/util/Optional;

    move-result-object v1

    .line 50
    .local v1, "typeParam":Ljava/util/Optional;, "Ljava/util/Optional<Lorg/checkerframework/com/github/javaparser/resolution/types/ResolvedType;>;"
    invoke-virtual {v1}, Ljava/util/Optional;->isPresent()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 51
    invoke-virtual {v1}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object v2

    move-object p1, v2

    check-cast p1, Lorg/checkerframework/com/github/javaparser/resolution/types/ResolvedType;

    .line 56
    .end local v0    # "typeParameter":Lorg/checkerframework/com/github/javaparser/resolution/declarations/ResolvedTypeParameterDeclaration;
    .end local v1    # "typeParam":Ljava/util/Optional;, "Ljava/util/Optional<Lorg/checkerframework/com/github/javaparser/resolution/types/ResolvedType;>;"
    :cond_0
    invoke-interface {p1}, Lorg/checkerframework/com/github/javaparser/resolution/types/ResolvedType;->isWildcard()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p1}, Lorg/checkerframework/com/github/javaparser/resolution/types/ResolvedType;->asWildcard()Lorg/checkerframework/com/github/javaparser/resolution/types/ResolvedWildcard;

    move-result-object v0

    invoke-virtual {v0}, Lorg/checkerframework/com/github/javaparser/resolution/types/ResolvedWildcard;->isBounded()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 57
    invoke-interface {p1}, Lorg/checkerframework/com/github/javaparser/resolution/types/ResolvedType;->asWildcard()Lorg/checkerframework/com/github/javaparser/resolution/types/ResolvedWildcard;

    move-result-object v0

    invoke-virtual {v0}, Lorg/checkerframework/com/github/javaparser/resolution/types/ResolvedWildcard;->isExtends()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 58
    invoke-interface {p1}, Lorg/checkerframework/com/github/javaparser/resolution/types/ResolvedType;->asWildcard()Lorg/checkerframework/com/github/javaparser/resolution/types/ResolvedWildcard;

    move-result-object v0

    invoke-virtual {v0}, Lorg/checkerframework/com/github/javaparser/resolution/types/ResolvedWildcard;->getBoundedType()Lorg/checkerframework/com/github/javaparser/resolution/types/ResolvedType;

    move-result-object v0

    invoke-interface {p0, v0}, Lorg/checkerframework/com/github/javaparser/resolution/types/parametrization/ResolvedTypeParameterValueProvider;->useThisTypeParametersOnTheGivenType(Lorg/checkerframework/com/github/javaparser/resolution/types/ResolvedType;)Lorg/checkerframework/com/github/javaparser/resolution/types/ResolvedType;

    move-result-object v0

    invoke-static {v0}, Lorg/checkerframework/com/github/javaparser/resolution/types/ResolvedWildcard;->extendsBound(Lorg/checkerframework/com/github/javaparser/resolution/types/ResolvedType;)Lorg/checkerframework/com/github/javaparser/resolution/types/ResolvedWildcard;

    move-result-object v0

    return-object v0

    .line 60
    :cond_1
    invoke-interface {p1}, Lorg/checkerframework/com/github/javaparser/resolution/types/ResolvedType;->asWildcard()Lorg/checkerframework/com/github/javaparser/resolution/types/ResolvedWildcard;

    move-result-object v0

    invoke-virtual {v0}, Lorg/checkerframework/com/github/javaparser/resolution/types/ResolvedWildcard;->getBoundedType()Lorg/checkerframework/com/github/javaparser/resolution/types/ResolvedType;

    move-result-object v0

    invoke-interface {p0, v0}, Lorg/checkerframework/com/github/javaparser/resolution/types/parametrization/ResolvedTypeParameterValueProvider;->useThisTypeParametersOnTheGivenType(Lorg/checkerframework/com/github/javaparser/resolution/types/ResolvedType;)Lorg/checkerframework/com/github/javaparser/resolution/types/ResolvedType;

    move-result-object v0

    invoke-static {v0}, Lorg/checkerframework/com/github/javaparser/resolution/types/ResolvedWildcard;->superBound(Lorg/checkerframework/com/github/javaparser/resolution/types/ResolvedType;)Lorg/checkerframework/com/github/javaparser/resolution/types/ResolvedWildcard;

    move-result-object v0

    return-object v0

    .line 64
    :cond_2
    invoke-interface {p1}, Lorg/checkerframework/com/github/javaparser/resolution/types/ResolvedType;->isReferenceType()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 65
    invoke-interface {p1}, Lorg/checkerframework/com/github/javaparser/resolution/types/ResolvedType;->asReferenceType()Lorg/checkerframework/com/github/javaparser/resolution/types/ResolvedReferenceType;

    move-result-object v0

    new-instance v1, Lorg/checkerframework/com/github/javaparser/resolution/types/parametrization/ResolvedTypeParameterValueProvider$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lorg/checkerframework/com/github/javaparser/resolution/types/parametrization/ResolvedTypeParameterValueProvider$$ExternalSyntheticLambda0;-><init>(Lorg/checkerframework/com/github/javaparser/resolution/types/parametrization/ResolvedTypeParameterValueProvider;)V

    invoke-virtual {v0, v1}, Lorg/checkerframework/com/github/javaparser/resolution/types/ResolvedReferenceType;->transformTypeParameters(Lorg/checkerframework/com/github/javaparser/resolution/types/ResolvedTypeTransformer;)Lorg/checkerframework/com/github/javaparser/resolution/types/ResolvedType;

    move-result-object p1

    .line 68
    :cond_3
    return-object p1
.end method
