.class Lorg/checkerframework/com/google/common/collect/TreeMultiset$1;
.super Lorg/checkerframework/com/google/common/collect/Multisets$AbstractEntry;
.source "TreeMultiset.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/checkerframework/com/google/common/collect/TreeMultiset;->wrapEntry(Lorg/checkerframework/com/google/common/collect/TreeMultiset$AvlNode;)Lorg/checkerframework/com/google/common/collect/Multiset$Entry;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/checkerframework/com/google/common/collect/Multisets$AbstractEntry<",
        "TE;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lorg/checkerframework/com/google/common/collect/TreeMultiset;

.field final synthetic val$baseEntry:Lorg/checkerframework/com/google/common/collect/TreeMultiset$AvlNode;


# direct methods
.method constructor <init>(Lorg/checkerframework/com/google/common/collect/TreeMultiset;Lorg/checkerframework/com/google/common/collect/TreeMultiset$AvlNode;)V
    .locals 0
    .param p1, "this$0"    # Lorg/checkerframework/com/google/common/collect/TreeMultiset;

    .line 364
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/TreeMultiset$1;, "Lorg/checkerframework/com/google/common/collect/TreeMultiset$1;"
    iput-object p1, p0, Lorg/checkerframework/com/google/common/collect/TreeMultiset$1;->this$0:Lorg/checkerframework/com/google/common/collect/TreeMultiset;

    iput-object p2, p0, Lorg/checkerframework/com/google/common/collect/TreeMultiset$1;->val$baseEntry:Lorg/checkerframework/com/google/common/collect/TreeMultiset$AvlNode;

    invoke-direct {p0}, Lorg/checkerframework/com/google/common/collect/Multisets$AbstractEntry;-><init>()V

    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 3

    .line 372
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/TreeMultiset$1;, "Lorg/checkerframework/com/google/common/collect/TreeMultiset$1;"
    iget-object v0, p0, Lorg/checkerframework/com/google/common/collect/TreeMultiset$1;->val$baseEntry:Lorg/checkerframework/com/google/common/collect/TreeMultiset$AvlNode;

    invoke-virtual {v0}, Lorg/checkerframework/com/google/common/collect/TreeMultiset$AvlNode;->getCount()I

    move-result v0

    .line 373
    .local v0, "result":I
    if-nez v0, :cond_0

    .line 374
    iget-object v1, p0, Lorg/checkerframework/com/google/common/collect/TreeMultiset$1;->this$0:Lorg/checkerframework/com/google/common/collect/TreeMultiset;

    invoke-virtual {p0}, Lorg/checkerframework/com/google/common/collect/TreeMultiset$1;->getElement()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/checkerframework/com/google/common/collect/TreeMultiset;->count(Ljava/lang/Object;)I

    move-result v1

    return v1

    .line 376
    :cond_0
    return v0
.end method

.method public getElement()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .line 367
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/TreeMultiset$1;, "Lorg/checkerframework/com/google/common/collect/TreeMultiset$1;"
    iget-object v0, p0, Lorg/checkerframework/com/google/common/collect/TreeMultiset$1;->val$baseEntry:Lorg/checkerframework/com/google/common/collect/TreeMultiset$AvlNode;

    invoke-virtual {v0}, Lorg/checkerframework/com/google/common/collect/TreeMultiset$AvlNode;->getElement()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
