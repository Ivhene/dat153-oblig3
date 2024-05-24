.class public Lorg/checkerframework/org/apache/bcel/generic/FCONST;
.super Lorg/checkerframework/org/apache/bcel/generic/Instruction;
.source "FCONST.java"

# interfaces
.implements Lorg/checkerframework/org/apache/bcel/generic/ConstantPushInstruction;


# instance fields
.field private value:F


# direct methods
.method constructor <init>()V
    .locals 0

    .line 36
    invoke-direct {p0}, Lorg/checkerframework/org/apache/bcel/generic/Instruction;-><init>()V

    .line 37
    return-void
.end method

.method public constructor <init>(F)V
    .locals 6
    .param p1, "f"    # F

    .line 41
    const/4 v0, 0x1

    const/16 v1, 0xb

    invoke-direct {p0, v1, v0}, Lorg/checkerframework/org/apache/bcel/generic/Instruction;-><init>(SS)V

    .line 42
    float-to-double v2, p1

    const-wide/16 v4, 0x0

    cmpl-double v0, v2, v4

    if-nez v0, :cond_0

    .line 43
    invoke-super {p0, v1}, Lorg/checkerframework/org/apache/bcel/generic/Instruction;->setOpcode(S)V

    goto :goto_0

    .line 44
    :cond_0
    float-to-double v0, p1

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    cmpl-double v0, v0, v2

    if-nez v0, :cond_1

    .line 45
    const/16 v0, 0xc

    invoke-super {p0, v0}, Lorg/checkerframework/org/apache/bcel/generic/Instruction;->setOpcode(S)V

    goto :goto_0

    .line 46
    :cond_1
    float-to-double v0, p1

    const-wide/high16 v2, 0x4000000000000000L    # 2.0

    cmpl-double v0, v0, v2

    if-nez v0, :cond_2

    .line 47
    const/16 v0, 0xd

    invoke-super {p0, v0}, Lorg/checkerframework/org/apache/bcel/generic/Instruction;->setOpcode(S)V

    .line 51
    :goto_0
    iput p1, p0, Lorg/checkerframework/org/apache/bcel/generic/FCONST;->value:F

    .line 52
    return-void

    .line 49
    :cond_2
    new-instance v0, Lorg/checkerframework/org/apache/bcel/generic/ClassGenException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "FCONST can be used only for 0.0, 1.0 and 2.0: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

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

    .line 79
    invoke-interface {p1, p0}, Lorg/checkerframework/org/apache/bcel/generic/Visitor;->visitPushInstruction(Lorg/checkerframework/org/apache/bcel/generic/PushInstruction;)V

    .line 80
    invoke-interface {p1, p0}, Lorg/checkerframework/org/apache/bcel/generic/Visitor;->visitStackProducer(Lorg/checkerframework/org/apache/bcel/generic/StackProducer;)V

    .line 81
    invoke-interface {p1, p0}, Lorg/checkerframework/org/apache/bcel/generic/Visitor;->visitTypedInstruction(Lorg/checkerframework/org/apache/bcel/generic/TypedInstruction;)V

    .line 82
    invoke-interface {p1, p0}, Lorg/checkerframework/org/apache/bcel/generic/Visitor;->visitConstantPushInstruction(Lorg/checkerframework/org/apache/bcel/generic/ConstantPushInstruction;)V

    .line 83
    invoke-interface {p1, p0}, Lorg/checkerframework/org/apache/bcel/generic/Visitor;->visitFCONST(Lorg/checkerframework/org/apache/bcel/generic/FCONST;)V

    .line 84
    return-void
.end method

.method public getType(Lorg/checkerframework/org/apache/bcel/generic/ConstantPoolGen;)Lorg/checkerframework/org/apache/bcel/generic/Type;
    .locals 1
    .param p1, "cp"    # Lorg/checkerframework/org/apache/bcel/generic/ConstantPoolGen;

    .line 65
    sget-object v0, Lorg/checkerframework/org/apache/bcel/generic/Type;->FLOAT:Lorg/checkerframework/org/apache/bcel/generic/BasicType;

    return-object v0
.end method

.method public getValue()Ljava/lang/Number;
    .locals 2

    .line 57
    new-instance v0, Ljava/lang/Float;

    iget v1, p0, Lorg/checkerframework/org/apache/bcel/generic/FCONST;->value:F

    invoke-direct {v0, v1}, Ljava/lang/Float;-><init>(F)V

    return-object v0
.end method