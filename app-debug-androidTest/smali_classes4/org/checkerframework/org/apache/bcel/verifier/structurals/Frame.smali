.class public Lorg/checkerframework/org/apache/bcel/verifier/structurals/Frame;
.super Ljava/lang/Object;
.source "Frame.java"


# static fields
.field protected static _this:Lorg/checkerframework/org/apache/bcel/verifier/structurals/UninitializedObjectType;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field


# instance fields
.field private final locals:Lorg/checkerframework/org/apache/bcel/verifier/structurals/LocalVariables;

.field private final stack:Lorg/checkerframework/org/apache/bcel/verifier/structurals/OperandStack;


# direct methods
.method public constructor <init>(II)V
    .locals 1
    .param p1, "maxLocals"    # I
    .param p2, "maxStack"    # I

    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    new-instance v0, Lorg/checkerframework/org/apache/bcel/verifier/structurals/LocalVariables;

    invoke-direct {v0, p1}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/LocalVariables;-><init>(I)V

    iput-object v0, p0, Lorg/checkerframework/org/apache/bcel/verifier/structurals/Frame;->locals:Lorg/checkerframework/org/apache/bcel/verifier/structurals/LocalVariables;

    .line 58
    new-instance v0, Lorg/checkerframework/org/apache/bcel/verifier/structurals/OperandStack;

    invoke-direct {v0, p2}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/OperandStack;-><init>(I)V

    iput-object v0, p0, Lorg/checkerframework/org/apache/bcel/verifier/structurals/Frame;->stack:Lorg/checkerframework/org/apache/bcel/verifier/structurals/OperandStack;

    .line 59
    return-void
.end method

.method public constructor <init>(Lorg/checkerframework/org/apache/bcel/verifier/structurals/LocalVariables;Lorg/checkerframework/org/apache/bcel/verifier/structurals/OperandStack;)V
    .locals 0
    .param p1, "locals"    # Lorg/checkerframework/org/apache/bcel/verifier/structurals/LocalVariables;
    .param p2, "stack"    # Lorg/checkerframework/org/apache/bcel/verifier/structurals/OperandStack;

    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 65
    iput-object p1, p0, Lorg/checkerframework/org/apache/bcel/verifier/structurals/Frame;->locals:Lorg/checkerframework/org/apache/bcel/verifier/structurals/LocalVariables;

    .line 66
    iput-object p2, p0, Lorg/checkerframework/org/apache/bcel/verifier/structurals/Frame;->stack:Lorg/checkerframework/org/apache/bcel/verifier/structurals/OperandStack;

    .line 67
    return-void
.end method

.method public static getThis()Lorg/checkerframework/org/apache/bcel/verifier/structurals/UninitializedObjectType;
    .locals 1

    .line 133
    sget-object v0, Lorg/checkerframework/org/apache/bcel/verifier/structurals/Frame;->_this:Lorg/checkerframework/org/apache/bcel/verifier/structurals/UninitializedObjectType;

    return-object v0
.end method

.method public static setThis(Lorg/checkerframework/org/apache/bcel/verifier/structurals/UninitializedObjectType;)V
    .locals 0
    .param p0, "_this"    # Lorg/checkerframework/org/apache/bcel/verifier/structurals/UninitializedObjectType;

    .line 141
    sput-object p0, Lorg/checkerframework/org/apache/bcel/verifier/structurals/Frame;->_this:Lorg/checkerframework/org/apache/bcel/verifier/structurals/UninitializedObjectType;

    .line 142
    return-void
.end method


# virtual methods
.method protected clone()Ljava/lang/Object;
    .locals 3
    .annotation runtime Lorg/checkerframework/dataflow/qual/SideEffectFree;
    .end annotation

    .line 74
    new-instance v0, Lorg/checkerframework/org/apache/bcel/verifier/structurals/Frame;

    iget-object v1, p0, Lorg/checkerframework/org/apache/bcel/verifier/structurals/Frame;->locals:Lorg/checkerframework/org/apache/bcel/verifier/structurals/LocalVariables;

    invoke-virtual {v1}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/LocalVariables;->getClone()Lorg/checkerframework/org/apache/bcel/verifier/structurals/LocalVariables;

    move-result-object v1

    iget-object v2, p0, Lorg/checkerframework/org/apache/bcel/verifier/structurals/Frame;->stack:Lorg/checkerframework/org/apache/bcel/verifier/structurals/OperandStack;

    invoke-virtual {v2}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/OperandStack;->getClone()Lorg/checkerframework/org/apache/bcel/verifier/structurals/OperandStack;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/Frame;-><init>(Lorg/checkerframework/org/apache/bcel/verifier/structurals/LocalVariables;Lorg/checkerframework/org/apache/bcel/verifier/structurals/OperandStack;)V

    .line 75
    .local v0, "f":Lorg/checkerframework/org/apache/bcel/verifier/structurals/Frame;
    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1, "o"    # Ljava/lang/Object;
    .annotation runtime Lorg/checkerframework/dataflow/qual/Pure;
    .end annotation

    .line 109
    instance-of v0, p1, Lorg/checkerframework/org/apache/bcel/verifier/structurals/Frame;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 110
    return v1

    .line 112
    :cond_0
    move-object v0, p1

    check-cast v0, Lorg/checkerframework/org/apache/bcel/verifier/structurals/Frame;

    .line 113
    .local v0, "f":Lorg/checkerframework/org/apache/bcel/verifier/structurals/Frame;
    iget-object v2, p0, Lorg/checkerframework/org/apache/bcel/verifier/structurals/Frame;->stack:Lorg/checkerframework/org/apache/bcel/verifier/structurals/OperandStack;

    iget-object v3, v0, Lorg/checkerframework/org/apache/bcel/verifier/structurals/Frame;->stack:Lorg/checkerframework/org/apache/bcel/verifier/structurals/OperandStack;

    invoke-virtual {v2, v3}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/OperandStack;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lorg/checkerframework/org/apache/bcel/verifier/structurals/Frame;->locals:Lorg/checkerframework/org/apache/bcel/verifier/structurals/LocalVariables;

    iget-object v3, v0, Lorg/checkerframework/org/apache/bcel/verifier/structurals/Frame;->locals:Lorg/checkerframework/org/apache/bcel/verifier/structurals/LocalVariables;

    invoke-virtual {v2, v3}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/LocalVariables;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method public getClone()Lorg/checkerframework/org/apache/bcel/verifier/structurals/Frame;
    .locals 1

    .line 82
    invoke-virtual {p0}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/Frame;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/checkerframework/org/apache/bcel/verifier/structurals/Frame;

    return-object v0
.end method

.method public getLocals()Lorg/checkerframework/org/apache/bcel/verifier/structurals/LocalVariables;
    .locals 1

    .line 89
    iget-object v0, p0, Lorg/checkerframework/org/apache/bcel/verifier/structurals/Frame;->locals:Lorg/checkerframework/org/apache/bcel/verifier/structurals/LocalVariables;

    return-object v0
.end method

.method public getStack()Lorg/checkerframework/org/apache/bcel/verifier/structurals/OperandStack;
    .locals 1

    .line 96
    iget-object v0, p0, Lorg/checkerframework/org/apache/bcel/verifier/structurals/Frame;->stack:Lorg/checkerframework/org/apache/bcel/verifier/structurals/OperandStack;

    return-object v0
.end method

.method public hashCode()I
    .locals 2
    .annotation runtime Lorg/checkerframework/dataflow/qual/Pure;
    .end annotation

    .line 102
    iget-object v0, p0, Lorg/checkerframework/org/apache/bcel/verifier/structurals/Frame;->stack:Lorg/checkerframework/org/apache/bcel/verifier/structurals/OperandStack;

    invoke-virtual {v0}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/OperandStack;->hashCode()I

    move-result v0

    iget-object v1, p0, Lorg/checkerframework/org/apache/bcel/verifier/structurals/Frame;->locals:Lorg/checkerframework/org/apache/bcel/verifier/structurals/LocalVariables;

    invoke-virtual {v1}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/LocalVariables;->hashCode()I

    move-result v1

    xor-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3
    .annotation runtime Lorg/checkerframework/dataflow/qual/SideEffectFree;
    .end annotation

    .line 121
    const-string v0, "Local Variables:\n"

    .line 122
    .local v0, "s":Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lorg/checkerframework/org/apache/bcel/verifier/structurals/Frame;->locals:Lorg/checkerframework/org/apache/bcel/verifier/structurals/LocalVariables;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 123
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "OperandStack:\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 124
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lorg/checkerframework/org/apache/bcel/verifier/structurals/Frame;->stack:Lorg/checkerframework/org/apache/bcel/verifier/structurals/OperandStack;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 125
    return-object v0
.end method
