.class Lorg/checkerframework/com/google/common/collect/Lists$RandomAccessListWrapper;
.super Lorg/checkerframework/com/google/common/collect/Lists$AbstractListWrapper;
.source "Lists.java"

# interfaces
.implements Ljava/util/RandomAccess;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/checkerframework/com/google/common/collect/Lists;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "RandomAccessListWrapper"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Lorg/checkerframework/com/google/common/collect/Lists$AbstractListWrapper<",
        "TE;>;",
        "Ljava/util/RandomAccess;"
    }
.end annotation


# direct methods
.method constructor <init>(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "TE;>;)V"
        }
    .end annotation

    .line 1142
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/Lists$RandomAccessListWrapper;, "Lorg/checkerframework/com/google/common/collect/Lists$RandomAccessListWrapper<TE;>;"
    .local p1, "backingList":Ljava/util/List;, "Ljava/util/List<TE;>;"
    invoke-direct {p0, p1}, Lorg/checkerframework/com/google/common/collect/Lists$AbstractListWrapper;-><init>(Ljava/util/List;)V

    .line 1143
    return-void
.end method
