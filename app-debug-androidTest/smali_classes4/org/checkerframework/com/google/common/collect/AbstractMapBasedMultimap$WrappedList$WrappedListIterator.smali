.class Lorg/checkerframework/com/google/common/collect/AbstractMapBasedMultimap$WrappedList$WrappedListIterator;
.super Lorg/checkerframework/com/google/common/collect/AbstractMapBasedMultimap$WrappedCollection$WrappedIterator;
.source "AbstractMapBasedMultimap.java"

# interfaces
.implements Ljava/util/ListIterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/checkerframework/com/google/common/collect/AbstractMapBasedMultimap$WrappedList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "WrappedListIterator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/checkerframework/com/google/common/collect/AbstractMapBasedMultimap<",
        "TK;TV;>.WrappedCollection.WrappedIterator;",
        "Ljava/util/ListIterator<",
        "TV;>;"
    }
.end annotation


# instance fields
.field final synthetic this$1:Lorg/checkerframework/com/google/common/collect/AbstractMapBasedMultimap$WrappedList;


# direct methods
.method constructor <init>(Lorg/checkerframework/com/google/common/collect/AbstractMapBasedMultimap$WrappedList;)V
    .locals 0

    .line 838
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/AbstractMapBasedMultimap$WrappedList$WrappedListIterator;, "Lorg/checkerframework/com/google/common/collect/AbstractMapBasedMultimap<TK;TV;>.WrappedList.WrappedListIterator;"
    iput-object p1, p0, Lorg/checkerframework/com/google/common/collect/AbstractMapBasedMultimap$WrappedList$WrappedListIterator;->this$1:Lorg/checkerframework/com/google/common/collect/AbstractMapBasedMultimap$WrappedList;

    invoke-direct {p0, p1}, Lorg/checkerframework/com/google/common/collect/AbstractMapBasedMultimap$WrappedCollection$WrappedIterator;-><init>(Lorg/checkerframework/com/google/common/collect/AbstractMapBasedMultimap$WrappedCollection;)V

    return-void
.end method

.method public constructor <init>(Lorg/checkerframework/com/google/common/collect/AbstractMapBasedMultimap$WrappedList;I)V
    .locals 1
    .param p2, "index"    # I

    .line 840
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/AbstractMapBasedMultimap$WrappedList$WrappedListIterator;, "Lorg/checkerframework/com/google/common/collect/AbstractMapBasedMultimap<TK;TV;>.WrappedList.WrappedListIterator;"
    iput-object p1, p0, Lorg/checkerframework/com/google/common/collect/AbstractMapBasedMultimap$WrappedList$WrappedListIterator;->this$1:Lorg/checkerframework/com/google/common/collect/AbstractMapBasedMultimap$WrappedList;

    .line 841
    invoke-virtual {p1}, Lorg/checkerframework/com/google/common/collect/AbstractMapBasedMultimap$WrappedList;->getListDelegate()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p2}, Ljava/util/List;->listIterator(I)Ljava/util/ListIterator;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lorg/checkerframework/com/google/common/collect/AbstractMapBasedMultimap$WrappedCollection$WrappedIterator;-><init>(Lorg/checkerframework/com/google/common/collect/AbstractMapBasedMultimap$WrappedCollection;Ljava/util/Iterator;)V

    .line 842
    return-void
.end method

.method private getDelegateListIterator()Ljava/util/ListIterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ListIterator<",
            "TV;>;"
        }
    .end annotation

    .line 845
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/AbstractMapBasedMultimap$WrappedList$WrappedListIterator;, "Lorg/checkerframework/com/google/common/collect/AbstractMapBasedMultimap<TK;TV;>.WrappedList.WrappedListIterator;"
    invoke-virtual {p0}, Lorg/checkerframework/com/google/common/collect/AbstractMapBasedMultimap$WrappedList$WrappedListIterator;->getDelegateIterator()Ljava/util/Iterator;

    move-result-object v0

    check-cast v0, Ljava/util/ListIterator;

    return-object v0
.end method


# virtual methods
.method public add(Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;)V"
        }
    .end annotation

    .line 875
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/AbstractMapBasedMultimap$WrappedList$WrappedListIterator;, "Lorg/checkerframework/com/google/common/collect/AbstractMapBasedMultimap<TK;TV;>.WrappedList.WrappedListIterator;"
    .local p1, "value":Ljava/lang/Object;, "TV;"
    iget-object v0, p0, Lorg/checkerframework/com/google/common/collect/AbstractMapBasedMultimap$WrappedList$WrappedListIterator;->this$1:Lorg/checkerframework/com/google/common/collect/AbstractMapBasedMultimap$WrappedList;

    invoke-virtual {v0}, Lorg/checkerframework/com/google/common/collect/AbstractMapBasedMultimap$WrappedList;->isEmpty()Z

    move-result v0

    .line 876
    .local v0, "wasEmpty":Z
    invoke-direct {p0}, Lorg/checkerframework/com/google/common/collect/AbstractMapBasedMultimap$WrappedList$WrappedListIterator;->getDelegateListIterator()Ljava/util/ListIterator;

    move-result-object v1

    invoke-interface {v1, p1}, Ljava/util/ListIterator;->add(Ljava/lang/Object;)V

    .line 877
    iget-object v1, p0, Lorg/checkerframework/com/google/common/collect/AbstractMapBasedMultimap$WrappedList$WrappedListIterator;->this$1:Lorg/checkerframework/com/google/common/collect/AbstractMapBasedMultimap$WrappedList;

    iget-object v1, v1, Lorg/checkerframework/com/google/common/collect/AbstractMapBasedMultimap$WrappedList;->this$0:Lorg/checkerframework/com/google/common/collect/AbstractMapBasedMultimap;

    invoke-static {v1}, Lorg/checkerframework/com/google/common/collect/AbstractMapBasedMultimap;->access$208(Lorg/checkerframework/com/google/common/collect/AbstractMapBasedMultimap;)I

    .line 878
    if-eqz v0, :cond_0

    .line 879
    iget-object v1, p0, Lorg/checkerframework/com/google/common/collect/AbstractMapBasedMultimap$WrappedList$WrappedListIterator;->this$1:Lorg/checkerframework/com/google/common/collect/AbstractMapBasedMultimap$WrappedList;

    invoke-virtual {v1}, Lorg/checkerframework/com/google/common/collect/AbstractMapBasedMultimap$WrappedList;->addToMap()V

    .line 881
    :cond_0
    return-void
.end method

.method public hasPrevious()Z
    .locals 1

    .line 850
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/AbstractMapBasedMultimap$WrappedList$WrappedListIterator;, "Lorg/checkerframework/com/google/common/collect/AbstractMapBasedMultimap<TK;TV;>.WrappedList.WrappedListIterator;"
    invoke-direct {p0}, Lorg/checkerframework/com/google/common/collect/AbstractMapBasedMultimap$WrappedList$WrappedListIterator;->getDelegateListIterator()Ljava/util/ListIterator;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/ListIterator;->hasPrevious()Z

    move-result v0

    return v0
.end method

.method public nextIndex()I
    .locals 1

    .line 860
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/AbstractMapBasedMultimap$WrappedList$WrappedListIterator;, "Lorg/checkerframework/com/google/common/collect/AbstractMapBasedMultimap<TK;TV;>.WrappedList.WrappedListIterator;"
    invoke-direct {p0}, Lorg/checkerframework/com/google/common/collect/AbstractMapBasedMultimap$WrappedList$WrappedListIterator;->getDelegateListIterator()Ljava/util/ListIterator;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/ListIterator;->nextIndex()I

    move-result v0

    return v0
.end method

.method public previous()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TV;"
        }
    .end annotation

    .line 855
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/AbstractMapBasedMultimap$WrappedList$WrappedListIterator;, "Lorg/checkerframework/com/google/common/collect/AbstractMapBasedMultimap<TK;TV;>.WrappedList.WrappedListIterator;"
    invoke-direct {p0}, Lorg/checkerframework/com/google/common/collect/AbstractMapBasedMultimap$WrappedList$WrappedListIterator;->getDelegateListIterator()Ljava/util/ListIterator;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/ListIterator;->previous()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public previousIndex()I
    .locals 1

    .line 865
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/AbstractMapBasedMultimap$WrappedList$WrappedListIterator;, "Lorg/checkerframework/com/google/common/collect/AbstractMapBasedMultimap<TK;TV;>.WrappedList.WrappedListIterator;"
    invoke-direct {p0}, Lorg/checkerframework/com/google/common/collect/AbstractMapBasedMultimap$WrappedList$WrappedListIterator;->getDelegateListIterator()Ljava/util/ListIterator;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/ListIterator;->previousIndex()I

    move-result v0

    return v0
.end method

.method public set(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;)V"
        }
    .end annotation

    .line 870
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/AbstractMapBasedMultimap$WrappedList$WrappedListIterator;, "Lorg/checkerframework/com/google/common/collect/AbstractMapBasedMultimap<TK;TV;>.WrappedList.WrappedListIterator;"
    .local p1, "value":Ljava/lang/Object;, "TV;"
    invoke-direct {p0}, Lorg/checkerframework/com/google/common/collect/AbstractMapBasedMultimap$WrappedList$WrappedListIterator;->getDelegateListIterator()Ljava/util/ListIterator;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/ListIterator;->set(Ljava/lang/Object;)V

    .line 871
    return-void
.end method
