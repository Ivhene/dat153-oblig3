.class public Lorg/checkerframework/dataflow/cfg/CFGBuilder$TryFinallyFrame;
.super Ljava/lang/Object;
.source "CFGBuilder.java"

# interfaces
.implements Lorg/checkerframework/dataflow/cfg/CFGBuilder$TryFrame;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/checkerframework/dataflow/cfg/CFGBuilder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xc
    name = "TryFinallyFrame"
.end annotation


# instance fields
.field protected finallyLabel:Lorg/checkerframework/dataflow/cfg/CFGBuilder$Label;


# direct methods
.method public constructor <init>(Lorg/checkerframework/dataflow/cfg/CFGBuilder$Label;)V
    .locals 0
    .param p1, "finallyLabel"    # Lorg/checkerframework/dataflow/cfg/CFGBuilder$Label;

    .line 643
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 644
    iput-object p1, p0, Lorg/checkerframework/dataflow/cfg/CFGBuilder$TryFinallyFrame;->finallyLabel:Lorg/checkerframework/dataflow/cfg/CFGBuilder$Label;

    .line 645
    return-void
.end method


# virtual methods
.method public possibleLabels(Ljavax/lang/model/type/TypeMirror;Ljava/util/Set;)Z
    .locals 1
    .param p1, "thrown"    # Ljavax/lang/model/type/TypeMirror;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/lang/model/type/TypeMirror;",
            "Ljava/util/Set<",
            "Lorg/checkerframework/dataflow/cfg/CFGBuilder$Label;",
            ">;)Z"
        }
    .end annotation

    .line 656
    .local p2, "labels":Ljava/util/Set;, "Ljava/util/Set<Lorg/checkerframework/dataflow/cfg/CFGBuilder$Label;>;"
    iget-object v0, p0, Lorg/checkerframework/dataflow/cfg/CFGBuilder$TryFinallyFrame;->finallyLabel:Lorg/checkerframework/dataflow/cfg/CFGBuilder$Label;

    invoke-interface {p2, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 657
    const/4 v0, 0x1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 649
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 650
    .local v0, "sb":Ljava/lang/StringBuilder;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "TryFinallyFrame: finallyLabel: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lorg/checkerframework/dataflow/cfg/CFGBuilder$TryFinallyFrame;->finallyLabel:Lorg/checkerframework/dataflow/cfg/CFGBuilder$Label;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v2, 0xa

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 651
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
