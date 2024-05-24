.class public Lorg/checkerframework/com/github/javaparser/ast/Node$DirectChildrenIterator;
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
    name = "DirectChildrenIterator"
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
.field private final childrenIterator:Ljava/util/Iterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Iterator<",
            "Lorg/checkerframework/com/github/javaparser/ast/Node;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lorg/checkerframework/com/github/javaparser/ast/Node;)V
    .locals 2
    .param p1, "node"    # Lorg/checkerframework/com/github/javaparser/ast/Node;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "node"
        }
    .end annotation

    .line 902
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 903
    new-instance v0, Ljava/util/ArrayList;

    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/Node;->getChildNodes()Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    iput-object v0, p0, Lorg/checkerframework/com/github/javaparser/ast/Node$DirectChildrenIterator;->childrenIterator:Ljava/util/Iterator;

    .line 904
    return-void
.end method


# virtual methods
.method public hasNext()Z
    .locals 1

    .line 908
    iget-object v0, p0, Lorg/checkerframework/com/github/javaparser/ast/Node$DirectChildrenIterator;->childrenIterator:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    return v0
.end method

.method public bridge synthetic next()Ljava/lang/Object;
    .locals 1

    .line 898
    invoke-virtual {p0}, Lorg/checkerframework/com/github/javaparser/ast/Node$DirectChildrenIterator;->next()Lorg/checkerframework/com/github/javaparser/ast/Node;

    move-result-object v0

    return-object v0
.end method

.method public next()Lorg/checkerframework/com/github/javaparser/ast/Node;
    .locals 1

    .line 913
    iget-object v0, p0, Lorg/checkerframework/com/github/javaparser/ast/Node$DirectChildrenIterator;->childrenIterator:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/checkerframework/com/github/javaparser/ast/Node;

    return-object v0
.end method
