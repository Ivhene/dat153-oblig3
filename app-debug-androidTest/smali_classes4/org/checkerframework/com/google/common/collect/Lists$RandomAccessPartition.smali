.class Lorg/checkerframework/com/google/common/collect/Lists$RandomAccessPartition;
.super Lorg/checkerframework/com/google/common/collect/Lists$Partition;
.source "Lists.java"

# interfaces
.implements Ljava/util/RandomAccess;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/checkerframework/com/google/common/collect/Lists;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "RandomAccessPartition"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lorg/checkerframework/com/google/common/collect/Lists$Partition<",
        "TT;>;",
        "Ljava/util/RandomAccess;"
    }
.end annotation


# direct methods
.method constructor <init>(Ljava/util/List;I)V
    .locals 0
    .param p2, "size"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "TT;>;I)V"
        }
    .end annotation

    .line 694
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/Lists$RandomAccessPartition;, "Lorg/checkerframework/com/google/common/collect/Lists$RandomAccessPartition<TT;>;"
    .local p1, "list":Ljava/util/List;, "Ljava/util/List<TT;>;"
    invoke-direct {p0, p1, p2}, Lorg/checkerframework/com/google/common/collect/Lists$Partition;-><init>(Ljava/util/List;I)V

    .line 695
    return-void
.end method
