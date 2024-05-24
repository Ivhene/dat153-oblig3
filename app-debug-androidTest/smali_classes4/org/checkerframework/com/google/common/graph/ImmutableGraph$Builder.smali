.class public Lorg/checkerframework/com/google/common/graph/ImmutableGraph$Builder;
.super Ljava/lang/Object;
.source "ImmutableGraph.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/checkerframework/com/google/common/graph/ImmutableGraph;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<N:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private final mutableGraph:Lorg/checkerframework/com/google/common/graph/MutableGraph;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/checkerframework/com/google/common/graph/MutableGraph<",
            "TN;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lorg/checkerframework/com/google/common/graph/GraphBuilder;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/checkerframework/com/google/common/graph/GraphBuilder<",
            "TN;>;)V"
        }
    .end annotation

    .line 126
    .local p0, "this":Lorg/checkerframework/com/google/common/graph/ImmutableGraph$Builder;, "Lorg/checkerframework/com/google/common/graph/ImmutableGraph$Builder<TN;>;"
    .local p1, "graphBuilder":Lorg/checkerframework/com/google/common/graph/GraphBuilder;, "Lorg/checkerframework/com/google/common/graph/GraphBuilder<TN;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 127
    invoke-virtual {p1}, Lorg/checkerframework/com/google/common/graph/GraphBuilder;->build()Lorg/checkerframework/com/google/common/graph/MutableGraph;

    move-result-object v0

    iput-object v0, p0, Lorg/checkerframework/com/google/common/graph/ImmutableGraph$Builder;->mutableGraph:Lorg/checkerframework/com/google/common/graph/MutableGraph;

    .line 128
    return-void
.end method


# virtual methods
.method public addNode(Ljava/lang/Object;)Lorg/checkerframework/com/google/common/graph/ImmutableGraph$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TN;)",
            "Lorg/checkerframework/com/google/common/graph/ImmutableGraph$Builder<",
            "TN;>;"
        }
    .end annotation

    .line 139
    .local p0, "this":Lorg/checkerframework/com/google/common/graph/ImmutableGraph$Builder;, "Lorg/checkerframework/com/google/common/graph/ImmutableGraph$Builder<TN;>;"
    .local p1, "node":Ljava/lang/Object;, "TN;"
    iget-object v0, p0, Lorg/checkerframework/com/google/common/graph/ImmutableGraph$Builder;->mutableGraph:Lorg/checkerframework/com/google/common/graph/MutableGraph;

    invoke-interface {v0, p1}, Lorg/checkerframework/com/google/common/graph/MutableGraph;->addNode(Ljava/lang/Object;)Z

    .line 140
    return-object p0
.end method

.method public build()Lorg/checkerframework/com/google/common/graph/ImmutableGraph;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/checkerframework/com/google/common/graph/ImmutableGraph<",
            "TN;>;"
        }
    .end annotation

    .line 189
    .local p0, "this":Lorg/checkerframework/com/google/common/graph/ImmutableGraph$Builder;, "Lorg/checkerframework/com/google/common/graph/ImmutableGraph$Builder<TN;>;"
    iget-object v0, p0, Lorg/checkerframework/com/google/common/graph/ImmutableGraph$Builder;->mutableGraph:Lorg/checkerframework/com/google/common/graph/MutableGraph;

    invoke-static {v0}, Lorg/checkerframework/com/google/common/graph/ImmutableGraph;->copyOf(Lorg/checkerframework/com/google/common/graph/Graph;)Lorg/checkerframework/com/google/common/graph/ImmutableGraph;

    move-result-object v0

    return-object v0
.end method

.method public putEdge(Ljava/lang/Object;Ljava/lang/Object;)Lorg/checkerframework/com/google/common/graph/ImmutableGraph$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TN;TN;)",
            "Lorg/checkerframework/com/google/common/graph/ImmutableGraph$Builder<",
            "TN;>;"
        }
    .end annotation

    .line 158
    .local p0, "this":Lorg/checkerframework/com/google/common/graph/ImmutableGraph$Builder;, "Lorg/checkerframework/com/google/common/graph/ImmutableGraph$Builder<TN;>;"
    .local p1, "nodeU":Ljava/lang/Object;, "TN;"
    .local p2, "nodeV":Ljava/lang/Object;, "TN;"
    iget-object v0, p0, Lorg/checkerframework/com/google/common/graph/ImmutableGraph$Builder;->mutableGraph:Lorg/checkerframework/com/google/common/graph/MutableGraph;

    invoke-interface {v0, p1, p2}, Lorg/checkerframework/com/google/common/graph/MutableGraph;->putEdge(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 159
    return-object p0
.end method

.method public putEdge(Lorg/checkerframework/com/google/common/graph/EndpointPair;)Lorg/checkerframework/com/google/common/graph/ImmutableGraph$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/checkerframework/com/google/common/graph/EndpointPair<",
            "TN;>;)",
            "Lorg/checkerframework/com/google/common/graph/ImmutableGraph$Builder<",
            "TN;>;"
        }
    .end annotation

    .line 181
    .local p0, "this":Lorg/checkerframework/com/google/common/graph/ImmutableGraph$Builder;, "Lorg/checkerframework/com/google/common/graph/ImmutableGraph$Builder<TN;>;"
    .local p1, "endpoints":Lorg/checkerframework/com/google/common/graph/EndpointPair;, "Lorg/checkerframework/com/google/common/graph/EndpointPair<TN;>;"
    iget-object v0, p0, Lorg/checkerframework/com/google/common/graph/ImmutableGraph$Builder;->mutableGraph:Lorg/checkerframework/com/google/common/graph/MutableGraph;

    invoke-interface {v0, p1}, Lorg/checkerframework/com/google/common/graph/MutableGraph;->putEdge(Lorg/checkerframework/com/google/common/graph/EndpointPair;)Z

    .line 182
    return-object p0
.end method
