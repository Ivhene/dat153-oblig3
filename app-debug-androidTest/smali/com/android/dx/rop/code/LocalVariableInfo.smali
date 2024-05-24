.class public final Lcom/android/dx/rop/code/LocalVariableInfo;
.super Lcom/android/dx/util/MutabilityControl;
.source "LocalVariableInfo.java"


# instance fields
.field private final blockStarts:[Lcom/android/dx/rop/code/RegisterSpecSet;

.field private final emptySet:Lcom/android/dx/rop/code/RegisterSpecSet;

.field private final insnAssignments:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Lcom/android/dx/rop/code/Insn;",
            "Lcom/android/dx/rop/code/RegisterSpec;",
            ">;"
        }
    .end annotation
.end field

.field private final regCount:I


# direct methods
.method public constructor <init>(Lcom/android/dx/rop/code/RopMethod;)V
    .locals 5
    .param p1, "method"    # Lcom/android/dx/rop/code/RopMethod;

    .line 54
    invoke-direct {p0}, Lcom/android/dx/util/MutabilityControl;-><init>()V

    .line 55
    if-eqz p1, :cond_0

    .line 59
    invoke-virtual {p1}, Lcom/android/dx/rop/code/RopMethod;->getBlocks()Lcom/android/dx/rop/code/BasicBlockList;

    move-result-object v0

    .line 60
    .local v0, "blocks":Lcom/android/dx/rop/code/BasicBlockList;
    invoke-virtual {v0}, Lcom/android/dx/rop/code/BasicBlockList;->getMaxLabel()I

    move-result v1

    .line 62
    .local v1, "maxLabel":I
    invoke-virtual {v0}, Lcom/android/dx/rop/code/BasicBlockList;->getRegCount()I

    move-result v2

    iput v2, p0, Lcom/android/dx/rop/code/LocalVariableInfo;->regCount:I

    .line 63
    new-instance v3, Lcom/android/dx/rop/code/RegisterSpecSet;

    invoke-direct {v3, v2}, Lcom/android/dx/rop/code/RegisterSpecSet;-><init>(I)V

    iput-object v3, p0, Lcom/android/dx/rop/code/LocalVariableInfo;->emptySet:Lcom/android/dx/rop/code/RegisterSpecSet;

    .line 64
    new-array v2, v1, [Lcom/android/dx/rop/code/RegisterSpecSet;

    iput-object v2, p0, Lcom/android/dx/rop/code/LocalVariableInfo;->blockStarts:[Lcom/android/dx/rop/code/RegisterSpecSet;

    .line 65
    new-instance v2, Ljava/util/HashMap;

    .line 66
    invoke-virtual {v0}, Lcom/android/dx/rop/code/BasicBlockList;->getInstructionCount()I

    move-result v4

    invoke-direct {v2, v4}, Ljava/util/HashMap;-><init>(I)V

    iput-object v2, p0, Lcom/android/dx/rop/code/LocalVariableInfo;->insnAssignments:Ljava/util/HashMap;

    .line 68
    invoke-virtual {v3}, Lcom/android/dx/rop/code/RegisterSpecSet;->setImmutable()V

    .line 69
    return-void

    .line 56
    .end local v0    # "blocks":Lcom/android/dx/rop/code/BasicBlockList;
    .end local v1    # "maxLabel":I
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "method == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private getStarts0(I)Lcom/android/dx/rop/code/RegisterSpecSet;
    .locals 3
    .param p1, "label"    # I

    .line 247
    :try_start_0
    iget-object v0, p0, Lcom/android/dx/rop/code/LocalVariableInfo;->blockStarts:[Lcom/android/dx/rop/code/RegisterSpecSet;

    aget-object v0, v0, p1
    :try_end_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 248
    :catch_0
    move-exception v0

    .line 250
    .local v0, "ex":Ljava/lang/ArrayIndexOutOfBoundsException;
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "bogus label"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method


# virtual methods
.method public addAssignment(Lcom/android/dx/rop/code/Insn;Lcom/android/dx/rop/code/RegisterSpec;)V
    .locals 2
    .param p1, "insn"    # Lcom/android/dx/rop/code/Insn;
    .param p2, "spec"    # Lcom/android/dx/rop/code/RegisterSpec;

    .line 190
    invoke-virtual {p0}, Lcom/android/dx/rop/code/LocalVariableInfo;->throwIfImmutable()V

    .line 192
    if-eqz p1, :cond_1

    .line 196
    if-eqz p2, :cond_0

    .line 200
    iget-object v0, p0, Lcom/android/dx/rop/code/LocalVariableInfo;->insnAssignments:Ljava/util/HashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 201
    return-void

    .line 197
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "spec == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 193
    :cond_1
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "insn == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public debugDump()V
    .locals 4

    .line 224
    const/4 v0, 0x0

    .local v0, "label":I
    :goto_0
    iget-object v1, p0, Lcom/android/dx/rop/code/LocalVariableInfo;->blockStarts:[Lcom/android/dx/rop/code/RegisterSpecSet;

    array-length v2, v1

    if-ge v0, v2, :cond_2

    .line 225
    aget-object v1, v1, v0

    if-nez v1, :cond_0

    .line 226
    goto :goto_1

    .line 229
    :cond_0
    iget-object v2, p0, Lcom/android/dx/rop/code/LocalVariableInfo;->emptySet:Lcom/android/dx/rop/code/RegisterSpecSet;

    if-ne v1, v2, :cond_1

    .line 230
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

    const-string v3, "%04x: empty set\n"

    invoke-virtual {v1, v3, v2}, Ljava/io/PrintStream;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintStream;

    goto :goto_1

    .line 232
    :cond_1
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget-object v3, p0, Lcom/android/dx/rop/code/LocalVariableInfo;->blockStarts:[Lcom/android/dx/rop/code/RegisterSpecSet;

    aget-object v3, v3, v0

    filled-new-array {v2, v3}, [Ljava/lang/Object;

    move-result-object v2

    const-string v3, "%04x: %s\n"

    invoke-virtual {v1, v3, v2}, Ljava/io/PrintStream;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintStream;

    .line 224
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 235
    .end local v0    # "label":I
    :cond_2
    return-void
.end method

.method public getAssignment(Lcom/android/dx/rop/code/Insn;)Lcom/android/dx/rop/code/RegisterSpec;
    .locals 1
    .param p1, "insn"    # Lcom/android/dx/rop/code/Insn;

    .line 211
    iget-object v0, p0, Lcom/android/dx/rop/code/LocalVariableInfo;->insnAssignments:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/dx/rop/code/RegisterSpec;

    return-object v0
.end method

.method public getAssignmentCount()I
    .locals 1

    .line 220
    iget-object v0, p0, Lcom/android/dx/rop/code/LocalVariableInfo;->insnAssignments:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v0

    return v0
.end method

.method public getStarts(I)Lcom/android/dx/rop/code/RegisterSpecSet;
    .locals 2
    .param p1, "label"    # I

    .line 142
    invoke-direct {p0, p1}, Lcom/android/dx/rop/code/LocalVariableInfo;->getStarts0(I)Lcom/android/dx/rop/code/RegisterSpecSet;

    move-result-object v0

    .line 144
    .local v0, "result":Lcom/android/dx/rop/code/RegisterSpecSet;
    if-eqz v0, :cond_0

    move-object v1, v0

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/android/dx/rop/code/LocalVariableInfo;->emptySet:Lcom/android/dx/rop/code/RegisterSpecSet;

    :goto_0
    return-object v1
.end method

.method public getStarts(Lcom/android/dx/rop/code/BasicBlock;)Lcom/android/dx/rop/code/RegisterSpecSet;
    .locals 1
    .param p1, "block"    # Lcom/android/dx/rop/code/BasicBlock;

    .line 156
    invoke-virtual {p1}, Lcom/android/dx/rop/code/BasicBlock;->getLabel()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/dx/rop/code/LocalVariableInfo;->getStarts(I)Lcom/android/dx/rop/code/RegisterSpecSet;

    move-result-object v0

    return-object v0
.end method

.method public mergeStarts(ILcom/android/dx/rop/code/RegisterSpecSet;)Z
    .locals 5
    .param p1, "label"    # I
    .param p2, "specs"    # Lcom/android/dx/rop/code/RegisterSpecSet;

    .line 108
    invoke-direct {p0, p1}, Lcom/android/dx/rop/code/LocalVariableInfo;->getStarts0(I)Lcom/android/dx/rop/code/RegisterSpecSet;

    move-result-object v0

    .line 109
    .local v0, "start":Lcom/android/dx/rop/code/RegisterSpecSet;
    const/4 v1, 0x0

    .line 111
    .local v1, "changed":Z
    const/4 v2, 0x1

    if-nez v0, :cond_0

    .line 112
    invoke-virtual {p0, p1, p2}, Lcom/android/dx/rop/code/LocalVariableInfo;->setStarts(ILcom/android/dx/rop/code/RegisterSpecSet;)V

    .line 113
    return v2

    .line 116
    :cond_0
    invoke-virtual {v0}, Lcom/android/dx/rop/code/RegisterSpecSet;->mutableCopy()Lcom/android/dx/rop/code/RegisterSpecSet;

    move-result-object v3

    .line 117
    .local v3, "newStart":Lcom/android/dx/rop/code/RegisterSpecSet;
    invoke-virtual {v0}, Lcom/android/dx/rop/code/RegisterSpecSet;->size()I

    move-result v4

    if-eqz v4, :cond_1

    .line 118
    invoke-virtual {v3, p2, v2}, Lcom/android/dx/rop/code/RegisterSpecSet;->intersect(Lcom/android/dx/rop/code/RegisterSpecSet;Z)V

    goto :goto_0

    .line 120
    :cond_1
    invoke-virtual {p2}, Lcom/android/dx/rop/code/RegisterSpecSet;->mutableCopy()Lcom/android/dx/rop/code/RegisterSpecSet;

    move-result-object v3

    .line 123
    :goto_0
    invoke-virtual {v0, v3}, Lcom/android/dx/rop/code/RegisterSpecSet;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 124
    const/4 v2, 0x0

    return v2

    .line 127
    :cond_2
    invoke-virtual {v3}, Lcom/android/dx/rop/code/RegisterSpecSet;->setImmutable()V

    .line 128
    invoke-virtual {p0, p1, v3}, Lcom/android/dx/rop/code/LocalVariableInfo;->setStarts(ILcom/android/dx/rop/code/RegisterSpecSet;)V

    .line 130
    return v2
.end method

.method public mutableCopyOfStarts(I)Lcom/android/dx/rop/code/RegisterSpecSet;
    .locals 3
    .param p1, "label"    # I

    .line 169
    invoke-direct {p0, p1}, Lcom/android/dx/rop/code/LocalVariableInfo;->getStarts0(I)Lcom/android/dx/rop/code/RegisterSpecSet;

    move-result-object v0

    .line 171
    .local v0, "result":Lcom/android/dx/rop/code/RegisterSpecSet;
    if-eqz v0, :cond_0

    .line 172
    invoke-virtual {v0}, Lcom/android/dx/rop/code/RegisterSpecSet;->mutableCopy()Lcom/android/dx/rop/code/RegisterSpecSet;

    move-result-object v1

    goto :goto_0

    :cond_0
    new-instance v1, Lcom/android/dx/rop/code/RegisterSpecSet;

    iget v2, p0, Lcom/android/dx/rop/code/LocalVariableInfo;->regCount:I

    invoke-direct {v1, v2}, Lcom/android/dx/rop/code/RegisterSpecSet;-><init>(I)V

    .line 171
    :goto_0
    return-object v1
.end method

.method public setStarts(ILcom/android/dx/rop/code/RegisterSpecSet;)V
    .locals 3
    .param p1, "label"    # I
    .param p2, "specs"    # Lcom/android/dx/rop/code/RegisterSpecSet;

    .line 79
    invoke-virtual {p0}, Lcom/android/dx/rop/code/LocalVariableInfo;->throwIfImmutable()V

    .line 81
    if-eqz p2, :cond_0

    .line 86
    :try_start_0
    iget-object v0, p0, Lcom/android/dx/rop/code/LocalVariableInfo;->blockStarts:[Lcom/android/dx/rop/code/RegisterSpecSet;

    aput-object p2, v0, p1
    :try_end_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 90
    nop

    .line 91
    return-void

    .line 87
    :catch_0
    move-exception v0

    .line 89
    .local v0, "ex":Ljava/lang/ArrayIndexOutOfBoundsException;
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "bogus label"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 82
    .end local v0    # "ex":Ljava/lang/ArrayIndexOutOfBoundsException;
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "specs == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
