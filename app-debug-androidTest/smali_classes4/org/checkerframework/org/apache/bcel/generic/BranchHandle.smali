.class public final Lorg/checkerframework/org/apache/bcel/generic/BranchHandle;
.super Lorg/checkerframework/org/apache/bcel/generic/InstructionHandle;
.source "BranchHandle.java"


# static fields
.field private static bh_list:Lorg/checkerframework/org/apache/bcel/generic/BranchHandle;


# instance fields
.field private bi:Lorg/checkerframework/org/apache/bcel/generic/BranchInstruction;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 45
    const/4 v0, 0x0

    sput-object v0, Lorg/checkerframework/org/apache/bcel/generic/BranchHandle;->bh_list:Lorg/checkerframework/org/apache/bcel/generic/BranchHandle;

    return-void
.end method

.method private constructor <init>(Lorg/checkerframework/org/apache/bcel/generic/BranchInstruction;)V
    .locals 0
    .param p1, "i"    # Lorg/checkerframework/org/apache/bcel/generic/BranchInstruction;

    .line 39
    invoke-direct {p0, p1}, Lorg/checkerframework/org/apache/bcel/generic/InstructionHandle;-><init>(Lorg/checkerframework/org/apache/bcel/generic/Instruction;)V

    .line 40
    iput-object p1, p0, Lorg/checkerframework/org/apache/bcel/generic/BranchHandle;->bi:Lorg/checkerframework/org/apache/bcel/generic/BranchInstruction;

    .line 41
    return-void
.end method

.method static getBranchHandle(Lorg/checkerframework/org/apache/bcel/generic/BranchInstruction;)Lorg/checkerframework/org/apache/bcel/generic/BranchHandle;
    .locals 2
    .param p0, "i"    # Lorg/checkerframework/org/apache/bcel/generic/BranchInstruction;

    .line 49
    sget-object v0, Lorg/checkerframework/org/apache/bcel/generic/BranchHandle;->bh_list:Lorg/checkerframework/org/apache/bcel/generic/BranchHandle;

    if-nez v0, :cond_0

    .line 50
    new-instance v0, Lorg/checkerframework/org/apache/bcel/generic/BranchHandle;

    invoke-direct {v0, p0}, Lorg/checkerframework/org/apache/bcel/generic/BranchHandle;-><init>(Lorg/checkerframework/org/apache/bcel/generic/BranchInstruction;)V

    return-object v0

    .line 52
    :cond_0
    sget-object v0, Lorg/checkerframework/org/apache/bcel/generic/BranchHandle;->bh_list:Lorg/checkerframework/org/apache/bcel/generic/BranchHandle;

    .line 53
    .local v0, "bh":Lorg/checkerframework/org/apache/bcel/generic/BranchHandle;
    invoke-virtual {v0}, Lorg/checkerframework/org/apache/bcel/generic/BranchHandle;->getNext()Lorg/checkerframework/org/apache/bcel/generic/InstructionHandle;

    move-result-object v1

    check-cast v1, Lorg/checkerframework/org/apache/bcel/generic/BranchHandle;

    sput-object v1, Lorg/checkerframework/org/apache/bcel/generic/BranchHandle;->bh_list:Lorg/checkerframework/org/apache/bcel/generic/BranchHandle;

    .line 54
    invoke-virtual {v0, p0}, Lorg/checkerframework/org/apache/bcel/generic/BranchHandle;->setInstruction(Lorg/checkerframework/org/apache/bcel/generic/Instruction;)V

    .line 55
    return-object v0
.end method


# virtual methods
.method protected addHandle()V
    .locals 1

    .line 63
    sget-object v0, Lorg/checkerframework/org/apache/bcel/generic/BranchHandle;->bh_list:Lorg/checkerframework/org/apache/bcel/generic/BranchHandle;

    invoke-super {p0, v0}, Lorg/checkerframework/org/apache/bcel/generic/InstructionHandle;->setNext(Lorg/checkerframework/org/apache/bcel/generic/InstructionHandle;)Lorg/checkerframework/org/apache/bcel/generic/InstructionHandle;

    .line 64
    sput-object p0, Lorg/checkerframework/org/apache/bcel/generic/BranchHandle;->bh_list:Lorg/checkerframework/org/apache/bcel/generic/BranchHandle;

    .line 65
    return-void
.end method

.method public getPosition()I
    .locals 1

    .line 74
    iget-object v0, p0, Lorg/checkerframework/org/apache/bcel/generic/BranchHandle;->bi:Lorg/checkerframework/org/apache/bcel/generic/BranchInstruction;

    invoke-virtual {v0}, Lorg/checkerframework/org/apache/bcel/generic/BranchInstruction;->getPosition()I

    move-result v0

    return v0
.end method

.method public getTarget()Lorg/checkerframework/org/apache/bcel/generic/InstructionHandle;
    .locals 1

    .line 114
    iget-object v0, p0, Lorg/checkerframework/org/apache/bcel/generic/BranchHandle;->bi:Lorg/checkerframework/org/apache/bcel/generic/BranchInstruction;

    invoke-virtual {v0}, Lorg/checkerframework/org/apache/bcel/generic/BranchInstruction;->getTarget()Lorg/checkerframework/org/apache/bcel/generic/InstructionHandle;

    move-result-object v0

    return-object v0
.end method

.method public setInstruction(Lorg/checkerframework/org/apache/bcel/generic/Instruction;)V
    .locals 3
    .param p1, "i"    # Lorg/checkerframework/org/apache/bcel/generic/Instruction;

    .line 123
    invoke-super {p0, p1}, Lorg/checkerframework/org/apache/bcel/generic/InstructionHandle;->setInstruction(Lorg/checkerframework/org/apache/bcel/generic/Instruction;)V

    .line 124
    instance-of v0, p1, Lorg/checkerframework/org/apache/bcel/generic/BranchInstruction;

    if-eqz v0, :cond_0

    .line 128
    move-object v0, p1

    check-cast v0, Lorg/checkerframework/org/apache/bcel/generic/BranchInstruction;

    iput-object v0, p0, Lorg/checkerframework/org/apache/bcel/generic/BranchHandle;->bi:Lorg/checkerframework/org/apache/bcel/generic/BranchInstruction;

    .line 129
    return-void

    .line 125
    :cond_0
    new-instance v0, Lorg/checkerframework/org/apache/bcel/generic/ClassGenException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Assigning "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " to branch handle which is not a branch instruction"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/checkerframework/org/apache/bcel/generic/ClassGenException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method setPosition(I)V
    .locals 1
    .param p1, "pos"    # I

    .line 81
    iget-object v0, p0, Lorg/checkerframework/org/apache/bcel/generic/BranchHandle;->bi:Lorg/checkerframework/org/apache/bcel/generic/BranchInstruction;

    invoke-virtual {v0, p1}, Lorg/checkerframework/org/apache/bcel/generic/BranchInstruction;->setPosition(I)V

    .line 82
    invoke-super {p0, p1}, Lorg/checkerframework/org/apache/bcel/generic/InstructionHandle;->setPosition(I)V

    .line 83
    return-void
.end method

.method public setTarget(Lorg/checkerframework/org/apache/bcel/generic/InstructionHandle;)V
    .locals 1
    .param p1, "ih"    # Lorg/checkerframework/org/apache/bcel/generic/InstructionHandle;

    .line 98
    iget-object v0, p0, Lorg/checkerframework/org/apache/bcel/generic/BranchHandle;->bi:Lorg/checkerframework/org/apache/bcel/generic/BranchInstruction;

    invoke-virtual {v0, p1}, Lorg/checkerframework/org/apache/bcel/generic/BranchInstruction;->setTarget(Lorg/checkerframework/org/apache/bcel/generic/InstructionHandle;)V

    .line 99
    return-void
.end method

.method protected updatePosition(II)I
    .locals 2
    .param p1, "offset"    # I
    .param p2, "max_offset"    # I

    .line 88
    iget-object v0, p0, Lorg/checkerframework/org/apache/bcel/generic/BranchHandle;->bi:Lorg/checkerframework/org/apache/bcel/generic/BranchInstruction;

    invoke-virtual {v0, p1, p2}, Lorg/checkerframework/org/apache/bcel/generic/BranchInstruction;->updatePosition(II)I

    move-result v0

    .line 89
    .local v0, "x":I
    iget-object v1, p0, Lorg/checkerframework/org/apache/bcel/generic/BranchHandle;->bi:Lorg/checkerframework/org/apache/bcel/generic/BranchInstruction;

    invoke-virtual {v1}, Lorg/checkerframework/org/apache/bcel/generic/BranchInstruction;->getPosition()I

    move-result v1

    invoke-super {p0, v1}, Lorg/checkerframework/org/apache/bcel/generic/InstructionHandle;->setPosition(I)V

    .line 90
    return v0
.end method

.method public updateTarget(Lorg/checkerframework/org/apache/bcel/generic/InstructionHandle;Lorg/checkerframework/org/apache/bcel/generic/InstructionHandle;)V
    .locals 1
    .param p1, "old_ih"    # Lorg/checkerframework/org/apache/bcel/generic/InstructionHandle;
    .param p2, "new_ih"    # Lorg/checkerframework/org/apache/bcel/generic/InstructionHandle;

    .line 106
    iget-object v0, p0, Lorg/checkerframework/org/apache/bcel/generic/BranchHandle;->bi:Lorg/checkerframework/org/apache/bcel/generic/BranchInstruction;

    invoke-virtual {v0, p1, p2}, Lorg/checkerframework/org/apache/bcel/generic/BranchInstruction;->updateTarget(Lorg/checkerframework/org/apache/bcel/generic/InstructionHandle;Lorg/checkerframework/org/apache/bcel/generic/InstructionHandle;)V

    .line 107
    return-void
.end method
