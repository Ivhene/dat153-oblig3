.class final Lorg/checkerframework/com/google/common/collect/TreeRangeSet$AsRanges;
.super Lorg/checkerframework/com/google/common/collect/ForwardingCollection;
.source "TreeRangeSet.java"

# interfaces
.implements Ljava/util/Set;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/checkerframework/com/google/common/collect/TreeRangeSet;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "AsRanges"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/checkerframework/com/google/common/collect/ForwardingCollection<",
        "Lorg/checkerframework/com/google/common/collect/Range<",
        "TC;>;>;",
        "Ljava/util/Set<",
        "Lorg/checkerframework/com/google/common/collect/Range<",
        "TC;>;>;"
    }
.end annotation


# instance fields
.field final delegate:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection<",
            "Lorg/checkerframework/com/google/common/collect/Range<",
            "TC;>;>;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lorg/checkerframework/com/google/common/collect/TreeRangeSet;


# direct methods
.method constructor <init>(Lorg/checkerframework/com/google/common/collect/TreeRangeSet;Ljava/util/Collection;)V
    .locals 0
    .param p1, "this$0"    # Lorg/checkerframework/com/google/common/collect/TreeRangeSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Lorg/checkerframework/com/google/common/collect/Range<",
            "TC;>;>;)V"
        }
    .end annotation

    .line 101
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/TreeRangeSet$AsRanges;, "Lorg/checkerframework/com/google/common/collect/TreeRangeSet<TC;>.AsRanges;"
    .local p2, "delegate":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/checkerframework/com/google/common/collect/Range<TC;>;>;"
    iput-object p1, p0, Lorg/checkerframework/com/google/common/collect/TreeRangeSet$AsRanges;->this$0:Lorg/checkerframework/com/google/common/collect/TreeRangeSet;

    invoke-direct {p0}, Lorg/checkerframework/com/google/common/collect/ForwardingCollection;-><init>()V

    .line 102
    iput-object p2, p0, Lorg/checkerframework/com/google/common/collect/TreeRangeSet$AsRanges;->delegate:Ljava/util/Collection;

    .line 103
    return-void
.end method


# virtual methods
.method protected bridge synthetic delegate()Ljava/lang/Object;
    .locals 1

    .line 97
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/TreeRangeSet$AsRanges;, "Lorg/checkerframework/com/google/common/collect/TreeRangeSet<TC;>.AsRanges;"
    invoke-virtual {p0}, Lorg/checkerframework/com/google/common/collect/TreeRangeSet$AsRanges;->delegate()Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method

.method protected delegate()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Lorg/checkerframework/com/google/common/collect/Range<",
            "TC;>;>;"
        }
    .end annotation

    .line 107
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/TreeRangeSet$AsRanges;, "Lorg/checkerframework/com/google/common/collect/TreeRangeSet<TC;>.AsRanges;"
    iget-object v0, p0, Lorg/checkerframework/com/google/common/collect/TreeRangeSet$AsRanges;->delegate:Ljava/util/Collection;

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "o"    # Ljava/lang/Object;

    .line 117
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/TreeRangeSet$AsRanges;, "Lorg/checkerframework/com/google/common/collect/TreeRangeSet<TC;>.AsRanges;"
    invoke-static {p0, p1}, Lorg/checkerframework/com/google/common/collect/Sets;->equalsImpl(Ljava/util/Set;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public hashCode()I
    .locals 1

    .line 112
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/TreeRangeSet$AsRanges;, "Lorg/checkerframework/com/google/common/collect/TreeRangeSet<TC;>.AsRanges;"
    invoke-static {p0}, Lorg/checkerframework/com/google/common/collect/Sets;->hashCodeImpl(Ljava/util/Set;)I

    move-result v0

    return v0
.end method
