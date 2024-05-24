.class public interface abstract Lorg/checkerframework/com/github/javaparser/resolution/declarations/ResolvedFieldDeclaration;
.super Ljava/lang/Object;
.source "ResolvedFieldDeclaration.java"

# interfaces
.implements Lorg/checkerframework/com/github/javaparser/resolution/declarations/ResolvedValueDeclaration;
.implements Lorg/checkerframework/com/github/javaparser/resolution/declarations/HasAccessSpecifier;


# virtual methods
.method public asField()Lorg/checkerframework/com/github/javaparser/resolution/declarations/ResolvedFieldDeclaration;
    .locals 0

    .line 43
    return-object p0
.end method

.method public abstract declaringType()Lorg/checkerframework/com/github/javaparser/resolution/declarations/ResolvedTypeDeclaration;
.end method

.method public isField()Z
    .locals 1

    .line 38
    const/4 v0, 0x1

    return v0
.end method

.method public abstract isStatic()Z
.end method
