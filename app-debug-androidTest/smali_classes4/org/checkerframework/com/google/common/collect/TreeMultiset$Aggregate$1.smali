.class final enum Lorg/checkerframework/com/google/common/collect/TreeMultiset$Aggregate$1;
.super Lorg/checkerframework/com/google/common/collect/TreeMultiset$Aggregate;
.source "TreeMultiset.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/checkerframework/com/google/common/collect/TreeMultiset$Aggregate;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4008
    name = null
.end annotation


# direct methods
.method constructor <init>(Ljava/lang/String;I)V
    .locals 1

    .line 132
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lorg/checkerframework/com/google/common/collect/TreeMultiset$Aggregate;-><init>(Ljava/lang/String;ILorg/checkerframework/com/google/common/collect/TreeMultiset$1;)V

    return-void
.end method


# virtual methods
.method nodeAggregate(Lorg/checkerframework/com/google/common/collect/TreeMultiset$AvlNode;)I
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/checkerframework/com/google/common/collect/TreeMultiset$AvlNode<",
            "*>;)I"
        }
    .end annotation

    .line 135
    .local p1, "node":Lorg/checkerframework/com/google/common/collect/TreeMultiset$AvlNode;, "Lorg/checkerframework/com/google/common/collect/TreeMultiset$AvlNode<*>;"
    invoke-static {p1}, Lorg/checkerframework/com/google/common/collect/TreeMultiset$AvlNode;->access$200(Lorg/checkerframework/com/google/common/collect/TreeMultiset$AvlNode;)I

    move-result v0

    return v0
.end method

.method treeAggregate(Lorg/checkerframework/com/google/common/collect/TreeMultiset$AvlNode;)J
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/checkerframework/com/google/common/collect/TreeMultiset$AvlNode<",
            "*>;)J"
        }
    .end annotation

    .line 140
    .local p1, "root":Lorg/checkerframework/com/google/common/collect/TreeMultiset$AvlNode;, "Lorg/checkerframework/com/google/common/collect/TreeMultiset$AvlNode<*>;"
    if-nez p1, :cond_0

    const-wide/16 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-static {p1}, Lorg/checkerframework/com/google/common/collect/TreeMultiset$AvlNode;->access$300(Lorg/checkerframework/com/google/common/collect/TreeMultiset$AvlNode;)J

    move-result-wide v0

    :goto_0
    return-wide v0
.end method
