.class final Lorg/checkerframework/com/google/common/graph/AbstractValueGraph$2;
.super Ljava/lang/Object;
.source "AbstractValueGraph.java"

# interfaces
.implements Lorg/checkerframework/com/google/common/base/Function;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/checkerframework/com/google/common/graph/AbstractValueGraph;->edgeValueMap(Lorg/checkerframework/com/google/common/graph/ValueGraph;)Ljava/util/Map;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lorg/checkerframework/com/google/common/base/Function<",
        "Lorg/checkerframework/com/google/common/graph/EndpointPair<",
        "TN;>;TV;>;"
    }
.end annotation


# instance fields
.field final synthetic val$graph:Lorg/checkerframework/com/google/common/graph/ValueGraph;


# direct methods
.method constructor <init>(Lorg/checkerframework/com/google/common/graph/ValueGraph;)V
    .locals 0

    .line 148
    iput-object p1, p0, Lorg/checkerframework/com/google/common/graph/AbstractValueGraph$2;->val$graph:Lorg/checkerframework/com/google/common/graph/ValueGraph;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 148
    check-cast p1, Lorg/checkerframework/com/google/common/graph/EndpointPair;

    invoke-virtual {p0, p1}, Lorg/checkerframework/com/google/common/graph/AbstractValueGraph$2;->apply(Lorg/checkerframework/com/google/common/graph/EndpointPair;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public apply(Lorg/checkerframework/com/google/common/graph/EndpointPair;)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/checkerframework/com/google/common/graph/EndpointPair<",
            "TN;>;)TV;"
        }
    .end annotation

    .line 151
    .local p1, "edge":Lorg/checkerframework/com/google/common/graph/EndpointPair;, "Lorg/checkerframework/com/google/common/graph/EndpointPair<TN;>;"
    iget-object v0, p0, Lorg/checkerframework/com/google/common/graph/AbstractValueGraph$2;->val$graph:Lorg/checkerframework/com/google/common/graph/ValueGraph;

    invoke-virtual {p1}, Lorg/checkerframework/com/google/common/graph/EndpointPair;->nodeU()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p1}, Lorg/checkerframework/com/google/common/graph/EndpointPair;->nodeV()Ljava/lang/Object;

    move-result-object v2

    const/4 v3, 0x0

    invoke-interface {v0, v1, v2, v3}, Lorg/checkerframework/com/google/common/graph/ValueGraph;->edgeValueOrDefault(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
