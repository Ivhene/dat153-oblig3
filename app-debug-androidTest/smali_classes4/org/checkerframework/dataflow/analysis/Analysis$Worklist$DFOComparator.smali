.class public Lorg/checkerframework/dataflow/analysis/Analysis$Worklist$DFOComparator;
.super Ljava/lang/Object;
.source "Analysis.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/checkerframework/dataflow/analysis/Analysis$Worklist;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "DFOComparator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Lorg/checkerframework/dataflow/cfg/block/Block;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lorg/checkerframework/dataflow/analysis/Analysis$Worklist;


# direct methods
.method public constructor <init>(Lorg/checkerframework/dataflow/analysis/Analysis$Worklist;)V
    .locals 0
    .param p1, "this$0"    # Lorg/checkerframework/dataflow/analysis/Analysis$Worklist;

    .line 731
    iput-object p1, p0, Lorg/checkerframework/dataflow/analysis/Analysis$Worklist$DFOComparator;->this$0:Lorg/checkerframework/dataflow/analysis/Analysis$Worklist;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    .line 731
    check-cast p1, Lorg/checkerframework/dataflow/cfg/block/Block;

    check-cast p2, Lorg/checkerframework/dataflow/cfg/block/Block;

    invoke-virtual {p0, p1, p2}, Lorg/checkerframework/dataflow/analysis/Analysis$Worklist$DFOComparator;->compare(Lorg/checkerframework/dataflow/cfg/block/Block;Lorg/checkerframework/dataflow/cfg/block/Block;)I

    move-result p1

    return p1
.end method

.method public compare(Lorg/checkerframework/dataflow/cfg/block/Block;Lorg/checkerframework/dataflow/cfg/block/Block;)I
    .locals 2
    .param p1, "b1"    # Lorg/checkerframework/dataflow/cfg/block/Block;
    .param p2, "b2"    # Lorg/checkerframework/dataflow/cfg/block/Block;

    .line 734
    iget-object v0, p0, Lorg/checkerframework/dataflow/analysis/Analysis$Worklist$DFOComparator;->this$0:Lorg/checkerframework/dataflow/analysis/Analysis$Worklist;

    iget-object v0, v0, Lorg/checkerframework/dataflow/analysis/Analysis$Worklist;->depthFirstOrder:Ljava/util/IdentityHashMap;

    invoke-virtual {v0, p1}, Ljava/util/IdentityHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iget-object v1, p0, Lorg/checkerframework/dataflow/analysis/Analysis$Worklist$DFOComparator;->this$0:Lorg/checkerframework/dataflow/analysis/Analysis$Worklist;

    iget-object v1, v1, Lorg/checkerframework/dataflow/analysis/Analysis$Worklist;->depthFirstOrder:Ljava/util/IdentityHashMap;

    invoke-virtual {v1, p2}, Ljava/util/IdentityHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    sub-int/2addr v0, v1

    return v0
.end method
