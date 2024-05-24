.class Lscenelib/annotations/io/classfile/MethodCodeOffsetAdapter;
.super Lorg/checkerframework/org/objectweb/asmx/MethodAdapter;
.source "MethodCodeOffsetAdapter.java"


# instance fields
.field private attrCount:I

.field private final classReader:Lorg/checkerframework/org/objectweb/asmx/ClassReader;

.field private codeStart:I

.field private final methodStart:I

.field private offset:I


# direct methods
.method public constructor <init>(Lorg/checkerframework/org/objectweb/asmx/ClassReader;Lorg/checkerframework/org/objectweb/asmx/MethodVisitor;I)V
    .locals 4
    .param p1, "classReader"    # Lorg/checkerframework/org/objectweb/asmx/ClassReader;
    .param p2, "methodVisitor"    # Lorg/checkerframework/org/objectweb/asmx/MethodVisitor;
    .param p3, "start"    # I

    .line 19
    invoke-direct {p0, p2}, Lorg/checkerframework/org/objectweb/asmx/MethodAdapter;-><init>(Lorg/checkerframework/org/objectweb/asmx/MethodVisitor;)V

    .line 13
    const/4 v0, 0x0

    iput v0, p0, Lscenelib/annotations/io/classfile/MethodCodeOffsetAdapter;->offset:I

    .line 14
    iput v0, p0, Lscenelib/annotations/io/classfile/MethodCodeOffsetAdapter;->codeStart:I

    .line 15
    iput v0, p0, Lscenelib/annotations/io/classfile/MethodCodeOffsetAdapter;->attrCount:I

    .line 20
    iget v0, p1, Lorg/checkerframework/org/objectweb/asmx/ClassReader;->header:I

    new-array v0, v0, [C

    .line 21
    .local v0, "buf":[C
    iput p3, p0, Lscenelib/annotations/io/classfile/MethodCodeOffsetAdapter;->methodStart:I

    .line 22
    iput-object p1, p0, Lscenelib/annotations/io/classfile/MethodCodeOffsetAdapter;->classReader:Lorg/checkerframework/org/objectweb/asmx/ClassReader;

    .line 24
    iput p3, p0, Lscenelib/annotations/io/classfile/MethodCodeOffsetAdapter;->codeStart:I

    .line 25
    add-int/lit8 v1, p3, 0x6

    invoke-virtual {p1, v1}, Lorg/checkerframework/org/objectweb/asmx/ClassReader;->readUnsignedShort(I)I

    move-result v1

    iput v1, p0, Lscenelib/annotations/io/classfile/MethodCodeOffsetAdapter;->attrCount:I

    .line 28
    iget v1, p0, Lscenelib/annotations/io/classfile/MethodCodeOffsetAdapter;->codeStart:I

    add-int/lit8 v1, v1, 0x8

    iput v1, p0, Lscenelib/annotations/io/classfile/MethodCodeOffsetAdapter;->codeStart:I

    .line 29
    :goto_0
    iget v1, p0, Lscenelib/annotations/io/classfile/MethodCodeOffsetAdapter;->attrCount:I

    if-lez v1, :cond_1

    .line 30
    iget v1, p0, Lscenelib/annotations/io/classfile/MethodCodeOffsetAdapter;->codeStart:I

    invoke-virtual {p1, v1, v0}, Lorg/checkerframework/org/objectweb/asmx/ClassReader;->readUTF8(I[C)Ljava/lang/String;

    move-result-object v1

    .line 31
    .local v1, "attrName":Ljava/lang/String;
    const-string v2, "Code"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_1

    .line 32
    :cond_0
    iget v2, p0, Lscenelib/annotations/io/classfile/MethodCodeOffsetAdapter;->codeStart:I

    add-int/lit8 v3, v2, 0x2

    invoke-virtual {p1, v3}, Lorg/checkerframework/org/objectweb/asmx/ClassReader;->readInt(I)I

    move-result v3

    add-int/lit8 v3, v3, 0x6

    add-int/2addr v2, v3

    iput v2, p0, Lscenelib/annotations/io/classfile/MethodCodeOffsetAdapter;->codeStart:I

    .line 33
    iget v2, p0, Lscenelib/annotations/io/classfile/MethodCodeOffsetAdapter;->attrCount:I

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Lscenelib/annotations/io/classfile/MethodCodeOffsetAdapter;->attrCount:I

    .line 34
    .end local v1    # "attrName":Ljava/lang/String;
    goto :goto_0

    .line 35
    :cond_1
    :goto_1
    return-void
.end method

.method private readInt(I)I
    .locals 2
    .param p1, "i"    # I

    .line 38
    iget-object v0, p0, Lscenelib/annotations/io/classfile/MethodCodeOffsetAdapter;->classReader:Lorg/checkerframework/org/objectweb/asmx/ClassReader;

    iget v1, p0, Lscenelib/annotations/io/classfile/MethodCodeOffsetAdapter;->codeStart:I

    add-int/2addr v1, p1

    invoke-virtual {v0, v1}, Lorg/checkerframework/org/objectweb/asmx/ClassReader;->readInt(I)I

    move-result v0

    return v0
.end method


# virtual methods
.method public getClassCodeOffset()I
    .locals 2

    .line 45
    iget v0, p0, Lscenelib/annotations/io/classfile/MethodCodeOffsetAdapter;->codeStart:I

    iget v1, p0, Lscenelib/annotations/io/classfile/MethodCodeOffsetAdapter;->offset:I

    add-int/2addr v0, v1

    return v0
.end method

.method public getMethodCodeOffset()I
    .locals 1

    .line 43
    iget v0, p0, Lscenelib/annotations/io/classfile/MethodCodeOffsetAdapter;->offset:I

    return v0
.end method

.method public getMethodCodeStart()I
    .locals 1

    .line 41
    iget v0, p0, Lscenelib/annotations/io/classfile/MethodCodeOffsetAdapter;->methodStart:I

    return v0
.end method

.method public visitEnd()V
    .locals 1

    .line 134
    const/4 v0, -0x1

    iput v0, p0, Lscenelib/annotations/io/classfile/MethodCodeOffsetAdapter;->offset:I

    .line 135
    return-void
.end method

.method public visitFieldInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "opcode"    # I
    .param p2, "owner"    # Ljava/lang/String;
    .param p3, "name"    # Ljava/lang/String;
    .param p4, "descriptor"    # Ljava/lang/String;

    .line 50
    invoke-super {p0, p1, p2, p3, p4}, Lorg/checkerframework/org/objectweb/asmx/MethodAdapter;->visitFieldInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 51
    iget v0, p0, Lscenelib/annotations/io/classfile/MethodCodeOffsetAdapter;->offset:I

    add-int/lit8 v0, v0, 0x3

    iput v0, p0, Lscenelib/annotations/io/classfile/MethodCodeOffsetAdapter;->offset:I

    .line 52
    return-void
.end method

.method public visitIincInsn(II)V
    .locals 1
    .param p1, "var"    # I
    .param p2, "increment"    # I

    .line 56
    invoke-super {p0, p1, p2}, Lorg/checkerframework/org/objectweb/asmx/MethodAdapter;->visitIincInsn(II)V

    .line 57
    iget v0, p0, Lscenelib/annotations/io/classfile/MethodCodeOffsetAdapter;->offset:I

    add-int/lit8 v0, v0, 0x3

    iput v0, p0, Lscenelib/annotations/io/classfile/MethodCodeOffsetAdapter;->offset:I

    .line 58
    return-void
.end method

.method public visitInsn(I)V
    .locals 1
    .param p1, "opcode"    # I

    .line 62
    invoke-super {p0, p1}, Lorg/checkerframework/org/objectweb/asmx/MethodAdapter;->visitInsn(I)V

    .line 63
    iget v0, p0, Lscenelib/annotations/io/classfile/MethodCodeOffsetAdapter;->offset:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lscenelib/annotations/io/classfile/MethodCodeOffsetAdapter;->offset:I

    .line 64
    return-void
.end method

.method public visitIntInsn(II)V
    .locals 2
    .param p1, "opcode"    # I
    .param p2, "operand"    # I

    .line 68
    invoke-super {p0, p1, p2}, Lorg/checkerframework/org/objectweb/asmx/MethodAdapter;->visitIntInsn(II)V

    .line 69
    iget v0, p0, Lscenelib/annotations/io/classfile/MethodCodeOffsetAdapter;->offset:I

    const/16 v1, 0x11

    if-ne p1, v1, :cond_0

    const/4 v1, 0x3

    goto :goto_0

    :cond_0
    const/4 v1, 0x2

    :goto_0
    add-int/2addr v0, v1

    iput v0, p0, Lscenelib/annotations/io/classfile/MethodCodeOffsetAdapter;->offset:I

    .line 70
    return-void
.end method

.method public varargs visitInvokeDynamicInsn(Ljava/lang/String;Ljava/lang/String;Lorg/checkerframework/org/objectweb/asmx/Handle;[Ljava/lang/Object;)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "descriptor"    # Ljava/lang/String;
    .param p3, "bsm"    # Lorg/checkerframework/org/objectweb/asmx/Handle;
    .param p4, "bsmArgs"    # [Ljava/lang/Object;

    .line 75
    invoke-super {p0, p1, p2, p3, p4}, Lorg/checkerframework/org/objectweb/asmx/MethodAdapter;->visitInvokeDynamicInsn(Ljava/lang/String;Ljava/lang/String;Lorg/checkerframework/org/objectweb/asmx/Handle;[Ljava/lang/Object;)V

    .line 76
    iget v0, p0, Lscenelib/annotations/io/classfile/MethodCodeOffsetAdapter;->offset:I

    add-int/lit8 v0, v0, 0x5

    iput v0, p0, Lscenelib/annotations/io/classfile/MethodCodeOffsetAdapter;->offset:I

    .line 77
    return-void
.end method

.method public visitJumpInsn(ILorg/checkerframework/org/objectweb/asmx/Label;)V
    .locals 1
    .param p1, "opcode"    # I
    .param p2, "label"    # Lorg/checkerframework/org/objectweb/asmx/Label;

    .line 81
    invoke-super {p0, p1, p2}, Lorg/checkerframework/org/objectweb/asmx/MethodAdapter;->visitJumpInsn(ILorg/checkerframework/org/objectweb/asmx/Label;)V

    .line 82
    iget v0, p0, Lscenelib/annotations/io/classfile/MethodCodeOffsetAdapter;->offset:I

    add-int/lit8 v0, v0, 0x3

    iput v0, p0, Lscenelib/annotations/io/classfile/MethodCodeOffsetAdapter;->offset:I

    .line 83
    return-void
.end method

.method public visitLdcInsn(Ljava/lang/Object;)V
    .locals 1
    .param p1, "cst"    # Ljava/lang/Object;

    .line 87
    invoke-super {p0, p1}, Lorg/checkerframework/org/objectweb/asmx/MethodAdapter;->visitLdcInsn(Ljava/lang/Object;)V

    .line 88
    iget v0, p0, Lscenelib/annotations/io/classfile/MethodCodeOffsetAdapter;->offset:I

    add-int/lit8 v0, v0, 0x2

    iput v0, p0, Lscenelib/annotations/io/classfile/MethodCodeOffsetAdapter;->offset:I

    .line 89
    return-void
.end method

.method public visitLookupSwitchInsn(Lorg/checkerframework/org/objectweb/asmx/Label;[I[Lorg/checkerframework/org/objectweb/asmx/Label;)V
    .locals 2
    .param p1, "dflt"    # Lorg/checkerframework/org/objectweb/asmx/Label;
    .param p2, "keys"    # [I
    .param p3, "labels"    # [Lorg/checkerframework/org/objectweb/asmx/Label;

    .line 94
    invoke-super {p0, p1, p2, p3}, Lorg/checkerframework/org/objectweb/asmx/MethodAdapter;->visitLookupSwitchInsn(Lorg/checkerframework/org/objectweb/asmx/Label;[I[Lorg/checkerframework/org/objectweb/asmx/Label;)V

    .line 95
    iget v0, p0, Lscenelib/annotations/io/classfile/MethodCodeOffsetAdapter;->offset:I

    iget v1, p0, Lscenelib/annotations/io/classfile/MethodCodeOffsetAdapter;->codeStart:I

    sub-int v1, v0, v1

    and-int/lit8 v1, v1, 0x3

    rsub-int/lit8 v1, v1, 0x8

    add-int/2addr v0, v1

    iput v0, p0, Lscenelib/annotations/io/classfile/MethodCodeOffsetAdapter;->offset:I

    .line 96
    invoke-direct {p0, v0}, Lscenelib/annotations/io/classfile/MethodCodeOffsetAdapter;->readInt(I)I

    move-result v1

    mul-int/lit8 v1, v1, 0x8

    add-int/lit8 v1, v1, 0x4

    add-int/2addr v0, v1

    iput v0, p0, Lscenelib/annotations/io/classfile/MethodCodeOffsetAdapter;->offset:I

    .line 97
    return-void
.end method

.method public visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "opcode"    # I
    .param p2, "owner"    # Ljava/lang/String;
    .param p3, "name"    # Ljava/lang/String;
    .param p4, "descriptor"    # Ljava/lang/String;

    .line 102
    invoke-super {p0, p1, p2, p3, p4}, Lorg/checkerframework/org/objectweb/asmx/MethodAdapter;->visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 103
    iget v0, p0, Lscenelib/annotations/io/classfile/MethodCodeOffsetAdapter;->offset:I

    const/16 v1, 0xb9

    if-ne p1, v1, :cond_0

    const/4 v1, 0x5

    goto :goto_0

    :cond_0
    const/4 v1, 0x3

    :goto_0
    add-int/2addr v0, v1

    iput v0, p0, Lscenelib/annotations/io/classfile/MethodCodeOffsetAdapter;->offset:I

    .line 104
    return-void
.end method

.method public visitMultiANewArrayInsn(Ljava/lang/String;I)V
    .locals 1
    .param p1, "descriptor"    # Ljava/lang/String;
    .param p2, "dims"    # I

    .line 108
    invoke-super {p0, p1, p2}, Lorg/checkerframework/org/objectweb/asmx/MethodAdapter;->visitMultiANewArrayInsn(Ljava/lang/String;I)V

    .line 109
    iget v0, p0, Lscenelib/annotations/io/classfile/MethodCodeOffsetAdapter;->offset:I

    add-int/lit8 v0, v0, 0x4

    iput v0, p0, Lscenelib/annotations/io/classfile/MethodCodeOffsetAdapter;->offset:I

    .line 110
    return-void
.end method

.method public visitTableSwitchInsn(IILorg/checkerframework/org/objectweb/asmx/Label;[Lorg/checkerframework/org/objectweb/asmx/Label;)V
    .locals 3
    .param p1, "min"    # I
    .param p2, "max"    # I
    .param p3, "dflt"    # Lorg/checkerframework/org/objectweb/asmx/Label;
    .param p4, "labels"    # [Lorg/checkerframework/org/objectweb/asmx/Label;

    .line 115
    invoke-super {p0, p1, p2, p3, p4}, Lorg/checkerframework/org/objectweb/asmx/MethodAdapter;->visitTableSwitchInsn(IILorg/checkerframework/org/objectweb/asmx/Label;[Lorg/checkerframework/org/objectweb/asmx/Label;)V

    .line 116
    iget v0, p0, Lscenelib/annotations/io/classfile/MethodCodeOffsetAdapter;->offset:I

    iget v1, p0, Lscenelib/annotations/io/classfile/MethodCodeOffsetAdapter;->codeStart:I

    sub-int v1, v0, v1

    and-int/lit8 v1, v1, 0x3

    rsub-int/lit8 v1, v1, 0x8

    add-int/2addr v0, v1

    iput v0, p0, Lscenelib/annotations/io/classfile/MethodCodeOffsetAdapter;->offset:I

    .line 117
    add-int/lit8 v1, v0, 0x4

    invoke-direct {p0, v1}, Lscenelib/annotations/io/classfile/MethodCodeOffsetAdapter;->readInt(I)I

    move-result v1

    iget v2, p0, Lscenelib/annotations/io/classfile/MethodCodeOffsetAdapter;->offset:I

    invoke-direct {p0, v2}, Lscenelib/annotations/io/classfile/MethodCodeOffsetAdapter;->readInt(I)I

    move-result v2

    sub-int/2addr v1, v2

    add-int/lit8 v1, v1, 0x3

    mul-int/lit8 v1, v1, 0x4

    add-int/2addr v0, v1

    iput v0, p0, Lscenelib/annotations/io/classfile/MethodCodeOffsetAdapter;->offset:I

    .line 118
    return-void
.end method

.method public visitTypeInsn(ILjava/lang/String;)V
    .locals 1
    .param p1, "opcode"    # I
    .param p2, "descriptor"    # Ljava/lang/String;

    .line 122
    invoke-super {p0, p1, p2}, Lorg/checkerframework/org/objectweb/asmx/MethodAdapter;->visitTypeInsn(ILjava/lang/String;)V

    .line 123
    iget v0, p0, Lscenelib/annotations/io/classfile/MethodCodeOffsetAdapter;->offset:I

    add-int/lit8 v0, v0, 0x3

    iput v0, p0, Lscenelib/annotations/io/classfile/MethodCodeOffsetAdapter;->offset:I

    .line 124
    return-void
.end method

.method public visitVarInsn(II)V
    .locals 2
    .param p1, "opcode"    # I
    .param p2, "var"    # I

    .line 128
    invoke-super {p0, p1, p2}, Lorg/checkerframework/org/objectweb/asmx/MethodAdapter;->visitVarInsn(II)V

    .line 129
    iget v0, p0, Lscenelib/annotations/io/classfile/MethodCodeOffsetAdapter;->offset:I

    const/4 v1, 0x4

    if-ge p2, v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x2

    :goto_0
    add-int/2addr v0, v1

    iput v0, p0, Lscenelib/annotations/io/classfile/MethodCodeOffsetAdapter;->offset:I

    .line 130
    return-void
.end method
