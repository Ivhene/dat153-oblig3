.class Lorg/checkerframework/com/google/common/collect/Sets$SubSet$1;
.super Lorg/checkerframework/com/google/common/collect/UnmodifiableIterator;
.source "Sets.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/checkerframework/com/google/common/collect/Sets$SubSet;->iterator()Ljava/util/Iterator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/checkerframework/com/google/common/collect/UnmodifiableIterator<",
        "TE;>;"
    }
.end annotation


# instance fields
.field final elements:Lorg/checkerframework/com/google/common/collect/ImmutableList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/checkerframework/com/google/common/collect/ImmutableList<",
            "TE;>;"
        }
    .end annotation
.end field

.field remainingSetBits:I

.field final synthetic this$0:Lorg/checkerframework/com/google/common/collect/Sets$SubSet;


# direct methods
.method constructor <init>(Lorg/checkerframework/com/google/common/collect/Sets$SubSet;)V
    .locals 1
    .param p1, "this$0"    # Lorg/checkerframework/com/google/common/collect/Sets$SubSet;

    .line 1504
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/Sets$SubSet$1;, "Lorg/checkerframework/com/google/common/collect/Sets$SubSet$1;"
    iput-object p1, p0, Lorg/checkerframework/com/google/common/collect/Sets$SubSet$1;->this$0:Lorg/checkerframework/com/google/common/collect/Sets$SubSet;

    invoke-direct {p0}, Lorg/checkerframework/com/google/common/collect/UnmodifiableIterator;-><init>()V

    .line 1505
    invoke-static {p1}, Lorg/checkerframework/com/google/common/collect/Sets$SubSet;->access$100(Lorg/checkerframework/com/google/common/collect/Sets$SubSet;)Lorg/checkerframework/com/google/common/collect/ImmutableMap;

    move-result-object v0

    invoke-virtual {v0}, Lorg/checkerframework/com/google/common/collect/ImmutableMap;->keySet()Lorg/checkerframework/com/google/common/collect/ImmutableSet;

    move-result-object v0

    invoke-virtual {v0}, Lorg/checkerframework/com/google/common/collect/ImmutableSet;->asList()Lorg/checkerframework/com/google/common/collect/ImmutableList;

    move-result-object v0

    iput-object v0, p0, Lorg/checkerframework/com/google/common/collect/Sets$SubSet$1;->elements:Lorg/checkerframework/com/google/common/collect/ImmutableList;

    .line 1506
    invoke-static {p1}, Lorg/checkerframework/com/google/common/collect/Sets$SubSet;->access$200(Lorg/checkerframework/com/google/common/collect/Sets$SubSet;)I

    move-result v0

    iput v0, p0, Lorg/checkerframework/com/google/common/collect/Sets$SubSet$1;->remainingSetBits:I

    return-void
.end method


# virtual methods
.method public hasNext()Z
    .locals 1

    .line 1510
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/Sets$SubSet$1;, "Lorg/checkerframework/com/google/common/collect/Sets$SubSet$1;"
    iget v0, p0, Lorg/checkerframework/com/google/common/collect/Sets$SubSet$1;->remainingSetBits:I

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public next()Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .line 1515
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/Sets$SubSet$1;, "Lorg/checkerframework/com/google/common/collect/Sets$SubSet$1;"
    iget v0, p0, Lorg/checkerframework/com/google/common/collect/Sets$SubSet$1;->remainingSetBits:I

    invoke-static {v0}, Ljava/lang/Integer;->numberOfTrailingZeros(I)I

    move-result v0

    .line 1516
    .local v0, "index":I
    const/16 v1, 0x20

    if-eq v0, v1, :cond_0

    .line 1519
    iget v1, p0, Lorg/checkerframework/com/google/common/collect/Sets$SubSet$1;->remainingSetBits:I

    const/4 v2, 0x1

    shl-int/2addr v2, v0

    not-int v2, v2

    and-int/2addr v1, v2

    iput v1, p0, Lorg/checkerframework/com/google/common/collect/Sets$SubSet$1;->remainingSetBits:I

    .line 1520
    iget-object v1, p0, Lorg/checkerframework/com/google/common/collect/Sets$SubSet$1;->elements:Lorg/checkerframework/com/google/common/collect/ImmutableList;

    invoke-virtual {v1, v0}, Lorg/checkerframework/com/google/common/collect/ImmutableList;->get(I)Ljava/lang/Object;

    move-result-object v1

    return-object v1

    .line 1517
    :cond_0
    new-instance v1, Ljava/util/NoSuchElementException;

    invoke-direct {v1}, Ljava/util/NoSuchElementException;-><init>()V

    throw v1
.end method
