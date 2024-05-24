.class public Lorg/checkerframework/com/google/common/graph/ImmutableValueGraph$Builder;
.super Ljava/lang/Object;
.source "ImmutableValueGraph.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/checkerframework/com/google/common/graph/ImmutableValueGraph;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<N:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private final mutableValueGraph:Lorg/checkerframework/com/google/common/graph/MutableValueGraph;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/checkerframework/com/google/common/graph/MutableValueGraph<",
            "TN;TV;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lorg/checkerframework/com/google/common/graph/ValueGraphBuilder;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/checkerframework/com/google/common/graph/ValueGraphBuilder<",
            "TN;TV;>;)V"
        }
    .end annotation

    .line 127
    .local p0, "this":Lorg/checkerframework/com/google/common/graph/ImmutableValueGraph$Builder;, "Lorg/checkerframework/com/google/common/graph/ImmutableValueGraph$Builder<TN;TV;>;"
    .local p1, "graphBuilder":Lorg/checkerframework/com/google/common/graph/ValueGraphBuilder;, "Lorg/checkerframework/com/google/common/graph/ValueGraphBuilder<TN;TV;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 128
    invoke-virtual {p1}, Lorg/checkerframework/com/google/common/graph/ValueGraphBuilder;->build()Lorg/checkerframework/com/google/common/graph/MutableValueGraph;

    move-result-object v0

    iput-object v0, p0, Lorg/checkerframework/com/google/common/graph/ImmutableValueGraph$Builder;->mutableValueGraph:Lorg/checkerframework/com/google/common/graph/MutableValueGraph;

    .line 129
    return-void
.end method


# virtual methods
.method public addNode(Ljava/lang/Object;)Lorg/checkerframework/com/google/common/graph/ImmutableValueGraph$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TN;)",
            "Lorg/checkerframework/com/google/common/graph/ImmutableValueGraph$Builder<",
            "TN;TV;>;"
        }
    .end annotation

    .line 140
    .local p0, "this":Lorg/checkerframework/com/google/common/graph/ImmutableValueGraph$Builder;, "Lorg/checkerframework/com/google/common/graph/ImmutableValueGraph$Builder<TN;TV;>;"
    .local p1, "node":Ljava/lang/Object;, "TN;"
    iget-object v0, p0, Lorg/checkerframework/com/google/common/graph/ImmutableValueGraph$Builder;->mutableValueGraph:Lorg/checkerframework/com/google/common/graph/MutableValueGraph;

    invoke-interface {v0, p1}, Lorg/checkerframework/com/google/common/graph/MutableValueGraph;->addNode(Ljava/lang/Object;)Z

    .line 141
    return-object p0
.end method

.method public build()Lorg/checkerframework/com/google/common/graph/ImmutableValueGraph;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/checkerframework/com/google/common/graph/ImmutableValueGraph<",
            "TN;TV;>;"
        }
    .end annotation

    .line 196
    .local p0, "this":Lorg/checkerframework/com/google/common/graph/ImmutableValueGraph$Builder;, "Lorg/checkerframework/com/google/common/graph/ImmutableValueGraph$Builder<TN;TV;>;"
    iget-object v0, p0, Lorg/checkerframework/com/google/common/graph/ImmutableValueGraph$Builder;->mutableValueGraph:Lorg/checkerframework/com/google/common/graph/MutableValueGraph;

    invoke-static {v0}, Lorg/checkerframework/com/google/common/graph/ImmutableValueGraph;->copyOf(Lorg/checkerframework/com/google/common/graph/ValueGraph;)Lorg/checkerframework/com/google/common/graph/ImmutableValueGraph;

    move-result-object v0

    return-object v0
.end method

.method public putEdgeValue(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lorg/checkerframework/com/google/common/graph/ImmutableValueGraph$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TN;TN;TV;)",
            "Lorg/checkerframework/com/google/common/graph/ImmutableValueGraph$Builder<",
            "TN;TV;>;"
        }
    .end annotation

    .line 162
    .local p0, "this":Lorg/checkerframework/com/google/common/graph/ImmutableValueGraph$Builder;, "Lorg/checkerframework/com/google/common/graph/ImmutableValueGraph$Builder<TN;TV;>;"
    .local p1, "nodeU":Ljava/lang/Object;, "TN;"
    .local p2, "nodeV":Ljava/lang/Object;, "TN;"
    .local p3, "value":Ljava/lang/Object;, "TV;"
    iget-object v0, p0, Lorg/checkerframework/com/google/common/graph/ImmutableValueGraph$Builder;->mutableValueGraph:Lorg/checkerframework/com/google/common/graph/MutableValueGraph;

    invoke-interface {v0, p1, p2, p3}, Lorg/checkerframework/com/google/common/graph/MutableValueGraph;->putEdgeValue(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 163
    return-object p0
.end method

.method public putEdgeValue(Lorg/checkerframework/com/google/common/graph/EndpointPair;Ljava/lang/Object;)Lorg/checkerframework/com/google/common/graph/ImmutableValueGraph$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/checkerframework/com/google/common/graph/EndpointPair<",
            "TN;>;TV;)",
            "Lorg/checkerframework/com/google/common/graph/ImmutableValueGraph$Builder<",
            "TN;TV;>;"
        }
    .end annotation

    .line 187
    .local p0, "this":Lorg/checkerframework/com/google/common/graph/ImmutableValueGraph$Builder;, "Lorg/checkerframework/com/google/common/graph/ImmutableValueGraph$Builder<TN;TV;>;"
    .local p1, "endpoints":Lorg/checkerframework/com/google/common/graph/EndpointPair;, "Lorg/checkerframework/com/google/common/graph/EndpointPair<TN;>;"
    .local p2, "value":Ljava/lang/Object;, "TV;"
    iget-object v0, p0, Lorg/checkerframework/com/google/common/graph/ImmutableValueGraph$Builder;->mutableValueGraph:Lorg/checkerframework/com/google/common/graph/MutableValueGraph;

    invoke-interface {v0, p1, p2}, Lorg/checkerframework/com/google/common/graph/MutableValueGraph;->putEdgeValue(Lorg/checkerframework/com/google/common/graph/EndpointPair;Ljava/lang/Object;)Ljava/lang/Object;

    .line 188
    return-object p0
.end method
