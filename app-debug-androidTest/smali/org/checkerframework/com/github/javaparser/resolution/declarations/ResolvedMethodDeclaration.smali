.class public interface abstract Lorg/checkerframework/com/github/javaparser/resolution/declarations/ResolvedMethodDeclaration;
.super Ljava/lang/Object;
.source "ResolvedMethodDeclaration.java"

# interfaces
.implements Lorg/checkerframework/com/github/javaparser/resolution/declarations/ResolvedMethodLikeDeclaration;
.implements Lorg/checkerframework/com/github/javaparser/resolution/declarations/AssociableToAST;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lorg/checkerframework/com/github/javaparser/resolution/declarations/ResolvedMethodLikeDeclaration;",
        "Lorg/checkerframework/com/github/javaparser/resolution/declarations/AssociableToAST<",
        "Lorg/checkerframework/com/github/javaparser/ast/body/MethodDeclaration;",
        ">;"
    }
.end annotation


# virtual methods
.method public abstract getReturnType()Lorg/checkerframework/com/github/javaparser/resolution/types/ResolvedType;
.end method

.method public abstract isAbstract()Z
.end method

.method public abstract isDefaultMethod()Z
.end method

.method public abstract isStatic()Z
.end method
