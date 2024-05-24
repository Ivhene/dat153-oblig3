.class public Lorg/checkerframework/dataflow/cfg/CFGBuilder$UnconditionalJump;
.super Lorg/checkerframework/dataflow/cfg/CFGBuilder$ExtendedNode;
.source "CFGBuilder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/checkerframework/dataflow/cfg/CFGBuilder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xc
    name = "UnconditionalJump"
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field protected jumpTarget:Lorg/checkerframework/dataflow/cfg/CFGBuilder$Label;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 466
    const-class v0, Lorg/checkerframework/dataflow/cfg/CFGBuilder;

    return-void
.end method

.method public constructor <init>(Lorg/checkerframework/dataflow/cfg/CFGBuilder$Label;)V
    .locals 1
    .param p1, "jumpTarget"    # Lorg/checkerframework/dataflow/cfg/CFGBuilder$Label;

    .line 471
    sget-object v0, Lorg/checkerframework/dataflow/cfg/CFGBuilder$ExtendedNode$ExtendedNodeType;->UNCONDITIONAL_JUMP:Lorg/checkerframework/dataflow/cfg/CFGBuilder$ExtendedNode$ExtendedNodeType;

    invoke-direct {p0, v0}, Lorg/checkerframework/dataflow/cfg/CFGBuilder$ExtendedNode;-><init>(Lorg/checkerframework/dataflow/cfg/CFGBuilder$ExtendedNode$ExtendedNodeType;)V

    .line 472
    if-eqz p1, :cond_0

    .line 473
    iput-object p1, p0, Lorg/checkerframework/dataflow/cfg/CFGBuilder$UnconditionalJump;->jumpTarget:Lorg/checkerframework/dataflow/cfg/CFGBuilder$Label;

    .line 474
    return-void

    .line 472
    :cond_0
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
.end method


# virtual methods
.method public getLabel()Lorg/checkerframework/dataflow/cfg/CFGBuilder$Label;
    .locals 1

    .line 478
    iget-object v0, p0, Lorg/checkerframework/dataflow/cfg/CFGBuilder$UnconditionalJump;->jumpTarget:Lorg/checkerframework/dataflow/cfg/CFGBuilder$Label;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 483
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "JumpMarker("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lorg/checkerframework/dataflow/cfg/CFGBuilder$UnconditionalJump;->getLabel()Lorg/checkerframework/dataflow/cfg/CFGBuilder$Label;

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
