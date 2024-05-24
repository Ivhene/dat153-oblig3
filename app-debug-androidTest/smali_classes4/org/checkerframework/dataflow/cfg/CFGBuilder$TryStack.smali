.class public Lorg/checkerframework/dataflow/cfg/CFGBuilder$TryStack;
.super Ljava/lang/Object;
.source "CFGBuilder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/checkerframework/dataflow/cfg/CFGBuilder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xc
    name = "TryStack"
.end annotation


# instance fields
.field protected exitLabel:Lorg/checkerframework/dataflow/cfg/CFGBuilder$Label;

.field protected frames:Ljava/util/ArrayDeque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayDeque<",
            "Lorg/checkerframework/dataflow/cfg/CFGBuilder$TryFrame;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lorg/checkerframework/dataflow/cfg/CFGBuilder$Label;)V
    .locals 1
    .param p1, "exitLabel"    # Lorg/checkerframework/dataflow/cfg/CFGBuilder$Label;

    .line 670
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 671
    iput-object p1, p0, Lorg/checkerframework/dataflow/cfg/CFGBuilder$TryStack;->exitLabel:Lorg/checkerframework/dataflow/cfg/CFGBuilder$Label;

    .line 672
    new-instance v0, Ljava/util/ArrayDeque;

    invoke-direct {v0}, Ljava/util/ArrayDeque;-><init>()V

    iput-object v0, p0, Lorg/checkerframework/dataflow/cfg/CFGBuilder$TryStack;->frames:Ljava/util/ArrayDeque;

    .line 673
    return-void
.end method


# virtual methods
.method public popFrame()V
    .locals 1

    .line 680
    iget-object v0, p0, Lorg/checkerframework/dataflow/cfg/CFGBuilder$TryStack;->frames:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->removeFirst()Ljava/lang/Object;

    .line 681
    return-void
.end method

.method public possibleLabels(Ljavax/lang/model/type/TypeMirror;)Ljava/util/Set;
    .locals 4
    .param p1, "thrown"    # Ljavax/lang/model/type/TypeMirror;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/lang/model/type/TypeMirror;",
            ")",
            "Ljava/util/Set<",
            "Lorg/checkerframework/dataflow/cfg/CFGBuilder$Label;",
            ">;"
        }
    .end annotation

    .line 690
    new-instance v0, Lorg/checkerframework/dataflow/util/MostlySingleton;

    invoke-direct {v0}, Lorg/checkerframework/dataflow/util/MostlySingleton;-><init>()V

    .line 691
    .local v0, "labels":Ljava/util/Set;, "Ljava/util/Set<Lorg/checkerframework/dataflow/cfg/CFGBuilder$Label;>;"
    iget-object v1, p0, Lorg/checkerframework/dataflow/cfg/CFGBuilder$TryStack;->frames:Ljava/util/ArrayDeque;

    invoke-virtual {v1}, Ljava/util/ArrayDeque;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/checkerframework/dataflow/cfg/CFGBuilder$TryFrame;

    .line 692
    .local v2, "frame":Lorg/checkerframework/dataflow/cfg/CFGBuilder$TryFrame;
    invoke-interface {v2, p1, v0}, Lorg/checkerframework/dataflow/cfg/CFGBuilder$TryFrame;->possibleLabels(Ljavax/lang/model/type/TypeMirror;Ljava/util/Set;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 693
    return-object v0

    .line 695
    .end local v2    # "frame":Lorg/checkerframework/dataflow/cfg/CFGBuilder$TryFrame;
    :cond_0
    goto :goto_0

    .line 696
    :cond_1
    iget-object v1, p0, Lorg/checkerframework/dataflow/cfg/CFGBuilder$TryStack;->exitLabel:Lorg/checkerframework/dataflow/cfg/CFGBuilder$Label;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 697
    return-object v0
.end method

.method public pushFrame(Lorg/checkerframework/dataflow/cfg/CFGBuilder$TryFrame;)V
    .locals 1
    .param p1, "frame"    # Lorg/checkerframework/dataflow/cfg/CFGBuilder$TryFrame;

    .line 676
    iget-object v0, p0, Lorg/checkerframework/dataflow/cfg/CFGBuilder$TryStack;->frames:Ljava/util/ArrayDeque;

    invoke-virtual {v0, p1}, Ljava/util/ArrayDeque;->addFirst(Ljava/lang/Object;)V

    .line 677
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .line 702
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 703
    .local v0, "sb":Ljava/lang/StringBuilder;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "TryStack: exitLabel: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lorg/checkerframework/dataflow/cfg/CFGBuilder$TryStack;->exitLabel:Lorg/checkerframework/dataflow/cfg/CFGBuilder$Label;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v2, 0xa

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 704
    iget-object v1, p0, Lorg/checkerframework/dataflow/cfg/CFGBuilder$TryStack;->frames:Ljava/util/ArrayDeque;

    invoke-virtual {v1}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 705
    const-string v1, "No TryFrames.\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 707
    :cond_0
    iget-object v1, p0, Lorg/checkerframework/dataflow/cfg/CFGBuilder$TryStack;->frames:Ljava/util/ArrayDeque;

    invoke-virtual {v1}, Ljava/util/ArrayDeque;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/checkerframework/dataflow/cfg/CFGBuilder$TryFrame;

    .line 708
    .local v2, "tf":Lorg/checkerframework/dataflow/cfg/CFGBuilder$TryFrame;
    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 709
    .end local v2    # "tf":Lorg/checkerframework/dataflow/cfg/CFGBuilder$TryFrame;
    goto :goto_0

    .line 710
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
