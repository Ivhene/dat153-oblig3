.class public final Lorg/checkerframework/org/plumelib/bcelutil/StackTypes;
.super Ljava/lang/Object;
.source "StackTypes.java"


# instance fields
.field loc_arr:[Lorg/checkerframework/org/apache/bcel/verifier/structurals/LocalVariables;

.field os_arr:[Lorg/checkerframework/org/apache/bcel/verifier/structurals/OperandStack;


# direct methods
.method public constructor <init>(Lorg/checkerframework/org/apache/bcel/generic/MethodGen;)V
    .locals 3
    .param p1, "mg"    # Lorg/checkerframework/org/apache/bcel/generic/MethodGen;

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    invoke-virtual {p1}, Lorg/checkerframework/org/apache/bcel/generic/MethodGen;->getInstructionList()Lorg/checkerframework/org/apache/bcel/generic/InstructionList;

    move-result-object v0

    .line 40
    .local v0, "il":Lorg/checkerframework/org/apache/bcel/generic/InstructionList;
    if-nez v0, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lorg/checkerframework/org/apache/bcel/generic/InstructionList;->getEnd()Lorg/checkerframework/org/apache/bcel/generic/InstructionHandle;

    move-result-object v1

    invoke-virtual {v1}, Lorg/checkerframework/org/apache/bcel/generic/InstructionHandle;->getPosition()I

    move-result v1

    .line 41
    .local v1, "size":I
    :goto_0
    add-int/lit8 v2, v1, 0x1

    new-array v2, v2, [Lorg/checkerframework/org/apache/bcel/verifier/structurals/OperandStack;

    iput-object v2, p0, Lorg/checkerframework/org/plumelib/bcelutil/StackTypes;->os_arr:[Lorg/checkerframework/org/apache/bcel/verifier/structurals/OperandStack;

    .line 42
    add-int/lit8 v2, v1, 0x1

    new-array v2, v2, [Lorg/checkerframework/org/apache/bcel/verifier/structurals/LocalVariables;

    iput-object v2, p0, Lorg/checkerframework/org/plumelib/bcelutil/StackTypes;->loc_arr:[Lorg/checkerframework/org/apache/bcel/verifier/structurals/LocalVariables;

    .line 43
    return-void
.end method


# virtual methods
.method public get(I)Lorg/checkerframework/org/apache/bcel/verifier/structurals/OperandStack;
    .locals 1
    .param p1, "offset"    # I

    .line 68
    iget-object v0, p0, Lorg/checkerframework/org/plumelib/bcelutil/StackTypes;->os_arr:[Lorg/checkerframework/org/apache/bcel/verifier/structurals/OperandStack;

    aget-object v0, v0, p1

    return-object v0
.end method

.method public set(ILorg/checkerframework/org/apache/bcel/verifier/structurals/Frame;)V
    .locals 4
    .param p1, "offset"    # I
    .param p2, "f"    # Lorg/checkerframework/org/apache/bcel/verifier/structurals/Frame;

    .line 54
    invoke-virtual {p2}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/Frame;->getStack()Lorg/checkerframework/org/apache/bcel/verifier/structurals/OperandStack;

    move-result-object v0

    .line 57
    .local v0, "os":Lorg/checkerframework/org/apache/bcel/verifier/structurals/OperandStack;
    iget-object v1, p0, Lorg/checkerframework/org/plumelib/bcelutil/StackTypes;->loc_arr:[Lorg/checkerframework/org/apache/bcel/verifier/structurals/LocalVariables;

    invoke-virtual {p2}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/Frame;->getLocals()Lorg/checkerframework/org/apache/bcel/verifier/structurals/LocalVariables;

    move-result-object v2

    invoke-virtual {v2}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/LocalVariables;->clone()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/checkerframework/org/apache/bcel/verifier/structurals/LocalVariables;

    move-object v3, v2

    check-cast v3, Lorg/checkerframework/org/apache/bcel/verifier/structurals/LocalVariables;

    aput-object v2, v1, p1

    .line 58
    iget-object v1, p0, Lorg/checkerframework/org/plumelib/bcelutil/StackTypes;->os_arr:[Lorg/checkerframework/org/apache/bcel/verifier/structurals/OperandStack;

    invoke-virtual {v0}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/OperandStack;->clone()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/checkerframework/org/apache/bcel/verifier/structurals/OperandStack;

    move-object v3, v2

    check-cast v3, Lorg/checkerframework/org/apache/bcel/verifier/structurals/OperandStack;

    aput-object v2, v1, p1

    .line 59
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4
    .annotation runtime Lorg/checkerframework/dataflow/qual/SideEffectFree;
    .end annotation

    .line 76
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 78
    .local v0, "sb":Ljava/lang/StringBuilder;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Lorg/checkerframework/org/plumelib/bcelutil/StackTypes;->os_arr:[Lorg/checkerframework/org/apache/bcel/verifier/structurals/OperandStack;

    array-length v3, v2

    if-ge v1, v3, :cond_1

    .line 79
    aget-object v2, v2, v1

    if-eqz v2, :cond_0

    .line 80
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

    const-string v3, "Instruction %d:\n"

    invoke-static {v3, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 81
    iget-object v2, p0, Lorg/checkerframework/org/plumelib/bcelutil/StackTypes;->os_arr:[Lorg/checkerframework/org/apache/bcel/verifier/structurals/OperandStack;

    aget-object v2, v2, v1

    invoke-virtual {p0, v2}, Lorg/checkerframework/org/plumelib/bcelutil/StackTypes;->toString(Lorg/checkerframework/org/apache/bcel/verifier/structurals/OperandStack;)Ljava/lang/String;

    move-result-object v2

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

    const-string v3, "  stack:  %s\n"

    invoke-static {v3, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 82
    iget-object v2, p0, Lorg/checkerframework/org/plumelib/bcelutil/StackTypes;->loc_arr:[Lorg/checkerframework/org/apache/bcel/verifier/structurals/LocalVariables;

    aget-object v2, v2, v1

    invoke-virtual {p0, v2}, Lorg/checkerframework/org/plumelib/bcelutil/StackTypes;->toString(Lorg/checkerframework/org/apache/bcel/verifier/structurals/LocalVariables;)Ljava/lang/String;

    move-result-object v2

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

    const-string v3, "  locals: %s\n"

    invoke-static {v3, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 78
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 86
    .end local v1    # "i":I
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public toString(Lorg/checkerframework/org/apache/bcel/verifier/structurals/LocalVariables;)Ljava/lang/String;
    .locals 5
    .param p1, "lv"    # Lorg/checkerframework/org/apache/bcel/verifier/structurals/LocalVariables;
    .annotation runtime Lorg/checkerframework/dataflow/qual/SideEffectFree;
    .end annotation

    .line 122
    const-string v0, ""

    .line 124
    .local v0, "buff":Ljava/lang/String;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-virtual {p1}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/LocalVariables;->maxLocals()I

    move-result v2

    if-ge v1, v2, :cond_2

    .line 125
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 126
    :cond_0
    invoke-virtual {p1, v1}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/LocalVariables;->get(I)Lorg/checkerframework/org/apache/bcel/generic/Type;

    move-result-object v2

    .line 127
    .local v2, "t":Lorg/checkerframework/org/apache/bcel/generic/Type;
    instance-of v3, v2, Lorg/checkerframework/org/apache/bcel/verifier/structurals/UninitializedObjectType;

    if-eqz v3, :cond_1

    .line 128
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "uninitialized-object"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 130
    :cond_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 124
    .end local v2    # "t":Lorg/checkerframework/org/apache/bcel/generic/Type;
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 133
    .end local v1    # "i":I
    :cond_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "{"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "}"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public toString(Lorg/checkerframework/org/apache/bcel/verifier/structurals/OperandStack;)Ljava/lang/String;
    .locals 5
    .param p1, "os"    # Lorg/checkerframework/org/apache/bcel/verifier/structurals/OperandStack;
    .annotation runtime Lorg/checkerframework/dataflow/qual/SideEffectFree;
    .end annotation

    .line 98
    const-string v0, ""

    .line 100
    .local v0, "buff":Ljava/lang/String;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-virtual {p1}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/OperandStack;->size()I

    move-result v2

    if-ge v1, v2, :cond_2

    .line 101
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 102
    :cond_0
    invoke-virtual {p1, v1}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/OperandStack;->peek(I)Lorg/checkerframework/org/apache/bcel/generic/Type;

    move-result-object v2

    .line 103
    .local v2, "t":Lorg/checkerframework/org/apache/bcel/generic/Type;
    instance-of v3, v2, Lorg/checkerframework/org/apache/bcel/verifier/structurals/UninitializedObjectType;

    if-eqz v3, :cond_1

    .line 104
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "uninitialized-object"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 106
    :cond_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 100
    .end local v2    # "t":Lorg/checkerframework/org/apache/bcel/generic/Type;
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 110
    .end local v1    # "i":I
    :cond_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "{"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "}"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
