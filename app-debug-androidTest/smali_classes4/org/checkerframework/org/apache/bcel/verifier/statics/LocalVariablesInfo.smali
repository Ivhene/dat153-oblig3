.class public Lorg/checkerframework/org/apache/bcel/verifier/statics/LocalVariablesInfo;
.super Ljava/lang/Object;
.source "LocalVariablesInfo.java"


# instance fields
.field private final localVariableInfos:[Lorg/checkerframework/org/apache/bcel/verifier/statics/LocalVariableInfo;


# direct methods
.method constructor <init>(I)V
    .locals 3
    .param p1, "max_locals"    # I

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    new-array v0, p1, [Lorg/checkerframework/org/apache/bcel/verifier/statics/LocalVariableInfo;

    iput-object v0, p0, Lorg/checkerframework/org/apache/bcel/verifier/statics/LocalVariablesInfo;->localVariableInfos:[Lorg/checkerframework/org/apache/bcel/verifier/statics/LocalVariableInfo;

    .line 40
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, p1, :cond_0

    .line 41
    iget-object v1, p0, Lorg/checkerframework/org/apache/bcel/verifier/statics/LocalVariablesInfo;->localVariableInfos:[Lorg/checkerframework/org/apache/bcel/verifier/statics/LocalVariableInfo;

    new-instance v2, Lorg/checkerframework/org/apache/bcel/verifier/statics/LocalVariableInfo;

    invoke-direct {v2}, Lorg/checkerframework/org/apache/bcel/verifier/statics/LocalVariableInfo;-><init>()V

    aput-object v2, v1, v0

    .line 40
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 43
    .end local v0    # "i":I
    :cond_0
    return-void
.end method


# virtual methods
.method public add(ILjava/lang/String;IILorg/checkerframework/org/apache/bcel/generic/Type;)V
    .locals 2
    .param p1, "slot"    # I
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "startpc"    # I
    .param p4, "length"    # I
    .param p5, "t"    # Lorg/checkerframework/org/apache/bcel/generic/Type;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/checkerframework/org/apache/bcel/verifier/exc/LocalVariableInfoInconsistentException;
        }
    .end annotation

    .line 62
    if-ltz p1, :cond_2

    iget-object v0, p0, Lorg/checkerframework/org/apache/bcel/verifier/statics/LocalVariablesInfo;->localVariableInfos:[Lorg/checkerframework/org/apache/bcel/verifier/statics/LocalVariableInfo;

    array-length v1, v0

    if-ge p1, v1, :cond_2

    .line 66
    aget-object v0, v0, p1

    invoke-virtual {v0, p2, p3, p4, p5}, Lorg/checkerframework/org/apache/bcel/verifier/statics/LocalVariableInfo;->add(Ljava/lang/String;IILorg/checkerframework/org/apache/bcel/generic/Type;)V

    .line 67
    sget-object v0, Lorg/checkerframework/org/apache/bcel/generic/Type;->LONG:Lorg/checkerframework/org/apache/bcel/generic/BasicType;

    if-ne p5, v0, :cond_0

    .line 68
    iget-object v0, p0, Lorg/checkerframework/org/apache/bcel/verifier/statics/LocalVariablesInfo;->localVariableInfos:[Lorg/checkerframework/org/apache/bcel/verifier/statics/LocalVariableInfo;

    add-int/lit8 v1, p1, 0x1

    aget-object v0, v0, v1

    invoke-static {}, Lorg/checkerframework/org/apache/bcel/verifier/statics/LONG_Upper;->theInstance()Lorg/checkerframework/org/apache/bcel/verifier/statics/LONG_Upper;

    move-result-object v1

    invoke-virtual {v0, p2, p3, p4, v1}, Lorg/checkerframework/org/apache/bcel/verifier/statics/LocalVariableInfo;->add(Ljava/lang/String;IILorg/checkerframework/org/apache/bcel/generic/Type;)V

    .line 70
    :cond_0
    sget-object v0, Lorg/checkerframework/org/apache/bcel/generic/Type;->DOUBLE:Lorg/checkerframework/org/apache/bcel/generic/BasicType;

    if-ne p5, v0, :cond_1

    .line 71
    iget-object v0, p0, Lorg/checkerframework/org/apache/bcel/verifier/statics/LocalVariablesInfo;->localVariableInfos:[Lorg/checkerframework/org/apache/bcel/verifier/statics/LocalVariableInfo;

    add-int/lit8 v1, p1, 0x1

    aget-object v0, v0, v1

    invoke-static {}, Lorg/checkerframework/org/apache/bcel/verifier/statics/DOUBLE_Upper;->theInstance()Lorg/checkerframework/org/apache/bcel/verifier/statics/DOUBLE_Upper;

    move-result-object v1

    invoke-virtual {v0, p2, p3, p4, v1}, Lorg/checkerframework/org/apache/bcel/verifier/statics/LocalVariableInfo;->add(Ljava/lang/String;IILorg/checkerframework/org/apache/bcel/generic/Type;)V

    .line 73
    :cond_1
    return-void

    .line 63
    :cond_2
    new-instance v0, Lorg/checkerframework/org/apache/bcel/verifier/exc/AssertionViolatedException;

    const-string v1, "Slot number for local variable information out of range."

    invoke-direct {v0, v1}, Lorg/checkerframework/org/apache/bcel/verifier/exc/AssertionViolatedException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getLocalVariableInfo(I)Lorg/checkerframework/org/apache/bcel/verifier/statics/LocalVariableInfo;
    .locals 2
    .param p1, "slot"    # I

    .line 47
    if-ltz p1, :cond_0

    iget-object v0, p0, Lorg/checkerframework/org/apache/bcel/verifier/statics/LocalVariablesInfo;->localVariableInfos:[Lorg/checkerframework/org/apache/bcel/verifier/statics/LocalVariableInfo;

    array-length v1, v0

    if-ge p1, v1, :cond_0

    .line 50
    aget-object v0, v0, p1

    return-object v0

    .line 48
    :cond_0
    new-instance v0, Lorg/checkerframework/org/apache/bcel/verifier/exc/AssertionViolatedException;

    const-string v1, "Slot number for local variable information out of range."

    invoke-direct {v0, v1}, Lorg/checkerframework/org/apache/bcel/verifier/exc/AssertionViolatedException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
