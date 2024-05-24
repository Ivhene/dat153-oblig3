.class public Lorg/checkerframework/com/google/common/collect/ForwardingNavigableSet$StandardDescendingSet;
.super Lorg/checkerframework/com/google/common/collect/Sets$DescendingSet;
.source "ForwardingNavigableSet.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/checkerframework/com/google/common/collect/ForwardingNavigableSet;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "StandardDescendingSet"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/checkerframework/com/google/common/collect/Sets$DescendingSet<",
        "TE;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lorg/checkerframework/com/google/common/collect/ForwardingNavigableSet;


# direct methods
.method public constructor <init>(Lorg/checkerframework/com/google/common/collect/ForwardingNavigableSet;)V
    .locals 0
    .param p1, "this$0"    # Lorg/checkerframework/com/google/common/collect/ForwardingNavigableSet;

    .line 170
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/ForwardingNavigableSet$StandardDescendingSet;, "Lorg/checkerframework/com/google/common/collect/ForwardingNavigableSet<TE;>.StandardDescendingSet;"
    iput-object p1, p0, Lorg/checkerframework/com/google/common/collect/ForwardingNavigableSet$StandardDescendingSet;->this$0:Lorg/checkerframework/com/google/common/collect/ForwardingNavigableSet;

    .line 171
    invoke-direct {p0, p1}, Lorg/checkerframework/com/google/common/collect/Sets$DescendingSet;-><init>(Ljava/util/NavigableSet;)V

    .line 172
    return-void
.end method
