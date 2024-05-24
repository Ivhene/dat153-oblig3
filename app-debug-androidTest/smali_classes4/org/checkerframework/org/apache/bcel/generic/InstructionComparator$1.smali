.class final Lorg/checkerframework/org/apache/bcel/generic/InstructionComparator$1;
.super Ljava/lang/Object;
.source "InstructionComparator.java"

# interfaces
.implements Lorg/checkerframework/org/apache/bcel/generic/InstructionComparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/checkerframework/org/apache/bcel/generic/InstructionComparator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public equals(Lorg/checkerframework/org/apache/bcel/generic/Instruction;Lorg/checkerframework/org/apache/bcel/generic/Instruction;)Z
    .locals 4
    .param p1, "i1"    # Lorg/checkerframework/org/apache/bcel/generic/Instruction;
    .param p2, "i2"    # Lorg/checkerframework/org/apache/bcel/generic/Instruction;

    .line 38
    invoke-virtual {p1}, Lorg/checkerframework/org/apache/bcel/generic/Instruction;->getOpcode()S

    move-result v0

    invoke-virtual {p2}, Lorg/checkerframework/org/apache/bcel/generic/Instruction;->getOpcode()S

    move-result v1

    const/4 v2, 0x0

    if-ne v0, v1, :cond_6

    .line 39
    instance-of v0, p1, Lorg/checkerframework/org/apache/bcel/generic/BranchInstruction;

    if-eqz v0, :cond_0

    .line 41
    return v2

    .line 44
    :cond_0
    instance-of v0, p1, Lorg/checkerframework/org/apache/bcel/generic/ConstantPushInstruction;

    if-eqz v0, :cond_1

    .line 45
    move-object v0, p1

    check-cast v0, Lorg/checkerframework/org/apache/bcel/generic/ConstantPushInstruction;

    invoke-interface {v0}, Lorg/checkerframework/org/apache/bcel/generic/ConstantPushInstruction;->getValue()Ljava/lang/Number;

    move-result-object v0

    move-object v1, p2

    check-cast v1, Lorg/checkerframework/org/apache/bcel/generic/ConstantPushInstruction;

    .line 46
    invoke-interface {v1}, Lorg/checkerframework/org/apache/bcel/generic/ConstantPushInstruction;->getValue()Ljava/lang/Number;

    move-result-object v1

    .line 45
    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0

    .line 47
    :cond_1
    instance-of v0, p1, Lorg/checkerframework/org/apache/bcel/generic/IndexedInstruction;

    const/4 v1, 0x1

    if-eqz v0, :cond_3

    .line 48
    move-object v0, p1

    check-cast v0, Lorg/checkerframework/org/apache/bcel/generic/IndexedInstruction;

    invoke-interface {v0}, Lorg/checkerframework/org/apache/bcel/generic/IndexedInstruction;->getIndex()I

    move-result v0

    move-object v3, p2

    check-cast v3, Lorg/checkerframework/org/apache/bcel/generic/IndexedInstruction;

    .line 49
    invoke-interface {v3}, Lorg/checkerframework/org/apache/bcel/generic/IndexedInstruction;->getIndex()I

    move-result v3

    if-ne v0, v3, :cond_2

    move v2, v1

    .line 48
    :cond_2
    return v2

    .line 50
    :cond_3
    instance-of v0, p1, Lorg/checkerframework/org/apache/bcel/generic/NEWARRAY;

    if-eqz v0, :cond_5

    .line 51
    move-object v0, p1

    check-cast v0, Lorg/checkerframework/org/apache/bcel/generic/NEWARRAY;

    invoke-virtual {v0}, Lorg/checkerframework/org/apache/bcel/generic/NEWARRAY;->getTypecode()B

    move-result v0

    move-object v3, p2

    check-cast v3, Lorg/checkerframework/org/apache/bcel/generic/NEWARRAY;

    invoke-virtual {v3}, Lorg/checkerframework/org/apache/bcel/generic/NEWARRAY;->getTypecode()B

    move-result v3

    if-ne v0, v3, :cond_4

    move v2, v1

    :cond_4
    return v2

    .line 53
    :cond_5
    return v1

    .line 56
    :cond_6
    return v2
.end method
