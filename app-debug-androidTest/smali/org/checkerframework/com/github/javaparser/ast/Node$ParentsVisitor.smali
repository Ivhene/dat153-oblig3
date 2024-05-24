.class public Lorg/checkerframework/com/github/javaparser/ast/Node$ParentsVisitor;
.super Ljava/lang/Object;
.source "Node.java"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/checkerframework/com/github/javaparser/ast/Node;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ParentsVisitor"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Iterator<",
        "Lorg/checkerframework/com/github/javaparser/ast/Node;",
        ">;"
    }
.end annotation


# instance fields
.field private node:Lorg/checkerframework/com/github/javaparser/ast/Node;


# direct methods
.method public constructor <init>(Lorg/checkerframework/com/github/javaparser/ast/Node;)V
    .locals 0
    .param p1, "node"    # Lorg/checkerframework/com/github/javaparser/ast/Node;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "node"
        }
    .end annotation

    .line 925
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 926
    iput-object p1, p0, Lorg/checkerframework/com/github/javaparser/ast/Node$ParentsVisitor;->node:Lorg/checkerframework/com/github/javaparser/ast/Node;

    .line 927
    return-void
.end method


# virtual methods
.method public hasNext()Z
    .locals 1

    .line 931
    iget-object v0, p0, Lorg/checkerframework/com/github/javaparser/ast/Node$ParentsVisitor;->node:Lorg/checkerframework/com/github/javaparser/ast/Node;

    invoke-virtual {v0}, Lorg/checkerframework/com/github/javaparser/ast/Node;->getParentNode()Ljava/util/Optional;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Optional;->isPresent()Z

    move-result v0

    return v0
.end method

.method public bridge synthetic next()Ljava/lang/Object;
    .locals 1

    .line 921
    invoke-virtual {p0}, Lorg/checkerframework/com/github/javaparser/ast/Node$ParentsVisitor;->next()Lorg/checkerframework/com/github/javaparser/ast/Node;

    move-result-object v0

    return-object v0
.end method

.method public next()Lorg/checkerframework/com/github/javaparser/ast/Node;
    .locals 2

    .line 936
    iget-object v0, p0, Lorg/checkerframework/com/github/javaparser/ast/Node$ParentsVisitor;->node:Lorg/checkerframework/com/github/javaparser/ast/Node;

    invoke-virtual {v0}, Lorg/checkerframework/com/github/javaparser/ast/Node;->getParentNode()Ljava/util/Optional;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/checkerframework/com/github/javaparser/ast/Node;

    iput-object v0, p0, Lorg/checkerframework/com/github/javaparser/ast/Node$ParentsVisitor;->node:Lorg/checkerframework/com/github/javaparser/ast/Node;

    .line 937
    return-object v0
.end method
