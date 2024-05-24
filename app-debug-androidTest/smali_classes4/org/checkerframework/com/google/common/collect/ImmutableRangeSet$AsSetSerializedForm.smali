.class Lorg/checkerframework/com/google/common/collect/ImmutableRangeSet$AsSetSerializedForm;
.super Ljava/lang/Object;
.source "ImmutableRangeSet.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/checkerframework/com/google/common/collect/ImmutableRangeSet;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "AsSetSerializedForm"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<C::",
        "Ljava/lang/Comparable;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/io/Serializable;"
    }
.end annotation


# instance fields
.field private final domain:Lorg/checkerframework/com/google/common/collect/DiscreteDomain;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/checkerframework/com/google/common/collect/DiscreteDomain<",
            "TC;>;"
        }
    .end annotation
.end field

.field private final ranges:Lorg/checkerframework/com/google/common/collect/ImmutableList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/checkerframework/com/google/common/collect/ImmutableList<",
            "Lorg/checkerframework/com/google/common/collect/Range<",
            "TC;>;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lorg/checkerframework/com/google/common/collect/ImmutableList;Lorg/checkerframework/com/google/common/collect/DiscreteDomain;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/checkerframework/com/google/common/collect/ImmutableList<",
            "Lorg/checkerframework/com/google/common/collect/Range<",
            "TC;>;>;",
            "Lorg/checkerframework/com/google/common/collect/DiscreteDomain<",
            "TC;>;)V"
        }
    .end annotation

    .line 687
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/ImmutableRangeSet$AsSetSerializedForm;, "Lorg/checkerframework/com/google/common/collect/ImmutableRangeSet$AsSetSerializedForm<TC;>;"
    .local p1, "ranges":Lorg/checkerframework/com/google/common/collect/ImmutableList;, "Lorg/checkerframework/com/google/common/collect/ImmutableList<Lorg/checkerframework/com/google/common/collect/Range<TC;>;>;"
    .local p2, "domain":Lorg/checkerframework/com/google/common/collect/DiscreteDomain;, "Lorg/checkerframework/com/google/common/collect/DiscreteDomain<TC;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 688
    iput-object p1, p0, Lorg/checkerframework/com/google/common/collect/ImmutableRangeSet$AsSetSerializedForm;->ranges:Lorg/checkerframework/com/google/common/collect/ImmutableList;

    .line 689
    iput-object p2, p0, Lorg/checkerframework/com/google/common/collect/ImmutableRangeSet$AsSetSerializedForm;->domain:Lorg/checkerframework/com/google/common/collect/DiscreteDomain;

    .line 690
    return-void
.end method


# virtual methods
.method readResolve()Ljava/lang/Object;
    .locals 2

    .line 693
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/ImmutableRangeSet$AsSetSerializedForm;, "Lorg/checkerframework/com/google/common/collect/ImmutableRangeSet$AsSetSerializedForm<TC;>;"
    new-instance v0, Lorg/checkerframework/com/google/common/collect/ImmutableRangeSet;

    iget-object v1, p0, Lorg/checkerframework/com/google/common/collect/ImmutableRangeSet$AsSetSerializedForm;->ranges:Lorg/checkerframework/com/google/common/collect/ImmutableList;

    invoke-direct {v0, v1}, Lorg/checkerframework/com/google/common/collect/ImmutableRangeSet;-><init>(Lorg/checkerframework/com/google/common/collect/ImmutableList;)V

    iget-object v1, p0, Lorg/checkerframework/com/google/common/collect/ImmutableRangeSet$AsSetSerializedForm;->domain:Lorg/checkerframework/com/google/common/collect/DiscreteDomain;

    invoke-virtual {v0, v1}, Lorg/checkerframework/com/google/common/collect/ImmutableRangeSet;->asSet(Lorg/checkerframework/com/google/common/collect/DiscreteDomain;)Lorg/checkerframework/com/google/common/collect/ImmutableSortedSet;

    move-result-object v0

    return-object v0
.end method
