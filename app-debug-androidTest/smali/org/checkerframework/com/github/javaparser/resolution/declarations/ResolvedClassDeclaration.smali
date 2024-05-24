.class public interface abstract Lorg/checkerframework/com/github/javaparser/resolution/declarations/ResolvedClassDeclaration;
.super Ljava/lang/Object;
.source "ResolvedClassDeclaration.java"

# interfaces
.implements Lorg/checkerframework/com/github/javaparser/resolution/declarations/ResolvedReferenceTypeDeclaration;
.implements Lorg/checkerframework/com/github/javaparser/resolution/declarations/ResolvedTypeParametrizable;
.implements Lorg/checkerframework/com/github/javaparser/resolution/declarations/HasAccessSpecifier;
.implements Lorg/checkerframework/com/github/javaparser/resolution/declarations/AssociableToAST;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lorg/checkerframework/com/github/javaparser/resolution/declarations/ResolvedReferenceTypeDeclaration;",
        "Lorg/checkerframework/com/github/javaparser/resolution/declarations/ResolvedTypeParametrizable;",
        "Lorg/checkerframework/com/github/javaparser/resolution/declarations/HasAccessSpecifier;",
        "Lorg/checkerframework/com/github/javaparser/resolution/declarations/AssociableToAST<",
        "Lorg/checkerframework/com/github/javaparser/ast/Node;",
        ">;"
    }
.end annotation


# virtual methods
.method public abstract getAllInterfaces()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/checkerframework/com/github/javaparser/resolution/types/ResolvedReferenceType;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getAllSuperClasses()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/checkerframework/com/github/javaparser/resolution/types/ResolvedReferenceType;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getConstructors()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/checkerframework/com/github/javaparser/resolution/declarations/ResolvedConstructorDeclaration;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getInterfaces()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/checkerframework/com/github/javaparser/resolution/types/ResolvedReferenceType;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getSuperClass()Lorg/checkerframework/com/github/javaparser/resolution/types/ResolvedReferenceType;
.end method

.method public isClass()Z
    .locals 1

    .line 45
    const/4 v0, 0x1

    return v0
.end method
