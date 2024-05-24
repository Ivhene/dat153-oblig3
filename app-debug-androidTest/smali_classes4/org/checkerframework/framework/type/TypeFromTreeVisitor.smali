.class abstract Lorg/checkerframework/framework/type/TypeFromTreeVisitor;
.super Lcom/sun/source/util/SimpleTreeVisitor;
.source "TypeFromTreeVisitor.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/sun/source/util/SimpleTreeVisitor<",
        "Lorg/checkerframework/framework/type/AnnotatedTypeMirror;",
        "Lorg/checkerframework/framework/type/AnnotatedTypeFactory;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 22
    invoke-direct {p0}, Lcom/sun/source/util/SimpleTreeVisitor;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic defaultAction(Lcom/sun/source/tree/Tree;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 19
    check-cast p2, Lorg/checkerframework/framework/type/AnnotatedTypeFactory;

    invoke-virtual {p0, p1, p2}, Lorg/checkerframework/framework/type/TypeFromTreeVisitor;->defaultAction(Lcom/sun/source/tree/Tree;Lorg/checkerframework/framework/type/AnnotatedTypeFactory;)Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    move-result-object p1

    return-object p1
.end method

.method public defaultAction(Lcom/sun/source/tree/Tree;Lorg/checkerframework/framework/type/AnnotatedTypeFactory;)Lorg/checkerframework/framework/type/AnnotatedTypeMirror;
    .locals 3
    .param p1, "node"    # Lcom/sun/source/tree/Tree;
    .param p2, "f"    # Lorg/checkerframework/framework/type/AnnotatedTypeFactory;

    .line 26
    if-nez p1, :cond_0

    .line 27
    new-instance v0, Lorg/checkerframework/javacutil/BugInCF;

    const-string v1, "TypeFromTree.defaultAction: null tree"

    invoke-direct {v0, v1}, Lorg/checkerframework/javacutil/BugInCF;-><init>(Ljava/lang/String;)V

    throw v0

    .line 29
    :cond_0
    new-instance v0, Lorg/checkerframework/javacutil/BugInCF;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "TypeFromTree.defaultAction: conversion undefined for tree type "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 31
    invoke-interface {p1}, Lcom/sun/source/tree/Tree;->getKind()Lcom/sun/source/tree/Tree$Kind;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/checkerframework/javacutil/BugInCF;-><init>(Ljava/lang/String;)V

    throw v0
.end method
