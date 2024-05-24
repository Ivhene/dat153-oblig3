.class Lorg/checkerframework/com/google/common/hash/Funnels$SequentialFunnel;
.super Ljava/lang/Object;
.source "Funnels.java"

# interfaces
.implements Lorg/checkerframework/com/google/common/hash/Funnel;
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/checkerframework/com/google/common/hash/Funnels;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SequentialFunnel"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lorg/checkerframework/com/google/common/hash/Funnel<",
        "Ljava/lang/Iterable<",
        "+TE;>;>;",
        "Ljava/io/Serializable;"
    }
.end annotation


# instance fields
.field private final elementFunnel:Lorg/checkerframework/com/google/common/hash/Funnel;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/checkerframework/com/google/common/hash/Funnel<",
            "TE;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lorg/checkerframework/com/google/common/hash/Funnel;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/checkerframework/com/google/common/hash/Funnel<",
            "TE;>;)V"
        }
    .end annotation

    .line 174
    .local p0, "this":Lorg/checkerframework/com/google/common/hash/Funnels$SequentialFunnel;, "Lorg/checkerframework/com/google/common/hash/Funnels$SequentialFunnel<TE;>;"
    .local p1, "elementFunnel":Lorg/checkerframework/com/google/common/hash/Funnel;, "Lorg/checkerframework/com/google/common/hash/Funnel<TE;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 175
    invoke-static {p1}, Lorg/checkerframework/com/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/checkerframework/com/google/common/hash/Funnel;

    iput-object v0, p0, Lorg/checkerframework/com/google/common/hash/Funnels$SequentialFunnel;->elementFunnel:Lorg/checkerframework/com/google/common/hash/Funnel;

    .line 176
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 3
    .param p1, "o"    # Ljava/lang/Object;

    .line 192
    .local p0, "this":Lorg/checkerframework/com/google/common/hash/Funnels$SequentialFunnel;, "Lorg/checkerframework/com/google/common/hash/Funnels$SequentialFunnel<TE;>;"
    instance-of v0, p1, Lorg/checkerframework/com/google/common/hash/Funnels$SequentialFunnel;

    if-eqz v0, :cond_0

    .line 193
    move-object v0, p1

    check-cast v0, Lorg/checkerframework/com/google/common/hash/Funnels$SequentialFunnel;

    .line 194
    .local v0, "funnel":Lorg/checkerframework/com/google/common/hash/Funnels$SequentialFunnel;, "Lorg/checkerframework/com/google/common/hash/Funnels$SequentialFunnel<*>;"
    iget-object v1, p0, Lorg/checkerframework/com/google/common/hash/Funnels$SequentialFunnel;->elementFunnel:Lorg/checkerframework/com/google/common/hash/Funnel;

    iget-object v2, v0, Lorg/checkerframework/com/google/common/hash/Funnels$SequentialFunnel;->elementFunnel:Lorg/checkerframework/com/google/common/hash/Funnel;

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    return v1

    .line 196
    .end local v0    # "funnel":Lorg/checkerframework/com/google/common/hash/Funnels$SequentialFunnel;, "Lorg/checkerframework/com/google/common/hash/Funnels$SequentialFunnel<*>;"
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public funnel(Ljava/lang/Iterable;Lorg/checkerframework/com/google/common/hash/PrimitiveSink;)V
    .locals 3
    .param p2, "into"    # Lorg/checkerframework/com/google/common/hash/PrimitiveSink;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "+TE;>;",
            "Lorg/checkerframework/com/google/common/hash/PrimitiveSink;",
            ")V"
        }
    .end annotation

    .line 180
    .local p0, "this":Lorg/checkerframework/com/google/common/hash/Funnels$SequentialFunnel;, "Lorg/checkerframework/com/google/common/hash/Funnels$SequentialFunnel<TE;>;"
    .local p1, "from":Ljava/lang/Iterable;, "Ljava/lang/Iterable<+TE;>;"
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 181
    .local v1, "e":Ljava/lang/Object;, "TE;"
    iget-object v2, p0, Lorg/checkerframework/com/google/common/hash/Funnels$SequentialFunnel;->elementFunnel:Lorg/checkerframework/com/google/common/hash/Funnel;

    invoke-interface {v2, v1, p2}, Lorg/checkerframework/com/google/common/hash/Funnel;->funnel(Ljava/lang/Object;Lorg/checkerframework/com/google/common/hash/PrimitiveSink;)V

    .line 182
    .end local v1    # "e":Ljava/lang/Object;, "TE;"
    goto :goto_0

    .line 183
    :cond_0
    return-void
.end method

.method public bridge synthetic funnel(Ljava/lang/Object;Lorg/checkerframework/com/google/common/hash/PrimitiveSink;)V
    .locals 0

    .line 171
    .local p0, "this":Lorg/checkerframework/com/google/common/hash/Funnels$SequentialFunnel;, "Lorg/checkerframework/com/google/common/hash/Funnels$SequentialFunnel<TE;>;"
    check-cast p1, Ljava/lang/Iterable;

    invoke-virtual {p0, p1, p2}, Lorg/checkerframework/com/google/common/hash/Funnels$SequentialFunnel;->funnel(Ljava/lang/Iterable;Lorg/checkerframework/com/google/common/hash/PrimitiveSink;)V

    return-void
.end method

.method public hashCode()I
    .locals 2

    .line 201
    .local p0, "this":Lorg/checkerframework/com/google/common/hash/Funnels$SequentialFunnel;, "Lorg/checkerframework/com/google/common/hash/Funnels$SequentialFunnel<TE;>;"
    const-class v0, Lorg/checkerframework/com/google/common/hash/Funnels$SequentialFunnel;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    iget-object v1, p0, Lorg/checkerframework/com/google/common/hash/Funnels$SequentialFunnel;->elementFunnel:Lorg/checkerframework/com/google/common/hash/Funnel;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    xor-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 187
    .local p0, "this":Lorg/checkerframework/com/google/common/hash/Funnels$SequentialFunnel;, "Lorg/checkerframework/com/google/common/hash/Funnels$SequentialFunnel<TE;>;"
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Funnels.sequentialFunnel("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/checkerframework/com/google/common/hash/Funnels$SequentialFunnel;->elementFunnel:Lorg/checkerframework/com/google/common/hash/Funnel;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
