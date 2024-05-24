.class public Lorg/checkerframework/org/apache/bcel/generic/InstructionList;
.super Ljava/lang/Object;
.source "InstructionList.java"

# interfaces
.implements Ljava/lang/Iterable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Iterable<",
        "Lorg/checkerframework/org/apache/bcel/generic/InstructionHandle;",
        ">;"
    }
.end annotation


# instance fields
.field private byte_positions:[I

.field private end:Lorg/checkerframework/org/apache/bcel/generic/InstructionHandle;

.field private length:I

.field private observers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/checkerframework/org/apache/bcel/generic/InstructionListObserver;",
            ">;"
        }
    .end annotation
.end field

.field private start:Lorg/checkerframework/org/apache/bcel/generic/InstructionHandle;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/checkerframework/org/apache/bcel/generic/InstructionList;->start:Lorg/checkerframework/org/apache/bcel/generic/InstructionHandle;

    .line 52
    iput-object v0, p0, Lorg/checkerframework/org/apache/bcel/generic/InstructionList;->end:Lorg/checkerframework/org/apache/bcel/generic/InstructionHandle;

    .line 53
    const/4 v0, 0x0

    iput v0, p0, Lorg/checkerframework/org/apache/bcel/generic/InstructionList;->length:I

    .line 60
    return-void
.end method

.method public constructor <init>(Lorg/checkerframework/org/apache/bcel/generic/BranchInstruction;)V
    .locals 1
    .param p1, "i"    # Lorg/checkerframework/org/apache/bcel/generic/BranchInstruction;

    .line 78
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/checkerframework/org/apache/bcel/generic/InstructionList;->start:Lorg/checkerframework/org/apache/bcel/generic/InstructionHandle;

    .line 52
    iput-object v0, p0, Lorg/checkerframework/org/apache/bcel/generic/InstructionList;->end:Lorg/checkerframework/org/apache/bcel/generic/InstructionHandle;

    .line 53
    const/4 v0, 0x0

    iput v0, p0, Lorg/checkerframework/org/apache/bcel/generic/InstructionList;->length:I

    .line 79
    invoke-virtual {p0, p1}, Lorg/checkerframework/org/apache/bcel/generic/InstructionList;->append(Lorg/checkerframework/org/apache/bcel/generic/BranchInstruction;)Lorg/checkerframework/org/apache/bcel/generic/BranchHandle;

    .line 80
    return-void
.end method

.method public constructor <init>(Lorg/checkerframework/org/apache/bcel/generic/CompoundInstruction;)V
    .locals 1
    .param p1, "c"    # Lorg/checkerframework/org/apache/bcel/generic/CompoundInstruction;

    .line 88
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/checkerframework/org/apache/bcel/generic/InstructionList;->start:Lorg/checkerframework/org/apache/bcel/generic/InstructionHandle;

    .line 52
    iput-object v0, p0, Lorg/checkerframework/org/apache/bcel/generic/InstructionList;->end:Lorg/checkerframework/org/apache/bcel/generic/InstructionHandle;

    .line 53
    const/4 v0, 0x0

    iput v0, p0, Lorg/checkerframework/org/apache/bcel/generic/InstructionList;->length:I

    .line 89
    invoke-interface {p1}, Lorg/checkerframework/org/apache/bcel/generic/CompoundInstruction;->getInstructionList()Lorg/checkerframework/org/apache/bcel/generic/InstructionList;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/checkerframework/org/apache/bcel/generic/InstructionList;->append(Lorg/checkerframework/org/apache/bcel/generic/InstructionList;)Lorg/checkerframework/org/apache/bcel/generic/InstructionHandle;

    .line 90
    return-void
.end method

.method public constructor <init>(Lorg/checkerframework/org/apache/bcel/generic/Instruction;)V
    .locals 1
    .param p1, "i"    # Lorg/checkerframework/org/apache/bcel/generic/Instruction;

    .line 68
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/checkerframework/org/apache/bcel/generic/InstructionList;->start:Lorg/checkerframework/org/apache/bcel/generic/InstructionHandle;

    .line 52
    iput-object v0, p0, Lorg/checkerframework/org/apache/bcel/generic/InstructionList;->end:Lorg/checkerframework/org/apache/bcel/generic/InstructionHandle;

    .line 53
    const/4 v0, 0x0

    iput v0, p0, Lorg/checkerframework/org/apache/bcel/generic/InstructionList;->length:I

    .line 69
    invoke-virtual {p0, p1}, Lorg/checkerframework/org/apache/bcel/generic/InstructionList;->append(Lorg/checkerframework/org/apache/bcel/generic/Instruction;)Lorg/checkerframework/org/apache/bcel/generic/InstructionHandle;

    .line 70
    return-void
.end method

.method public constructor <init>([B)V
    .locals 13
    .param p1, "code"    # [B

    .line 158
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/checkerframework/org/apache/bcel/generic/InstructionList;->start:Lorg/checkerframework/org/apache/bcel/generic/InstructionHandle;

    .line 52
    iput-object v0, p0, Lorg/checkerframework/org/apache/bcel/generic/InstructionList;->end:Lorg/checkerframework/org/apache/bcel/generic/InstructionHandle;

    .line 53
    const/4 v0, 0x0

    iput v0, p0, Lorg/checkerframework/org/apache/bcel/generic/InstructionList;->length:I

    .line 159
    const/4 v1, 0x0

    .line 162
    .local v1, "count":I
    :try_start_0
    new-instance v2, Lorg/checkerframework/org/apache/bcel/util/ByteSequence;

    invoke-direct {v2, p1}, Lorg/checkerframework/org/apache/bcel/util/ByteSequence;-><init>([B)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 163
    .local v2, "bytes":Lorg/checkerframework/org/apache/bcel/util/ByteSequence;
    :try_start_1
    array-length v3, p1

    new-array v3, v3, [Lorg/checkerframework/org/apache/bcel/generic/InstructionHandle;

    .line 164
    .local v3, "ihs":[Lorg/checkerframework/org/apache/bcel/generic/InstructionHandle;
    array-length v4, p1

    new-array v4, v4, [I

    .line 168
    .local v4, "pos":[I
    :goto_0
    invoke-virtual {v2}, Lorg/checkerframework/org/apache/bcel/util/ByteSequence;->available()I

    move-result v5

    if-lez v5, :cond_1

    .line 170
    invoke-virtual {v2}, Lorg/checkerframework/org/apache/bcel/util/ByteSequence;->getIndex()I

    move-result v5

    .line 171
    .local v5, "off":I
    aput v5, v4, v1

    .line 175
    invoke-static {v2}, Lorg/checkerframework/org/apache/bcel/generic/Instruction;->readInstruction(Lorg/checkerframework/org/apache/bcel/util/ByteSequence;)Lorg/checkerframework/org/apache/bcel/generic/Instruction;

    move-result-object v6

    .line 177
    .local v6, "i":Lorg/checkerframework/org/apache/bcel/generic/Instruction;
    instance-of v7, v6, Lorg/checkerframework/org/apache/bcel/generic/BranchInstruction;

    if-eqz v7, :cond_0

    .line 178
    move-object v7, v6

    check-cast v7, Lorg/checkerframework/org/apache/bcel/generic/BranchInstruction;

    invoke-virtual {p0, v7}, Lorg/checkerframework/org/apache/bcel/generic/InstructionList;->append(Lorg/checkerframework/org/apache/bcel/generic/BranchInstruction;)Lorg/checkerframework/org/apache/bcel/generic/BranchHandle;

    move-result-object v7

    .local v7, "ih":Lorg/checkerframework/org/apache/bcel/generic/InstructionHandle;
    goto :goto_1

    .line 180
    .end local v7    # "ih":Lorg/checkerframework/org/apache/bcel/generic/InstructionHandle;
    :cond_0
    invoke-virtual {p0, v6}, Lorg/checkerframework/org/apache/bcel/generic/InstructionList;->append(Lorg/checkerframework/org/apache/bcel/generic/Instruction;)Lorg/checkerframework/org/apache/bcel/generic/InstructionHandle;

    move-result-object v7

    .line 182
    .restart local v7    # "ih":Lorg/checkerframework/org/apache/bcel/generic/InstructionHandle;
    :goto_1
    invoke-virtual {v7, v5}, Lorg/checkerframework/org/apache/bcel/generic/InstructionHandle;->setPosition(I)V

    .line 183
    aput-object v7, v3, v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 184
    nop

    .end local v5    # "off":I
    .end local v6    # "i":Lorg/checkerframework/org/apache/bcel/generic/Instruction;
    .end local v7    # "ih":Lorg/checkerframework/org/apache/bcel/generic/InstructionHandle;
    add-int/lit8 v1, v1, 0x1

    .line 185
    goto :goto_0

    .line 186
    :cond_1
    :try_start_2
    invoke-virtual {v2}, Lorg/checkerframework/org/apache/bcel/util/ByteSequence;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .line 188
    .end local v2    # "bytes":Lorg/checkerframework/org/apache/bcel/util/ByteSequence;
    nop

    .line 189
    new-array v2, v1, [I

    iput-object v2, p0, Lorg/checkerframework/org/apache/bcel/generic/InstructionList;->byte_positions:[I

    .line 190
    invoke-static {v4, v0, v2, v0, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 194
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_2
    if-ge v0, v1, :cond_5

    .line 195
    aget-object v2, v3, v0

    instance-of v2, v2, Lorg/checkerframework/org/apache/bcel/generic/BranchHandle;

    if-eqz v2, :cond_4

    .line 196
    aget-object v2, v3, v0

    invoke-virtual {v2}, Lorg/checkerframework/org/apache/bcel/generic/InstructionHandle;->getInstruction()Lorg/checkerframework/org/apache/bcel/generic/Instruction;

    move-result-object v2

    check-cast v2, Lorg/checkerframework/org/apache/bcel/generic/BranchInstruction;

    .line 197
    .local v2, "bi":Lorg/checkerframework/org/apache/bcel/generic/BranchInstruction;
    invoke-virtual {v2}, Lorg/checkerframework/org/apache/bcel/generic/BranchInstruction;->getPosition()I

    move-result v5

    invoke-virtual {v2}, Lorg/checkerframework/org/apache/bcel/generic/BranchInstruction;->getIndex()I

    move-result v6

    add-int/2addr v5, v6

    .line 201
    .local v5, "target":I
    invoke-static {v3, v4, v1, v5}, Lorg/checkerframework/org/apache/bcel/generic/InstructionList;->findHandle([Lorg/checkerframework/org/apache/bcel/generic/InstructionHandle;[III)Lorg/checkerframework/org/apache/bcel/generic/InstructionHandle;

    move-result-object v6

    .line 202
    .local v6, "ih":Lorg/checkerframework/org/apache/bcel/generic/InstructionHandle;
    if-eqz v6, :cond_3

    .line 205
    invoke-virtual {v2, v6}, Lorg/checkerframework/org/apache/bcel/generic/BranchInstruction;->setTarget(Lorg/checkerframework/org/apache/bcel/generic/InstructionHandle;)V

    .line 207
    instance-of v7, v2, Lorg/checkerframework/org/apache/bcel/generic/Select;

    if-eqz v7, :cond_4

    .line 208
    move-object v7, v2

    check-cast v7, Lorg/checkerframework/org/apache/bcel/generic/Select;

    .line 209
    .local v7, "s":Lorg/checkerframework/org/apache/bcel/generic/Select;
    invoke-virtual {v7}, Lorg/checkerframework/org/apache/bcel/generic/Select;->getIndices()[I

    move-result-object v8

    .line 210
    .local v8, "indices":[I
    const/4 v9, 0x0

    .local v9, "j":I
    :goto_3
    array-length v10, v8

    if-ge v9, v10, :cond_4

    .line 211
    invoke-virtual {v2}, Lorg/checkerframework/org/apache/bcel/generic/BranchInstruction;->getPosition()I

    move-result v10

    aget v11, v8, v9

    add-int v5, v10, v11

    .line 212
    invoke-static {v3, v4, v1, v5}, Lorg/checkerframework/org/apache/bcel/generic/InstructionList;->findHandle([Lorg/checkerframework/org/apache/bcel/generic/InstructionHandle;[III)Lorg/checkerframework/org/apache/bcel/generic/InstructionHandle;

    move-result-object v6

    .line 213
    if-eqz v6, :cond_2

    .line 216
    invoke-virtual {v7, v9, v6}, Lorg/checkerframework/org/apache/bcel/generic/Select;->setTarget(ILorg/checkerframework/org/apache/bcel/generic/InstructionHandle;)V

    .line 210
    add-int/lit8 v9, v9, 0x1

    goto :goto_3

    .line 214
    :cond_2
    new-instance v10, Lorg/checkerframework/org/apache/bcel/generic/ClassGenException;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Couldn\'t find target for switch: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Lorg/checkerframework/org/apache/bcel/generic/ClassGenException;-><init>(Ljava/lang/String;)V

    throw v10

    .line 203
    .end local v7    # "s":Lorg/checkerframework/org/apache/bcel/generic/Select;
    .end local v8    # "indices":[I
    .end local v9    # "j":I
    :cond_3
    new-instance v7, Lorg/checkerframework/org/apache/bcel/generic/ClassGenException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Couldn\'t find target for branch: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Lorg/checkerframework/org/apache/bcel/generic/ClassGenException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 194
    .end local v2    # "bi":Lorg/checkerframework/org/apache/bcel/generic/BranchInstruction;
    .end local v5    # "target":I
    .end local v6    # "ih":Lorg/checkerframework/org/apache/bcel/generic/InstructionHandle;
    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 221
    .end local v0    # "i":I
    :cond_5
    return-void

    .line 162
    .end local v3    # "ihs":[Lorg/checkerframework/org/apache/bcel/generic/InstructionHandle;
    .end local v4    # "pos":[I
    .local v2, "bytes":Lorg/checkerframework/org/apache/bcel/util/ByteSequence;
    :catchall_0
    move-exception v0

    .end local v1    # "count":I
    .end local v2    # "bytes":Lorg/checkerframework/org/apache/bcel/util/ByteSequence;
    .end local p1    # "code":[B
    :try_start_3
    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 186
    .restart local v1    # "count":I
    .restart local v2    # "bytes":Lorg/checkerframework/org/apache/bcel/util/ByteSequence;
    .restart local p1    # "code":[B
    :catchall_1
    move-exception v3

    :try_start_4
    invoke-virtual {v2}, Lorg/checkerframework/org/apache/bcel/util/ByteSequence;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    goto :goto_4

    :catchall_2
    move-exception v4

    :try_start_5
    invoke-virtual {v0, v4}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .end local v1    # "count":I
    .end local p1    # "code":[B
    :goto_4
    throw v3
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_0

    .end local v2    # "bytes":Lorg/checkerframework/org/apache/bcel/util/ByteSequence;
    .restart local v1    # "count":I
    .restart local p1    # "code":[B
    :catch_0
    move-exception v0

    .line 187
    .local v0, "e":Ljava/io/IOException;
    new-instance v2, Lorg/checkerframework/org/apache/bcel/generic/ClassGenException;

    invoke-virtual {v0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3, v0}, Lorg/checkerframework/org/apache/bcel/generic/ClassGenException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
.end method

.method static synthetic access$000(Lorg/checkerframework/org/apache/bcel/generic/InstructionList;)Lorg/checkerframework/org/apache/bcel/generic/InstructionHandle;
    .locals 1
    .param p0, "x0"    # Lorg/checkerframework/org/apache/bcel/generic/InstructionList;

    .line 49
    iget-object v0, p0, Lorg/checkerframework/org/apache/bcel/generic/InstructionList;->start:Lorg/checkerframework/org/apache/bcel/generic/InstructionHandle;

    return-object v0
.end method

.method private append(Lorg/checkerframework/org/apache/bcel/generic/InstructionHandle;)V
    .locals 2
    .param p1, "ih"    # Lorg/checkerframework/org/apache/bcel/generic/InstructionHandle;

    .line 302
    invoke-virtual {p0}, Lorg/checkerframework/org/apache/bcel/generic/InstructionList;->isEmpty()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 303
    iput-object p1, p0, Lorg/checkerframework/org/apache/bcel/generic/InstructionList;->end:Lorg/checkerframework/org/apache/bcel/generic/InstructionHandle;

    iput-object p1, p0, Lorg/checkerframework/org/apache/bcel/generic/InstructionList;->start:Lorg/checkerframework/org/apache/bcel/generic/InstructionHandle;

    .line 304
    invoke-virtual {p1, v1}, Lorg/checkerframework/org/apache/bcel/generic/InstructionHandle;->setPrev(Lorg/checkerframework/org/apache/bcel/generic/InstructionHandle;)Lorg/checkerframework/org/apache/bcel/generic/InstructionHandle;

    move-result-object v0

    invoke-virtual {p1, v0}, Lorg/checkerframework/org/apache/bcel/generic/InstructionHandle;->setNext(Lorg/checkerframework/org/apache/bcel/generic/InstructionHandle;)Lorg/checkerframework/org/apache/bcel/generic/InstructionHandle;

    goto :goto_0

    .line 306
    :cond_0
    iget-object v0, p0, Lorg/checkerframework/org/apache/bcel/generic/InstructionList;->end:Lorg/checkerframework/org/apache/bcel/generic/InstructionHandle;

    invoke-virtual {v0, p1}, Lorg/checkerframework/org/apache/bcel/generic/InstructionHandle;->setNext(Lorg/checkerframework/org/apache/bcel/generic/InstructionHandle;)Lorg/checkerframework/org/apache/bcel/generic/InstructionHandle;

    .line 307
    iget-object v0, p0, Lorg/checkerframework/org/apache/bcel/generic/InstructionList;->end:Lorg/checkerframework/org/apache/bcel/generic/InstructionHandle;

    invoke-virtual {p1, v0}, Lorg/checkerframework/org/apache/bcel/generic/InstructionHandle;->setPrev(Lorg/checkerframework/org/apache/bcel/generic/InstructionHandle;)Lorg/checkerframework/org/apache/bcel/generic/InstructionHandle;

    .line 308
    invoke-virtual {p1, v1}, Lorg/checkerframework/org/apache/bcel/generic/InstructionHandle;->setNext(Lorg/checkerframework/org/apache/bcel/generic/InstructionHandle;)Lorg/checkerframework/org/apache/bcel/generic/InstructionHandle;

    .line 309
    iput-object p1, p0, Lorg/checkerframework/org/apache/bcel/generic/InstructionList;->end:Lorg/checkerframework/org/apache/bcel/generic/InstructionHandle;

    .line 311
    :goto_0
    iget v0, p0, Lorg/checkerframework/org/apache/bcel/generic/InstructionList;->length:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/checkerframework/org/apache/bcel/generic/InstructionList;->length:I

    .line 312
    return-void
.end method

.method private clear()V
    .locals 1

    .line 1105
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/checkerframework/org/apache/bcel/generic/InstructionList;->end:Lorg/checkerframework/org/apache/bcel/generic/InstructionHandle;

    iput-object v0, p0, Lorg/checkerframework/org/apache/bcel/generic/InstructionList;->start:Lorg/checkerframework/org/apache/bcel/generic/InstructionHandle;

    .line 1106
    const/4 v0, 0x0

    iput v0, p0, Lorg/checkerframework/org/apache/bcel/generic/InstructionList;->length:I

    .line 1107
    return-void
.end method

.method public static findHandle([Lorg/checkerframework/org/apache/bcel/generic/InstructionHandle;[III)Lorg/checkerframework/org/apache/bcel/generic/InstructionHandle;
    .locals 5
    .param p0, "ihs"    # [Lorg/checkerframework/org/apache/bcel/generic/InstructionHandle;
    .param p1, "pos"    # [I
    .param p2, "count"    # I
    .param p3, "target"    # I

    .line 113
    const/4 v0, 0x0

    .line 114
    .local v0, "l":I
    add-int/lit8 v1, p2, -0x1

    .line 119
    .local v1, "r":I
    :cond_0
    add-int v2, v0, v1

    div-int/lit8 v2, v2, 0x2

    .line 120
    .local v2, "i":I
    aget v3, p1, v2

    .line 121
    .local v3, "j":I
    if-ne v3, p3, :cond_1

    .line 122
    aget-object v4, p0, v2

    return-object v4

    .line 123
    :cond_1
    if-ge p3, v3, :cond_2

    .line 124
    add-int/lit8 v1, v2, -0x1

    goto :goto_0

    .line 126
    :cond_2
    add-int/lit8 v0, v2, 0x1

    .line 128
    .end local v2    # "i":I
    .end local v3    # "j":I
    :goto_0
    if-le v0, v1, :cond_0

    .line 129
    const/4 v2, 0x0

    return-object v2
.end method

.method private findInstruction1(Lorg/checkerframework/org/apache/bcel/generic/Instruction;)Lorg/checkerframework/org/apache/bcel/generic/InstructionHandle;
    .locals 2
    .param p1, "i"    # Lorg/checkerframework/org/apache/bcel/generic/Instruction;

    .line 806
    iget-object v0, p0, Lorg/checkerframework/org/apache/bcel/generic/InstructionList;->start:Lorg/checkerframework/org/apache/bcel/generic/InstructionHandle;

    .local v0, "ih":Lorg/checkerframework/org/apache/bcel/generic/InstructionHandle;
    :goto_0
    if-eqz v0, :cond_1

    .line 807
    invoke-virtual {v0}, Lorg/checkerframework/org/apache/bcel/generic/InstructionHandle;->getInstruction()Lorg/checkerframework/org/apache/bcel/generic/Instruction;

    move-result-object v1

    if-ne v1, p1, :cond_0

    .line 808
    return-object v0

    .line 806
    :cond_0
    invoke-virtual {v0}, Lorg/checkerframework/org/apache/bcel/generic/InstructionHandle;->getNext()Lorg/checkerframework/org/apache/bcel/generic/InstructionHandle;

    move-result-object v0

    goto :goto_0

    .line 811
    .end local v0    # "ih":Lorg/checkerframework/org/apache/bcel/generic/InstructionHandle;
    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method private findInstruction2(Lorg/checkerframework/org/apache/bcel/generic/Instruction;)Lorg/checkerframework/org/apache/bcel/generic/InstructionHandle;
    .locals 2
    .param p1, "i"    # Lorg/checkerframework/org/apache/bcel/generic/Instruction;

    .line 823
    iget-object v0, p0, Lorg/checkerframework/org/apache/bcel/generic/InstructionList;->end:Lorg/checkerframework/org/apache/bcel/generic/InstructionHandle;

    .local v0, "ih":Lorg/checkerframework/org/apache/bcel/generic/InstructionHandle;
    :goto_0
    if-eqz v0, :cond_1

    .line 824
    invoke-virtual {v0}, Lorg/checkerframework/org/apache/bcel/generic/InstructionHandle;->getInstruction()Lorg/checkerframework/org/apache/bcel/generic/Instruction;

    move-result-object v1

    if-ne v1, p1, :cond_0

    .line 825
    return-object v0

    .line 823
    :cond_0
    invoke-virtual {v0}, Lorg/checkerframework/org/apache/bcel/generic/InstructionHandle;->getPrev()Lorg/checkerframework/org/apache/bcel/generic/InstructionHandle;

    move-result-object v0

    goto :goto_0

    .line 828
    .end local v0    # "ih":Lorg/checkerframework/org/apache/bcel/generic/InstructionHandle;
    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method private insert(Lorg/checkerframework/org/apache/bcel/generic/InstructionHandle;)V
    .locals 2
    .param p1, "ih"    # Lorg/checkerframework/org/apache/bcel/generic/InstructionHandle;

    .line 473
    invoke-virtual {p0}, Lorg/checkerframework/org/apache/bcel/generic/InstructionList;->isEmpty()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 474
    iput-object p1, p0, Lorg/checkerframework/org/apache/bcel/generic/InstructionList;->end:Lorg/checkerframework/org/apache/bcel/generic/InstructionHandle;

    iput-object p1, p0, Lorg/checkerframework/org/apache/bcel/generic/InstructionList;->start:Lorg/checkerframework/org/apache/bcel/generic/InstructionHandle;

    .line 475
    invoke-virtual {p1, v1}, Lorg/checkerframework/org/apache/bcel/generic/InstructionHandle;->setPrev(Lorg/checkerframework/org/apache/bcel/generic/InstructionHandle;)Lorg/checkerframework/org/apache/bcel/generic/InstructionHandle;

    move-result-object v0

    invoke-virtual {p1, v0}, Lorg/checkerframework/org/apache/bcel/generic/InstructionHandle;->setNext(Lorg/checkerframework/org/apache/bcel/generic/InstructionHandle;)Lorg/checkerframework/org/apache/bcel/generic/InstructionHandle;

    goto :goto_0

    .line 477
    :cond_0
    iget-object v0, p0, Lorg/checkerframework/org/apache/bcel/generic/InstructionList;->start:Lorg/checkerframework/org/apache/bcel/generic/InstructionHandle;

    invoke-virtual {v0, p1}, Lorg/checkerframework/org/apache/bcel/generic/InstructionHandle;->setPrev(Lorg/checkerframework/org/apache/bcel/generic/InstructionHandle;)Lorg/checkerframework/org/apache/bcel/generic/InstructionHandle;

    .line 478
    iget-object v0, p0, Lorg/checkerframework/org/apache/bcel/generic/InstructionList;->start:Lorg/checkerframework/org/apache/bcel/generic/InstructionHandle;

    invoke-virtual {p1, v0}, Lorg/checkerframework/org/apache/bcel/generic/InstructionHandle;->setNext(Lorg/checkerframework/org/apache/bcel/generic/InstructionHandle;)Lorg/checkerframework/org/apache/bcel/generic/InstructionHandle;

    .line 479
    invoke-virtual {p1, v1}, Lorg/checkerframework/org/apache/bcel/generic/InstructionHandle;->setPrev(Lorg/checkerframework/org/apache/bcel/generic/InstructionHandle;)Lorg/checkerframework/org/apache/bcel/generic/InstructionHandle;

    .line 480
    iput-object p1, p0, Lorg/checkerframework/org/apache/bcel/generic/InstructionList;->start:Lorg/checkerframework/org/apache/bcel/generic/InstructionHandle;

    .line 482
    :goto_0
    iget v0, p0, Lorg/checkerframework/org/apache/bcel/generic/InstructionList;->length:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/checkerframework/org/apache/bcel/generic/InstructionList;->length:I

    .line 483
    return-void
.end method

.method private remove(Lorg/checkerframework/org/apache/bcel/generic/InstructionHandle;Lorg/checkerframework/org/apache/bcel/generic/InstructionHandle;)V
    .locals 8
    .param p1, "prev"    # Lorg/checkerframework/org/apache/bcel/generic/InstructionHandle;
    .param p2, "next"    # Lorg/checkerframework/org/apache/bcel/generic/InstructionHandle;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/checkerframework/org/apache/bcel/generic/TargetLostException;
        }
    .end annotation

    .line 693
    const/4 v0, 0x0

    if-nez p1, :cond_0

    if-nez p2, :cond_0

    .line 694
    iget-object v1, p0, Lorg/checkerframework/org/apache/bcel/generic/InstructionList;->start:Lorg/checkerframework/org/apache/bcel/generic/InstructionHandle;

    .line 695
    .local v1, "first":Lorg/checkerframework/org/apache/bcel/generic/InstructionHandle;
    iget-object v2, p0, Lorg/checkerframework/org/apache/bcel/generic/InstructionList;->end:Lorg/checkerframework/org/apache/bcel/generic/InstructionHandle;

    .line 696
    .local v2, "last":Lorg/checkerframework/org/apache/bcel/generic/InstructionHandle;
    iput-object v0, p0, Lorg/checkerframework/org/apache/bcel/generic/InstructionList;->end:Lorg/checkerframework/org/apache/bcel/generic/InstructionHandle;

    iput-object v0, p0, Lorg/checkerframework/org/apache/bcel/generic/InstructionList;->start:Lorg/checkerframework/org/apache/bcel/generic/InstructionHandle;

    goto :goto_1

    .line 698
    .end local v1    # "first":Lorg/checkerframework/org/apache/bcel/generic/InstructionHandle;
    .end local v2    # "last":Lorg/checkerframework/org/apache/bcel/generic/InstructionHandle;
    :cond_0
    if-nez p1, :cond_1

    .line 699
    iget-object v1, p0, Lorg/checkerframework/org/apache/bcel/generic/InstructionList;->start:Lorg/checkerframework/org/apache/bcel/generic/InstructionHandle;

    .line 700
    .restart local v1    # "first":Lorg/checkerframework/org/apache/bcel/generic/InstructionHandle;
    iput-object p2, p0, Lorg/checkerframework/org/apache/bcel/generic/InstructionList;->start:Lorg/checkerframework/org/apache/bcel/generic/InstructionHandle;

    goto :goto_0

    .line 702
    .end local v1    # "first":Lorg/checkerframework/org/apache/bcel/generic/InstructionHandle;
    :cond_1
    invoke-virtual {p1}, Lorg/checkerframework/org/apache/bcel/generic/InstructionHandle;->getNext()Lorg/checkerframework/org/apache/bcel/generic/InstructionHandle;

    move-result-object v1

    .line 703
    .restart local v1    # "first":Lorg/checkerframework/org/apache/bcel/generic/InstructionHandle;
    invoke-virtual {p1, p2}, Lorg/checkerframework/org/apache/bcel/generic/InstructionHandle;->setNext(Lorg/checkerframework/org/apache/bcel/generic/InstructionHandle;)Lorg/checkerframework/org/apache/bcel/generic/InstructionHandle;

    .line 705
    :goto_0
    if-nez p2, :cond_2

    .line 706
    iget-object v2, p0, Lorg/checkerframework/org/apache/bcel/generic/InstructionList;->end:Lorg/checkerframework/org/apache/bcel/generic/InstructionHandle;

    .line 707
    .restart local v2    # "last":Lorg/checkerframework/org/apache/bcel/generic/InstructionHandle;
    iput-object p1, p0, Lorg/checkerframework/org/apache/bcel/generic/InstructionList;->end:Lorg/checkerframework/org/apache/bcel/generic/InstructionHandle;

    goto :goto_1

    .line 709
    .end local v2    # "last":Lorg/checkerframework/org/apache/bcel/generic/InstructionHandle;
    :cond_2
    invoke-virtual {p2}, Lorg/checkerframework/org/apache/bcel/generic/InstructionHandle;->getPrev()Lorg/checkerframework/org/apache/bcel/generic/InstructionHandle;

    move-result-object v2

    .line 710
    .restart local v2    # "last":Lorg/checkerframework/org/apache/bcel/generic/InstructionHandle;
    invoke-virtual {p2, p1}, Lorg/checkerframework/org/apache/bcel/generic/InstructionHandle;->setPrev(Lorg/checkerframework/org/apache/bcel/generic/InstructionHandle;)Lorg/checkerframework/org/apache/bcel/generic/InstructionHandle;

    .line 713
    :goto_1
    invoke-virtual {v1, v0}, Lorg/checkerframework/org/apache/bcel/generic/InstructionHandle;->setPrev(Lorg/checkerframework/org/apache/bcel/generic/InstructionHandle;)Lorg/checkerframework/org/apache/bcel/generic/InstructionHandle;

    .line 714
    invoke-virtual {v2, v0}, Lorg/checkerframework/org/apache/bcel/generic/InstructionHandle;->setNext(Lorg/checkerframework/org/apache/bcel/generic/InstructionHandle;)Lorg/checkerframework/org/apache/bcel/generic/InstructionHandle;

    .line 715
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 716
    .local v3, "target_vec":Ljava/util/List;, "Ljava/util/List<Lorg/checkerframework/org/apache/bcel/generic/InstructionHandle;>;"
    move-object v4, v1

    .local v4, "ih":Lorg/checkerframework/org/apache/bcel/generic/InstructionHandle;
    :goto_2
    if-eqz v4, :cond_3

    .line 717
    invoke-virtual {v4}, Lorg/checkerframework/org/apache/bcel/generic/InstructionHandle;->getInstruction()Lorg/checkerframework/org/apache/bcel/generic/Instruction;

    move-result-object v5

    invoke-virtual {v5}, Lorg/checkerframework/org/apache/bcel/generic/Instruction;->dispose()V

    .line 716
    invoke-virtual {v4}, Lorg/checkerframework/org/apache/bcel/generic/InstructionHandle;->getNext()Lorg/checkerframework/org/apache/bcel/generic/InstructionHandle;

    move-result-object v4

    goto :goto_2

    .line 719
    .end local v4    # "ih":Lorg/checkerframework/org/apache/bcel/generic/InstructionHandle;
    :cond_3
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "{ "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 720
    .local v4, "buf":Ljava/lang/StringBuilder;
    move-object v5, v1

    .local v5, "ih":Lorg/checkerframework/org/apache/bcel/generic/InstructionHandle;
    :goto_3
    if-eqz v5, :cond_5

    .line 721
    invoke-virtual {v5}, Lorg/checkerframework/org/apache/bcel/generic/InstructionHandle;->getNext()Lorg/checkerframework/org/apache/bcel/generic/InstructionHandle;

    move-result-object p2

    .line 722
    iget v6, p0, Lorg/checkerframework/org/apache/bcel/generic/InstructionList;->length:I

    const/4 v7, 0x1

    sub-int/2addr v6, v7

    iput v6, p0, Lorg/checkerframework/org/apache/bcel/generic/InstructionList;->length:I

    .line 723
    invoke-virtual {v5}, Lorg/checkerframework/org/apache/bcel/generic/InstructionHandle;->hasTargeters()Z

    move-result v6

    if-eqz v6, :cond_4

    .line 724
    invoke-interface {v3, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 725
    invoke-virtual {v5, v7}, Lorg/checkerframework/org/apache/bcel/generic/InstructionHandle;->toString(Z)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 726
    invoke-virtual {v5, v0}, Lorg/checkerframework/org/apache/bcel/generic/InstructionHandle;->setPrev(Lorg/checkerframework/org/apache/bcel/generic/InstructionHandle;)Lorg/checkerframework/org/apache/bcel/generic/InstructionHandle;

    move-result-object v6

    invoke-virtual {v5, v6}, Lorg/checkerframework/org/apache/bcel/generic/InstructionHandle;->setNext(Lorg/checkerframework/org/apache/bcel/generic/InstructionHandle;)Lorg/checkerframework/org/apache/bcel/generic/InstructionHandle;

    goto :goto_4

    .line 728
    :cond_4
    invoke-virtual {v5}, Lorg/checkerframework/org/apache/bcel/generic/InstructionHandle;->dispose()V

    .line 720
    :goto_4
    move-object v5, p2

    goto :goto_3

    .line 731
    .end local v5    # "ih":Lorg/checkerframework/org/apache/bcel/generic/InstructionHandle;
    :cond_5
    const-string v0, "}"

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 732
    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 737
    return-void

    .line 733
    :cond_6
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Lorg/checkerframework/org/apache/bcel/generic/InstructionHandle;

    .line 734
    .local v0, "targeted":[Lorg/checkerframework/org/apache/bcel/generic/InstructionHandle;
    invoke-interface {v3, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 735
    new-instance v5, Lorg/checkerframework/org/apache/bcel/generic/TargetLostException;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v0, v6}, Lorg/checkerframework/org/apache/bcel/generic/TargetLostException;-><init>([Lorg/checkerframework/org/apache/bcel/generic/InstructionHandle;Ljava/lang/String;)V

    throw v5
.end method


# virtual methods
.method public addObserver(Lorg/checkerframework/org/apache/bcel/generic/InstructionListObserver;)V
    .locals 1
    .param p1, "o"    # Lorg/checkerframework/org/apache/bcel/generic/InstructionListObserver;

    .line 1237
    iget-object v0, p0, Lorg/checkerframework/org/apache/bcel/generic/InstructionList;->observers:Ljava/util/List;

    if-nez v0, :cond_0

    .line 1238
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/checkerframework/org/apache/bcel/generic/InstructionList;->observers:Ljava/util/List;

    .line 1240
    :cond_0
    iget-object v0, p0, Lorg/checkerframework/org/apache/bcel/generic/InstructionList;->observers:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1241
    return-void
.end method

.method public append(Lorg/checkerframework/org/apache/bcel/generic/BranchInstruction;)Lorg/checkerframework/org/apache/bcel/generic/BranchHandle;
    .locals 1
    .param p1, "i"    # Lorg/checkerframework/org/apache/bcel/generic/BranchInstruction;

    .line 335
    invoke-static {p1}, Lorg/checkerframework/org/apache/bcel/generic/BranchHandle;->getBranchHandle(Lorg/checkerframework/org/apache/bcel/generic/BranchInstruction;)Lorg/checkerframework/org/apache/bcel/generic/BranchHandle;

    move-result-object v0

    .line 336
    .local v0, "ih":Lorg/checkerframework/org/apache/bcel/generic/BranchHandle;
    invoke-direct {p0, v0}, Lorg/checkerframework/org/apache/bcel/generic/InstructionList;->append(Lorg/checkerframework/org/apache/bcel/generic/InstructionHandle;)V

    .line 337
    return-object v0
.end method

.method public append(Lorg/checkerframework/org/apache/bcel/generic/InstructionHandle;Lorg/checkerframework/org/apache/bcel/generic/BranchInstruction;)Lorg/checkerframework/org/apache/bcel/generic/BranchHandle;
    .locals 2
    .param p1, "ih"    # Lorg/checkerframework/org/apache/bcel/generic/InstructionHandle;
    .param p2, "i"    # Lorg/checkerframework/org/apache/bcel/generic/BranchInstruction;

    .line 413
    invoke-static {p2}, Lorg/checkerframework/org/apache/bcel/generic/BranchHandle;->getBranchHandle(Lorg/checkerframework/org/apache/bcel/generic/BranchInstruction;)Lorg/checkerframework/org/apache/bcel/generic/BranchHandle;

    move-result-object v0

    .line 414
    .local v0, "bh":Lorg/checkerframework/org/apache/bcel/generic/BranchHandle;
    new-instance v1, Lorg/checkerframework/org/apache/bcel/generic/InstructionList;

    invoke-direct {v1}, Lorg/checkerframework/org/apache/bcel/generic/InstructionList;-><init>()V

    .line 415
    .local v1, "il":Lorg/checkerframework/org/apache/bcel/generic/InstructionList;
    invoke-direct {v1, v0}, Lorg/checkerframework/org/apache/bcel/generic/InstructionList;->append(Lorg/checkerframework/org/apache/bcel/generic/InstructionHandle;)V

    .line 416
    invoke-virtual {p0, p1, v1}, Lorg/checkerframework/org/apache/bcel/generic/InstructionList;->append(Lorg/checkerframework/org/apache/bcel/generic/InstructionHandle;Lorg/checkerframework/org/apache/bcel/generic/InstructionList;)Lorg/checkerframework/org/apache/bcel/generic/InstructionHandle;

    .line 417
    return-object v0
.end method

.method public append(Lorg/checkerframework/org/apache/bcel/generic/CompoundInstruction;)Lorg/checkerframework/org/apache/bcel/generic/InstructionHandle;
    .locals 1
    .param p1, "c"    # Lorg/checkerframework/org/apache/bcel/generic/CompoundInstruction;

    .line 374
    invoke-interface {p1}, Lorg/checkerframework/org/apache/bcel/generic/CompoundInstruction;->getInstructionList()Lorg/checkerframework/org/apache/bcel/generic/InstructionList;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/checkerframework/org/apache/bcel/generic/InstructionList;->append(Lorg/checkerframework/org/apache/bcel/generic/InstructionList;)Lorg/checkerframework/org/apache/bcel/generic/InstructionHandle;

    move-result-object v0

    return-object v0
.end method

.method public append(Lorg/checkerframework/org/apache/bcel/generic/Instruction;)Lorg/checkerframework/org/apache/bcel/generic/InstructionHandle;
    .locals 1
    .param p1, "i"    # Lorg/checkerframework/org/apache/bcel/generic/Instruction;

    .line 322
    invoke-static {p1}, Lorg/checkerframework/org/apache/bcel/generic/InstructionHandle;->getInstructionHandle(Lorg/checkerframework/org/apache/bcel/generic/Instruction;)Lorg/checkerframework/org/apache/bcel/generic/InstructionHandle;

    move-result-object v0

    .line 323
    .local v0, "ih":Lorg/checkerframework/org/apache/bcel/generic/InstructionHandle;
    invoke-direct {p0, v0}, Lorg/checkerframework/org/apache/bcel/generic/InstructionList;->append(Lorg/checkerframework/org/apache/bcel/generic/InstructionHandle;)V

    .line 324
    return-object v0
.end method

.method public append(Lorg/checkerframework/org/apache/bcel/generic/Instruction;Lorg/checkerframework/org/apache/bcel/generic/CompoundInstruction;)Lorg/checkerframework/org/apache/bcel/generic/InstructionHandle;
    .locals 1
    .param p1, "i"    # Lorg/checkerframework/org/apache/bcel/generic/Instruction;
    .param p2, "c"    # Lorg/checkerframework/org/apache/bcel/generic/CompoundInstruction;

    .line 363
    invoke-interface {p2}, Lorg/checkerframework/org/apache/bcel/generic/CompoundInstruction;->getInstructionList()Lorg/checkerframework/org/apache/bcel/generic/InstructionList;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lorg/checkerframework/org/apache/bcel/generic/InstructionList;->append(Lorg/checkerframework/org/apache/bcel/generic/Instruction;Lorg/checkerframework/org/apache/bcel/generic/InstructionList;)Lorg/checkerframework/org/apache/bcel/generic/InstructionHandle;

    move-result-object v0

    return-object v0
.end method

.method public append(Lorg/checkerframework/org/apache/bcel/generic/Instruction;Lorg/checkerframework/org/apache/bcel/generic/Instruction;)Lorg/checkerframework/org/apache/bcel/generic/InstructionHandle;
    .locals 1
    .param p1, "i"    # Lorg/checkerframework/org/apache/bcel/generic/Instruction;
    .param p2, "j"    # Lorg/checkerframework/org/apache/bcel/generic/Instruction;

    .line 350
    new-instance v0, Lorg/checkerframework/org/apache/bcel/generic/InstructionList;

    invoke-direct {v0, p2}, Lorg/checkerframework/org/apache/bcel/generic/InstructionList;-><init>(Lorg/checkerframework/org/apache/bcel/generic/Instruction;)V

    invoke-virtual {p0, p1, v0}, Lorg/checkerframework/org/apache/bcel/generic/InstructionList;->append(Lorg/checkerframework/org/apache/bcel/generic/Instruction;Lorg/checkerframework/org/apache/bcel/generic/InstructionList;)Lorg/checkerframework/org/apache/bcel/generic/InstructionHandle;

    move-result-object v0

    return-object v0
.end method

.method public append(Lorg/checkerframework/org/apache/bcel/generic/Instruction;Lorg/checkerframework/org/apache/bcel/generic/InstructionList;)Lorg/checkerframework/org/apache/bcel/generic/InstructionHandle;
    .locals 4
    .param p1, "i"    # Lorg/checkerframework/org/apache/bcel/generic/Instruction;
    .param p2, "il"    # Lorg/checkerframework/org/apache/bcel/generic/InstructionList;

    .line 265
    invoke-direct {p0, p1}, Lorg/checkerframework/org/apache/bcel/generic/InstructionList;->findInstruction2(Lorg/checkerframework/org/apache/bcel/generic/Instruction;)Lorg/checkerframework/org/apache/bcel/generic/InstructionHandle;

    move-result-object v0

    move-object v1, v0

    .local v1, "ih":Lorg/checkerframework/org/apache/bcel/generic/InstructionHandle;
    if-eqz v0, :cond_0

    .line 268
    invoke-virtual {p0, v1, p2}, Lorg/checkerframework/org/apache/bcel/generic/InstructionList;->append(Lorg/checkerframework/org/apache/bcel/generic/InstructionHandle;Lorg/checkerframework/org/apache/bcel/generic/InstructionList;)Lorg/checkerframework/org/apache/bcel/generic/InstructionHandle;

    move-result-object v0

    return-object v0

    .line 266
    :cond_0
    new-instance v0, Lorg/checkerframework/org/apache/bcel/generic/ClassGenException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Instruction "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " is not contained in this list."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Lorg/checkerframework/org/apache/bcel/generic/ClassGenException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public append(Lorg/checkerframework/org/apache/bcel/generic/InstructionHandle;Lorg/checkerframework/org/apache/bcel/generic/CompoundInstruction;)Lorg/checkerframework/org/apache/bcel/generic/InstructionHandle;
    .locals 1
    .param p1, "ih"    # Lorg/checkerframework/org/apache/bcel/generic/InstructionHandle;
    .param p2, "c"    # Lorg/checkerframework/org/apache/bcel/generic/CompoundInstruction;

    .line 387
    invoke-interface {p2}, Lorg/checkerframework/org/apache/bcel/generic/CompoundInstruction;->getInstructionList()Lorg/checkerframework/org/apache/bcel/generic/InstructionList;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lorg/checkerframework/org/apache/bcel/generic/InstructionList;->append(Lorg/checkerframework/org/apache/bcel/generic/InstructionHandle;Lorg/checkerframework/org/apache/bcel/generic/InstructionList;)Lorg/checkerframework/org/apache/bcel/generic/InstructionHandle;

    move-result-object v0

    return-object v0
.end method

.method public append(Lorg/checkerframework/org/apache/bcel/generic/InstructionHandle;Lorg/checkerframework/org/apache/bcel/generic/Instruction;)Lorg/checkerframework/org/apache/bcel/generic/InstructionHandle;
    .locals 1
    .param p1, "ih"    # Lorg/checkerframework/org/apache/bcel/generic/InstructionHandle;
    .param p2, "i"    # Lorg/checkerframework/org/apache/bcel/generic/Instruction;

    .line 400
    new-instance v0, Lorg/checkerframework/org/apache/bcel/generic/InstructionList;

    invoke-direct {v0, p2}, Lorg/checkerframework/org/apache/bcel/generic/InstructionList;-><init>(Lorg/checkerframework/org/apache/bcel/generic/Instruction;)V

    invoke-virtual {p0, p1, v0}, Lorg/checkerframework/org/apache/bcel/generic/InstructionList;->append(Lorg/checkerframework/org/apache/bcel/generic/InstructionHandle;Lorg/checkerframework/org/apache/bcel/generic/InstructionList;)Lorg/checkerframework/org/apache/bcel/generic/InstructionHandle;

    move-result-object v0

    return-object v0
.end method

.method public append(Lorg/checkerframework/org/apache/bcel/generic/InstructionHandle;Lorg/checkerframework/org/apache/bcel/generic/InstructionList;)Lorg/checkerframework/org/apache/bcel/generic/InstructionHandle;
    .locals 4
    .param p1, "ih"    # Lorg/checkerframework/org/apache/bcel/generic/InstructionHandle;
    .param p2, "il"    # Lorg/checkerframework/org/apache/bcel/generic/InstructionList;

    .line 233
    if-eqz p2, :cond_2

    .line 236
    invoke-virtual {p2}, Lorg/checkerframework/org/apache/bcel/generic/InstructionList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 237
    return-object p1

    .line 239
    :cond_0
    invoke-virtual {p1}, Lorg/checkerframework/org/apache/bcel/generic/InstructionHandle;->getNext()Lorg/checkerframework/org/apache/bcel/generic/InstructionHandle;

    move-result-object v0

    .line 240
    .local v0, "next":Lorg/checkerframework/org/apache/bcel/generic/InstructionHandle;
    iget-object v1, p2, Lorg/checkerframework/org/apache/bcel/generic/InstructionList;->start:Lorg/checkerframework/org/apache/bcel/generic/InstructionHandle;

    .line 241
    .local v1, "ret":Lorg/checkerframework/org/apache/bcel/generic/InstructionHandle;
    iget-object v2, p2, Lorg/checkerframework/org/apache/bcel/generic/InstructionList;->start:Lorg/checkerframework/org/apache/bcel/generic/InstructionHandle;

    invoke-virtual {p1, v2}, Lorg/checkerframework/org/apache/bcel/generic/InstructionHandle;->setNext(Lorg/checkerframework/org/apache/bcel/generic/InstructionHandle;)Lorg/checkerframework/org/apache/bcel/generic/InstructionHandle;

    .line 242
    iget-object v2, p2, Lorg/checkerframework/org/apache/bcel/generic/InstructionList;->start:Lorg/checkerframework/org/apache/bcel/generic/InstructionHandle;

    invoke-virtual {v2, p1}, Lorg/checkerframework/org/apache/bcel/generic/InstructionHandle;->setPrev(Lorg/checkerframework/org/apache/bcel/generic/InstructionHandle;)Lorg/checkerframework/org/apache/bcel/generic/InstructionHandle;

    .line 243
    iget-object v2, p2, Lorg/checkerframework/org/apache/bcel/generic/InstructionList;->end:Lorg/checkerframework/org/apache/bcel/generic/InstructionHandle;

    invoke-virtual {v2, v0}, Lorg/checkerframework/org/apache/bcel/generic/InstructionHandle;->setNext(Lorg/checkerframework/org/apache/bcel/generic/InstructionHandle;)Lorg/checkerframework/org/apache/bcel/generic/InstructionHandle;

    .line 244
    if-eqz v0, :cond_1

    .line 245
    iget-object v2, p2, Lorg/checkerframework/org/apache/bcel/generic/InstructionList;->end:Lorg/checkerframework/org/apache/bcel/generic/InstructionHandle;

    invoke-virtual {v0, v2}, Lorg/checkerframework/org/apache/bcel/generic/InstructionHandle;->setPrev(Lorg/checkerframework/org/apache/bcel/generic/InstructionHandle;)Lorg/checkerframework/org/apache/bcel/generic/InstructionHandle;

    goto :goto_0

    .line 247
    :cond_1
    iget-object v2, p2, Lorg/checkerframework/org/apache/bcel/generic/InstructionList;->end:Lorg/checkerframework/org/apache/bcel/generic/InstructionHandle;

    iput-object v2, p0, Lorg/checkerframework/org/apache/bcel/generic/InstructionList;->end:Lorg/checkerframework/org/apache/bcel/generic/InstructionHandle;

    .line 249
    :goto_0
    iget v2, p0, Lorg/checkerframework/org/apache/bcel/generic/InstructionList;->length:I

    iget v3, p2, Lorg/checkerframework/org/apache/bcel/generic/InstructionList;->length:I

    add-int/2addr v2, v3

    iput v2, p0, Lorg/checkerframework/org/apache/bcel/generic/InstructionList;->length:I

    .line 250
    invoke-direct {p2}, Lorg/checkerframework/org/apache/bcel/generic/InstructionList;->clear()V

    .line 251
    return-object v1

    .line 234
    .end local v0    # "next":Lorg/checkerframework/org/apache/bcel/generic/InstructionHandle;
    .end local v1    # "ret":Lorg/checkerframework/org/apache/bcel/generic/InstructionHandle;
    :cond_2
    new-instance v0, Lorg/checkerframework/org/apache/bcel/generic/ClassGenException;

    const-string v1, "Appending null InstructionList"

    invoke-direct {v0, v1}, Lorg/checkerframework/org/apache/bcel/generic/ClassGenException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public append(Lorg/checkerframework/org/apache/bcel/generic/InstructionList;)Lorg/checkerframework/org/apache/bcel/generic/InstructionHandle;
    .locals 2
    .param p1, "il"    # Lorg/checkerframework/org/apache/bcel/generic/InstructionList;

    .line 279
    if-eqz p1, :cond_2

    .line 282
    invoke-virtual {p1}, Lorg/checkerframework/org/apache/bcel/generic/InstructionList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 283
    const/4 v0, 0x0

    return-object v0

    .line 285
    :cond_0
    invoke-virtual {p0}, Lorg/checkerframework/org/apache/bcel/generic/InstructionList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 286
    iget-object v0, p1, Lorg/checkerframework/org/apache/bcel/generic/InstructionList;->start:Lorg/checkerframework/org/apache/bcel/generic/InstructionHandle;

    iput-object v0, p0, Lorg/checkerframework/org/apache/bcel/generic/InstructionList;->start:Lorg/checkerframework/org/apache/bcel/generic/InstructionHandle;

    .line 287
    iget-object v0, p1, Lorg/checkerframework/org/apache/bcel/generic/InstructionList;->end:Lorg/checkerframework/org/apache/bcel/generic/InstructionHandle;

    iput-object v0, p0, Lorg/checkerframework/org/apache/bcel/generic/InstructionList;->end:Lorg/checkerframework/org/apache/bcel/generic/InstructionHandle;

    .line 288
    iget v0, p1, Lorg/checkerframework/org/apache/bcel/generic/InstructionList;->length:I

    iput v0, p0, Lorg/checkerframework/org/apache/bcel/generic/InstructionList;->length:I

    .line 289
    invoke-direct {p1}, Lorg/checkerframework/org/apache/bcel/generic/InstructionList;->clear()V

    .line 290
    iget-object v0, p0, Lorg/checkerframework/org/apache/bcel/generic/InstructionList;->start:Lorg/checkerframework/org/apache/bcel/generic/InstructionHandle;

    return-object v0

    .line 292
    :cond_1
    iget-object v0, p0, Lorg/checkerframework/org/apache/bcel/generic/InstructionList;->end:Lorg/checkerframework/org/apache/bcel/generic/InstructionHandle;

    invoke-virtual {p0, v0, p1}, Lorg/checkerframework/org/apache/bcel/generic/InstructionList;->append(Lorg/checkerframework/org/apache/bcel/generic/InstructionHandle;Lorg/checkerframework/org/apache/bcel/generic/InstructionList;)Lorg/checkerframework/org/apache/bcel/generic/InstructionHandle;

    move-result-object v0

    return-object v0

    .line 280
    :cond_2
    new-instance v0, Lorg/checkerframework/org/apache/bcel/generic/ClassGenException;

    const-string v1, "Appending null InstructionList"

    invoke-direct {v0, v1}, Lorg/checkerframework/org/apache/bcel/generic/ClassGenException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public contains(Lorg/checkerframework/org/apache/bcel/generic/Instruction;)Z
    .locals 1
    .param p1, "i"    # Lorg/checkerframework/org/apache/bcel/generic/Instruction;

    .line 844
    invoke-direct {p0, p1}, Lorg/checkerframework/org/apache/bcel/generic/InstructionList;->findInstruction1(Lorg/checkerframework/org/apache/bcel/generic/Instruction;)Lorg/checkerframework/org/apache/bcel/generic/InstructionHandle;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public contains(Lorg/checkerframework/org/apache/bcel/generic/InstructionHandle;)Z
    .locals 2
    .param p1, "i"    # Lorg/checkerframework/org/apache/bcel/generic/InstructionHandle;

    .line 832
    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 833
    return v0

    .line 835
    :cond_0
    iget-object v1, p0, Lorg/checkerframework/org/apache/bcel/generic/InstructionList;->start:Lorg/checkerframework/org/apache/bcel/generic/InstructionHandle;

    .local v1, "ih":Lorg/checkerframework/org/apache/bcel/generic/InstructionHandle;
    :goto_0
    if-eqz v1, :cond_2

    .line 836
    if-ne v1, p1, :cond_1

    .line 837
    const/4 v0, 0x1

    return v0

    .line 835
    :cond_1
    invoke-virtual {v1}, Lorg/checkerframework/org/apache/bcel/generic/InstructionHandle;->getNext()Lorg/checkerframework/org/apache/bcel/generic/InstructionHandle;

    move-result-object v1

    goto :goto_0

    .line 840
    .end local v1    # "ih":Lorg/checkerframework/org/apache/bcel/generic/InstructionHandle;
    :cond_2
    return v0
.end method

.method public copy()Lorg/checkerframework/org/apache/bcel/generic/InstructionList;
    .locals 13

    .line 1048
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 1049
    .local v0, "map":Ljava/util/Map;, "Ljava/util/Map<Lorg/checkerframework/org/apache/bcel/generic/InstructionHandle;Lorg/checkerframework/org/apache/bcel/generic/InstructionHandle;>;"
    new-instance v1, Lorg/checkerframework/org/apache/bcel/generic/InstructionList;

    invoke-direct {v1}, Lorg/checkerframework/org/apache/bcel/generic/InstructionList;-><init>()V

    .line 1053
    .local v1, "il":Lorg/checkerframework/org/apache/bcel/generic/InstructionList;
    iget-object v2, p0, Lorg/checkerframework/org/apache/bcel/generic/InstructionList;->start:Lorg/checkerframework/org/apache/bcel/generic/InstructionHandle;

    .local v2, "ih":Lorg/checkerframework/org/apache/bcel/generic/InstructionHandle;
    :goto_0
    if-eqz v2, :cond_1

    .line 1054
    invoke-virtual {v2}, Lorg/checkerframework/org/apache/bcel/generic/InstructionHandle;->getInstruction()Lorg/checkerframework/org/apache/bcel/generic/Instruction;

    move-result-object v3

    .line 1055
    .local v3, "i":Lorg/checkerframework/org/apache/bcel/generic/Instruction;
    invoke-virtual {v3}, Lorg/checkerframework/org/apache/bcel/generic/Instruction;->copy()Lorg/checkerframework/org/apache/bcel/generic/Instruction;

    move-result-object v4

    .line 1056
    .local v4, "c":Lorg/checkerframework/org/apache/bcel/generic/Instruction;
    instance-of v5, v4, Lorg/checkerframework/org/apache/bcel/generic/BranchInstruction;

    if-eqz v5, :cond_0

    .line 1057
    move-object v5, v4

    check-cast v5, Lorg/checkerframework/org/apache/bcel/generic/BranchInstruction;

    invoke-virtual {v1, v5}, Lorg/checkerframework/org/apache/bcel/generic/InstructionList;->append(Lorg/checkerframework/org/apache/bcel/generic/BranchInstruction;)Lorg/checkerframework/org/apache/bcel/generic/BranchHandle;

    move-result-object v5

    invoke-interface {v0, v2, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 1059
    :cond_0
    invoke-virtual {v1, v4}, Lorg/checkerframework/org/apache/bcel/generic/InstructionList;->append(Lorg/checkerframework/org/apache/bcel/generic/Instruction;)Lorg/checkerframework/org/apache/bcel/generic/InstructionHandle;

    move-result-object v5

    invoke-interface {v0, v2, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1053
    .end local v3    # "i":Lorg/checkerframework/org/apache/bcel/generic/Instruction;
    .end local v4    # "c":Lorg/checkerframework/org/apache/bcel/generic/Instruction;
    :goto_1
    invoke-virtual {v2}, Lorg/checkerframework/org/apache/bcel/generic/InstructionHandle;->getNext()Lorg/checkerframework/org/apache/bcel/generic/InstructionHandle;

    move-result-object v2

    goto :goto_0

    .line 1065
    .end local v2    # "ih":Lorg/checkerframework/org/apache/bcel/generic/InstructionHandle;
    :cond_1
    iget-object v2, p0, Lorg/checkerframework/org/apache/bcel/generic/InstructionList;->start:Lorg/checkerframework/org/apache/bcel/generic/InstructionHandle;

    .line 1066
    .restart local v2    # "ih":Lorg/checkerframework/org/apache/bcel/generic/InstructionHandle;
    iget-object v3, v1, Lorg/checkerframework/org/apache/bcel/generic/InstructionList;->start:Lorg/checkerframework/org/apache/bcel/generic/InstructionHandle;

    .line 1067
    .local v3, "ch":Lorg/checkerframework/org/apache/bcel/generic/InstructionHandle;
    :goto_2
    if-eqz v2, :cond_3

    .line 1068
    invoke-virtual {v2}, Lorg/checkerframework/org/apache/bcel/generic/InstructionHandle;->getInstruction()Lorg/checkerframework/org/apache/bcel/generic/Instruction;

    move-result-object v4

    .line 1069
    .local v4, "i":Lorg/checkerframework/org/apache/bcel/generic/Instruction;
    invoke-virtual {v3}, Lorg/checkerframework/org/apache/bcel/generic/InstructionHandle;->getInstruction()Lorg/checkerframework/org/apache/bcel/generic/Instruction;

    move-result-object v5

    .line 1070
    .local v5, "c":Lorg/checkerframework/org/apache/bcel/generic/Instruction;
    instance-of v6, v4, Lorg/checkerframework/org/apache/bcel/generic/BranchInstruction;

    if-eqz v6, :cond_2

    .line 1071
    move-object v6, v4

    check-cast v6, Lorg/checkerframework/org/apache/bcel/generic/BranchInstruction;

    .line 1072
    .local v6, "bi":Lorg/checkerframework/org/apache/bcel/generic/BranchInstruction;
    move-object v7, v5

    check-cast v7, Lorg/checkerframework/org/apache/bcel/generic/BranchInstruction;

    .line 1073
    .local v7, "bc":Lorg/checkerframework/org/apache/bcel/generic/BranchInstruction;
    invoke-virtual {v6}, Lorg/checkerframework/org/apache/bcel/generic/BranchInstruction;->getTarget()Lorg/checkerframework/org/apache/bcel/generic/InstructionHandle;

    move-result-object v8

    .line 1075
    .local v8, "itarget":Lorg/checkerframework/org/apache/bcel/generic/InstructionHandle;
    invoke-interface {v0, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lorg/checkerframework/org/apache/bcel/generic/InstructionHandle;

    invoke-virtual {v7, v9}, Lorg/checkerframework/org/apache/bcel/generic/BranchInstruction;->setTarget(Lorg/checkerframework/org/apache/bcel/generic/InstructionHandle;)V

    .line 1076
    instance-of v9, v6, Lorg/checkerframework/org/apache/bcel/generic/Select;

    if-eqz v9, :cond_2

    .line 1077
    move-object v9, v6

    check-cast v9, Lorg/checkerframework/org/apache/bcel/generic/Select;

    invoke-virtual {v9}, Lorg/checkerframework/org/apache/bcel/generic/Select;->getTargets()[Lorg/checkerframework/org/apache/bcel/generic/InstructionHandle;

    move-result-object v9

    .line 1078
    .local v9, "itargets":[Lorg/checkerframework/org/apache/bcel/generic/InstructionHandle;
    move-object v10, v7

    check-cast v10, Lorg/checkerframework/org/apache/bcel/generic/Select;

    invoke-virtual {v10}, Lorg/checkerframework/org/apache/bcel/generic/Select;->getTargets()[Lorg/checkerframework/org/apache/bcel/generic/InstructionHandle;

    move-result-object v10

    .line 1079
    .local v10, "ctargets":[Lorg/checkerframework/org/apache/bcel/generic/InstructionHandle;
    const/4 v11, 0x0

    .local v11, "j":I
    :goto_3
    array-length v12, v9

    if-ge v11, v12, :cond_2

    .line 1080
    aget-object v12, v9, v11

    invoke-interface {v0, v12}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lorg/checkerframework/org/apache/bcel/generic/InstructionHandle;

    aput-object v12, v10, v11

    .line 1079
    add-int/lit8 v11, v11, 0x1

    goto :goto_3

    .line 1084
    .end local v6    # "bi":Lorg/checkerframework/org/apache/bcel/generic/BranchInstruction;
    .end local v7    # "bc":Lorg/checkerframework/org/apache/bcel/generic/BranchInstruction;
    .end local v8    # "itarget":Lorg/checkerframework/org/apache/bcel/generic/InstructionHandle;
    .end local v9    # "itargets":[Lorg/checkerframework/org/apache/bcel/generic/InstructionHandle;
    .end local v10    # "ctargets":[Lorg/checkerframework/org/apache/bcel/generic/InstructionHandle;
    .end local v11    # "j":I
    :cond_2
    invoke-virtual {v2}, Lorg/checkerframework/org/apache/bcel/generic/InstructionHandle;->getNext()Lorg/checkerframework/org/apache/bcel/generic/InstructionHandle;

    move-result-object v2

    .line 1085
    invoke-virtual {v3}, Lorg/checkerframework/org/apache/bcel/generic/InstructionHandle;->getNext()Lorg/checkerframework/org/apache/bcel/generic/InstructionHandle;

    move-result-object v3

    .line 1086
    .end local v4    # "i":Lorg/checkerframework/org/apache/bcel/generic/Instruction;
    .end local v5    # "c":Lorg/checkerframework/org/apache/bcel/generic/Instruction;
    goto :goto_2

    .line 1087
    :cond_3
    return-object v1
.end method

.method public delete(Lorg/checkerframework/org/apache/bcel/generic/Instruction;)V
    .locals 4
    .param p1, "i"    # Lorg/checkerframework/org/apache/bcel/generic/Instruction;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/checkerframework/org/apache/bcel/generic/TargetLostException;
        }
    .end annotation

    .line 757
    invoke-direct {p0, p1}, Lorg/checkerframework/org/apache/bcel/generic/InstructionList;->findInstruction1(Lorg/checkerframework/org/apache/bcel/generic/Instruction;)Lorg/checkerframework/org/apache/bcel/generic/InstructionHandle;

    move-result-object v0

    move-object v1, v0

    .local v1, "ih":Lorg/checkerframework/org/apache/bcel/generic/InstructionHandle;
    if-eqz v0, :cond_0

    .line 760
    invoke-virtual {p0, v1}, Lorg/checkerframework/org/apache/bcel/generic/InstructionList;->delete(Lorg/checkerframework/org/apache/bcel/generic/InstructionHandle;)V

    .line 761
    return-void

    .line 758
    :cond_0
    new-instance v0, Lorg/checkerframework/org/apache/bcel/generic/ClassGenException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Instruction "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " is not contained in this list."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Lorg/checkerframework/org/apache/bcel/generic/ClassGenException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public delete(Lorg/checkerframework/org/apache/bcel/generic/Instruction;Lorg/checkerframework/org/apache/bcel/generic/Instruction;)V
    .locals 6
    .param p1, "from"    # Lorg/checkerframework/org/apache/bcel/generic/Instruction;
    .param p2, "to"    # Lorg/checkerframework/org/apache/bcel/generic/Instruction;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/checkerframework/org/apache/bcel/generic/TargetLostException;
        }
    .end annotation

    .line 788
    invoke-direct {p0, p1}, Lorg/checkerframework/org/apache/bcel/generic/InstructionList;->findInstruction1(Lorg/checkerframework/org/apache/bcel/generic/Instruction;)Lorg/checkerframework/org/apache/bcel/generic/InstructionHandle;

    move-result-object v0

    move-object v1, v0

    .local v1, "from_ih":Lorg/checkerframework/org/apache/bcel/generic/InstructionHandle;
    const-string v2, " is not contained in this list."

    const-string v3, "Instruction "

    if-eqz v0, :cond_1

    .line 791
    invoke-direct {p0, p2}, Lorg/checkerframework/org/apache/bcel/generic/InstructionList;->findInstruction2(Lorg/checkerframework/org/apache/bcel/generic/Instruction;)Lorg/checkerframework/org/apache/bcel/generic/InstructionHandle;

    move-result-object v0

    move-object v4, v0

    .local v4, "to_ih":Lorg/checkerframework/org/apache/bcel/generic/InstructionHandle;
    if-eqz v0, :cond_0

    .line 794
    invoke-virtual {p0, v1, v4}, Lorg/checkerframework/org/apache/bcel/generic/InstructionList;->delete(Lorg/checkerframework/org/apache/bcel/generic/InstructionHandle;Lorg/checkerframework/org/apache/bcel/generic/InstructionHandle;)V

    .line 795
    return-void

    .line 792
    :cond_0
    new-instance v0, Lorg/checkerframework/org/apache/bcel/generic/ClassGenException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Lorg/checkerframework/org/apache/bcel/generic/ClassGenException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 789
    .end local v4    # "to_ih":Lorg/checkerframework/org/apache/bcel/generic/InstructionHandle;
    :cond_1
    new-instance v0, Lorg/checkerframework/org/apache/bcel/generic/ClassGenException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Lorg/checkerframework/org/apache/bcel/generic/ClassGenException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public delete(Lorg/checkerframework/org/apache/bcel/generic/InstructionHandle;)V
    .locals 2
    .param p1, "ih"    # Lorg/checkerframework/org/apache/bcel/generic/InstructionHandle;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/checkerframework/org/apache/bcel/generic/TargetLostException;
        }
    .end annotation

    .line 746
    invoke-virtual {p1}, Lorg/checkerframework/org/apache/bcel/generic/InstructionHandle;->getPrev()Lorg/checkerframework/org/apache/bcel/generic/InstructionHandle;

    move-result-object v0

    invoke-virtual {p1}, Lorg/checkerframework/org/apache/bcel/generic/InstructionHandle;->getNext()Lorg/checkerframework/org/apache/bcel/generic/InstructionHandle;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lorg/checkerframework/org/apache/bcel/generic/InstructionList;->remove(Lorg/checkerframework/org/apache/bcel/generic/InstructionHandle;Lorg/checkerframework/org/apache/bcel/generic/InstructionHandle;)V

    .line 747
    return-void
.end method

.method public delete(Lorg/checkerframework/org/apache/bcel/generic/InstructionHandle;Lorg/checkerframework/org/apache/bcel/generic/InstructionHandle;)V
    .locals 2
    .param p1, "from"    # Lorg/checkerframework/org/apache/bcel/generic/InstructionHandle;
    .param p2, "to"    # Lorg/checkerframework/org/apache/bcel/generic/InstructionHandle;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/checkerframework/org/apache/bcel/generic/TargetLostException;
        }
    .end annotation

    .line 773
    invoke-virtual {p1}, Lorg/checkerframework/org/apache/bcel/generic/InstructionHandle;->getPrev()Lorg/checkerframework/org/apache/bcel/generic/InstructionHandle;

    move-result-object v0

    invoke-virtual {p2}, Lorg/checkerframework/org/apache/bcel/generic/InstructionHandle;->getNext()Lorg/checkerframework/org/apache/bcel/generic/InstructionHandle;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lorg/checkerframework/org/apache/bcel/generic/InstructionList;->remove(Lorg/checkerframework/org/apache/bcel/generic/InstructionHandle;Lorg/checkerframework/org/apache/bcel/generic/InstructionHandle;)V

    .line 774
    return-void
.end method

.method public dispose()V
    .locals 1

    .line 1115
    iget-object v0, p0, Lorg/checkerframework/org/apache/bcel/generic/InstructionList;->end:Lorg/checkerframework/org/apache/bcel/generic/InstructionHandle;

    .local v0, "ih":Lorg/checkerframework/org/apache/bcel/generic/InstructionHandle;
    :goto_0
    if-eqz v0, :cond_0

    .line 1119
    invoke-virtual {v0}, Lorg/checkerframework/org/apache/bcel/generic/InstructionHandle;->dispose()V

    .line 1115
    invoke-virtual {v0}, Lorg/checkerframework/org/apache/bcel/generic/InstructionHandle;->getPrev()Lorg/checkerframework/org/apache/bcel/generic/InstructionHandle;

    move-result-object v0

    goto :goto_0

    .line 1121
    .end local v0    # "ih":Lorg/checkerframework/org/apache/bcel/generic/InstructionHandle;
    :cond_0
    invoke-direct {p0}, Lorg/checkerframework/org/apache/bcel/generic/InstructionList;->clear()V

    .line 1122
    return-void
.end method

.method public findHandle(I)Lorg/checkerframework/org/apache/bcel/generic/InstructionHandle;
    .locals 4
    .param p1, "pos"    # I

    .line 141
    iget-object v0, p0, Lorg/checkerframework/org/apache/bcel/generic/InstructionList;->byte_positions:[I

    .line 142
    .local v0, "positions":[I
    iget-object v1, p0, Lorg/checkerframework/org/apache/bcel/generic/InstructionList;->start:Lorg/checkerframework/org/apache/bcel/generic/InstructionHandle;

    .line 143
    .local v1, "ih":Lorg/checkerframework/org/apache/bcel/generic/InstructionHandle;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    iget v3, p0, Lorg/checkerframework/org/apache/bcel/generic/InstructionList;->length:I

    if-ge v2, v3, :cond_1

    .line 144
    aget v3, v0, v2

    if-ne v3, p1, :cond_0

    .line 145
    return-object v1

    .line 147
    :cond_0
    invoke-virtual {v1}, Lorg/checkerframework/org/apache/bcel/generic/InstructionHandle;->getNext()Lorg/checkerframework/org/apache/bcel/generic/InstructionHandle;

    move-result-object v1

    .line 143
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 149
    .end local v2    # "i":I
    :cond_1
    const/4 v2, 0x0

    return-object v2
.end method

.method public getByteCode()[B
    .locals 4

    .line 941
    invoke-virtual {p0}, Lorg/checkerframework/org/apache/bcel/generic/InstructionList;->setPositions()V

    .line 942
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 943
    .local v0, "b":Ljava/io/ByteArrayOutputStream;
    new-instance v1, Ljava/io/DataOutputStream;

    invoke-direct {v1, v0}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 945
    .local v1, "out":Ljava/io/DataOutputStream;
    :try_start_0
    iget-object v2, p0, Lorg/checkerframework/org/apache/bcel/generic/InstructionList;->start:Lorg/checkerframework/org/apache/bcel/generic/InstructionHandle;

    .local v2, "ih":Lorg/checkerframework/org/apache/bcel/generic/InstructionHandle;
    :goto_0
    if-eqz v2, :cond_0

    .line 946
    invoke-virtual {v2}, Lorg/checkerframework/org/apache/bcel/generic/InstructionHandle;->getInstruction()Lorg/checkerframework/org/apache/bcel/generic/Instruction;

    move-result-object v3

    .line 947
    .local v3, "i":Lorg/checkerframework/org/apache/bcel/generic/Instruction;
    invoke-virtual {v3, v1}, Lorg/checkerframework/org/apache/bcel/generic/Instruction;->dump(Ljava/io/DataOutputStream;)V

    .line 945
    .end local v3    # "i":Lorg/checkerframework/org/apache/bcel/generic/Instruction;
    invoke-virtual {v2}, Lorg/checkerframework/org/apache/bcel/generic/InstructionHandle;->getNext()Lorg/checkerframework/org/apache/bcel/generic/InstructionHandle;

    move-result-object v3

    move-object v2, v3

    goto :goto_0

    .line 949
    .end local v2    # "ih":Lorg/checkerframework/org/apache/bcel/generic/InstructionHandle;
    :cond_0
    invoke-virtual {v1}, Ljava/io/DataOutputStream;->flush()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 953
    nop

    .line 954
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v2

    return-object v2

    .line 950
    :catch_0
    move-exception v2

    .line 951
    .local v2, "e":Ljava/io/IOException;
    sget-object v3, Ljava/lang/System;->err:Ljava/io/PrintStream;

    invoke-virtual {v3, v2}, Ljava/io/PrintStream;->println(Ljava/lang/Object;)V

    .line 952
    const/4 v3, 0x0

    new-array v3, v3, [B

    return-object v3
.end method

.method public getEnd()Lorg/checkerframework/org/apache/bcel/generic/InstructionHandle;
    .locals 1

    .line 1135
    iget-object v0, p0, Lorg/checkerframework/org/apache/bcel/generic/InstructionList;->end:Lorg/checkerframework/org/apache/bcel/generic/InstructionHandle;

    return-object v0
.end method

.method public getInstructionHandles()[Lorg/checkerframework/org/apache/bcel/generic/InstructionHandle;
    .locals 4

    .line 1025
    iget v0, p0, Lorg/checkerframework/org/apache/bcel/generic/InstructionList;->length:I

    new-array v0, v0, [Lorg/checkerframework/org/apache/bcel/generic/InstructionHandle;

    .line 1026
    .local v0, "ihs":[Lorg/checkerframework/org/apache/bcel/generic/InstructionHandle;
    iget-object v1, p0, Lorg/checkerframework/org/apache/bcel/generic/InstructionList;->start:Lorg/checkerframework/org/apache/bcel/generic/InstructionHandle;

    .line 1027
    .local v1, "ih":Lorg/checkerframework/org/apache/bcel/generic/InstructionHandle;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    iget v3, p0, Lorg/checkerframework/org/apache/bcel/generic/InstructionList;->length:I

    if-ge v2, v3, :cond_0

    .line 1028
    aput-object v1, v0, v2

    .line 1029
    invoke-virtual {v1}, Lorg/checkerframework/org/apache/bcel/generic/InstructionHandle;->getNext()Lorg/checkerframework/org/apache/bcel/generic/InstructionHandle;

    move-result-object v1

    .line 1027
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1031
    .end local v2    # "i":I
    :cond_0
    return-object v0
.end method

.method public getInstructionPositions()[I
    .locals 1

    .line 1041
    iget-object v0, p0, Lorg/checkerframework/org/apache/bcel/generic/InstructionList;->byte_positions:[I

    return-object v0
.end method

.method public getInstructions()[Lorg/checkerframework/org/apache/bcel/generic/Instruction;
    .locals 5

    .line 961
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 962
    .local v0, "instructions":Ljava/util/List;, "Ljava/util/List<Lorg/checkerframework/org/apache/bcel/generic/Instruction;>;"
    :try_start_0
    new-instance v1, Lorg/checkerframework/org/apache/bcel/util/ByteSequence;

    invoke-virtual {p0}, Lorg/checkerframework/org/apache/bcel/generic/InstructionList;->getByteCode()[B

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/checkerframework/org/apache/bcel/util/ByteSequence;-><init>([B)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 963
    .local v1, "bytes":Lorg/checkerframework/org/apache/bcel/util/ByteSequence;
    :goto_0
    :try_start_1
    invoke-virtual {v1}, Lorg/checkerframework/org/apache/bcel/util/ByteSequence;->available()I

    move-result v2

    if-lez v2, :cond_0

    .line 964
    invoke-static {v1}, Lorg/checkerframework/org/apache/bcel/generic/Instruction;->readInstruction(Lorg/checkerframework/org/apache/bcel/util/ByteSequence;)Lorg/checkerframework/org/apache/bcel/generic/Instruction;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 966
    :cond_0
    :try_start_2
    invoke-virtual {v1}, Lorg/checkerframework/org/apache/bcel/util/ByteSequence;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .line 968
    .end local v1    # "bytes":Lorg/checkerframework/org/apache/bcel/util/ByteSequence;
    nop

    .line 969
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    new-array v1, v1, [Lorg/checkerframework/org/apache/bcel/generic/Instruction;

    invoke-interface {v0, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Lorg/checkerframework/org/apache/bcel/generic/Instruction;

    return-object v1

    .line 962
    .restart local v1    # "bytes":Lorg/checkerframework/org/apache/bcel/util/ByteSequence;
    :catchall_0
    move-exception v2

    .end local v0    # "instructions":Ljava/util/List;, "Ljava/util/List<Lorg/checkerframework/org/apache/bcel/generic/Instruction;>;"
    .end local v1    # "bytes":Lorg/checkerframework/org/apache/bcel/util/ByteSequence;
    :try_start_3
    throw v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 966
    .restart local v0    # "instructions":Ljava/util/List;, "Ljava/util/List<Lorg/checkerframework/org/apache/bcel/generic/Instruction;>;"
    .restart local v1    # "bytes":Lorg/checkerframework/org/apache/bcel/util/ByteSequence;
    :catchall_1
    move-exception v3

    :try_start_4
    invoke-virtual {v1}, Lorg/checkerframework/org/apache/bcel/util/ByteSequence;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    goto :goto_1

    :catchall_2
    move-exception v4

    :try_start_5
    invoke-virtual {v2, v4}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .end local v0    # "instructions":Ljava/util/List;, "Ljava/util/List<Lorg/checkerframework/org/apache/bcel/generic/Instruction;>;"
    :goto_1
    throw v3
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_0

    .end local v1    # "bytes":Lorg/checkerframework/org/apache/bcel/util/ByteSequence;
    .restart local v0    # "instructions":Ljava/util/List;, "Ljava/util/List<Lorg/checkerframework/org/apache/bcel/generic/Instruction;>;"
    :catch_0
    move-exception v1

    .line 967
    .local v1, "e":Ljava/io/IOException;
    new-instance v2, Lorg/checkerframework/org/apache/bcel/generic/ClassGenException;

    invoke-virtual {v1}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3, v1}, Lorg/checkerframework/org/apache/bcel/generic/ClassGenException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
.end method

.method public getLength()I
    .locals 1

    .line 1142
    iget v0, p0, Lorg/checkerframework/org/apache/bcel/generic/InstructionList;->length:I

    return v0
.end method

.method public getStart()Lorg/checkerframework/org/apache/bcel/generic/InstructionHandle;
    .locals 1

    .line 1128
    iget-object v0, p0, Lorg/checkerframework/org/apache/bcel/generic/InstructionList;->start:Lorg/checkerframework/org/apache/bcel/generic/InstructionHandle;

    return-object v0
.end method

.method public insert(Lorg/checkerframework/org/apache/bcel/generic/BranchInstruction;)Lorg/checkerframework/org/apache/bcel/generic/BranchHandle;
    .locals 1
    .param p1, "i"    # Lorg/checkerframework/org/apache/bcel/generic/BranchInstruction;

    .line 523
    invoke-static {p1}, Lorg/checkerframework/org/apache/bcel/generic/BranchHandle;->getBranchHandle(Lorg/checkerframework/org/apache/bcel/generic/BranchInstruction;)Lorg/checkerframework/org/apache/bcel/generic/BranchHandle;

    move-result-object v0

    .line 524
    .local v0, "ih":Lorg/checkerframework/org/apache/bcel/generic/BranchHandle;
    invoke-direct {p0, v0}, Lorg/checkerframework/org/apache/bcel/generic/InstructionList;->insert(Lorg/checkerframework/org/apache/bcel/generic/InstructionHandle;)V

    .line 525
    return-object v0
.end method

.method public insert(Lorg/checkerframework/org/apache/bcel/generic/InstructionHandle;Lorg/checkerframework/org/apache/bcel/generic/BranchInstruction;)Lorg/checkerframework/org/apache/bcel/generic/BranchHandle;
    .locals 2
    .param p1, "ih"    # Lorg/checkerframework/org/apache/bcel/generic/InstructionHandle;
    .param p2, "i"    # Lorg/checkerframework/org/apache/bcel/generic/BranchInstruction;

    .line 601
    invoke-static {p2}, Lorg/checkerframework/org/apache/bcel/generic/BranchHandle;->getBranchHandle(Lorg/checkerframework/org/apache/bcel/generic/BranchInstruction;)Lorg/checkerframework/org/apache/bcel/generic/BranchHandle;

    move-result-object v0

    .line 602
    .local v0, "bh":Lorg/checkerframework/org/apache/bcel/generic/BranchHandle;
    new-instance v1, Lorg/checkerframework/org/apache/bcel/generic/InstructionList;

    invoke-direct {v1}, Lorg/checkerframework/org/apache/bcel/generic/InstructionList;-><init>()V

    .line 603
    .local v1, "il":Lorg/checkerframework/org/apache/bcel/generic/InstructionList;
    invoke-direct {v1, v0}, Lorg/checkerframework/org/apache/bcel/generic/InstructionList;->append(Lorg/checkerframework/org/apache/bcel/generic/InstructionHandle;)V

    .line 604
    invoke-virtual {p0, p1, v1}, Lorg/checkerframework/org/apache/bcel/generic/InstructionList;->insert(Lorg/checkerframework/org/apache/bcel/generic/InstructionHandle;Lorg/checkerframework/org/apache/bcel/generic/InstructionList;)Lorg/checkerframework/org/apache/bcel/generic/InstructionHandle;

    .line 605
    return-object v0
.end method

.method public insert(Lorg/checkerframework/org/apache/bcel/generic/CompoundInstruction;)Lorg/checkerframework/org/apache/bcel/generic/InstructionHandle;
    .locals 1
    .param p1, "c"    # Lorg/checkerframework/org/apache/bcel/generic/CompoundInstruction;

    .line 562
    invoke-interface {p1}, Lorg/checkerframework/org/apache/bcel/generic/CompoundInstruction;->getInstructionList()Lorg/checkerframework/org/apache/bcel/generic/InstructionList;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/checkerframework/org/apache/bcel/generic/InstructionList;->insert(Lorg/checkerframework/org/apache/bcel/generic/InstructionList;)Lorg/checkerframework/org/apache/bcel/generic/InstructionHandle;

    move-result-object v0

    return-object v0
.end method

.method public insert(Lorg/checkerframework/org/apache/bcel/generic/Instruction;)Lorg/checkerframework/org/apache/bcel/generic/InstructionHandle;
    .locals 1
    .param p1, "i"    # Lorg/checkerframework/org/apache/bcel/generic/Instruction;

    .line 510
    invoke-static {p1}, Lorg/checkerframework/org/apache/bcel/generic/InstructionHandle;->getInstructionHandle(Lorg/checkerframework/org/apache/bcel/generic/Instruction;)Lorg/checkerframework/org/apache/bcel/generic/InstructionHandle;

    move-result-object v0

    .line 511
    .local v0, "ih":Lorg/checkerframework/org/apache/bcel/generic/InstructionHandle;
    invoke-direct {p0, v0}, Lorg/checkerframework/org/apache/bcel/generic/InstructionList;->insert(Lorg/checkerframework/org/apache/bcel/generic/InstructionHandle;)V

    .line 512
    return-object v0
.end method

.method public insert(Lorg/checkerframework/org/apache/bcel/generic/Instruction;Lorg/checkerframework/org/apache/bcel/generic/CompoundInstruction;)Lorg/checkerframework/org/apache/bcel/generic/InstructionHandle;
    .locals 1
    .param p1, "i"    # Lorg/checkerframework/org/apache/bcel/generic/Instruction;
    .param p2, "c"    # Lorg/checkerframework/org/apache/bcel/generic/CompoundInstruction;

    .line 551
    invoke-interface {p2}, Lorg/checkerframework/org/apache/bcel/generic/CompoundInstruction;->getInstructionList()Lorg/checkerframework/org/apache/bcel/generic/InstructionList;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lorg/checkerframework/org/apache/bcel/generic/InstructionList;->insert(Lorg/checkerframework/org/apache/bcel/generic/Instruction;Lorg/checkerframework/org/apache/bcel/generic/InstructionList;)Lorg/checkerframework/org/apache/bcel/generic/InstructionHandle;

    move-result-object v0

    return-object v0
.end method

.method public insert(Lorg/checkerframework/org/apache/bcel/generic/Instruction;Lorg/checkerframework/org/apache/bcel/generic/Instruction;)Lorg/checkerframework/org/apache/bcel/generic/InstructionHandle;
    .locals 1
    .param p1, "i"    # Lorg/checkerframework/org/apache/bcel/generic/Instruction;
    .param p2, "j"    # Lorg/checkerframework/org/apache/bcel/generic/Instruction;

    .line 538
    new-instance v0, Lorg/checkerframework/org/apache/bcel/generic/InstructionList;

    invoke-direct {v0, p2}, Lorg/checkerframework/org/apache/bcel/generic/InstructionList;-><init>(Lorg/checkerframework/org/apache/bcel/generic/Instruction;)V

    invoke-virtual {p0, p1, v0}, Lorg/checkerframework/org/apache/bcel/generic/InstructionList;->insert(Lorg/checkerframework/org/apache/bcel/generic/Instruction;Lorg/checkerframework/org/apache/bcel/generic/InstructionList;)Lorg/checkerframework/org/apache/bcel/generic/InstructionHandle;

    move-result-object v0

    return-object v0
.end method

.method public insert(Lorg/checkerframework/org/apache/bcel/generic/Instruction;Lorg/checkerframework/org/apache/bcel/generic/InstructionList;)Lorg/checkerframework/org/apache/bcel/generic/InstructionHandle;
    .locals 4
    .param p1, "i"    # Lorg/checkerframework/org/apache/bcel/generic/Instruction;
    .param p2, "il"    # Lorg/checkerframework/org/apache/bcel/generic/InstructionList;

    .line 496
    invoke-direct {p0, p1}, Lorg/checkerframework/org/apache/bcel/generic/InstructionList;->findInstruction1(Lorg/checkerframework/org/apache/bcel/generic/Instruction;)Lorg/checkerframework/org/apache/bcel/generic/InstructionHandle;

    move-result-object v0

    move-object v1, v0

    .local v1, "ih":Lorg/checkerframework/org/apache/bcel/generic/InstructionHandle;
    if-eqz v0, :cond_0

    .line 499
    invoke-virtual {p0, v1, p2}, Lorg/checkerframework/org/apache/bcel/generic/InstructionList;->insert(Lorg/checkerframework/org/apache/bcel/generic/InstructionHandle;Lorg/checkerframework/org/apache/bcel/generic/InstructionList;)Lorg/checkerframework/org/apache/bcel/generic/InstructionHandle;

    move-result-object v0

    return-object v0

    .line 497
    :cond_0
    new-instance v0, Lorg/checkerframework/org/apache/bcel/generic/ClassGenException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Instruction "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " is not contained in this list."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Lorg/checkerframework/org/apache/bcel/generic/ClassGenException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public insert(Lorg/checkerframework/org/apache/bcel/generic/InstructionHandle;Lorg/checkerframework/org/apache/bcel/generic/CompoundInstruction;)Lorg/checkerframework/org/apache/bcel/generic/InstructionHandle;
    .locals 1
    .param p1, "ih"    # Lorg/checkerframework/org/apache/bcel/generic/InstructionHandle;
    .param p2, "c"    # Lorg/checkerframework/org/apache/bcel/generic/CompoundInstruction;

    .line 588
    invoke-interface {p2}, Lorg/checkerframework/org/apache/bcel/generic/CompoundInstruction;->getInstructionList()Lorg/checkerframework/org/apache/bcel/generic/InstructionList;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lorg/checkerframework/org/apache/bcel/generic/InstructionList;->insert(Lorg/checkerframework/org/apache/bcel/generic/InstructionHandle;Lorg/checkerframework/org/apache/bcel/generic/InstructionList;)Lorg/checkerframework/org/apache/bcel/generic/InstructionHandle;

    move-result-object v0

    return-object v0
.end method

.method public insert(Lorg/checkerframework/org/apache/bcel/generic/InstructionHandle;Lorg/checkerframework/org/apache/bcel/generic/Instruction;)Lorg/checkerframework/org/apache/bcel/generic/InstructionHandle;
    .locals 1
    .param p1, "ih"    # Lorg/checkerframework/org/apache/bcel/generic/InstructionHandle;
    .param p2, "i"    # Lorg/checkerframework/org/apache/bcel/generic/Instruction;

    .line 575
    new-instance v0, Lorg/checkerframework/org/apache/bcel/generic/InstructionList;

    invoke-direct {v0, p2}, Lorg/checkerframework/org/apache/bcel/generic/InstructionList;-><init>(Lorg/checkerframework/org/apache/bcel/generic/Instruction;)V

    invoke-virtual {p0, p1, v0}, Lorg/checkerframework/org/apache/bcel/generic/InstructionList;->insert(Lorg/checkerframework/org/apache/bcel/generic/InstructionHandle;Lorg/checkerframework/org/apache/bcel/generic/InstructionList;)Lorg/checkerframework/org/apache/bcel/generic/InstructionHandle;

    move-result-object v0

    return-object v0
.end method

.method public insert(Lorg/checkerframework/org/apache/bcel/generic/InstructionHandle;Lorg/checkerframework/org/apache/bcel/generic/InstructionList;)Lorg/checkerframework/org/apache/bcel/generic/InstructionHandle;
    .locals 4
    .param p1, "ih"    # Lorg/checkerframework/org/apache/bcel/generic/InstructionHandle;
    .param p2, "il"    # Lorg/checkerframework/org/apache/bcel/generic/InstructionList;

    .line 430
    if-eqz p2, :cond_2

    .line 433
    invoke-virtual {p2}, Lorg/checkerframework/org/apache/bcel/generic/InstructionList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 434
    return-object p1

    .line 436
    :cond_0
    invoke-virtual {p1}, Lorg/checkerframework/org/apache/bcel/generic/InstructionHandle;->getPrev()Lorg/checkerframework/org/apache/bcel/generic/InstructionHandle;

    move-result-object v0

    .line 437
    .local v0, "prev":Lorg/checkerframework/org/apache/bcel/generic/InstructionHandle;
    iget-object v1, p2, Lorg/checkerframework/org/apache/bcel/generic/InstructionList;->start:Lorg/checkerframework/org/apache/bcel/generic/InstructionHandle;

    .line 438
    .local v1, "ret":Lorg/checkerframework/org/apache/bcel/generic/InstructionHandle;
    iget-object v2, p2, Lorg/checkerframework/org/apache/bcel/generic/InstructionList;->end:Lorg/checkerframework/org/apache/bcel/generic/InstructionHandle;

    invoke-virtual {p1, v2}, Lorg/checkerframework/org/apache/bcel/generic/InstructionHandle;->setPrev(Lorg/checkerframework/org/apache/bcel/generic/InstructionHandle;)Lorg/checkerframework/org/apache/bcel/generic/InstructionHandle;

    .line 439
    iget-object v2, p2, Lorg/checkerframework/org/apache/bcel/generic/InstructionList;->end:Lorg/checkerframework/org/apache/bcel/generic/InstructionHandle;

    invoke-virtual {v2, p1}, Lorg/checkerframework/org/apache/bcel/generic/InstructionHandle;->setNext(Lorg/checkerframework/org/apache/bcel/generic/InstructionHandle;)Lorg/checkerframework/org/apache/bcel/generic/InstructionHandle;

    .line 440
    iget-object v2, p2, Lorg/checkerframework/org/apache/bcel/generic/InstructionList;->start:Lorg/checkerframework/org/apache/bcel/generic/InstructionHandle;

    invoke-virtual {v2, v0}, Lorg/checkerframework/org/apache/bcel/generic/InstructionHandle;->setPrev(Lorg/checkerframework/org/apache/bcel/generic/InstructionHandle;)Lorg/checkerframework/org/apache/bcel/generic/InstructionHandle;

    .line 441
    if-eqz v0, :cond_1

    .line 442
    iget-object v2, p2, Lorg/checkerframework/org/apache/bcel/generic/InstructionList;->start:Lorg/checkerframework/org/apache/bcel/generic/InstructionHandle;

    invoke-virtual {v0, v2}, Lorg/checkerframework/org/apache/bcel/generic/InstructionHandle;->setNext(Lorg/checkerframework/org/apache/bcel/generic/InstructionHandle;)Lorg/checkerframework/org/apache/bcel/generic/InstructionHandle;

    goto :goto_0

    .line 444
    :cond_1
    iget-object v2, p2, Lorg/checkerframework/org/apache/bcel/generic/InstructionList;->start:Lorg/checkerframework/org/apache/bcel/generic/InstructionHandle;

    iput-object v2, p0, Lorg/checkerframework/org/apache/bcel/generic/InstructionList;->start:Lorg/checkerframework/org/apache/bcel/generic/InstructionHandle;

    .line 446
    :goto_0
    iget v2, p0, Lorg/checkerframework/org/apache/bcel/generic/InstructionList;->length:I

    iget v3, p2, Lorg/checkerframework/org/apache/bcel/generic/InstructionList;->length:I

    add-int/2addr v2, v3

    iput v2, p0, Lorg/checkerframework/org/apache/bcel/generic/InstructionList;->length:I

    .line 447
    invoke-direct {p2}, Lorg/checkerframework/org/apache/bcel/generic/InstructionList;->clear()V

    .line 448
    return-object v1

    .line 431
    .end local v0    # "prev":Lorg/checkerframework/org/apache/bcel/generic/InstructionHandle;
    .end local v1    # "ret":Lorg/checkerframework/org/apache/bcel/generic/InstructionHandle;
    :cond_2
    new-instance v0, Lorg/checkerframework/org/apache/bcel/generic/ClassGenException;

    const-string v1, "Inserting null InstructionList"

    invoke-direct {v0, v1}, Lorg/checkerframework/org/apache/bcel/generic/ClassGenException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public insert(Lorg/checkerframework/org/apache/bcel/generic/InstructionList;)Lorg/checkerframework/org/apache/bcel/generic/InstructionHandle;
    .locals 1
    .param p1, "il"    # Lorg/checkerframework/org/apache/bcel/generic/InstructionList;

    .line 459
    invoke-virtual {p0}, Lorg/checkerframework/org/apache/bcel/generic/InstructionList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 460
    invoke-virtual {p0, p1}, Lorg/checkerframework/org/apache/bcel/generic/InstructionList;->append(Lorg/checkerframework/org/apache/bcel/generic/InstructionList;)Lorg/checkerframework/org/apache/bcel/generic/InstructionHandle;

    .line 461
    iget-object v0, p0, Lorg/checkerframework/org/apache/bcel/generic/InstructionList;->start:Lorg/checkerframework/org/apache/bcel/generic/InstructionHandle;

    return-object v0

    .line 463
    :cond_0
    iget-object v0, p0, Lorg/checkerframework/org/apache/bcel/generic/InstructionList;->start:Lorg/checkerframework/org/apache/bcel/generic/InstructionHandle;

    invoke-virtual {p0, v0, p1}, Lorg/checkerframework/org/apache/bcel/generic/InstructionList;->insert(Lorg/checkerframework/org/apache/bcel/generic/InstructionHandle;Lorg/checkerframework/org/apache/bcel/generic/InstructionList;)Lorg/checkerframework/org/apache/bcel/generic/InstructionHandle;

    move-result-object v0

    return-object v0
.end method

.method public isEmpty()Z
    .locals 1

    .line 96
    iget-object v0, p0, Lorg/checkerframework/org/apache/bcel/generic/InstructionList;->start:Lorg/checkerframework/org/apache/bcel/generic/InstructionHandle;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Lorg/checkerframework/org/apache/bcel/generic/InstructionHandle;",
            ">;"
        }
    .end annotation

    .line 995
    new-instance v0, Lorg/checkerframework/org/apache/bcel/generic/InstructionList$1;

    invoke-direct {v0, p0}, Lorg/checkerframework/org/apache/bcel/generic/InstructionList$1;-><init>(Lorg/checkerframework/org/apache/bcel/generic/InstructionList;)V

    return-object v0
.end method

.method public move(Lorg/checkerframework/org/apache/bcel/generic/InstructionHandle;Lorg/checkerframework/org/apache/bcel/generic/InstructionHandle;)V
    .locals 0
    .param p1, "ih"    # Lorg/checkerframework/org/apache/bcel/generic/InstructionHandle;
    .param p2, "target"    # Lorg/checkerframework/org/apache/bcel/generic/InstructionHandle;

    .line 678
    invoke-virtual {p0, p1, p1, p2}, Lorg/checkerframework/org/apache/bcel/generic/InstructionList;->move(Lorg/checkerframework/org/apache/bcel/generic/InstructionHandle;Lorg/checkerframework/org/apache/bcel/generic/InstructionHandle;Lorg/checkerframework/org/apache/bcel/generic/InstructionHandle;)V

    .line 679
    return-void
.end method

.method public move(Lorg/checkerframework/org/apache/bcel/generic/InstructionHandle;Lorg/checkerframework/org/apache/bcel/generic/InstructionHandle;Lorg/checkerframework/org/apache/bcel/generic/InstructionHandle;)V
    .locals 6
    .param p1, "start"    # Lorg/checkerframework/org/apache/bcel/generic/InstructionHandle;
    .param p2, "end"    # Lorg/checkerframework/org/apache/bcel/generic/InstructionHandle;
    .param p3, "target"    # Lorg/checkerframework/org/apache/bcel/generic/InstructionHandle;

    .line 622
    const-string v0, " to "

    if-eqz p1, :cond_9

    if-eqz p2, :cond_9

    .line 625
    const-string v1, " contains target "

    const-string v2, "Invalid range: From "

    if-eq p3, p1, :cond_8

    if-eq p3, p2, :cond_8

    .line 628
    move-object v3, p1

    .local v3, "ih":Lorg/checkerframework/org/apache/bcel/generic/InstructionHandle;
    :goto_0
    invoke-virtual {p2}, Lorg/checkerframework/org/apache/bcel/generic/InstructionHandle;->getNext()Lorg/checkerframework/org/apache/bcel/generic/InstructionHandle;

    move-result-object v4

    if-eq v3, v4, :cond_2

    .line 629
    if-eqz v3, :cond_1

    .line 631
    if-eq v3, p3, :cond_0

    .line 628
    invoke-virtual {v3}, Lorg/checkerframework/org/apache/bcel/generic/InstructionHandle;->getNext()Lorg/checkerframework/org/apache/bcel/generic/InstructionHandle;

    move-result-object v3

    goto :goto_0

    .line 632
    :cond_0
    new-instance v4, Lorg/checkerframework/org/apache/bcel/generic/ClassGenException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v4, v0}, Lorg/checkerframework/org/apache/bcel/generic/ClassGenException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 630
    :cond_1
    new-instance v1, Lorg/checkerframework/org/apache/bcel/generic/ClassGenException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lorg/checkerframework/org/apache/bcel/generic/ClassGenException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 636
    .end local v3    # "ih":Lorg/checkerframework/org/apache/bcel/generic/InstructionHandle;
    :cond_2
    invoke-virtual {p1}, Lorg/checkerframework/org/apache/bcel/generic/InstructionHandle;->getPrev()Lorg/checkerframework/org/apache/bcel/generic/InstructionHandle;

    move-result-object v0

    .line 637
    .local v0, "prev":Lorg/checkerframework/org/apache/bcel/generic/InstructionHandle;
    invoke-virtual {p2}, Lorg/checkerframework/org/apache/bcel/generic/InstructionHandle;->getNext()Lorg/checkerframework/org/apache/bcel/generic/InstructionHandle;

    move-result-object v1

    .line 638
    .local v1, "next":Lorg/checkerframework/org/apache/bcel/generic/InstructionHandle;
    if-eqz v0, :cond_3

    .line 639
    invoke-virtual {v0, v1}, Lorg/checkerframework/org/apache/bcel/generic/InstructionHandle;->setNext(Lorg/checkerframework/org/apache/bcel/generic/InstructionHandle;)Lorg/checkerframework/org/apache/bcel/generic/InstructionHandle;

    goto :goto_1

    .line 641
    :cond_3
    iput-object v1, p0, Lorg/checkerframework/org/apache/bcel/generic/InstructionList;->start:Lorg/checkerframework/org/apache/bcel/generic/InstructionHandle;

    .line 643
    :goto_1
    if-eqz v1, :cond_4

    .line 644
    invoke-virtual {v1, v0}, Lorg/checkerframework/org/apache/bcel/generic/InstructionHandle;->setPrev(Lorg/checkerframework/org/apache/bcel/generic/InstructionHandle;)Lorg/checkerframework/org/apache/bcel/generic/InstructionHandle;

    goto :goto_2

    .line 646
    :cond_4
    iput-object v0, p0, Lorg/checkerframework/org/apache/bcel/generic/InstructionList;->end:Lorg/checkerframework/org/apache/bcel/generic/InstructionHandle;

    .line 648
    :goto_2
    const/4 v2, 0x0

    invoke-virtual {p2, v2}, Lorg/checkerframework/org/apache/bcel/generic/InstructionHandle;->setNext(Lorg/checkerframework/org/apache/bcel/generic/InstructionHandle;)Lorg/checkerframework/org/apache/bcel/generic/InstructionHandle;

    move-result-object v2

    invoke-virtual {p1, v2}, Lorg/checkerframework/org/apache/bcel/generic/InstructionHandle;->setPrev(Lorg/checkerframework/org/apache/bcel/generic/InstructionHandle;)Lorg/checkerframework/org/apache/bcel/generic/InstructionHandle;

    .line 650
    if-nez p3, :cond_6

    .line 651
    iget-object v2, p0, Lorg/checkerframework/org/apache/bcel/generic/InstructionList;->start:Lorg/checkerframework/org/apache/bcel/generic/InstructionHandle;

    if-eqz v2, :cond_5

    .line 652
    invoke-virtual {v2, p2}, Lorg/checkerframework/org/apache/bcel/generic/InstructionHandle;->setPrev(Lorg/checkerframework/org/apache/bcel/generic/InstructionHandle;)Lorg/checkerframework/org/apache/bcel/generic/InstructionHandle;

    .line 654
    :cond_5
    iget-object v2, p0, Lorg/checkerframework/org/apache/bcel/generic/InstructionList;->start:Lorg/checkerframework/org/apache/bcel/generic/InstructionHandle;

    invoke-virtual {p2, v2}, Lorg/checkerframework/org/apache/bcel/generic/InstructionHandle;->setNext(Lorg/checkerframework/org/apache/bcel/generic/InstructionHandle;)Lorg/checkerframework/org/apache/bcel/generic/InstructionHandle;

    .line 655
    iput-object p1, p0, Lorg/checkerframework/org/apache/bcel/generic/InstructionList;->start:Lorg/checkerframework/org/apache/bcel/generic/InstructionHandle;

    goto :goto_3

    .line 657
    :cond_6
    invoke-virtual {p3}, Lorg/checkerframework/org/apache/bcel/generic/InstructionHandle;->getNext()Lorg/checkerframework/org/apache/bcel/generic/InstructionHandle;

    move-result-object v1

    .line 658
    invoke-virtual {p3, p1}, Lorg/checkerframework/org/apache/bcel/generic/InstructionHandle;->setNext(Lorg/checkerframework/org/apache/bcel/generic/InstructionHandle;)Lorg/checkerframework/org/apache/bcel/generic/InstructionHandle;

    .line 659
    invoke-virtual {p1, p3}, Lorg/checkerframework/org/apache/bcel/generic/InstructionHandle;->setPrev(Lorg/checkerframework/org/apache/bcel/generic/InstructionHandle;)Lorg/checkerframework/org/apache/bcel/generic/InstructionHandle;

    .line 660
    invoke-virtual {p2, v1}, Lorg/checkerframework/org/apache/bcel/generic/InstructionHandle;->setNext(Lorg/checkerframework/org/apache/bcel/generic/InstructionHandle;)Lorg/checkerframework/org/apache/bcel/generic/InstructionHandle;

    .line 661
    if-eqz v1, :cond_7

    .line 662
    invoke-virtual {v1, p2}, Lorg/checkerframework/org/apache/bcel/generic/InstructionHandle;->setPrev(Lorg/checkerframework/org/apache/bcel/generic/InstructionHandle;)Lorg/checkerframework/org/apache/bcel/generic/InstructionHandle;

    goto :goto_3

    .line 664
    :cond_7
    iput-object p2, p0, Lorg/checkerframework/org/apache/bcel/generic/InstructionList;->end:Lorg/checkerframework/org/apache/bcel/generic/InstructionHandle;

    .line 667
    :goto_3
    return-void

    .line 626
    .end local v0    # "prev":Lorg/checkerframework/org/apache/bcel/generic/InstructionHandle;
    .end local v1    # "next":Lorg/checkerframework/org/apache/bcel/generic/InstructionHandle;
    :cond_8
    new-instance v3, Lorg/checkerframework/org/apache/bcel/generic/ClassGenException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v3, v0}, Lorg/checkerframework/org/apache/bcel/generic/ClassGenException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 623
    :cond_9
    new-instance v1, Lorg/checkerframework/org/apache/bcel/generic/ClassGenException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invalid null handle: From "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lorg/checkerframework/org/apache/bcel/generic/ClassGenException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public redirectBranches(Lorg/checkerframework/org/apache/bcel/generic/InstructionHandle;Lorg/checkerframework/org/apache/bcel/generic/InstructionHandle;)V
    .locals 7
    .param p1, "old_target"    # Lorg/checkerframework/org/apache/bcel/generic/InstructionHandle;
    .param p2, "new_target"    # Lorg/checkerframework/org/apache/bcel/generic/InstructionHandle;

    .line 1162
    iget-object v0, p0, Lorg/checkerframework/org/apache/bcel/generic/InstructionList;->start:Lorg/checkerframework/org/apache/bcel/generic/InstructionHandle;

    .local v0, "ih":Lorg/checkerframework/org/apache/bcel/generic/InstructionHandle;
    :goto_0
    if-eqz v0, :cond_3

    .line 1163
    invoke-virtual {v0}, Lorg/checkerframework/org/apache/bcel/generic/InstructionHandle;->getInstruction()Lorg/checkerframework/org/apache/bcel/generic/Instruction;

    move-result-object v1

    .line 1164
    .local v1, "i":Lorg/checkerframework/org/apache/bcel/generic/Instruction;
    instance-of v2, v1, Lorg/checkerframework/org/apache/bcel/generic/BranchInstruction;

    if-eqz v2, :cond_2

    .line 1165
    move-object v2, v1

    check-cast v2, Lorg/checkerframework/org/apache/bcel/generic/BranchInstruction;

    .line 1166
    .local v2, "b":Lorg/checkerframework/org/apache/bcel/generic/BranchInstruction;
    invoke-virtual {v2}, Lorg/checkerframework/org/apache/bcel/generic/BranchInstruction;->getTarget()Lorg/checkerframework/org/apache/bcel/generic/InstructionHandle;

    move-result-object v3

    .line 1167
    .local v3, "target":Lorg/checkerframework/org/apache/bcel/generic/InstructionHandle;
    if-ne v3, p1, :cond_0

    .line 1168
    invoke-virtual {v2, p2}, Lorg/checkerframework/org/apache/bcel/generic/BranchInstruction;->setTarget(Lorg/checkerframework/org/apache/bcel/generic/InstructionHandle;)V

    .line 1170
    :cond_0
    instance-of v4, v2, Lorg/checkerframework/org/apache/bcel/generic/Select;

    if-eqz v4, :cond_2

    .line 1171
    move-object v4, v2

    check-cast v4, Lorg/checkerframework/org/apache/bcel/generic/Select;

    invoke-virtual {v4}, Lorg/checkerframework/org/apache/bcel/generic/Select;->getTargets()[Lorg/checkerframework/org/apache/bcel/generic/InstructionHandle;

    move-result-object v4

    .line 1172
    .local v4, "targets":[Lorg/checkerframework/org/apache/bcel/generic/InstructionHandle;
    const/4 v5, 0x0

    .local v5, "j":I
    :goto_1
    array-length v6, v4

    if-ge v5, v6, :cond_2

    .line 1173
    aget-object v6, v4, v5

    if-ne v6, p1, :cond_1

    .line 1174
    move-object v6, v2

    check-cast v6, Lorg/checkerframework/org/apache/bcel/generic/Select;

    invoke-virtual {v6, v5, p2}, Lorg/checkerframework/org/apache/bcel/generic/Select;->setTarget(ILorg/checkerframework/org/apache/bcel/generic/InstructionHandle;)V

    .line 1172
    :cond_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 1162
    .end local v1    # "i":Lorg/checkerframework/org/apache/bcel/generic/Instruction;
    .end local v2    # "b":Lorg/checkerframework/org/apache/bcel/generic/BranchInstruction;
    .end local v3    # "target":Lorg/checkerframework/org/apache/bcel/generic/InstructionHandle;
    .end local v4    # "targets":[Lorg/checkerframework/org/apache/bcel/generic/InstructionHandle;
    .end local v5    # "j":I
    :cond_2
    invoke-virtual {v0}, Lorg/checkerframework/org/apache/bcel/generic/InstructionHandle;->getNext()Lorg/checkerframework/org/apache/bcel/generic/InstructionHandle;

    move-result-object v0

    goto :goto_0

    .line 1180
    .end local v0    # "ih":Lorg/checkerframework/org/apache/bcel/generic/InstructionHandle;
    :cond_3
    return-void
.end method

.method public redirectExceptionHandlers([Lorg/checkerframework/org/apache/bcel/generic/CodeExceptionGen;Lorg/checkerframework/org/apache/bcel/generic/InstructionHandle;Lorg/checkerframework/org/apache/bcel/generic/InstructionHandle;)V
    .locals 4
    .param p1, "exceptions"    # [Lorg/checkerframework/org/apache/bcel/generic/CodeExceptionGen;
    .param p2, "old_target"    # Lorg/checkerframework/org/apache/bcel/generic/InstructionHandle;
    .param p3, "new_target"    # Lorg/checkerframework/org/apache/bcel/generic/InstructionHandle;

    .line 1218
    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_3

    aget-object v2, p1, v1

    .line 1219
    .local v2, "exception":Lorg/checkerframework/org/apache/bcel/generic/CodeExceptionGen;
    invoke-virtual {v2}, Lorg/checkerframework/org/apache/bcel/generic/CodeExceptionGen;->getStartPC()Lorg/checkerframework/org/apache/bcel/generic/InstructionHandle;

    move-result-object v3

    if-ne v3, p2, :cond_0

    .line 1220
    invoke-virtual {v2, p3}, Lorg/checkerframework/org/apache/bcel/generic/CodeExceptionGen;->setStartPC(Lorg/checkerframework/org/apache/bcel/generic/InstructionHandle;)V

    .line 1222
    :cond_0
    invoke-virtual {v2}, Lorg/checkerframework/org/apache/bcel/generic/CodeExceptionGen;->getEndPC()Lorg/checkerframework/org/apache/bcel/generic/InstructionHandle;

    move-result-object v3

    if-ne v3, p2, :cond_1

    .line 1223
    invoke-virtual {v2, p3}, Lorg/checkerframework/org/apache/bcel/generic/CodeExceptionGen;->setEndPC(Lorg/checkerframework/org/apache/bcel/generic/InstructionHandle;)V

    .line 1225
    :cond_1
    invoke-virtual {v2}, Lorg/checkerframework/org/apache/bcel/generic/CodeExceptionGen;->getHandlerPC()Lorg/checkerframework/org/apache/bcel/generic/InstructionHandle;

    move-result-object v3

    if-ne v3, p2, :cond_2

    .line 1226
    invoke-virtual {v2, p3}, Lorg/checkerframework/org/apache/bcel/generic/CodeExceptionGen;->setHandlerPC(Lorg/checkerframework/org/apache/bcel/generic/InstructionHandle;)V

    .line 1218
    .end local v2    # "exception":Lorg/checkerframework/org/apache/bcel/generic/CodeExceptionGen;
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1229
    :cond_3
    return-void
.end method

.method public redirectLocalVariables([Lorg/checkerframework/org/apache/bcel/generic/LocalVariableGen;Lorg/checkerframework/org/apache/bcel/generic/InstructionHandle;Lorg/checkerframework/org/apache/bcel/generic/InstructionHandle;)V
    .locals 5
    .param p1, "lg"    # [Lorg/checkerframework/org/apache/bcel/generic/LocalVariableGen;
    .param p2, "old_target"    # Lorg/checkerframework/org/apache/bcel/generic/InstructionHandle;
    .param p3, "new_target"    # Lorg/checkerframework/org/apache/bcel/generic/InstructionHandle;

    .line 1194
    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_2

    aget-object v2, p1, v1

    .line 1195
    .local v2, "element":Lorg/checkerframework/org/apache/bcel/generic/LocalVariableGen;
    invoke-virtual {v2}, Lorg/checkerframework/org/apache/bcel/generic/LocalVariableGen;->getStart()Lorg/checkerframework/org/apache/bcel/generic/InstructionHandle;

    move-result-object v3

    .line 1196
    .local v3, "start":Lorg/checkerframework/org/apache/bcel/generic/InstructionHandle;
    invoke-virtual {v2}, Lorg/checkerframework/org/apache/bcel/generic/LocalVariableGen;->getEnd()Lorg/checkerframework/org/apache/bcel/generic/InstructionHandle;

    move-result-object v4

    .line 1197
    .local v4, "end":Lorg/checkerframework/org/apache/bcel/generic/InstructionHandle;
    if-ne v3, p2, :cond_0

    .line 1198
    invoke-virtual {v2, p3}, Lorg/checkerframework/org/apache/bcel/generic/LocalVariableGen;->setStart(Lorg/checkerframework/org/apache/bcel/generic/InstructionHandle;)V

    .line 1200
    :cond_0
    if-ne v4, p2, :cond_1

    .line 1201
    invoke-virtual {v2, p3}, Lorg/checkerframework/org/apache/bcel/generic/LocalVariableGen;->setEnd(Lorg/checkerframework/org/apache/bcel/generic/InstructionHandle;)V

    .line 1194
    .end local v2    # "element":Lorg/checkerframework/org/apache/bcel/generic/LocalVariableGen;
    .end local v3    # "start":Lorg/checkerframework/org/apache/bcel/generic/InstructionHandle;
    .end local v4    # "end":Lorg/checkerframework/org/apache/bcel/generic/InstructionHandle;
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1204
    :cond_2
    return-void
.end method

.method public removeObserver(Lorg/checkerframework/org/apache/bcel/generic/InstructionListObserver;)V
    .locals 1
    .param p1, "o"    # Lorg/checkerframework/org/apache/bcel/generic/InstructionListObserver;

    .line 1247
    iget-object v0, p0, Lorg/checkerframework/org/apache/bcel/generic/InstructionList;->observers:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 1248
    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 1250
    :cond_0
    return-void
.end method

.method public replaceConstantPool(Lorg/checkerframework/org/apache/bcel/generic/ConstantPoolGen;Lorg/checkerframework/org/apache/bcel/generic/ConstantPoolGen;)V
    .locals 5
    .param p1, "old_cp"    # Lorg/checkerframework/org/apache/bcel/generic/ConstantPoolGen;
    .param p2, "new_cp"    # Lorg/checkerframework/org/apache/bcel/generic/ConstantPoolGen;

    .line 1094
    iget-object v0, p0, Lorg/checkerframework/org/apache/bcel/generic/InstructionList;->start:Lorg/checkerframework/org/apache/bcel/generic/InstructionHandle;

    .local v0, "ih":Lorg/checkerframework/org/apache/bcel/generic/InstructionHandle;
    :goto_0
    if-eqz v0, :cond_1

    .line 1095
    invoke-virtual {v0}, Lorg/checkerframework/org/apache/bcel/generic/InstructionHandle;->getInstruction()Lorg/checkerframework/org/apache/bcel/generic/Instruction;

    move-result-object v1

    .line 1096
    .local v1, "i":Lorg/checkerframework/org/apache/bcel/generic/Instruction;
    instance-of v2, v1, Lorg/checkerframework/org/apache/bcel/generic/CPInstruction;

    if-eqz v2, :cond_0

    .line 1097
    move-object v2, v1

    check-cast v2, Lorg/checkerframework/org/apache/bcel/generic/CPInstruction;

    .line 1098
    .local v2, "ci":Lorg/checkerframework/org/apache/bcel/generic/CPInstruction;
    invoke-virtual {v2}, Lorg/checkerframework/org/apache/bcel/generic/CPInstruction;->getIndex()I

    move-result v3

    invoke-virtual {p1, v3}, Lorg/checkerframework/org/apache/bcel/generic/ConstantPoolGen;->getConstant(I)Lorg/checkerframework/org/apache/bcel/classfile/Constant;

    move-result-object v3

    .line 1099
    .local v3, "c":Lorg/checkerframework/org/apache/bcel/classfile/Constant;
    invoke-virtual {p2, v3, p1}, Lorg/checkerframework/org/apache/bcel/generic/ConstantPoolGen;->addConstant(Lorg/checkerframework/org/apache/bcel/classfile/Constant;Lorg/checkerframework/org/apache/bcel/generic/ConstantPoolGen;)I

    move-result v4

    invoke-virtual {v2, v4}, Lorg/checkerframework/org/apache/bcel/generic/CPInstruction;->setIndex(I)V

    .line 1094
    .end local v1    # "i":Lorg/checkerframework/org/apache/bcel/generic/Instruction;
    .end local v2    # "ci":Lorg/checkerframework/org/apache/bcel/generic/CPInstruction;
    .end local v3    # "c":Lorg/checkerframework/org/apache/bcel/classfile/Constant;
    :cond_0
    invoke-virtual {v0}, Lorg/checkerframework/org/apache/bcel/generic/InstructionHandle;->getNext()Lorg/checkerframework/org/apache/bcel/generic/InstructionHandle;

    move-result-object v0

    goto :goto_0

    .line 1102
    .end local v0    # "ih":Lorg/checkerframework/org/apache/bcel/generic/InstructionHandle;
    :cond_1
    return-void
.end method

.method public setPositions()V
    .locals 1

    .line 848
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lorg/checkerframework/org/apache/bcel/generic/InstructionList;->setPositions(Z)V

    .line 849
    return-void
.end method

.method public setPositions(Z)V
    .locals 18
    .param p1, "check"    # Z

    .line 858
    move-object/from16 v0, p0

    const/4 v1, 0x0

    .line 859
    .local v1, "max_additional_bytes":I
    const/4 v2, 0x0

    .line 860
    .local v2, "additional_bytes":I
    const/4 v3, 0x0

    .line 861
    .local v3, "index":I
    const/4 v4, 0x0

    .line 862
    .local v4, "count":I
    iget v5, v0, Lorg/checkerframework/org/apache/bcel/generic/InstructionList;->length:I

    new-array v5, v5, [I

    .line 866
    .local v5, "pos":[I
    const/4 v6, 0x0

    if-eqz p1, :cond_5

    .line 867
    iget-object v7, v0, Lorg/checkerframework/org/apache/bcel/generic/InstructionList;->start:Lorg/checkerframework/org/apache/bcel/generic/InstructionHandle;

    .local v7, "ih":Lorg/checkerframework/org/apache/bcel/generic/InstructionHandle;
    :goto_0
    if-eqz v7, :cond_5

    .line 868
    invoke-virtual {v7}, Lorg/checkerframework/org/apache/bcel/generic/InstructionHandle;->getInstruction()Lorg/checkerframework/org/apache/bcel/generic/Instruction;

    move-result-object v8

    .line 869
    .local v8, "i":Lorg/checkerframework/org/apache/bcel/generic/Instruction;
    instance-of v9, v8, Lorg/checkerframework/org/apache/bcel/generic/BranchInstruction;

    if-eqz v9, :cond_4

    .line 870
    move-object v9, v8

    check-cast v9, Lorg/checkerframework/org/apache/bcel/generic/BranchInstruction;

    invoke-virtual {v9}, Lorg/checkerframework/org/apache/bcel/generic/BranchInstruction;->getTarget()Lorg/checkerframework/org/apache/bcel/generic/InstructionHandle;

    move-result-object v9

    invoke-virtual {v9}, Lorg/checkerframework/org/apache/bcel/generic/InstructionHandle;->getInstruction()Lorg/checkerframework/org/apache/bcel/generic/Instruction;

    move-result-object v9

    .line 871
    .local v9, "inst":Lorg/checkerframework/org/apache/bcel/generic/Instruction;
    invoke-virtual {v0, v9}, Lorg/checkerframework/org/apache/bcel/generic/InstructionList;->contains(Lorg/checkerframework/org/apache/bcel/generic/Instruction;)Z

    move-result v10

    const-string v11, " not in instruction list"

    const-string v12, "Branch target of "

    const-string v13, ":"

    if-eqz v10, :cond_3

    .line 874
    instance-of v10, v8, Lorg/checkerframework/org/apache/bcel/generic/Select;

    if-eqz v10, :cond_1

    .line 875
    move-object v10, v8

    check-cast v10, Lorg/checkerframework/org/apache/bcel/generic/Select;

    invoke-virtual {v10}, Lorg/checkerframework/org/apache/bcel/generic/Select;->getTargets()[Lorg/checkerframework/org/apache/bcel/generic/InstructionHandle;

    move-result-object v10

    .line 876
    .local v10, "targets":[Lorg/checkerframework/org/apache/bcel/generic/InstructionHandle;
    array-length v14, v10

    move v15, v6

    :goto_1
    if-ge v15, v14, :cond_1

    aget-object v16, v10, v15

    .line 877
    .local v16, "target":Lorg/checkerframework/org/apache/bcel/generic/InstructionHandle;
    invoke-virtual/range {v16 .. v16}, Lorg/checkerframework/org/apache/bcel/generic/InstructionHandle;->getInstruction()Lorg/checkerframework/org/apache/bcel/generic/Instruction;

    move-result-object v9

    .line 878
    invoke-virtual {v0, v9}, Lorg/checkerframework/org/apache/bcel/generic/InstructionList;->contains(Lorg/checkerframework/org/apache/bcel/generic/Instruction;)Z

    move-result v17

    if-eqz v17, :cond_0

    .line 876
    .end local v16    # "target":Lorg/checkerframework/org/apache/bcel/generic/InstructionHandle;
    add-int/lit8 v15, v15, 0x1

    goto :goto_1

    .line 879
    .restart local v16    # "target":Lorg/checkerframework/org/apache/bcel/generic/InstructionHandle;
    :cond_0
    new-instance v6, Lorg/checkerframework/org/apache/bcel/generic/ClassGenException;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v14, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v8}, Lorg/checkerframework/org/apache/bcel/generic/Instruction;->getOpcode()S

    move-result v14

    invoke-static {v14}, Lorg/checkerframework/org/apache/bcel/Const;->getOpcodeName(I)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v6, v11}, Lorg/checkerframework/org/apache/bcel/generic/ClassGenException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 883
    .end local v10    # "targets":[Lorg/checkerframework/org/apache/bcel/generic/InstructionHandle;
    .end local v16    # "target":Lorg/checkerframework/org/apache/bcel/generic/InstructionHandle;
    :cond_1
    instance-of v10, v7, Lorg/checkerframework/org/apache/bcel/generic/BranchHandle;

    if-eqz v10, :cond_2

    goto :goto_2

    .line 884
    :cond_2
    new-instance v6, Lorg/checkerframework/org/apache/bcel/generic/ClassGenException;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Branch instruction "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    .line 885
    invoke-virtual {v8}, Lorg/checkerframework/org/apache/bcel/generic/Instruction;->getOpcode()S

    move-result v11

    invoke-static {v11}, Lorg/checkerframework/org/apache/bcel/Const;->getOpcodeName(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " not contained in BranchHandle."

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v6, v10}, Lorg/checkerframework/org/apache/bcel/generic/ClassGenException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 872
    :cond_3
    new-instance v6, Lorg/checkerframework/org/apache/bcel/generic/ClassGenException;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v8}, Lorg/checkerframework/org/apache/bcel/generic/Instruction;->getOpcode()S

    move-result v12

    invoke-static {v12}, Lorg/checkerframework/org/apache/bcel/Const;->getOpcodeName(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v6, v10}, Lorg/checkerframework/org/apache/bcel/generic/ClassGenException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 867
    .end local v8    # "i":Lorg/checkerframework/org/apache/bcel/generic/Instruction;
    .end local v9    # "inst":Lorg/checkerframework/org/apache/bcel/generic/Instruction;
    :cond_4
    :goto_2
    invoke-virtual {v7}, Lorg/checkerframework/org/apache/bcel/generic/InstructionHandle;->getNext()Lorg/checkerframework/org/apache/bcel/generic/InstructionHandle;

    move-result-object v7

    goto/16 :goto_0

    .line 893
    .end local v7    # "ih":Lorg/checkerframework/org/apache/bcel/generic/InstructionHandle;
    :cond_5
    iget-object v7, v0, Lorg/checkerframework/org/apache/bcel/generic/InstructionList;->start:Lorg/checkerframework/org/apache/bcel/generic/InstructionHandle;

    .restart local v7    # "ih":Lorg/checkerframework/org/apache/bcel/generic/InstructionHandle;
    :goto_3
    if-eqz v7, :cond_6

    .line 894
    invoke-virtual {v7}, Lorg/checkerframework/org/apache/bcel/generic/InstructionHandle;->getInstruction()Lorg/checkerframework/org/apache/bcel/generic/Instruction;

    move-result-object v8

    .line 895
    .restart local v8    # "i":Lorg/checkerframework/org/apache/bcel/generic/Instruction;
    invoke-virtual {v7, v3}, Lorg/checkerframework/org/apache/bcel/generic/InstructionHandle;->setPosition(I)V

    .line 896
    add-int/lit8 v9, v4, 0x1

    .end local v4    # "count":I
    .local v9, "count":I
    aput v3, v5, v4

    .line 901
    invoke-virtual {v8}, Lorg/checkerframework/org/apache/bcel/generic/Instruction;->getOpcode()S

    move-result v4

    packed-switch v4, :pswitch_data_0

    :pswitch_0
    goto :goto_4

    .line 908
    :pswitch_1
    add-int/lit8 v1, v1, 0x3

    goto :goto_4

    .line 904
    :pswitch_2
    add-int/lit8 v1, v1, 0x2

    .line 905
    nop

    .line 911
    :goto_4
    invoke-virtual {v8}, Lorg/checkerframework/org/apache/bcel/generic/Instruction;->getLength()I

    move-result v4

    add-int/2addr v3, v4

    .line 893
    .end local v8    # "i":Lorg/checkerframework/org/apache/bcel/generic/Instruction;
    invoke-virtual {v7}, Lorg/checkerframework/org/apache/bcel/generic/InstructionHandle;->getNext()Lorg/checkerframework/org/apache/bcel/generic/InstructionHandle;

    move-result-object v7

    move v4, v9

    goto :goto_3

    .line 917
    .end local v7    # "ih":Lorg/checkerframework/org/apache/bcel/generic/InstructionHandle;
    .end local v9    # "count":I
    .restart local v4    # "count":I
    :cond_6
    iget-object v7, v0, Lorg/checkerframework/org/apache/bcel/generic/InstructionList;->start:Lorg/checkerframework/org/apache/bcel/generic/InstructionHandle;

    .restart local v7    # "ih":Lorg/checkerframework/org/apache/bcel/generic/InstructionHandle;
    :goto_5
    if-eqz v7, :cond_7

    .line 918
    invoke-virtual {v7, v2, v1}, Lorg/checkerframework/org/apache/bcel/generic/InstructionHandle;->updatePosition(II)I

    move-result v8

    add-int/2addr v2, v8

    .line 917
    invoke-virtual {v7}, Lorg/checkerframework/org/apache/bcel/generic/InstructionHandle;->getNext()Lorg/checkerframework/org/apache/bcel/generic/InstructionHandle;

    move-result-object v7

    goto :goto_5

    .line 923
    .end local v7    # "ih":Lorg/checkerframework/org/apache/bcel/generic/InstructionHandle;
    :cond_7
    move v4, v6

    move v3, v6

    .line 924
    iget-object v7, v0, Lorg/checkerframework/org/apache/bcel/generic/InstructionList;->start:Lorg/checkerframework/org/apache/bcel/generic/InstructionHandle;

    .restart local v7    # "ih":Lorg/checkerframework/org/apache/bcel/generic/InstructionHandle;
    :goto_6
    if-eqz v7, :cond_8

    .line 925
    invoke-virtual {v7}, Lorg/checkerframework/org/apache/bcel/generic/InstructionHandle;->getInstruction()Lorg/checkerframework/org/apache/bcel/generic/Instruction;

    move-result-object v8

    .line 926
    .restart local v8    # "i":Lorg/checkerframework/org/apache/bcel/generic/Instruction;
    invoke-virtual {v7, v3}, Lorg/checkerframework/org/apache/bcel/generic/InstructionHandle;->setPosition(I)V

    .line 927
    add-int/lit8 v9, v4, 0x1

    .end local v4    # "count":I
    .restart local v9    # "count":I
    aput v3, v5, v4

    .line 928
    invoke-virtual {v8}, Lorg/checkerframework/org/apache/bcel/generic/Instruction;->getLength()I

    move-result v4

    add-int/2addr v3, v4

    .line 924
    .end local v8    # "i":Lorg/checkerframework/org/apache/bcel/generic/Instruction;
    invoke-virtual {v7}, Lorg/checkerframework/org/apache/bcel/generic/InstructionHandle;->getNext()Lorg/checkerframework/org/apache/bcel/generic/InstructionHandle;

    move-result-object v7

    move v4, v9

    goto :goto_6

    .line 930
    .end local v7    # "ih":Lorg/checkerframework/org/apache/bcel/generic/InstructionHandle;
    .end local v9    # "count":I
    .restart local v4    # "count":I
    :cond_8
    new-array v7, v4, [I

    iput-object v7, v0, Lorg/checkerframework/org/apache/bcel/generic/InstructionList;->byte_positions:[I

    .line 931
    invoke-static {v5, v6, v7, v6, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 932
    return-void

    :pswitch_data_0
    .packed-switch 0xa7
        :pswitch_2
        :pswitch_2
        :pswitch_0
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method public size()I
    .locals 1
    .annotation runtime Lorg/checkerframework/dataflow/qual/Pure;
    .end annotation

    .line 1150
    iget v0, p0, Lorg/checkerframework/org/apache/bcel/generic/InstructionList;->length:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1
    .annotation runtime Lorg/checkerframework/dataflow/qual/SideEffectFree;
    .end annotation

    .line 974
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lorg/checkerframework/org/apache/bcel/generic/InstructionList;->toString(Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toString(Z)Ljava/lang/String;
    .locals 4
    .param p1, "verbose"    # Z

    .line 983
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 984
    .local v0, "buf":Ljava/lang/StringBuilder;
    iget-object v1, p0, Lorg/checkerframework/org/apache/bcel/generic/InstructionList;->start:Lorg/checkerframework/org/apache/bcel/generic/InstructionHandle;

    .local v1, "ih":Lorg/checkerframework/org/apache/bcel/generic/InstructionHandle;
    :goto_0
    if-eqz v1, :cond_0

    .line 985
    invoke-virtual {v1, p1}, Lorg/checkerframework/org/apache/bcel/generic/InstructionHandle;->toString(Z)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 984
    invoke-virtual {v1}, Lorg/checkerframework/org/apache/bcel/generic/InstructionHandle;->getNext()Lorg/checkerframework/org/apache/bcel/generic/InstructionHandle;

    move-result-object v1

    goto :goto_0

    .line 987
    .end local v1    # "ih":Lorg/checkerframework/org/apache/bcel/generic/InstructionHandle;
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public update()V
    .locals 2

    .line 1257
    iget-object v0, p0, Lorg/checkerframework/org/apache/bcel/generic/InstructionList;->observers:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 1258
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/checkerframework/org/apache/bcel/generic/InstructionListObserver;

    .line 1259
    .local v1, "observer":Lorg/checkerframework/org/apache/bcel/generic/InstructionListObserver;
    invoke-interface {v1, p0}, Lorg/checkerframework/org/apache/bcel/generic/InstructionListObserver;->notify(Lorg/checkerframework/org/apache/bcel/generic/InstructionList;)V

    .line 1260
    .end local v1    # "observer":Lorg/checkerframework/org/apache/bcel/generic/InstructionListObserver;
    goto :goto_0

    .line 1262
    :cond_0
    return-void
.end method
