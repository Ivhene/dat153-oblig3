.class interface abstract Lorg/checkerframework/com/google/common/collect/SortedMultisetBridge;
.super Ljava/lang/Object;
.source "SortedMultisetBridge.java"

# interfaces
.implements Lorg/checkerframework/com/google/common/collect/Multiset;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lorg/checkerframework/com/google/common/collect/Multiset<",
        "TE;>;"
    }
.end annotation


# virtual methods
.method public bridge synthetic elementSet()Ljava/util/Set;
    .locals 1

    .line 29
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/SortedMultisetBridge;, "Lorg/checkerframework/com/google/common/collect/SortedMultisetBridge<TE;>;"
    invoke-interface {p0}, Lorg/checkerframework/com/google/common/collect/SortedMultisetBridge;->elementSet()Ljava/util/SortedSet;

    move-result-object v0

    return-object v0
.end method

.method public abstract elementSet()Ljava/util/SortedSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/SortedSet<",
            "TE;>;"
        }
    .end annotation
.end method
