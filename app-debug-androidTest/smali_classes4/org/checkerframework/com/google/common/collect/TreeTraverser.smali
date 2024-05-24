.class public abstract Lorg/checkerframework/com/google/common/collect/TreeTraverser;
.super Ljava/lang/Object;
.source "TreeTraverser.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/checkerframework/com/google/common/collect/TreeTraverser$BreadthFirstIterator;,
        Lorg/checkerframework/com/google/common/collect/TreeTraverser$PostOrderIterator;,
        Lorg/checkerframework/com/google/common/collect/TreeTraverser$PostOrderNode;,
        Lorg/checkerframework/com/google/common/collect/TreeTraverser$PreOrderIterator;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 77
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/TreeTraverser;, "Lorg/checkerframework/com/google/common/collect/TreeTraverser<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static using(Lorg/checkerframework/com/google/common/base/Function;)Lorg/checkerframework/com/google/common/collect/TreeTraverser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/checkerframework/com/google/common/base/Function<",
            "TT;+",
            "Ljava/lang/Iterable<",
            "TT;>;>;)",
            "Lorg/checkerframework/com/google/common/collect/TreeTraverser<",
            "TT;>;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 92
    .local p0, "nodeToChildrenFunction":Lorg/checkerframework/com/google/common/base/Function;, "Lorg/checkerframework/com/google/common/base/Function<TT;+Ljava/lang/Iterable<TT;>;>;"
    invoke-static {p0}, Lorg/checkerframework/com/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 93
    new-instance v0, Lorg/checkerframework/com/google/common/collect/TreeTraverser$1;

    invoke-direct {v0, p0}, Lorg/checkerframework/com/google/common/collect/TreeTraverser$1;-><init>(Lorg/checkerframework/com/google/common/base/Function;)V

    return-object v0
.end method


# virtual methods
.method public final breadthFirstTraversal(Ljava/lang/Object;)Lorg/checkerframework/com/google/common/collect/FluentIterable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)",
            "Lorg/checkerframework/com/google/common/collect/FluentIterable<",
            "TT;>;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 256
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/TreeTraverser;, "Lorg/checkerframework/com/google/common/collect/TreeTraverser<TT;>;"
    .local p1, "root":Ljava/lang/Object;, "TT;"
    invoke-static {p1}, Lorg/checkerframework/com/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 257
    new-instance v0, Lorg/checkerframework/com/google/common/collect/TreeTraverser$4;

    invoke-direct {v0, p0, p1}, Lorg/checkerframework/com/google/common/collect/TreeTraverser$4;-><init>(Lorg/checkerframework/com/google/common/collect/TreeTraverser;Ljava/lang/Object;)V

    return-object v0
.end method

.method public abstract children(Ljava/lang/Object;)Ljava/lang/Iterable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)",
            "Ljava/lang/Iterable<",
            "TT;>;"
        }
    .end annotation
.end method

.method postOrderIterator(Ljava/lang/Object;)Lorg/checkerframework/com/google/common/collect/UnmodifiableIterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)",
            "Lorg/checkerframework/com/google/common/collect/UnmodifiableIterator<",
            "TT;>;"
        }
    .end annotation

    .line 203
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/TreeTraverser;, "Lorg/checkerframework/com/google/common/collect/TreeTraverser<TT;>;"
    .local p1, "root":Ljava/lang/Object;, "TT;"
    new-instance v0, Lorg/checkerframework/com/google/common/collect/TreeTraverser$PostOrderIterator;

    invoke-direct {v0, p0, p1}, Lorg/checkerframework/com/google/common/collect/TreeTraverser$PostOrderIterator;-><init>(Lorg/checkerframework/com/google/common/collect/TreeTraverser;Ljava/lang/Object;)V

    return-object v0
.end method

.method public final postOrderTraversal(Ljava/lang/Object;)Lorg/checkerframework/com/google/common/collect/FluentIterable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)",
            "Lorg/checkerframework/com/google/common/collect/FluentIterable<",
            "TT;>;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 181
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/TreeTraverser;, "Lorg/checkerframework/com/google/common/collect/TreeTraverser<TT;>;"
    .local p1, "root":Ljava/lang/Object;, "TT;"
    invoke-static {p1}, Lorg/checkerframework/com/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 182
    new-instance v0, Lorg/checkerframework/com/google/common/collect/TreeTraverser$3;

    invoke-direct {v0, p0, p1}, Lorg/checkerframework/com/google/common/collect/TreeTraverser$3;-><init>(Lorg/checkerframework/com/google/common/collect/TreeTraverser;Ljava/lang/Object;)V

    return-object v0
.end method

.method preOrderIterator(Ljava/lang/Object;)Lorg/checkerframework/com/google/common/collect/UnmodifiableIterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)",
            "Lorg/checkerframework/com/google/common/collect/UnmodifiableIterator<",
            "TT;>;"
        }
    .end annotation

    .line 138
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/TreeTraverser;, "Lorg/checkerframework/com/google/common/collect/TreeTraverser<TT;>;"
    .local p1, "root":Ljava/lang/Object;, "TT;"
    new-instance v0, Lorg/checkerframework/com/google/common/collect/TreeTraverser$PreOrderIterator;

    invoke-direct {v0, p0, p1}, Lorg/checkerframework/com/google/common/collect/TreeTraverser$PreOrderIterator;-><init>(Lorg/checkerframework/com/google/common/collect/TreeTraverser;Ljava/lang/Object;)V

    return-object v0
.end method

.method public final preOrderTraversal(Ljava/lang/Object;)Lorg/checkerframework/com/google/common/collect/FluentIterable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)",
            "Lorg/checkerframework/com/google/common/collect/FluentIterable<",
            "TT;>;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 116
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/TreeTraverser;, "Lorg/checkerframework/com/google/common/collect/TreeTraverser<TT;>;"
    .local p1, "root":Ljava/lang/Object;, "TT;"
    invoke-static {p1}, Lorg/checkerframework/com/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 117
    new-instance v0, Lorg/checkerframework/com/google/common/collect/TreeTraverser$2;

    invoke-direct {v0, p0, p1}, Lorg/checkerframework/com/google/common/collect/TreeTraverser$2;-><init>(Lorg/checkerframework/com/google/common/collect/TreeTraverser;Ljava/lang/Object;)V

    return-object v0
.end method
