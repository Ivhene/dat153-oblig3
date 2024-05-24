.class public abstract Lorg/checkerframework/dataflow/cfg/CFGBuilder$ExtendedNode;
.super Ljava/lang/Object;
.source "CFGBuilder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/checkerframework/dataflow/cfg/CFGBuilder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x40c
    name = "ExtendedNode"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/checkerframework/dataflow/cfg/CFGBuilder$ExtendedNode$ExtendedNodeType;
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field protected block:Lorg/checkerframework/dataflow/cfg/block/BlockImpl;

.field protected terminatesExecution:Z

.field protected type:Lorg/checkerframework/dataflow/cfg/CFGBuilder$ExtendedNode$ExtendedNodeType;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 291
    const-class v0, Lorg/checkerframework/dataflow/cfg/CFGBuilder;

    return-void
.end method

.method public constructor <init>(Lorg/checkerframework/dataflow/cfg/CFGBuilder$ExtendedNode$ExtendedNodeType;)V
    .locals 1
    .param p1, "type"    # Lorg/checkerframework/dataflow/cfg/CFGBuilder$ExtendedNode$ExtendedNodeType;

    .line 302
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 300
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/checkerframework/dataflow/cfg/CFGBuilder$ExtendedNode;->terminatesExecution:Z

    .line 303
    iput-object p1, p0, Lorg/checkerframework/dataflow/cfg/CFGBuilder$ExtendedNode;->type:Lorg/checkerframework/dataflow/cfg/CFGBuilder$ExtendedNode$ExtendedNodeType;

    .line 304
    return-void
.end method


# virtual methods
.method public getBlock()Lorg/checkerframework/dataflow/cfg/block/BlockImpl;
    .locals 1

    .line 345
    iget-object v0, p0, Lorg/checkerframework/dataflow/cfg/CFGBuilder$ExtendedNode;->block:Lorg/checkerframework/dataflow/cfg/block/BlockImpl;

    return-object v0
.end method

.method public getLabel()Lorg/checkerframework/dataflow/cfg/CFGBuilder$Label;
    .locals 1

    .line 340
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
.end method

.method public getNode()Lorg/checkerframework/dataflow/cfg/node/Node;
    .locals 1

    .line 331
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
.end method

.method public getTerminatesExecution()Z
    .locals 1

    .line 319
    iget-boolean v0, p0, Lorg/checkerframework/dataflow/cfg/CFGBuilder$ExtendedNode;->terminatesExecution:Z

    return v0
.end method

.method public getType()Lorg/checkerframework/dataflow/cfg/CFGBuilder$ExtendedNode$ExtendedNodeType;
    .locals 1

    .line 315
    iget-object v0, p0, Lorg/checkerframework/dataflow/cfg/CFGBuilder$ExtendedNode;->type:Lorg/checkerframework/dataflow/cfg/CFGBuilder$ExtendedNode$ExtendedNodeType;

    return-object v0
.end method

.method public setBlock(Lorg/checkerframework/dataflow/cfg/block/BlockImpl;)V
    .locals 0
    .param p1, "b"    # Lorg/checkerframework/dataflow/cfg/block/BlockImpl;

    .line 349
    iput-object p1, p0, Lorg/checkerframework/dataflow/cfg/CFGBuilder$ExtendedNode;->block:Lorg/checkerframework/dataflow/cfg/block/BlockImpl;

    .line 350
    return-void
.end method

.method public setTerminatesExecution(Z)V
    .locals 0
    .param p1, "terminatesExecution"    # Z

    .line 323
    iput-boolean p1, p0, Lorg/checkerframework/dataflow/cfg/CFGBuilder$ExtendedNode;->terminatesExecution:Z

    .line 324
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 354
    new-instance v0, Lorg/checkerframework/javacutil/BugInCF;

    const-string v1, "DO NOT CALL ExtendedNode.toString(). Write your own."

    invoke-direct {v0, v1}, Lorg/checkerframework/javacutil/BugInCF;-><init>(Ljava/lang/String;)V

    throw v0
.end method
