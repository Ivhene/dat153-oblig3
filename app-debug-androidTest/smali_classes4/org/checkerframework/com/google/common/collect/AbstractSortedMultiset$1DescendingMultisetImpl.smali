.class Lorg/checkerframework/com/google/common/collect/AbstractSortedMultiset$1DescendingMultisetImpl;
.super Lorg/checkerframework/com/google/common/collect/DescendingMultiset;
.source "AbstractSortedMultiset.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/checkerframework/com/google/common/collect/AbstractSortedMultiset;->createDescendingMultiset()Lorg/checkerframework/com/google/common/collect/SortedMultiset;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "1DescendingMultisetImpl"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/checkerframework/com/google/common/collect/DescendingMultiset<",
        "TE;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lorg/checkerframework/com/google/common/collect/AbstractSortedMultiset;


# direct methods
.method constructor <init>(Lorg/checkerframework/com/google/common/collect/AbstractSortedMultiset;)V
    .locals 0
    .param p1, "this$0"    # Lorg/checkerframework/com/google/common/collect/AbstractSortedMultiset;

    .line 129
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/AbstractSortedMultiset$1DescendingMultisetImpl;, "Lorg/checkerframework/com/google/common/collect/AbstractSortedMultiset$1DescendingMultisetImpl;"
    iput-object p1, p0, Lorg/checkerframework/com/google/common/collect/AbstractSortedMultiset$1DescendingMultisetImpl;->this$0:Lorg/checkerframework/com/google/common/collect/AbstractSortedMultiset;

    invoke-direct {p0}, Lorg/checkerframework/com/google/common/collect/DescendingMultiset;-><init>()V

    return-void
.end method


# virtual methods
.method entryIterator()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Lorg/checkerframework/com/google/common/collect/Multiset$Entry<",
            "TE;>;>;"
        }
    .end annotation

    .line 137
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/AbstractSortedMultiset$1DescendingMultisetImpl;, "Lorg/checkerframework/com/google/common/collect/AbstractSortedMultiset$1DescendingMultisetImpl;"
    iget-object v0, p0, Lorg/checkerframework/com/google/common/collect/AbstractSortedMultiset$1DescendingMultisetImpl;->this$0:Lorg/checkerframework/com/google/common/collect/AbstractSortedMultiset;

    invoke-virtual {v0}, Lorg/checkerframework/com/google/common/collect/AbstractSortedMultiset;->descendingEntryIterator()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method forwardMultiset()Lorg/checkerframework/com/google/common/collect/SortedMultiset;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/checkerframework/com/google/common/collect/SortedMultiset<",
            "TE;>;"
        }
    .end annotation

    .line 132
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/AbstractSortedMultiset$1DescendingMultisetImpl;, "Lorg/checkerframework/com/google/common/collect/AbstractSortedMultiset$1DescendingMultisetImpl;"
    iget-object v0, p0, Lorg/checkerframework/com/google/common/collect/AbstractSortedMultiset$1DescendingMultisetImpl;->this$0:Lorg/checkerframework/com/google/common/collect/AbstractSortedMultiset;

    return-object v0
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

    .line 142
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/AbstractSortedMultiset$1DescendingMultisetImpl;, "Lorg/checkerframework/com/google/common/collect/AbstractSortedMultiset$1DescendingMultisetImpl;"
    iget-object v0, p0, Lorg/checkerframework/com/google/common/collect/AbstractSortedMultiset$1DescendingMultisetImpl;->this$0:Lorg/checkerframework/com/google/common/collect/AbstractSortedMultiset;

    invoke-virtual {v0}, Lorg/checkerframework/com/google/common/collect/AbstractSortedMultiset;->descendingIterator()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method
