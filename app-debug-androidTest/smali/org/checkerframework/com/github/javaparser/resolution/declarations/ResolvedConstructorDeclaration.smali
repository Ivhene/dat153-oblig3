.class public interface abstract Lorg/checkerframework/com/github/javaparser/resolution/declarations/ResolvedConstructorDeclaration;
.super Ljava/lang/Object;
.source "ResolvedConstructorDeclaration.java"

# interfaces
.implements Lorg/checkerframework/com/github/javaparser/resolution/declarations/ResolvedMethodLikeDeclaration;
.implements Lorg/checkerframework/com/github/javaparser/resolution/declarations/AssociableToAST;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lorg/checkerframework/com/github/javaparser/resolution/declarations/ResolvedMethodLikeDeclaration;",
        "Lorg/checkerframework/com/github/javaparser/resolution/declarations/AssociableToAST<",
        "Lorg/checkerframework/com/github/javaparser/ast/body/ConstructorDeclaration;",
        ">;"
    }
.end annotation


# virtual methods
.method public abstract declaringType()Lorg/checkerframework/com/github/javaparser/resolution/declarations/ResolvedReferenceTypeDeclaration;
.end method
