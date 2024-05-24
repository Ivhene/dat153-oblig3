.class public Lorg/checkerframework/dataflow/cfg/CFGBuilder$NodeHolder;
.super Lorg/checkerframework/dataflow/cfg/CFGBuilder$ExtendedNode;
.source "CFGBuilder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/checkerframework/dataflow/cfg/CFGBuilder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xc
    name = "NodeHolder"
.end annotation


# instance fields
.field protected node:Lorg/checkerframework/dataflow/cfg/node/Node;


# direct methods
.method public constructor <init>(Lorg/checkerframework/dataflow/cfg/node/Node;)V
    .locals 1
    .param p1, "node"    # Lorg/checkerframework/dataflow/cfg/node/Node;

    .line 364
    sget-object v0, Lorg/checkerframework/dataflow/cfg/CFGBuilder$ExtendedNode$ExtendedNodeType;->NODE:Lorg/checkerframework/dataflow/cfg/CFGBuilder$ExtendedNode$ExtendedNodeType;

    invoke-direct {p0, v0}, Lorg/checkerframework/dataflow/cfg/CFGBuilder$ExtendedNode;-><init>(Lorg/checkerframework/dataflow/cfg/CFGBuilder$ExtendedNode$ExtendedNodeType;)V

    .line 365
    iput-object p1, p0, Lorg/checkerframework/dataflow/cfg/CFGBuilder$NodeHolder;->node:Lorg/checkerframework/dataflow/cfg/node/Node;

    .line 366
    return-void
.end method


# virtual methods
.method public getNode()Lorg/checkerframework/dataflow/cfg/node/Node;
    .locals 1

    .line 370
    iget-object v0, p0, Lorg/checkerframework/dataflow/cfg/CFGBuilder$NodeHolder;->node:Lorg/checkerframework/dataflow/cfg/node/Node;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 375
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "NodeHolder("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/checkerframework/dataflow/cfg/CFGBuilder$NodeHolder;->node:Lorg/checkerframework/dataflow/cfg/node/Node;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
