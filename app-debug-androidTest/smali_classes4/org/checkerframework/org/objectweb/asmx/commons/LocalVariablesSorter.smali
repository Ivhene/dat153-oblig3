.class public Lorg/checkerframework/org/objectweb/asmx/commons/LocalVariablesSorter;
.super Lorg/checkerframework/org/objectweb/asmx/MethodAdapter;
.source "LocalVariablesSorter.java"


# instance fields
.field protected final firstLocal:I

.field private mapping:[I

.field private nextLocal:I


# direct methods
.method public constructor <init>(ILjava/lang/String;Lorg/checkerframework/org/objectweb/asmx/MethodVisitor;)V
    .locals 4
    .param p1, "access"    # I
    .param p2, "desc"    # Ljava/lang/String;
    .param p3, "mv"    # Lorg/checkerframework/org/objectweb/asmx/MethodVisitor;

    .line 64
    invoke-direct {p0, p3}, Lorg/checkerframework/org/objectweb/asmx/MethodAdapter;-><init>(Lorg/checkerframework/org/objectweb/asmx/MethodVisitor;)V

    .line 53
    const/16 v0, 0x28

    new-array v0, v0, [I

    iput-object v0, p0, Lorg/checkerframework/org/objectweb/asmx/commons/LocalVariablesSorter;->mapping:[I

    .line 65
    invoke-static {p2}, Lorg/checkerframework/org/objectweb/asmx/Type;->getArgumentTypes(Ljava/lang/String;)[Lorg/checkerframework/org/objectweb/asmx/Type;

    move-result-object v0

    .line 66
    .local v0, "args":[Lorg/checkerframework/org/objectweb/asmx/Type;
    and-int/lit8 v1, p1, 0x8

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    const/4 v1, 0x1

    :goto_0
    iput v1, p0, Lorg/checkerframework/org/objectweb/asmx/commons/LocalVariablesSorter;->nextLocal:I

    .line 67
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    array-length v2, v0

    if-ge v1, v2, :cond_1

    .line 68
    iget v2, p0, Lorg/checkerframework/org/objectweb/asmx/commons/LocalVariablesSorter;->nextLocal:I

    aget-object v3, v0, v1

    invoke-virtual {v3}, Lorg/checkerframework/org/objectweb/asmx/Type;->getSize()I

    move-result v3

    add-int/2addr v2, v3

    iput v2, p0, Lorg/checkerframework/org/objectweb/asmx/commons/LocalVariablesSorter;->nextLocal:I

    .line 67
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 70
    .end local v1    # "i":I
    :cond_1
    iget v1, p0, Lorg/checkerframework/org/objectweb/asmx/commons/LocalVariablesSorter;->nextLocal:I

    iput v1, p0, Lorg/checkerframework/org/objectweb/asmx/commons/LocalVariablesSorter;->firstLocal:I

    .line 71
    return-void
.end method

.method private remap(II)I
    .locals 5
    .param p1, "var"    # I
    .param p2, "size"    # I

    .line 117
    iget v0, p0, Lorg/checkerframework/org/objectweb/asmx/commons/LocalVariablesSorter;->firstLocal:I

    if-ge p1, v0, :cond_0

    .line 118
    return p1

    .line 120
    :cond_0
    mul-int/lit8 v0, p1, 0x2

    add-int/2addr v0, p2

    add-int/lit8 v0, v0, -0x1

    .line 121
    .local v0, "key":I
    iget-object v1, p0, Lorg/checkerframework/org/objectweb/asmx/commons/LocalVariablesSorter;->mapping:[I

    array-length v1, v1

    .line 122
    .local v1, "length":I
    if-lt v0, v1, :cond_1

    .line 123
    mul-int/lit8 v2, v1, 0x2

    add-int/lit8 v3, v0, 0x1

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v2

    new-array v2, v2, [I

    .line 124
    .local v2, "newMapping":[I
    iget-object v3, p0, Lorg/checkerframework/org/objectweb/asmx/commons/LocalVariablesSorter;->mapping:[I

    const/4 v4, 0x0

    invoke-static {v3, v4, v2, v4, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 125
    iput-object v2, p0, Lorg/checkerframework/org/objectweb/asmx/commons/LocalVariablesSorter;->mapping:[I

    .line 127
    .end local v2    # "newMapping":[I
    :cond_1
    iget-object v2, p0, Lorg/checkerframework/org/objectweb/asmx/commons/LocalVariablesSorter;->mapping:[I

    aget v3, v2, v0

    .line 128
    .local v3, "value":I
    if-nez v3, :cond_2

    .line 129
    iget v4, p0, Lorg/checkerframework/org/objectweb/asmx/commons/LocalVariablesSorter;->nextLocal:I

    add-int/lit8 v3, v4, 0x1

    .line 130
    aput v3, v2, v0

    .line 131
    add-int/2addr v4, p2

    iput v4, p0, Lorg/checkerframework/org/objectweb/asmx/commons/LocalVariablesSorter;->nextLocal:I

    .line 133
    :cond_2
    add-int/lit8 v2, v3, -0x1

    return v2
.end method


# virtual methods
.method protected newLocal(I)I
    .locals 2
    .param p1, "size"    # I

    .line 111
    iget v0, p0, Lorg/checkerframework/org/objectweb/asmx/commons/LocalVariablesSorter;->nextLocal:I

    .line 112
    .local v0, "var":I
    iget v1, p0, Lorg/checkerframework/org/objectweb/asmx/commons/LocalVariablesSorter;->nextLocal:I

    add-int/2addr v1, p1

    iput v1, p0, Lorg/checkerframework/org/objectweb/asmx/commons/LocalVariablesSorter;->nextLocal:I

    .line 113
    return v0
.end method

.method public visitIincInsn(II)V
    .locals 2
    .param p1, "var"    # I
    .param p2, "increment"    # I

    .line 89
    iget-object v0, p0, Lorg/checkerframework/org/objectweb/asmx/commons/LocalVariablesSorter;->mv:Lorg/checkerframework/org/objectweb/asmx/MethodVisitor;

    const/4 v1, 0x1

    invoke-direct {p0, p1, v1}, Lorg/checkerframework/org/objectweb/asmx/commons/LocalVariablesSorter;->remap(II)I

    move-result v1

    invoke-interface {v0, v1, p2}, Lorg/checkerframework/org/objectweb/asmx/MethodVisitor;->visitIincInsn(II)V

    .line 90
    return-void
.end method

.method public visitLocalVariable(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/checkerframework/org/objectweb/asmx/Label;Lorg/checkerframework/org/objectweb/asmx/Label;I)V
    .locals 8
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "desc"    # Ljava/lang/String;
    .param p3, "signature"    # Ljava/lang/String;
    .param p4, "start"    # Lorg/checkerframework/org/objectweb/asmx/Label;
    .param p5, "end"    # Lorg/checkerframework/org/objectweb/asmx/Label;
    .param p6, "index"    # I

    .line 104
    const-string v0, "J"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "D"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x2

    .line 105
    .local v0, "size":I
    :goto_1
    iget-object v1, p0, Lorg/checkerframework/org/objectweb/asmx/commons/LocalVariablesSorter;->mv:Lorg/checkerframework/org/objectweb/asmx/MethodVisitor;

    invoke-direct {p0, p6, v0}, Lorg/checkerframework/org/objectweb/asmx/commons/LocalVariablesSorter;->remap(II)I

    move-result v7

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-interface/range {v1 .. v7}, Lorg/checkerframework/org/objectweb/asmx/MethodVisitor;->visitLocalVariable(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/checkerframework/org/objectweb/asmx/Label;Lorg/checkerframework/org/objectweb/asmx/Label;I)V

    .line 106
    return-void
.end method

.method public visitMaxs(II)V
    .locals 2
    .param p1, "maxStack"    # I
    .param p2, "maxLocals"    # I

    .line 93
    iget-object v0, p0, Lorg/checkerframework/org/objectweb/asmx/commons/LocalVariablesSorter;->mv:Lorg/checkerframework/org/objectweb/asmx/MethodVisitor;

    iget v1, p0, Lorg/checkerframework/org/objectweb/asmx/commons/LocalVariablesSorter;->nextLocal:I

    invoke-interface {v0, p1, v1}, Lorg/checkerframework/org/objectweb/asmx/MethodVisitor;->visitMaxs(II)V

    .line 94
    return-void
.end method

.method public visitVarInsn(II)V
    .locals 3
    .param p1, "opcode"    # I
    .param p2, "var"    # I

    .line 75
    sparse-switch p1, :sswitch_data_0

    .line 83
    const/4 v0, 0x1

    .local v0, "size":I
    goto :goto_0

    .line 80
    .end local v0    # "size":I
    :sswitch_0
    const/4 v0, 0x2

    .line 81
    .restart local v0    # "size":I
    nop

    .line 85
    :goto_0
    iget-object v1, p0, Lorg/checkerframework/org/objectweb/asmx/commons/LocalVariablesSorter;->mv:Lorg/checkerframework/org/objectweb/asmx/MethodVisitor;

    invoke-direct {p0, p2, v0}, Lorg/checkerframework/org/objectweb/asmx/commons/LocalVariablesSorter;->remap(II)I

    move-result v2

    invoke-interface {v1, p1, v2}, Lorg/checkerframework/org/objectweb/asmx/MethodVisitor;->visitVarInsn(II)V

    .line 86
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        0x16 -> :sswitch_0
        0x18 -> :sswitch_0
        0x37 -> :sswitch_0
        0x39 -> :sswitch_0
    .end sparse-switch
.end method
