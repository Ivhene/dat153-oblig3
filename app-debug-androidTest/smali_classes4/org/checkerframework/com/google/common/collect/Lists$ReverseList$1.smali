.class Lorg/checkerframework/com/google/common/collect/Lists$ReverseList$1;
.super Ljava/lang/Object;
.source "Lists.java"

# interfaces
.implements Ljava/util/ListIterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/checkerframework/com/google/common/collect/Lists$ReverseList;->listIterator(I)Ljava/util/ListIterator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/ListIterator<",
        "TT;>;"
    }
.end annotation


# instance fields
.field canRemoveOrSet:Z

.field final synthetic this$0:Lorg/checkerframework/com/google/common/collect/Lists$ReverseList;

.field final synthetic val$forwardIterator:Ljava/util/ListIterator;


# direct methods
.method constructor <init>(Lorg/checkerframework/com/google/common/collect/Lists$ReverseList;Ljava/util/ListIterator;)V
    .locals 0
    .param p1, "this$0"    # Lorg/checkerframework/com/google/common/collect/Lists$ReverseList;

    .line 878
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/Lists$ReverseList$1;, "Lorg/checkerframework/com/google/common/collect/Lists$ReverseList$1;"
    iput-object p1, p0, Lorg/checkerframework/com/google/common/collect/Lists$ReverseList$1;->this$0:Lorg/checkerframework/com/google/common/collect/Lists$ReverseList;

    iput-object p2, p0, Lorg/checkerframework/com/google/common/collect/Lists$ReverseList$1;->val$forwardIterator:Ljava/util/ListIterator;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public add(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 884
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/Lists$ReverseList$1;, "Lorg/checkerframework/com/google/common/collect/Lists$ReverseList$1;"
    .local p1, "e":Ljava/lang/Object;, "TT;"
    iget-object v0, p0, Lorg/checkerframework/com/google/common/collect/Lists$ReverseList$1;->val$forwardIterator:Ljava/util/ListIterator;

    invoke-interface {v0, p1}, Ljava/util/ListIterator;->add(Ljava/lang/Object;)V

    .line 885
    iget-object v0, p0, Lorg/checkerframework/com/google/common/collect/Lists$ReverseList$1;->val$forwardIterator:Ljava/util/ListIterator;

    invoke-interface {v0}, Ljava/util/ListIterator;->previous()Ljava/lang/Object;

    .line 886
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/checkerframework/com/google/common/collect/Lists$ReverseList$1;->canRemoveOrSet:Z

    .line 887
    return-void
.end method

.method public hasNext()Z
    .locals 1

    .line 891
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/Lists$ReverseList$1;, "Lorg/checkerframework/com/google/common/collect/Lists$ReverseList$1;"
    iget-object v0, p0, Lorg/checkerframework/com/google/common/collect/Lists$ReverseList$1;->val$forwardIterator:Ljava/util/ListIterator;

    invoke-interface {v0}, Ljava/util/ListIterator;->hasPrevious()Z

    move-result v0

    return v0
.end method

.method public hasPrevious()Z
    .locals 1

    .line 896
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/Lists$ReverseList$1;, "Lorg/checkerframework/com/google/common/collect/Lists$ReverseList$1;"
    iget-object v0, p0, Lorg/checkerframework/com/google/common/collect/Lists$ReverseList$1;->val$forwardIterator:Ljava/util/ListIterator;

    invoke-interface {v0}, Ljava/util/ListIterator;->hasNext()Z

    move-result v0

    return v0
.end method

.method public next()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 901
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/Lists$ReverseList$1;, "Lorg/checkerframework/com/google/common/collect/Lists$ReverseList$1;"
    invoke-virtual {p0}, Lorg/checkerframework/com/google/common/collect/Lists$ReverseList$1;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 904
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/checkerframework/com/google/common/collect/Lists$ReverseList$1;->canRemoveOrSet:Z

    .line 905
    iget-object v0, p0, Lorg/checkerframework/com/google/common/collect/Lists$ReverseList$1;->val$forwardIterator:Ljava/util/ListIterator;

    invoke-interface {v0}, Ljava/util/ListIterator;->previous()Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 902
    :cond_0
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0
.end method

.method public nextIndex()I
    .locals 2

    .line 910
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/Lists$ReverseList$1;, "Lorg/checkerframework/com/google/common/collect/Lists$ReverseList$1;"
    iget-object v0, p0, Lorg/checkerframework/com/google/common/collect/Lists$ReverseList$1;->this$0:Lorg/checkerframework/com/google/common/collect/Lists$ReverseList;

    iget-object v1, p0, Lorg/checkerframework/com/google/common/collect/Lists$ReverseList$1;->val$forwardIterator:Ljava/util/ListIterator;

    invoke-interface {v1}, Ljava/util/ListIterator;->nextIndex()I

    move-result v1

    invoke-static {v0, v1}, Lorg/checkerframework/com/google/common/collect/Lists$ReverseList;->access$000(Lorg/checkerframework/com/google/common/collect/Lists$ReverseList;I)I

    move-result v0

    return v0
.end method

.method public previous()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 915
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/Lists$ReverseList$1;, "Lorg/checkerframework/com/google/common/collect/Lists$ReverseList$1;"
    invoke-virtual {p0}, Lorg/checkerframework/com/google/common/collect/Lists$ReverseList$1;->hasPrevious()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 918
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/checkerframework/com/google/common/collect/Lists$ReverseList$1;->canRemoveOrSet:Z

    .line 919
    iget-object v0, p0, Lorg/checkerframework/com/google/common/collect/Lists$ReverseList$1;->val$forwardIterator:Ljava/util/ListIterator;

    invoke-interface {v0}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 916
    :cond_0
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0
.end method

.method public previousIndex()I
    .locals 1

    .line 924
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/Lists$ReverseList$1;, "Lorg/checkerframework/com/google/common/collect/Lists$ReverseList$1;"
    invoke-virtual {p0}, Lorg/checkerframework/com/google/common/collect/Lists$ReverseList$1;->nextIndex()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    return v0
.end method

.method public remove()V
    .locals 1

    .line 929
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/Lists$ReverseList$1;, "Lorg/checkerframework/com/google/common/collect/Lists$ReverseList$1;"
    iget-boolean v0, p0, Lorg/checkerframework/com/google/common/collect/Lists$ReverseList$1;->canRemoveOrSet:Z

    invoke-static {v0}, Lorg/checkerframework/com/google/common/collect/CollectPreconditions;->checkRemove(Z)V

    .line 930
    iget-object v0, p0, Lorg/checkerframework/com/google/common/collect/Lists$ReverseList$1;->val$forwardIterator:Ljava/util/ListIterator;

    invoke-interface {v0}, Ljava/util/ListIterator;->remove()V

    .line 931
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/checkerframework/com/google/common/collect/Lists$ReverseList$1;->canRemoveOrSet:Z

    .line 932
    return-void
.end method

.method public set(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 936
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/Lists$ReverseList$1;, "Lorg/checkerframework/com/google/common/collect/Lists$ReverseList$1;"
    .local p1, "e":Ljava/lang/Object;, "TT;"
    iget-boolean v0, p0, Lorg/checkerframework/com/google/common/collect/Lists$ReverseList$1;->canRemoveOrSet:Z

    invoke-static {v0}, Lorg/checkerframework/com/google/common/base/Preconditions;->checkState(Z)V

    .line 937
    iget-object v0, p0, Lorg/checkerframework/com/google/common/collect/Lists$ReverseList$1;->val$forwardIterator:Ljava/util/ListIterator;

    invoke-interface {v0, p1}, Ljava/util/ListIterator;->set(Ljava/lang/Object;)V

    .line 938
    return-void
.end method
