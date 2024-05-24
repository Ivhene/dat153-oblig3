.class public Lorg/checkerframework/com/github/javaparser/resolution/types/ResolvedArrayType;
.super Ljava/lang/Object;
.source "ResolvedArrayType.java"

# interfaces
.implements Lorg/checkerframework/com/github/javaparser/resolution/types/ResolvedType;


# instance fields
.field private baseType:Lorg/checkerframework/com/github/javaparser/resolution/types/ResolvedType;


# direct methods
.method public constructor <init>(Lorg/checkerframework/com/github/javaparser/resolution/types/ResolvedType;)V
    .locals 0
    .param p1, "baseType"    # Lorg/checkerframework/com/github/javaparser/resolution/types/ResolvedType;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "baseType"
        }
    .end annotation

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    iput-object p1, p0, Lorg/checkerframework/com/github/javaparser/resolution/types/ResolvedArrayType;->baseType:Lorg/checkerframework/com/github/javaparser/resolution/types/ResolvedType;

    .line 39
    return-void
.end method


# virtual methods
.method public asArrayType()Lorg/checkerframework/com/github/javaparser/resolution/types/ResolvedArrayType;
    .locals 0

    .line 73
    return-object p0
.end method

.method public describe()Ljava/lang/String;
    .locals 2

    .line 83
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lorg/checkerframework/com/github/javaparser/resolution/types/ResolvedArrayType;->baseType:Lorg/checkerframework/com/github/javaparser/resolution/types/ResolvedType;

    invoke-interface {v1}, Lorg/checkerframework/com/github/javaparser/resolution/types/ResolvedType;->describe()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "[]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
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

    .line 47
    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    .line 48
    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_3

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_0

    .line 50
    :cond_1
    move-object v2, p1

    check-cast v2, Lorg/checkerframework/com/github/javaparser/resolution/types/ResolvedArrayType;

    .line 52
    .local v2, "that":Lorg/checkerframework/com/github/javaparser/resolution/types/ResolvedArrayType;
    iget-object v3, p0, Lorg/checkerframework/com/github/javaparser/resolution/types/ResolvedArrayType;->baseType:Lorg/checkerframework/com/github/javaparser/resolution/types/ResolvedType;

    iget-object v4, v2, Lorg/checkerframework/com/github/javaparser/resolution/types/ResolvedArrayType;->baseType:Lorg/checkerframework/com/github/javaparser/resolution/types/ResolvedType;

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    return v1

    .line 54
    :cond_2
    return v0

    .line 48
    .end local v2    # "that":Lorg/checkerframework/com/github/javaparser/resolution/types/ResolvedArrayType;
    :cond_3
    :goto_0
    return v1
.end method

.method public getComponentType()Lorg/checkerframework/com/github/javaparser/resolution/types/ResolvedType;
    .locals 1

    .line 87
    iget-object v0, p0, Lorg/checkerframework/com/github/javaparser/resolution/types/ResolvedArrayType;->baseType:Lorg/checkerframework/com/github/javaparser/resolution/types/ResolvedType;

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    .line 59
    iget-object v0, p0, Lorg/checkerframework/com/github/javaparser/resolution/types/ResolvedArrayType;->baseType:Lorg/checkerframework/com/github/javaparser/resolution/types/ResolvedType;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method

.method public isArray()Z
    .locals 1

    .line 78
    const/4 v0, 0x1

    return v0
.end method

.method public isAssignableBy(Lorg/checkerframework/com/github/javaparser/resolution/types/ResolvedType;)Z
    .locals 2
    .param p1, "other"    # Lorg/checkerframework/com/github/javaparser/resolution/types/ResolvedType;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "other"
        }
    .end annotation

    .line 92
    invoke-interface {p1}, Lorg/checkerframework/com/github/javaparser/resolution/types/ResolvedType;->isArray()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 93
    iget-object v0, p0, Lorg/checkerframework/com/github/javaparser/resolution/types/ResolvedArrayType;->baseType:Lorg/checkerframework/com/github/javaparser/resolution/types/ResolvedType;

    invoke-interface {v0}, Lorg/checkerframework/com/github/javaparser/resolution/types/ResolvedType;->isPrimitive()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Lorg/checkerframework/com/github/javaparser/resolution/types/ResolvedType;->asArrayType()Lorg/checkerframework/com/github/javaparser/resolution/types/ResolvedArrayType;

    move-result-object v0

    invoke-virtual {v0}, Lorg/checkerframework/com/github/javaparser/resolution/types/ResolvedArrayType;->getComponentType()Lorg/checkerframework/com/github/javaparser/resolution/types/ResolvedType;

    move-result-object v0

    invoke-interface {v0}, Lorg/checkerframework/com/github/javaparser/resolution/types/ResolvedType;->isPrimitive()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 94
    iget-object v0, p0, Lorg/checkerframework/com/github/javaparser/resolution/types/ResolvedArrayType;->baseType:Lorg/checkerframework/com/github/javaparser/resolution/types/ResolvedType;

    invoke-interface {p1}, Lorg/checkerframework/com/github/javaparser/resolution/types/ResolvedType;->asArrayType()Lorg/checkerframework/com/github/javaparser/resolution/types/ResolvedArrayType;

    move-result-object v1

    invoke-virtual {v1}, Lorg/checkerframework/com/github/javaparser/resolution/types/ResolvedArrayType;->getComponentType()Lorg/checkerframework/com/github/javaparser/resolution/types/ResolvedType;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0

    .line 96
    :cond_0
    iget-object v0, p0, Lorg/checkerframework/com/github/javaparser/resolution/types/ResolvedArrayType;->baseType:Lorg/checkerframework/com/github/javaparser/resolution/types/ResolvedType;

    invoke-interface {p1}, Lorg/checkerframework/com/github/javaparser/resolution/types/ResolvedType;->asArrayType()Lorg/checkerframework/com/github/javaparser/resolution/types/ResolvedArrayType;

    move-result-object v1

    invoke-virtual {v1}, Lorg/checkerframework/com/github/javaparser/resolution/types/ResolvedArrayType;->getComponentType()Lorg/checkerframework/com/github/javaparser/resolution/types/ResolvedType;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/checkerframework/com/github/javaparser/resolution/types/ResolvedType;->isAssignableBy(Lorg/checkerframework/com/github/javaparser/resolution/types/ResolvedType;)Z

    move-result v0

    return v0

    .line 97
    :cond_1
    invoke-interface {p1}, Lorg/checkerframework/com/github/javaparser/resolution/types/ResolvedType;->isNull()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 98
    const/4 v0, 0x1

    return v0

    .line 100
    :cond_2
    const/4 v0, 0x0

    return v0
.end method

.method public replaceTypeVariables(Lorg/checkerframework/com/github/javaparser/resolution/declarations/ResolvedTypeParameterDeclaration;Lorg/checkerframework/com/github/javaparser/resolution/types/ResolvedType;Ljava/util/Map;)Lorg/checkerframework/com/github/javaparser/resolution/types/ResolvedType;
    .locals 2
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

    .line 105
    .local p3, "inferredTypes":Ljava/util/Map;, "Ljava/util/Map<Lorg/checkerframework/com/github/javaparser/resolution/declarations/ResolvedTypeParameterDeclaration;Lorg/checkerframework/com/github/javaparser/resolution/types/ResolvedType;>;"
    iget-object v0, p0, Lorg/checkerframework/com/github/javaparser/resolution/types/ResolvedArrayType;->baseType:Lorg/checkerframework/com/github/javaparser/resolution/types/ResolvedType;

    invoke-interface {v0, p1, p2, p3}, Lorg/checkerframework/com/github/javaparser/resolution/types/ResolvedType;->replaceTypeVariables(Lorg/checkerframework/com/github/javaparser/resolution/declarations/ResolvedTypeParameterDeclaration;Lorg/checkerframework/com/github/javaparser/resolution/types/ResolvedType;Ljava/util/Map;)Lorg/checkerframework/com/github/javaparser/resolution/types/ResolvedType;

    move-result-object v0

    .line 106
    .local v0, "baseTypeReplaced":Lorg/checkerframework/com/github/javaparser/resolution/types/ResolvedType;
    iget-object v1, p0, Lorg/checkerframework/com/github/javaparser/resolution/types/ResolvedArrayType;->baseType:Lorg/checkerframework/com/github/javaparser/resolution/types/ResolvedType;

    if-ne v0, v1, :cond_0

    .line 107
    return-object p0

    .line 109
    :cond_0
    new-instance v1, Lorg/checkerframework/com/github/javaparser/resolution/types/ResolvedArrayType;

    invoke-direct {v1, v0}, Lorg/checkerframework/com/github/javaparser/resolution/types/ResolvedArrayType;-><init>(Lorg/checkerframework/com/github/javaparser/resolution/types/ResolvedType;)V

    return-object v1
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 64
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ResolvedArrayType{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/checkerframework/com/github/javaparser/resolution/types/ResolvedArrayType;->baseType:Lorg/checkerframework/com/github/javaparser/resolution/types/ResolvedType;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
