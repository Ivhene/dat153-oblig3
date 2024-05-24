.class public interface abstract Lorg/checkerframework/com/github/javaparser/resolution/declarations/ResolvedParameterDeclaration;
.super Ljava/lang/Object;
.source "ResolvedParameterDeclaration.java"

# interfaces
.implements Lorg/checkerframework/com/github/javaparser/resolution/declarations/ResolvedValueDeclaration;


# virtual methods
.method public asParameter()Lorg/checkerframework/com/github/javaparser/resolution/declarations/ResolvedParameterDeclaration;
    .locals 0

    .line 45
    return-object p0
.end method

.method public describeType()Ljava/lang/String;
    .locals 2

    .line 58
    invoke-interface {p0}, Lorg/checkerframework/com/github/javaparser/resolution/declarations/ResolvedParameterDeclaration;->isVariadic()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 59
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {p0}, Lorg/checkerframework/com/github/javaparser/resolution/declarations/ResolvedParameterDeclaration;->getType()Lorg/checkerframework/com/github/javaparser/resolution/types/ResolvedType;

    move-result-object v1

    invoke-interface {v1}, Lorg/checkerframework/com/github/javaparser/resolution/types/ResolvedType;->asArrayType()Lorg/checkerframework/com/github/javaparser/resolution/types/ResolvedArrayType;

    move-result-object v1

    invoke-virtual {v1}, Lorg/checkerframework/com/github/javaparser/resolution/types/ResolvedArrayType;->getComponentType()Lorg/checkerframework/com/github/javaparser/resolution/types/ResolvedType;

    move-result-object v1

    invoke-interface {v1}, Lorg/checkerframework/com/github/javaparser/resolution/types/ResolvedType;->describe()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "..."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 61
    :cond_0
    invoke-interface {p0}, Lorg/checkerframework/com/github/javaparser/resolution/declarations/ResolvedParameterDeclaration;->getType()Lorg/checkerframework/com/github/javaparser/resolution/types/ResolvedType;

    move-result-object v0

    invoke-interface {v0}, Lorg/checkerframework/com/github/javaparser/resolution/types/ResolvedType;->describe()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public hasName()Z
    .locals 1

    .line 40
    const/4 v0, 0x1

    return v0
.end method

.method public isParameter()Z
    .locals 1

    .line 33
    const/4 v0, 0x1

    return v0
.end method

.method public abstract isVariadic()Z
.end method
