.class final Lorg/checkerframework/com/google/common/graph/ImmutableValueGraph$1;
.super Ljava/lang/Object;
.source "ImmutableValueGraph.java"

# interfaces
.implements Lorg/checkerframework/com/google/common/base/Function;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/checkerframework/com/google/common/graph/ImmutableValueGraph;->connectionsOf(Lorg/checkerframework/com/google/common/graph/ValueGraph;Ljava/lang/Object;)Lorg/checkerframework/com/google/common/graph/GraphConnections;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lorg/checkerframework/com/google/common/base/Function<",
        "TN;TV;>;"
    }
.end annotation


# instance fields
.field final synthetic val$graph:Lorg/checkerframework/com/google/common/graph/ValueGraph;

.field final synthetic val$node:Ljava/lang/Object;


# direct methods
.method constructor <init>(Lorg/checkerframework/com/google/common/graph/ValueGraph;Ljava/lang/Object;)V
    .locals 0

    .line 89
    iput-object p1, p0, Lorg/checkerframework/com/google/common/graph/ImmutableValueGraph$1;->val$graph:Lorg/checkerframework/com/google/common/graph/ValueGraph;

    iput-object p2, p0, Lorg/checkerframework/com/google/common/graph/ImmutableValueGraph$1;->val$node:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TN;)TV;"
        }
    .end annotation

    .line 92
    .local p1, "successorNode":Ljava/lang/Object;, "TN;"
    iget-object v0, p0, Lorg/checkerframework/com/google/common/graph/ImmutableValueGraph$1;->val$graph:Lorg/checkerframework/com/google/common/graph/ValueGraph;

    iget-object v1, p0, Lorg/checkerframework/com/google/common/graph/ImmutableValueGraph$1;->val$node:Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-interface {v0, v1, p1, v2}, Lorg/checkerframework/com/google/common/graph/ValueGraph;->edgeValueOrDefault(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
