.class public final Lorg/checkerframework/org/apache/bcel/generic/SWITCH;
.super Ljava/lang/Object;
.source "SWITCH.java"

# interfaces
.implements Lorg/checkerframework/org/apache/bcel/generic/CompoundInstruction;


# instance fields
.field private instruction:Lorg/checkerframework/org/apache/bcel/generic/Select;

.field private match:[I

.field private match_length:I

.field private targets:[Lorg/checkerframework/org/apache/bcel/generic/InstructionHandle;


# direct methods
.method public constructor <init>([I[Lorg/checkerframework/org/apache/bcel/generic/InstructionHandle;Lorg/checkerframework/org/apache/bcel/generic/InstructionHandle;)V
    .locals 1
    .param p1, "match"    # [I
    .param p2, "targets"    # [Lorg/checkerframework/org/apache/bcel/generic/InstructionHandle;
    .param p3, "target"    # Lorg/checkerframework/org/apache/bcel/generic/InstructionHandle;

    .line 68
    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, p3, v0}, Lorg/checkerframework/org/apache/bcel/generic/SWITCH;-><init>([I[Lorg/checkerframework/org/apache/bcel/generic/InstructionHandle;Lorg/checkerframework/org/apache/bcel/generic/InstructionHandle;I)V

    .line 69
    return-void
.end method

.method public constructor <init>([I[Lorg/checkerframework/org/apache/bcel/generic/InstructionHandle;Lorg/checkerframework/org/apache/bcel/generic/InstructionHandle;I)V
    .locals 3
    .param p1, "match"    # [I
    .param p2, "targets"    # [Lorg/checkerframework/org/apache/bcel/generic/InstructionHandle;
    .param p3, "target"    # Lorg/checkerframework/org/apache/bcel/generic/InstructionHandle;
    .param p4, "max_gap"    # I

    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    invoke-virtual {p1}, [I->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [I

    iput-object v0, p0, Lorg/checkerframework/org/apache/bcel/generic/SWITCH;->match:[I

    .line 52
    invoke-virtual {p2}, [Lorg/checkerframework/org/apache/bcel/generic/InstructionHandle;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/checkerframework/org/apache/bcel/generic/InstructionHandle;

    iput-object v0, p0, Lorg/checkerframework/org/apache/bcel/generic/SWITCH;->targets:[Lorg/checkerframework/org/apache/bcel/generic/InstructionHandle;

    .line 53
    array-length v0, p1

    iput v0, p0, Lorg/checkerframework/org/apache/bcel/generic/SWITCH;->match_length:I

    const/4 v1, 0x2

    if-ge v0, v1, :cond_0

    .line 54
    new-instance v0, Lorg/checkerframework/org/apache/bcel/generic/TABLESWITCH;

    invoke-direct {v0, p1, p2, p3}, Lorg/checkerframework/org/apache/bcel/generic/TABLESWITCH;-><init>([I[Lorg/checkerframework/org/apache/bcel/generic/InstructionHandle;Lorg/checkerframework/org/apache/bcel/generic/InstructionHandle;)V

    iput-object v0, p0, Lorg/checkerframework/org/apache/bcel/generic/SWITCH;->instruction:Lorg/checkerframework/org/apache/bcel/generic/Select;

    goto :goto_0

    .line 56
    :cond_0
    add-int/lit8 v0, v0, -0x1

    const/4 v1, 0x0

    invoke-direct {p0, v1, v0}, Lorg/checkerframework/org/apache/bcel/generic/SWITCH;->sort(II)V

    .line 57
    invoke-direct {p0, p4}, Lorg/checkerframework/org/apache/bcel/generic/SWITCH;->matchIsOrdered(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 58
    invoke-direct {p0, p4, p3}, Lorg/checkerframework/org/apache/bcel/generic/SWITCH;->fillup(ILorg/checkerframework/org/apache/bcel/generic/InstructionHandle;)V

    .line 59
    new-instance v0, Lorg/checkerframework/org/apache/bcel/generic/TABLESWITCH;

    iget-object v1, p0, Lorg/checkerframework/org/apache/bcel/generic/SWITCH;->match:[I

    iget-object v2, p0, Lorg/checkerframework/org/apache/bcel/generic/SWITCH;->targets:[Lorg/checkerframework/org/apache/bcel/generic/InstructionHandle;

    invoke-direct {v0, v1, v2, p3}, Lorg/checkerframework/org/apache/bcel/generic/TABLESWITCH;-><init>([I[Lorg/checkerframework/org/apache/bcel/generic/InstructionHandle;Lorg/checkerframework/org/apache/bcel/generic/InstructionHandle;)V

    iput-object v0, p0, Lorg/checkerframework/org/apache/bcel/generic/SWITCH;->instruction:Lorg/checkerframework/org/apache/bcel/generic/Select;

    goto :goto_0

    .line 61
    :cond_1
    new-instance v0, Lorg/checkerframework/org/apache/bcel/generic/LOOKUPSWITCH;

    iget-object v1, p0, Lorg/checkerframework/org/apache/bcel/generic/SWITCH;->match:[I

    iget-object v2, p0, Lorg/checkerframework/org/apache/bcel/generic/SWITCH;->targets:[Lorg/checkerframework/org/apache/bcel/generic/InstructionHandle;

    invoke-direct {v0, v1, v2, p3}, Lorg/checkerframework/org/apache/bcel/generic/LOOKUPSWITCH;-><init>([I[Lorg/checkerframework/org/apache/bcel/generic/InstructionHandle;Lorg/checkerframework/org/apache/bcel/generic/InstructionHandle;)V

    iput-object v0, p0, Lorg/checkerframework/org/apache/bcel/generic/SWITCH;->instruction:Lorg/checkerframework/org/apache/bcel/generic/Select;

    .line 64
    :goto_0
    return-void
.end method

.method private fillup(ILorg/checkerframework/org/apache/bcel/generic/InstructionHandle;)V
    .locals 10
    .param p1, "max_gap"    # I
    .param p2, "target"    # Lorg/checkerframework/org/apache/bcel/generic/InstructionHandle;

    .line 73
    iget v0, p0, Lorg/checkerframework/org/apache/bcel/generic/SWITCH;->match_length:I

    mul-int v1, v0, p1

    add-int/2addr v0, v1

    .line 74
    .local v0, "max_size":I
    new-array v1, v0, [I

    .line 75
    .local v1, "m_vec":[I
    new-array v2, v0, [Lorg/checkerframework/org/apache/bcel/generic/InstructionHandle;

    .line 76
    .local v2, "t_vec":[Lorg/checkerframework/org/apache/bcel/generic/InstructionHandle;
    const/4 v3, 0x1

    .line 77
    .local v3, "count":I
    iget-object v4, p0, Lorg/checkerframework/org/apache/bcel/generic/SWITCH;->match:[I

    const/4 v5, 0x0

    aget v4, v4, v5

    aput v4, v1, v5

    .line 78
    iget-object v4, p0, Lorg/checkerframework/org/apache/bcel/generic/SWITCH;->targets:[Lorg/checkerframework/org/apache/bcel/generic/InstructionHandle;

    aget-object v4, v4, v5

    aput-object v4, v2, v5

    .line 79
    const/4 v4, 0x1

    .local v4, "i":I
    :goto_0
    iget v6, p0, Lorg/checkerframework/org/apache/bcel/generic/SWITCH;->match_length:I

    if-ge v4, v6, :cond_1

    .line 80
    iget-object v6, p0, Lorg/checkerframework/org/apache/bcel/generic/SWITCH;->match:[I

    add-int/lit8 v7, v4, -0x1

    aget v7, v6, v7

    .line 81
    .local v7, "prev":I
    aget v6, v6, v4

    sub-int/2addr v6, v7

    .line 82
    .local v6, "gap":I
    const/4 v8, 0x1

    .local v8, "j":I
    :goto_1
    if-ge v8, v6, :cond_0

    .line 83
    add-int v9, v7, v8

    aput v9, v1, v3

    .line 84
    aput-object p2, v2, v3

    .line 85
    add-int/lit8 v3, v3, 0x1

    .line 82
    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    .line 87
    .end local v8    # "j":I
    :cond_0
    iget-object v8, p0, Lorg/checkerframework/org/apache/bcel/generic/SWITCH;->match:[I

    aget v8, v8, v4

    aput v8, v1, v3

    .line 88
    iget-object v8, p0, Lorg/checkerframework/org/apache/bcel/generic/SWITCH;->targets:[Lorg/checkerframework/org/apache/bcel/generic/InstructionHandle;

    aget-object v8, v8, v4

    aput-object v8, v2, v3

    .line 89
    nop

    .end local v6    # "gap":I
    .end local v7    # "prev":I
    add-int/lit8 v3, v3, 0x1

    .line 79
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 91
    .end local v4    # "i":I
    :cond_1
    new-array v4, v3, [I

    iput-object v4, p0, Lorg/checkerframework/org/apache/bcel/generic/SWITCH;->match:[I

    .line 92
    new-array v6, v3, [Lorg/checkerframework/org/apache/bcel/generic/InstructionHandle;

    iput-object v6, p0, Lorg/checkerframework/org/apache/bcel/generic/SWITCH;->targets:[Lorg/checkerframework/org/apache/bcel/generic/InstructionHandle;

    .line 93
    invoke-static {v1, v5, v4, v5, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 94
    iget-object v4, p0, Lorg/checkerframework/org/apache/bcel/generic/SWITCH;->targets:[Lorg/checkerframework/org/apache/bcel/generic/InstructionHandle;

    invoke-static {v2, v5, v4, v5, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 95
    return-void
.end method

.method private matchIsOrdered(I)Z
    .locals 4
    .param p1, "max_gap"    # I

    .line 138
    const/4 v0, 0x1

    .local v0, "i":I
    :goto_0
    iget v1, p0, Lorg/checkerframework/org/apache/bcel/generic/SWITCH;->match_length:I

    if-ge v0, v1, :cond_1

    .line 139
    iget-object v1, p0, Lorg/checkerframework/org/apache/bcel/generic/SWITCH;->match:[I

    aget v2, v1, v0

    add-int/lit8 v3, v0, -0x1

    aget v1, v1, v3

    sub-int/2addr v2, v1

    if-le v2, p1, :cond_0

    .line 140
    const/4 v1, 0x0

    return v1

    .line 138
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 143
    .end local v0    # "i":I
    :cond_1
    const/4 v0, 0x1

    return v0
.end method

.method private sort(II)V
    .locals 7
    .param p1, "l"    # I
    .param p2, "r"    # I

    .line 102
    move v0, p1

    .line 103
    .local v0, "i":I
    move v1, p2

    .line 105
    .local v1, "j":I
    iget-object v2, p0, Lorg/checkerframework/org/apache/bcel/generic/SWITCH;->match:[I

    add-int v3, p1, p2

    div-int/lit8 v3, v3, 0x2

    aget v2, v2, v3

    .line 108
    .local v2, "m":I
    :cond_0
    :goto_0
    iget-object v3, p0, Lorg/checkerframework/org/apache/bcel/generic/SWITCH;->match:[I

    aget v3, v3, v0

    if-ge v3, v2, :cond_1

    .line 109
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 111
    :cond_1
    :goto_1
    iget-object v3, p0, Lorg/checkerframework/org/apache/bcel/generic/SWITCH;->match:[I

    aget v4, v3, v1

    if-ge v2, v4, :cond_2

    .line 112
    add-int/lit8 v1, v1, -0x1

    goto :goto_1

    .line 114
    :cond_2
    if-gt v0, v1, :cond_3

    .line 115
    aget v5, v3, v0

    .line 116
    .local v5, "h":I
    aput v4, v3, v0

    .line 117
    aput v5, v3, v1

    .line 118
    iget-object v3, p0, Lorg/checkerframework/org/apache/bcel/generic/SWITCH;->targets:[Lorg/checkerframework/org/apache/bcel/generic/InstructionHandle;

    aget-object v4, v3, v0

    .line 119
    .local v4, "h2":Lorg/checkerframework/org/apache/bcel/generic/InstructionHandle;
    aget-object v6, v3, v1

    aput-object v6, v3, v0

    .line 120
    aput-object v4, v3, v1

    .line 121
    add-int/lit8 v0, v0, 0x1

    .line 122
    add-int/lit8 v1, v1, -0x1

    .line 124
    .end local v4    # "h2":Lorg/checkerframework/org/apache/bcel/generic/InstructionHandle;
    .end local v5    # "h":I
    :cond_3
    if-le v0, v1, :cond_0

    .line 125
    if-ge p1, v1, :cond_4

    .line 126
    invoke-direct {p0, p1, v1}, Lorg/checkerframework/org/apache/bcel/generic/SWITCH;->sort(II)V

    .line 128
    :cond_4
    if-ge v0, p2, :cond_5

    .line 129
    invoke-direct {p0, v0, p2}, Lorg/checkerframework/org/apache/bcel/generic/SWITCH;->sort(II)V

    .line 131
    :cond_5
    return-void
.end method


# virtual methods
.method public final getInstruction()Lorg/checkerframework/org/apache/bcel/generic/Instruction;
    .locals 1

    .line 154
    iget-object v0, p0, Lorg/checkerframework/org/apache/bcel/generic/SWITCH;->instruction:Lorg/checkerframework/org/apache/bcel/generic/Select;

    return-object v0
.end method

.method public final getInstructionList()Lorg/checkerframework/org/apache/bcel/generic/InstructionList;
    .locals 2

    .line 149
    new-instance v0, Lorg/checkerframework/org/apache/bcel/generic/InstructionList;

    iget-object v1, p0, Lorg/checkerframework/org/apache/bcel/generic/SWITCH;->instruction:Lorg/checkerframework/org/apache/bcel/generic/Select;

    invoke-direct {v0, v1}, Lorg/checkerframework/org/apache/bcel/generic/InstructionList;-><init>(Lorg/checkerframework/org/apache/bcel/generic/BranchInstruction;)V

    return-object v0
.end method
