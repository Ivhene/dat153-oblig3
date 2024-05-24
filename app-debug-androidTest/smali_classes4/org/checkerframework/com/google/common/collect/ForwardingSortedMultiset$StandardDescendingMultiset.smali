.class public abstract Lorg/checkerframework/com/google/common/collect/ForwardingSortedMultiset$StandardDescendingMultiset;
.super Lorg/checkerframework/com/google/common/collect/DescendingMultiset;
.source "ForwardingSortedMultiset.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/checkerframework/com/google/common/collect/ForwardingSortedMultiset;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x404
    name = "StandardDescendingMultiset"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/checkerframework/com/google/common/collect/DescendingMultiset<",
        "TE;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lorg/checkerframework/com/google/common/collect/ForwardingSortedMultiset;


# direct methods
.method public constructor <init>(Lorg/checkerframework/com/google/common/collect/ForwardingSortedMultiset;)V
    .locals 0
    .param p1, "this$0"    # Lorg/checkerframework/com/google/common/collect/ForwardingSortedMultiset;

    .line 104
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/ForwardingSortedMultiset$StandardDescendingMultiset;, "Lorg/checkerframework/com/google/common/collect/ForwardingSortedMultiset<TE;>.StandardDescendingMultiset;"
    iput-object p1, p0, Lorg/checkerframework/com/google/common/collect/ForwardingSortedMultiset$StandardDescendingMultiset;->this$0:Lorg/checkerframework/com/google/common/collect/ForwardingSortedMultiset;

    invoke-direct {p0}, Lorg/checkerframework/com/google/common/collect/DescendingMultiset;-><init>()V

    return-void
.end method


# virtual methods
.method forwardMultiset()Lorg/checkerframework/com/google/common/collect/SortedMultiset;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/checkerframework/com/google/common/collect/SortedMultiset<",
            "TE;>;"
        }
    .end annotation

    .line 108
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/ForwardingSortedMultiset$StandardDescendingMultiset;, "Lorg/checkerframework/com/google/common/collect/ForwardingSortedMultiset<TE;>.StandardDescendingMultiset;"
    iget-object v0, p0, Lorg/checkerframework/com/google/common/collect/ForwardingSortedMultiset$StandardDescendingMultiset;->this$0:Lorg/checkerframework/com/google/common/collect/ForwardingSortedMultiset;

    return-object v0
.end method
