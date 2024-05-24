.class public interface abstract Lorg/checkerframework/com/github/javaparser/resolution/declarations/ResolvedEnumConstantDeclaration;
.super Ljava/lang/Object;
.source "ResolvedEnumConstantDeclaration.java"

# interfaces
.implements Lorg/checkerframework/com/github/javaparser/resolution/declarations/ResolvedValueDeclaration;


# virtual methods
.method public asEnumConstant()Lorg/checkerframework/com/github/javaparser/resolution/declarations/ResolvedEnumConstantDeclaration;
    .locals 0

    .line 38
    return-object p0
.end method

.method public abstract getName()Ljava/lang/String;
.end method

.method public isEnumConstant()Z
    .locals 1

    .line 33
    const/4 v0, 0x1

    return v0
.end method
