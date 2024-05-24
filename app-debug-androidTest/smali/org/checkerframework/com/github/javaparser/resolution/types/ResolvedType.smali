.class public interface abstract Lorg/checkerframework/com/github/javaparser/resolution/types/ResolvedType;
.super Ljava/lang/Object;
.source "ResolvedType.java"


# virtual methods
.method public arrayLevel()I
    .locals 1

    .line 54
    invoke-interface {p0}, Lorg/checkerframework/com/github/javaparser/resolution/types/ResolvedType;->isArray()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 55
    invoke-interface {p0}, Lorg/checkerframework/com/github/javaparser/resolution/types/ResolvedType;->asArrayType()Lorg/checkerframework/com/github/javaparser/resolution/types/ResolvedArrayType;

    move-result-object v0

    invoke-virtual {v0}, Lorg/checkerframework/com/github/javaparser/resolution/types/ResolvedArrayType;->getComponentType()Lorg/checkerframework/com/github/javaparser/resolution/types/ResolvedType;

    move-result-object v0

    invoke-interface {v0}, Lorg/checkerframework/com/github/javaparser/resolution/types/ResolvedType;->arrayLevel()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    return v0

    .line 57
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public asArrayType()Lorg/checkerframework/com/github/javaparser/resolution/types/ResolvedArrayType;
    .locals 3

    .line 119
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "%s is not an Array"

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object v2

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public asConstraintType()Lorg/checkerframework/com/github/javaparser/resolution/types/ResolvedLambdaConstraintType;
    .locals 3

    .line 143
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "%s is not a constraint type"

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object v2

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public asPrimitive()Lorg/checkerframework/com/github/javaparser/resolution/types/ResolvedPrimitiveType;
    .locals 3

    .line 135
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "%s is not a Primitive type"

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object v2

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public asReferenceType()Lorg/checkerframework/com/github/javaparser/resolution/types/ResolvedReferenceType;
    .locals 3

    .line 123
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "%s is not a Reference Type"

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object v2

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public asTypeParameter()Lorg/checkerframework/com/github/javaparser/resolution/declarations/ResolvedTypeParameterDeclaration;
    .locals 3

    .line 127
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "%s is not a Type parameter"

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object v2

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public asTypeVariable()Lorg/checkerframework/com/github/javaparser/resolution/types/ResolvedTypeVariable;
    .locals 3

    .line 131
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "%s is not a Type variable"

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object v2

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public asUnionType()Lorg/checkerframework/com/github/javaparser/resolution/types/ResolvedUnionType;
    .locals 3

    .line 147
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "%s is not a union type"

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object v2

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public asWildcard()Lorg/checkerframework/com/github/javaparser/resolution/types/ResolvedWildcard;
    .locals 3

    .line 139
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "%s is not a Wildcard"

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object v2

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public abstract describe()Ljava/lang/String;
.end method

.method public isArray()Z
    .locals 1

    .line 50
    const/4 v0, 0x0

    return v0
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

.method public isConstraint()Z
    .locals 1

    .line 92
    const/4 v0, 0x0

    return v0
.end method

.method public isNull()Z
    .locals 1

    .line 72
    const/4 v0, 0x0

    return v0
.end method

.method public isPrimitive()Z
    .locals 1

    .line 65
    const/4 v0, 0x0

    return v0
.end method

.method public isReference()Z
    .locals 1

    .line 86
    invoke-interface {p0}, Lorg/checkerframework/com/github/javaparser/resolution/types/ResolvedType;->isReferenceType()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-interface {p0}, Lorg/checkerframework/com/github/javaparser/resolution/types/ResolvedType;->isArray()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-interface {p0}, Lorg/checkerframework/com/github/javaparser/resolution/types/ResolvedType;->isTypeVariable()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-interface {p0}, Lorg/checkerframework/com/github/javaparser/resolution/types/ResolvedType;->isNull()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-interface {p0}, Lorg/checkerframework/com/github/javaparser/resolution/types/ResolvedType;->isWildcard()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-interface {p0}, Lorg/checkerframework/com/github/javaparser/resolution/types/ResolvedType;->isUnionType()Z

    move-result v0

    if-eqz v0, :cond_0

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

.method public isReferenceType()Z
    .locals 1

    .line 99
    const/4 v0, 0x0

    return v0
.end method

.method public isTypeVariable()Z
    .locals 1

    .line 107
    const/4 v0, 0x0

    return v0
.end method

.method public isUnionType()Z
    .locals 1

    .line 79
    const/4 v0, 0x0

    return v0
.end method

.method public isVoid()Z
    .locals 1

    .line 103
    const/4 v0, 0x0

    return v0
.end method

.method public isWildcard()Z
    .locals 1

    .line 111
    const/4 v0, 0x0

    return v0
.end method

.method public mention(Ljava/util/List;)Z
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "typeParameters"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lorg/checkerframework/com/github/javaparser/resolution/declarations/ResolvedTypeParameterDeclaration;",
            ">;)Z"
        }
    .end annotation

    .line 180
    .local p1, "typeParameters":Ljava/util/List;, "Ljava/util/List<Lorg/checkerframework/com/github/javaparser/resolution/declarations/ResolvedTypeParameterDeclaration;>;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public replaceTypeVariables(Lorg/checkerframework/com/github/javaparser/resolution/declarations/ResolvedTypeParameterDeclaration;Lorg/checkerframework/com/github/javaparser/resolution/types/ResolvedType;)Lorg/checkerframework/com/github/javaparser/resolution/types/ResolvedType;
    .locals 1
    .param p1, "tp"    # Lorg/checkerframework/com/github/javaparser/resolution/declarations/ResolvedTypeParameterDeclaration;
    .param p2, "replaced"    # Lorg/checkerframework/com/github/javaparser/resolution/types/ResolvedType;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "tp",
            "replaced"
        }
    .end annotation

    .line 173
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-interface {p0, p1, p2, v0}, Lorg/checkerframework/com/github/javaparser/resolution/types/ResolvedType;->replaceTypeVariables(Lorg/checkerframework/com/github/javaparser/resolution/declarations/ResolvedTypeParameterDeclaration;Lorg/checkerframework/com/github/javaparser/resolution/types/ResolvedType;Ljava/util/Map;)Lorg/checkerframework/com/github/javaparser/resolution/types/ResolvedType;

    move-result-object v0

    return-object v0
.end method

.method public replaceTypeVariables(Lorg/checkerframework/com/github/javaparser/resolution/declarations/ResolvedTypeParameterDeclaration;Lorg/checkerframework/com/github/javaparser/resolution/types/ResolvedType;Ljava/util/Map;)Lorg/checkerframework/com/github/javaparser/resolution/types/ResolvedType;
    .locals 0
    .param p1, "tp"    # Lorg/checkerframework/com/github/javaparser/resolution/declarations/ResolvedTypeParameterDeclaration;
    .param p2, "replaced"    # Lorg/checkerframework/com/github/javaparser/resolution/types/ResolvedType;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "tp",
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

    .line 166
    .local p3, "inferredTypes":Ljava/util/Map;, "Ljava/util/Map<Lorg/checkerframework/com/github/javaparser/resolution/declarations/ResolvedTypeParameterDeclaration;Lorg/checkerframework/com/github/javaparser/resolution/types/ResolvedType;>;"
    return-object p0
.end method
