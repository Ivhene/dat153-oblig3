.class public Lorg/checkerframework/com/google/common/collect/ForwardingMultiset$StandardElementSet;
.super Lorg/checkerframework/com/google/common/collect/Multisets$ElementSet;
.source "ForwardingMultiset.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/checkerframework/com/google/common/collect/ForwardingMultiset;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "StandardElementSet"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/checkerframework/com/google/common/collect/Multisets$ElementSet<",
        "TE;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lorg/checkerframework/com/google/common/collect/ForwardingMultiset;


# direct methods
.method public constructor <init>(Lorg/checkerframework/com/google/common/collect/ForwardingMultiset;)V
    .locals 0
    .param p1, "this$0"    # Lorg/checkerframework/com/google/common/collect/ForwardingMultiset;

    .line 246
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/ForwardingMultiset$StandardElementSet;, "Lorg/checkerframework/com/google/common/collect/ForwardingMultiset<TE;>.StandardElementSet;"
    iput-object p1, p0, Lorg/checkerframework/com/google/common/collect/ForwardingMultiset$StandardElementSet;->this$0:Lorg/checkerframework/com/google/common/collect/ForwardingMultiset;

    invoke-direct {p0}, Lorg/checkerframework/com/google/common/collect/Multisets$ElementSet;-><init>()V

    return-void
.end method


# virtual methods
.method public iterator()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "TE;>;"
        }
    .end annotation

    .line 255
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/ForwardingMultiset$StandardElementSet;, "Lorg/checkerframework/com/google/common/collect/ForwardingMultiset<TE;>.StandardElementSet;"
    invoke-virtual {p0}, Lorg/checkerframework/com/google/common/collect/ForwardingMultiset$StandardElementSet;->multiset()Lorg/checkerframework/com/google/common/collect/Multiset;

    move-result-object v0

    invoke-interface {v0}, Lorg/checkerframework/com/google/common/collect/Multiset;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-static {v0}, Lorg/checkerframework/com/google/common/collect/Multisets;->elementIterator(Ljava/util/Iterator;)Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method multiset()Lorg/checkerframework/com/google/common/collect/Multiset;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/checkerframework/com/google/common/collect/Multiset<",
            "TE;>;"
        }
    .end annotation

    .line 250
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/ForwardingMultiset$StandardElementSet;, "Lorg/checkerframework/com/google/common/collect/ForwardingMultiset<TE;>.StandardElementSet;"
    iget-object v0, p0, Lorg/checkerframework/com/google/common/collect/ForwardingMultiset$StandardElementSet;->this$0:Lorg/checkerframework/com/google/common/collect/ForwardingMultiset;

    return-object v0
.end method
