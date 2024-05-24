.class final Lorg/checkerframework/com/google/common/collect/Sets$SubSet;
.super Ljava/util/AbstractSet;
.source "Sets.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/checkerframework/com/google/common/collect/Sets;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "SubSet"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/AbstractSet<",
        "TE;>;"
    }
.end annotation


# instance fields
.field private final inputSet:Lorg/checkerframework/com/google/common/collect/ImmutableMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/checkerframework/com/google/common/collect/ImmutableMap<",
            "TE;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final mask:I


# direct methods
.method constructor <init>(Lorg/checkerframework/com/google/common/collect/ImmutableMap;I)V
    .locals 0
    .param p2, "mask"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/checkerframework/com/google/common/collect/ImmutableMap<",
            "TE;",
            "Ljava/lang/Integer;",
            ">;I)V"
        }
    .end annotation

    .line 1497
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/Sets$SubSet;, "Lorg/checkerframework/com/google/common/collect/Sets$SubSet<TE;>;"
    .local p1, "inputSet":Lorg/checkerframework/com/google/common/collect/ImmutableMap;, "Lorg/checkerframework/com/google/common/collect/ImmutableMap<TE;Ljava/lang/Integer;>;"
    invoke-direct {p0}, Ljava/util/AbstractSet;-><init>()V

    .line 1498
    iput-object p1, p0, Lorg/checkerframework/com/google/common/collect/Sets$SubSet;->inputSet:Lorg/checkerframework/com/google/common/collect/ImmutableMap;

    .line 1499
    iput p2, p0, Lorg/checkerframework/com/google/common/collect/Sets$SubSet;->mask:I

    .line 1500
    return-void
.end method

.method static synthetic access$100(Lorg/checkerframework/com/google/common/collect/Sets$SubSet;)Lorg/checkerframework/com/google/common/collect/ImmutableMap;
    .locals 1
    .param p0, "x0"    # Lorg/checkerframework/com/google/common/collect/Sets$SubSet;

    .line 1493
    iget-object v0, p0, Lorg/checkerframework/com/google/common/collect/Sets$SubSet;->inputSet:Lorg/checkerframework/com/google/common/collect/ImmutableMap;

    return-object v0
.end method

.method static synthetic access$200(Lorg/checkerframework/com/google/common/collect/Sets$SubSet;)I
    .locals 1
    .param p0, "x0"    # Lorg/checkerframework/com/google/common/collect/Sets$SubSet;

    .line 1493
    iget v0, p0, Lorg/checkerframework/com/google/common/collect/Sets$SubSet;->mask:I

    return v0
.end method


# virtual methods
.method public contains(Ljava/lang/Object;)Z
    .locals 4
    .param p1, "o"    # Ljava/lang/Object;

    .line 1532
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/Sets$SubSet;, "Lorg/checkerframework/com/google/common/collect/Sets$SubSet<TE;>;"
    iget-object v0, p0, Lorg/checkerframework/com/google/common/collect/Sets$SubSet;->inputSet:Lorg/checkerframework/com/google/common/collect/ImmutableMap;

    invoke-virtual {v0, p1}, Lorg/checkerframework/com/google/common/collect/ImmutableMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 1533
    .local v0, "index":Ljava/lang/Integer;
    if-eqz v0, :cond_0

    iget v1, p0, Lorg/checkerframework/com/google/common/collect/Sets$SubSet;->mask:I

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    const/4 v3, 0x1

    shl-int v2, v3, v2

    and-int/2addr v1, v2

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    :goto_0
    return v3
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "TE;>;"
        }
    .end annotation

    .line 1504
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/Sets$SubSet;, "Lorg/checkerframework/com/google/common/collect/Sets$SubSet<TE;>;"
    new-instance v0, Lorg/checkerframework/com/google/common/collect/Sets$SubSet$1;

    invoke-direct {v0, p0}, Lorg/checkerframework/com/google/common/collect/Sets$SubSet$1;-><init>(Lorg/checkerframework/com/google/common/collect/Sets$SubSet;)V

    return-object v0
.end method

.method public size()I
    .locals 1

    .line 1527
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/Sets$SubSet;, "Lorg/checkerframework/com/google/common/collect/Sets$SubSet<TE;>;"
    iget v0, p0, Lorg/checkerframework/com/google/common/collect/Sets$SubSet;->mask:I

    invoke-static {v0}, Ljava/lang/Integer;->bitCount(I)I

    move-result v0

    return v0
.end method
