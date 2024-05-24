.class public Lorg/checkerframework/dataflow/cfg/CFGBuilder$ConditionalJump;
.super Lorg/checkerframework/dataflow/cfg/CFGBuilder$ExtendedNode;
.source "CFGBuilder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/checkerframework/dataflow/cfg/CFGBuilder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xc
    name = "ConditionalJump"
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field protected falseFlowRule:Lorg/checkerframework/dataflow/analysis/Store$FlowRule;

.field protected falseSucc:Lorg/checkerframework/dataflow/cfg/CFGBuilder$Label;

.field protected trueFlowRule:Lorg/checkerframework/dataflow/analysis/Store$FlowRule;

.field protected trueSucc:Lorg/checkerframework/dataflow/cfg/CFGBuilder$Label;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 419
    const-class v0, Lorg/checkerframework/dataflow/cfg/CFGBuilder;

    return-void
.end method

.method public constructor <init>(Lorg/checkerframework/dataflow/cfg/CFGBuilder$Label;Lorg/checkerframework/dataflow/cfg/CFGBuilder$Label;)V
    .locals 1
    .param p1, "trueSucc"    # Lorg/checkerframework/dataflow/cfg/CFGBuilder$Label;
    .param p2, "falseSucc"    # Lorg/checkerframework/dataflow/cfg/CFGBuilder$Label;

    .line 428
    sget-object v0, Lorg/checkerframework/dataflow/cfg/CFGBuilder$ExtendedNode$ExtendedNodeType;->CONDITIONAL_JUMP:Lorg/checkerframework/dataflow/cfg/CFGBuilder$ExtendedNode$ExtendedNodeType;

    invoke-direct {p0, v0}, Lorg/checkerframework/dataflow/cfg/CFGBuilder$ExtendedNode;-><init>(Lorg/checkerframework/dataflow/cfg/CFGBuilder$ExtendedNode$ExtendedNodeType;)V

    .line 429
    if-eqz p1, :cond_1

    .line 430
    iput-object p1, p0, Lorg/checkerframework/dataflow/cfg/CFGBuilder$ConditionalJump;->trueSucc:Lorg/checkerframework/dataflow/cfg/CFGBuilder$Label;

    .line 431
    if-eqz p2, :cond_0

    .line 432
    iput-object p2, p0, Lorg/checkerframework/dataflow/cfg/CFGBuilder$ConditionalJump;->falseSucc:Lorg/checkerframework/dataflow/cfg/CFGBuilder$Label;

    .line 433
    return-void

    .line 431
    :cond_0
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 429
    :cond_1
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
.end method


# virtual methods
.method public getElseLabel()Lorg/checkerframework/dataflow/cfg/CFGBuilder$Label;
    .locals 1

    .line 440
    iget-object v0, p0, Lorg/checkerframework/dataflow/cfg/CFGBuilder$ConditionalJump;->falseSucc:Lorg/checkerframework/dataflow/cfg/CFGBuilder$Label;

    return-object v0
.end method

.method public getFalseFlowRule()Lorg/checkerframework/dataflow/analysis/Store$FlowRule;
    .locals 1

    .line 448
    iget-object v0, p0, Lorg/checkerframework/dataflow/cfg/CFGBuilder$ConditionalJump;->falseFlowRule:Lorg/checkerframework/dataflow/analysis/Store$FlowRule;

    return-object v0
.end method

.method public getThenLabel()Lorg/checkerframework/dataflow/cfg/CFGBuilder$Label;
    .locals 1

    .line 436
    iget-object v0, p0, Lorg/checkerframework/dataflow/cfg/CFGBuilder$ConditionalJump;->trueSucc:Lorg/checkerframework/dataflow/cfg/CFGBuilder$Label;

    return-object v0
.end method

.method public getTrueFlowRule()Lorg/checkerframework/dataflow/analysis/Store$FlowRule;
    .locals 1

    .line 444
    iget-object v0, p0, Lorg/checkerframework/dataflow/cfg/CFGBuilder$ConditionalJump;->trueFlowRule:Lorg/checkerframework/dataflow/analysis/Store$FlowRule;

    return-object v0
.end method

.method public setFalseFlowRule(Lorg/checkerframework/dataflow/analysis/Store$FlowRule;)V
    .locals 0
    .param p1, "rule"    # Lorg/checkerframework/dataflow/analysis/Store$FlowRule;

    .line 456
    iput-object p1, p0, Lorg/checkerframework/dataflow/cfg/CFGBuilder$ConditionalJump;->falseFlowRule:Lorg/checkerframework/dataflow/analysis/Store$FlowRule;

    .line 457
    return-void
.end method

.method public setTrueFlowRule(Lorg/checkerframework/dataflow/analysis/Store$FlowRule;)V
    .locals 0
    .param p1, "rule"    # Lorg/checkerframework/dataflow/analysis/Store$FlowRule;

    .line 452
    iput-object p1, p0, Lorg/checkerframework/dataflow/cfg/CFGBuilder$ConditionalJump;->trueFlowRule:Lorg/checkerframework/dataflow/analysis/Store$FlowRule;

    .line 453
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 461
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "TwoTargetConditionalJump("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lorg/checkerframework/dataflow/cfg/CFGBuilder$ConditionalJump;->getThenLabel()Lorg/checkerframework/dataflow/cfg/CFGBuilder$Label;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lorg/checkerframework/dataflow/cfg/CFGBuilder$ConditionalJump;->getElseLabel()Lorg/checkerframework/dataflow/cfg/CFGBuilder$Label;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
