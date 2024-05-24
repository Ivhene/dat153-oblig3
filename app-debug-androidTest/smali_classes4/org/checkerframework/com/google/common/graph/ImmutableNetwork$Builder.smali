.class public Lorg/checkerframework/com/google/common/graph/ImmutableNetwork$Builder;
.super Ljava/lang/Object;
.source "ImmutableNetwork.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/checkerframework/com/google/common/graph/ImmutableNetwork;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<N:",
        "Ljava/lang/Object;",
        "E:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private final mutableNetwork:Lorg/checkerframework/com/google/common/graph/MutableNetwork;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/checkerframework/com/google/common/graph/MutableNetwork<",
            "TN;TE;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lorg/checkerframework/com/google/common/graph/NetworkBuilder;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/checkerframework/com/google/common/graph/NetworkBuilder<",
            "TN;TE;>;)V"
        }
    .end annotation

    .line 171
    .local p0, "this":Lorg/checkerframework/com/google/common/graph/ImmutableNetwork$Builder;, "Lorg/checkerframework/com/google/common/graph/ImmutableNetwork$Builder<TN;TE;>;"
    .local p1, "networkBuilder":Lorg/checkerframework/com/google/common/graph/NetworkBuilder;, "Lorg/checkerframework/com/google/common/graph/NetworkBuilder<TN;TE;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 172
    invoke-virtual {p1}, Lorg/checkerframework/com/google/common/graph/NetworkBuilder;->build()Lorg/checkerframework/com/google/common/graph/MutableNetwork;

    move-result-object v0

    iput-object v0, p0, Lorg/checkerframework/com/google/common/graph/ImmutableNetwork$Builder;->mutableNetwork:Lorg/checkerframework/com/google/common/graph/MutableNetwork;

    .line 173
    return-void
.end method


# virtual methods
.method public addEdge(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lorg/checkerframework/com/google/common/graph/ImmutableNetwork$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TN;TN;TE;)",
            "Lorg/checkerframework/com/google/common/graph/ImmutableNetwork$Builder<",
            "TN;TE;>;"
        }
    .end annotation

    .line 211
    .local p0, "this":Lorg/checkerframework/com/google/common/graph/ImmutableNetwork$Builder;, "Lorg/checkerframework/com/google/common/graph/ImmutableNetwork$Builder<TN;TE;>;"
    .local p1, "nodeU":Ljava/lang/Object;, "TN;"
    .local p2, "nodeV":Ljava/lang/Object;, "TN;"
    .local p3, "edge":Ljava/lang/Object;, "TE;"
    iget-object v0, p0, Lorg/checkerframework/com/google/common/graph/ImmutableNetwork$Builder;->mutableNetwork:Lorg/checkerframework/com/google/common/graph/MutableNetwork;

    invoke-interface {v0, p1, p2, p3}, Lorg/checkerframework/com/google/common/graph/MutableNetwork;->addEdge(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 212
    return-object p0
.end method

.method public addEdge(Lorg/checkerframework/com/google/common/graph/EndpointPair;Ljava/lang/Object;)Lorg/checkerframework/com/google/common/graph/ImmutableNetwork$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/checkerframework/com/google/common/graph/EndpointPair<",
            "TN;>;TE;)",
            "Lorg/checkerframework/com/google/common/graph/ImmutableNetwork$Builder<",
            "TN;TE;>;"
        }
    .end annotation

    .line 242
    .local p0, "this":Lorg/checkerframework/com/google/common/graph/ImmutableNetwork$Builder;, "Lorg/checkerframework/com/google/common/graph/ImmutableNetwork$Builder<TN;TE;>;"
    .local p1, "endpoints":Lorg/checkerframework/com/google/common/graph/EndpointPair;, "Lorg/checkerframework/com/google/common/graph/EndpointPair<TN;>;"
    .local p2, "edge":Ljava/lang/Object;, "TE;"
    iget-object v0, p0, Lorg/checkerframework/com/google/common/graph/ImmutableNetwork$Builder;->mutableNetwork:Lorg/checkerframework/com/google/common/graph/MutableNetwork;

    invoke-interface {v0, p1, p2}, Lorg/checkerframework/com/google/common/graph/MutableNetwork;->addEdge(Lorg/checkerframework/com/google/common/graph/EndpointPair;Ljava/lang/Object;)Z

    .line 243
    return-object p0
.end method

.method public addNode(Ljava/lang/Object;)Lorg/checkerframework/com/google/common/graph/ImmutableNetwork$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TN;)",
            "Lorg/checkerframework/com/google/common/graph/ImmutableNetwork$Builder<",
            "TN;TE;>;"
        }
    .end annotation

    .line 184
    .local p0, "this":Lorg/checkerframework/com/google/common/graph/ImmutableNetwork$Builder;, "Lorg/checkerframework/com/google/common/graph/ImmutableNetwork$Builder<TN;TE;>;"
    .local p1, "node":Ljava/lang/Object;, "TN;"
    iget-object v0, p0, Lorg/checkerframework/com/google/common/graph/ImmutableNetwork$Builder;->mutableNetwork:Lorg/checkerframework/com/google/common/graph/MutableNetwork;

    invoke-interface {v0, p1}, Lorg/checkerframework/com/google/common/graph/MutableNetwork;->addNode(Ljava/lang/Object;)Z

    .line 185
    return-object p0
.end method

.method public build()Lorg/checkerframework/com/google/common/graph/ImmutableNetwork;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/checkerframework/com/google/common/graph/ImmutableNetwork<",
            "TN;TE;>;"
        }
    .end annotation

    .line 251
    .local p0, "this":Lorg/checkerframework/com/google/common/graph/ImmutableNetwork$Builder;, "Lorg/checkerframework/com/google/common/graph/ImmutableNetwork$Builder<TN;TE;>;"
    iget-object v0, p0, Lorg/checkerframework/com/google/common/graph/ImmutableNetwork$Builder;->mutableNetwork:Lorg/checkerframework/com/google/common/graph/MutableNetwork;

    invoke-static {v0}, Lorg/checkerframework/com/google/common/graph/ImmutableNetwork;->copyOf(Lorg/checkerframework/com/google/common/graph/Network;)Lorg/checkerframework/com/google/common/graph/ImmutableNetwork;

    move-result-object v0

    return-object v0
.end method
