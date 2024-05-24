.class public Lorg/checkerframework/org/apache/bcel/generic/DCONST;
.super Lorg/checkerframework/org/apache/bcel/generic/Instruction;
.source "DCONST.java"

# interfaces
.implements Lorg/checkerframework/org/apache/bcel/generic/ConstantPushInstruction;


# instance fields
.field private value:D


# direct methods
.method constructor <init>()V
    .locals 0

    .line 36
    invoke-direct {p0}, Lorg/checkerframework/org/apache/bcel/generic/Instruction;-><init>()V

    .line 37
    return-void
.end method

.method public constructor <init>(D)V
    .locals 4
    .param p1, "f"    # D

    .line 41
    const/4 v0, 0x1

    const/16 v1, 0xe

    invoke-direct {p0, v1, v0}, Lorg/checkerframework/org/apache/bcel/generic/Instruction;-><init>(SS)V

    .line 42
    const-wide/16 v2, 0x0

    cmpl-double v0, p1, v2

    if-nez v0, :cond_0

    .line 43
    invoke-super {p0, v1}, Lorg/checkerframework/org/apache/bcel/generic/Instruction;->setOpcode(S)V

    goto :goto_0

    .line 44
    :cond_0
    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    cmpl-double v0, p1, v0

    if-nez v0, :cond_1

    .line 45
    const/16 v0, 0xf

    invoke-super {p0, v0}, Lorg/checkerframework/org/apache/bcel/generic/Instruction;->setOpcode(S)V

    .line 49
    :goto_0
    iput-wide p1, p0, Lorg/checkerframework/org/apache/bcel/generic/DCONST;->value:D

    .line 50
    return-void

    .line 47
    :cond_1
    new-instance v0, Lorg/checkerframework/org/apache/bcel/generic/ClassGenException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "DCONST can be used only for 0.0 and 1.0: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/checkerframework/org/apache/bcel/generic/ClassGenException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public accept(Lorg/checkerframework/org/apache/bcel/generic/Visitor;)V
    .locals 0
    .param p1, "v"    # Lorg/checkerframework/org/apache/bcel/generic/Visitor;

    .line 77
    invoke-interface {p1, p0}, Lorg/checkerframework/org/apache/bcel/generic/Visitor;->visitPushInstruction(Lorg/checkerframework/org/apache/bcel/generic/PushInstruction;)V

    .line 78
    invoke-interface {p1, p0}, Lorg/checkerframework/org/apache/bcel/generic/Visitor;->visitStackProducer(Lorg/checkerframework/org/apache/bcel/generic/StackProducer;)V

    .line 79
    invoke-interface {p1, p0}, Lorg/checkerframework/org/apache/bcel/generic/Visitor;->visitTypedInstruction(Lorg/checkerframework/org/apache/bcel/generic/TypedInstruction;)V

    .line 80
    invoke-interface {p1, p0}, Lorg/checkerframework/org/apache/bcel/generic/Visitor;->visitConstantPushInstruction(Lorg/checkerframework/org/apache/bcel/generic/ConstantPushInstruction;)V

    .line 81
    invoke-interface {p1, p0}, Lorg/checkerframework/org/apache/bcel/generic/Visitor;->visitDCONST(Lorg/checkerframework/org/apache/bcel/generic/DCONST;)V

    .line 82
    return-void
.end method

.method public getType(Lorg/checkerframework/org/apache/bcel/generic/ConstantPoolGen;)Lorg/checkerframework/org/apache/bcel/generic/Type;
    .locals 1
    .param p1, "cp"    # Lorg/checkerframework/org/apache/bcel/generic/ConstantPoolGen;

    .line 63
    sget-object v0, Lorg/checkerframework/org/apache/bcel/generic/Type;->DOUBLE:Lorg/checkerframework/org/apache/bcel/generic/BasicType;

    return-object v0
.end method

.method public getValue()Ljava/lang/Number;
    .locals 3

    .line 55
    new-instance v0, Ljava/lang/Double;

    iget-wide v1, p0, Lorg/checkerframework/org/apache/bcel/generic/DCONST;->value:D

    invoke-direct {v0, v1, v2}, Ljava/lang/Double;-><init>(D)V

    return-object v0
.end method
