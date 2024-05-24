.class public interface abstract Lorg/checkerframework/com/github/javaparser/resolution/declarations/ResolvedAnnotationDeclaration;
.super Ljava/lang/Object;
.source "ResolvedAnnotationDeclaration.java"

# interfaces
.implements Lorg/checkerframework/com/github/javaparser/resolution/declarations/ResolvedReferenceTypeDeclaration;
.implements Lorg/checkerframework/com/github/javaparser/resolution/declarations/AssociableToAST;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lorg/checkerframework/com/github/javaparser/resolution/declarations/ResolvedReferenceTypeDeclaration;",
        "Lorg/checkerframework/com/github/javaparser/resolution/declarations/AssociableToAST<",
        "Lorg/checkerframework/com/github/javaparser/ast/body/AnnotationDeclaration;",
        ">;"
    }
.end annotation


# virtual methods
.method public abstract getAnnotationMembers()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/checkerframework/com/github/javaparser/resolution/declarations/ResolvedAnnotationMemberDeclaration;",
            ">;"
        }
    .end annotation
.end method
