.class public final Lorg/checkerframework/com/google/common/graph/ValueGraphBuilder;
.super Lorg/checkerframework/com/google/common/graph/AbstractGraphBuilder;
.source "ValueGraphBuilder.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<N:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Lorg/checkerframework/com/google/common/graph/AbstractGraphBuilder<",
        "TN;>;"
    }
.end annotation


# direct methods
.method private constructor <init>(Z)V
    .locals 0
    .param p1, "directed"    # Z

    .line 72
    .local p0, "this":Lorg/checkerframework/com/google/common/graph/ValueGraphBuilder;, "Lorg/checkerframework/com/google/common/graph/ValueGraphBuilder<TN;TV;>;"
    invoke-direct {p0, p1}, Lorg/checkerframework/com/google/common/graph/AbstractGraphBuilder;-><init>(Z)V

    .line 73
    return-void
.end method

.method private cast()Lorg/checkerframework/com/google/common/graph/ValueGraphBuilder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<N1:TN;V1:TV;>()",
            "Lorg/checkerframework/com/google/common/graph/ValueGraphBuilder<",
            "TN1;TV1;>;"
        }
    .end annotation

    .line 155
    .local p0, "this":Lorg/checkerframework/com/google/common/graph/ValueGraphBuilder;, "Lorg/checkerframework/com/google/common/graph/ValueGraphBuilder<TN;TV;>;"
    return-object p0
.end method

.method public static directed()Lorg/checkerframework/com/google/common/graph/ValueGraphBuilder;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/checkerframework/com/google/common/graph/ValueGraphBuilder<",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 77
    new-instance v0, Lorg/checkerframework/com/google/common/graph/ValueGraphBuilder;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lorg/checkerframework/com/google/common/graph/ValueGraphBuilder;-><init>(Z)V

    return-object v0
.end method

.method public static from(Lorg/checkerframework/com/google/common/graph/ValueGraph;)Lorg/checkerframework/com/google/common/graph/ValueGraphBuilder;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<N:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/checkerframework/com/google/common/graph/ValueGraph<",
            "TN;TV;>;)",
            "Lorg/checkerframework/com/google/common/graph/ValueGraphBuilder<",
            "TN;TV;>;"
        }
    .end annotation

    .line 94
    .local p0, "graph":Lorg/checkerframework/com/google/common/graph/ValueGraph;, "Lorg/checkerframework/com/google/common/graph/ValueGraph<TN;TV;>;"
    new-instance v0, Lorg/checkerframework/com/google/common/graph/ValueGraphBuilder;

    invoke-interface {p0}, Lorg/checkerframework/com/google/common/graph/ValueGraph;->isDirected()Z

    move-result v1

    invoke-direct {v0, v1}, Lorg/checkerframework/com/google/common/graph/ValueGraphBuilder;-><init>(Z)V

    .line 95
    invoke-interface {p0}, Lorg/checkerframework/com/google/common/graph/ValueGraph;->allowsSelfLoops()Z

    move-result v1

    invoke-virtual {v0, v1}, Lorg/checkerframework/com/google/common/graph/ValueGraphBuilder;->allowsSelfLoops(Z)Lorg/checkerframework/com/google/common/graph/ValueGraphBuilder;

    move-result-object v0

    .line 96
    invoke-interface {p0}, Lorg/checkerframework/com/google/common/graph/ValueGraph;->nodeOrder()Lorg/checkerframework/com/google/common/graph/ElementOrder;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/checkerframework/com/google/common/graph/ValueGraphBuilder;->nodeOrder(Lorg/checkerframework/com/google/common/graph/ElementOrder;)Lorg/checkerframework/com/google/common/graph/ValueGraphBuilder;

    move-result-object v0

    .line 94
    return-object v0
.end method

.method public static undirected()Lorg/checkerframework/com/google/common/graph/ValueGraphBuilder;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/checkerframework/com/google/common/graph/ValueGraphBuilder<",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 82
    new-instance v0, Lorg/checkerframework/com/google/common/graph/ValueGraphBuilder;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lorg/checkerframework/com/google/common/graph/ValueGraphBuilder;-><init>(Z)V

    return-object v0
.end method


# virtual methods
.method public allowsSelfLoops(Z)Lorg/checkerframework/com/google/common/graph/ValueGraphBuilder;
    .locals 0
    .param p1, "allowsSelfLoops"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Lorg/checkerframework/com/google/common/graph/ValueGraphBuilder<",
            "TN;TV;>;"
        }
    .end annotation

    .line 120
    .local p0, "this":Lorg/checkerframework/com/google/common/graph/ValueGraphBuilder;, "Lorg/checkerframework/com/google/common/graph/ValueGraphBuilder<TN;TV;>;"
    iput-boolean p1, p0, Lorg/checkerframework/com/google/common/graph/ValueGraphBuilder;->allowsSelfLoops:Z

    .line 121
    return-object p0
.end method

.method public build()Lorg/checkerframework/com/google/common/graph/MutableValueGraph;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<N1:TN;V1:TV;>()",
            "Lorg/checkerframework/com/google/common/graph/MutableValueGraph<",
            "TN1;TV1;>;"
        }
    .end annotation

    .line 150
    .local p0, "this":Lorg/checkerframework/com/google/common/graph/ValueGraphBuilder;, "Lorg/checkerframework/com/google/common/graph/ValueGraphBuilder<TN;TV;>;"
    new-instance v0, Lorg/checkerframework/com/google/common/graph/ConfigurableMutableValueGraph;

    invoke-direct {v0, p0}, Lorg/checkerframework/com/google/common/graph/ConfigurableMutableValueGraph;-><init>(Lorg/checkerframework/com/google/common/graph/AbstractGraphBuilder;)V

    return-object v0
.end method

.method public expectedNodeCount(I)Lorg/checkerframework/com/google/common/graph/ValueGraphBuilder;
    .locals 1
    .param p1, "expectedNodeCount"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lorg/checkerframework/com/google/common/graph/ValueGraphBuilder<",
            "TN;TV;>;"
        }
    .end annotation

    .line 130
    .local p0, "this":Lorg/checkerframework/com/google/common/graph/ValueGraphBuilder;, "Lorg/checkerframework/com/google/common/graph/ValueGraphBuilder<TN;TV;>;"
    invoke-static {p1}, Lorg/checkerframework/com/google/common/graph/Graphs;->checkNonNegative(I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v0}, Lorg/checkerframework/com/google/common/base/Optional;->of(Ljava/lang/Object;)Lorg/checkerframework/com/google/common/base/Optional;

    move-result-object v0

    iput-object v0, p0, Lorg/checkerframework/com/google/common/graph/ValueGraphBuilder;->expectedNodeCount:Lorg/checkerframework/com/google/common/base/Optional;

    .line 131
    return-object p0
.end method

.method public immutable()Lorg/checkerframework/com/google/common/graph/ImmutableValueGraph$Builder;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<N1:TN;V1:TV;>()",
            "Lorg/checkerframework/com/google/common/graph/ImmutableValueGraph$Builder<",
            "TN1;TV1;>;"
        }
    .end annotation

    .line 108
    .local p0, "this":Lorg/checkerframework/com/google/common/graph/ValueGraphBuilder;, "Lorg/checkerframework/com/google/common/graph/ValueGraphBuilder<TN;TV;>;"
    invoke-direct {p0}, Lorg/checkerframework/com/google/common/graph/ValueGraphBuilder;->cast()Lorg/checkerframework/com/google/common/graph/ValueGraphBuilder;

    move-result-object v0

    .line 109
    .local v0, "castBuilder":Lorg/checkerframework/com/google/common/graph/ValueGraphBuilder;, "Lorg/checkerframework/com/google/common/graph/ValueGraphBuilder<TN1;TV1;>;"
    new-instance v1, Lorg/checkerframework/com/google/common/graph/ImmutableValueGraph$Builder;

    invoke-direct {v1, v0}, Lorg/checkerframework/com/google/common/graph/ImmutableValueGraph$Builder;-><init>(Lorg/checkerframework/com/google/common/graph/ValueGraphBuilder;)V

    return-object v1
.end method

.method public nodeOrder(Lorg/checkerframework/com/google/common/graph/ElementOrder;)Lorg/checkerframework/com/google/common/graph/ValueGraphBuilder;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<N1:TN;>(",
            "Lorg/checkerframework/com/google/common/graph/ElementOrder<",
            "TN1;>;)",
            "Lorg/checkerframework/com/google/common/graph/ValueGraphBuilder<",
            "TN1;TV;>;"
        }
    .end annotation

    .line 140
    .local p0, "this":Lorg/checkerframework/com/google/common/graph/ValueGraphBuilder;, "Lorg/checkerframework/com/google/common/graph/ValueGraphBuilder<TN;TV;>;"
    .local p1, "nodeOrder":Lorg/checkerframework/com/google/common/graph/ElementOrder;, "Lorg/checkerframework/com/google/common/graph/ElementOrder<TN1;>;"
    invoke-direct {p0}, Lorg/checkerframework/com/google/common/graph/ValueGraphBuilder;->cast()Lorg/checkerframework/com/google/common/graph/ValueGraphBuilder;

    move-result-object v0

    .line 141
    .local v0, "newBuilder":Lorg/checkerframework/com/google/common/graph/ValueGraphBuilder;, "Lorg/checkerframework/com/google/common/graph/ValueGraphBuilder<TN1;TV;>;"
    invoke-static {p1}, Lorg/checkerframework/com/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/checkerframework/com/google/common/graph/ElementOrder;

    iput-object v1, v0, Lorg/checkerframework/com/google/common/graph/ValueGraphBuilder;->nodeOrder:Lorg/checkerframework/com/google/common/graph/ElementOrder;

    .line 142
    return-object v0
.end method
