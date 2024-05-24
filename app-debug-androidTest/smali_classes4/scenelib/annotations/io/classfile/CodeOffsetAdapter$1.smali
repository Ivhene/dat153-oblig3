.class Lscenelib/annotations/io/classfile/CodeOffsetAdapter$1;
.super Lorg/checkerframework/org/objectweb/asmx/MethodAdapter;
.source "CodeOffsetAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lscenelib/annotations/io/classfile/CodeOffsetAdapter;->visitMethod(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Lorg/checkerframework/org/objectweb/asmx/MethodVisitor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field private methodEnd:I

.field final synthetic this$0:Lscenelib/annotations/io/classfile/CodeOffsetAdapter;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 54
    const-class v0, Lscenelib/annotations/io/classfile/CodeOffsetAdapter;

    return-void
.end method

.method constructor <init>(Lscenelib/annotations/io/classfile/CodeOffsetAdapter;Lorg/checkerframework/org/objectweb/asmx/MethodVisitor;)V
    .locals 9
    .param p1, "this$0"    # Lscenelib/annotations/io/classfile/CodeOffsetAdapter;
    .param p2, "x0"    # Lorg/checkerframework/org/objectweb/asmx/MethodVisitor;

    .line 54
    iput-object p1, p0, Lscenelib/annotations/io/classfile/CodeOffsetAdapter$1;->this$0:Lscenelib/annotations/io/classfile/CodeOffsetAdapter;

    invoke-direct {p0, p2}, Lorg/checkerframework/org/objectweb/asmx/MethodAdapter;-><init>(Lorg/checkerframework/org/objectweb/asmx/MethodVisitor;)V

    .line 58
    iget-object v0, p1, Lscenelib/annotations/io/classfile/CodeOffsetAdapter;->classReader:Lorg/checkerframework/org/objectweb/asmx/ClassReader;

    iget v1, p1, Lscenelib/annotations/io/classfile/CodeOffsetAdapter;->methodStart:I

    add-int/lit8 v1, v1, 0x2

    iget-object v2, p1, Lscenelib/annotations/io/classfile/CodeOffsetAdapter;->buffer:[C

    invoke-virtual {v0, v1, v2}, Lorg/checkerframework/org/objectweb/asmx/ClassReader;->readUTF8(I[C)Ljava/lang/String;

    move-result-object v0

    .line 59
    .local v0, "name":Ljava/lang/String;
    iget-object v1, p1, Lscenelib/annotations/io/classfile/CodeOffsetAdapter;->classReader:Lorg/checkerframework/org/objectweb/asmx/ClassReader;

    iget v2, p1, Lscenelib/annotations/io/classfile/CodeOffsetAdapter;->methodStart:I

    add-int/lit8 v2, v2, 0x4

    iget-object v3, p1, Lscenelib/annotations/io/classfile/CodeOffsetAdapter;->buffer:[C

    invoke-virtual {v1, v2, v3}, Lorg/checkerframework/org/objectweb/asmx/ClassReader;->readUTF8(I[C)Ljava/lang/String;

    move-result-object v1

    .line 60
    .local v1, "descriptor":Ljava/lang/String;
    iget-object v2, p1, Lscenelib/annotations/io/classfile/CodeOffsetAdapter;->classReader:Lorg/checkerframework/org/objectweb/asmx/ClassReader;

    iget v3, p1, Lscenelib/annotations/io/classfile/CodeOffsetAdapter;->methodStart:I

    add-int/lit8 v3, v3, 0x6

    invoke-virtual {v2, v3}, Lorg/checkerframework/org/objectweb/asmx/ClassReader;->readUnsignedShort(I)I

    move-result v2

    .line 61
    .local v2, "attrCount":I
    sget-object v3, Lscenelib/annotations/io/classfile/CodeOffsetAdapter;->debug:Lscenelib/annotations/io/DebugWriter;

    iget v4, p1, Lscenelib/annotations/io/classfile/CodeOffsetAdapter;->methodStart:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    filled-new-array {v0, v1, v4}, [Ljava/lang/Object;

    move-result-object v4

    const-string v5, "visiting %s%s (%d)%n"

    invoke-virtual {v3, v5, v4}, Lscenelib/annotations/io/DebugWriter;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 62
    sget-object v3, Lscenelib/annotations/io/classfile/CodeOffsetAdapter;->debug:Lscenelib/annotations/io/DebugWriter;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    filled-new-array {v4}, [Ljava/lang/Object;

    move-result-object v4

    const-string v5, "%d attributes%n"

    invoke-virtual {v3, v5, v4}, Lscenelib/annotations/io/DebugWriter;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 63
    iget v3, p1, Lscenelib/annotations/io/classfile/CodeOffsetAdapter;->methodStart:I

    add-int/lit8 v3, v3, 0x8

    iput v3, p0, Lscenelib/annotations/io/classfile/CodeOffsetAdapter$1;->methodEnd:I

    .line 66
    iput v3, p1, Lscenelib/annotations/io/classfile/CodeOffsetAdapter;->codeStart:I

    .line 67
    if-lez v2, :cond_2

    .line 68
    :goto_0
    add-int/lit8 v2, v2, -0x1

    if-ltz v2, :cond_2

    .line 69
    iget-object v3, p0, Lscenelib/annotations/io/classfile/CodeOffsetAdapter$1;->this$0:Lscenelib/annotations/io/classfile/CodeOffsetAdapter;

    iget-object v3, v3, Lscenelib/annotations/io/classfile/CodeOffsetAdapter;->classReader:Lorg/checkerframework/org/objectweb/asmx/ClassReader;

    iget-object v4, p0, Lscenelib/annotations/io/classfile/CodeOffsetAdapter$1;->this$0:Lscenelib/annotations/io/classfile/CodeOffsetAdapter;

    iget v4, v4, Lscenelib/annotations/io/classfile/CodeOffsetAdapter;->codeStart:I

    iget-object v5, p0, Lscenelib/annotations/io/classfile/CodeOffsetAdapter$1;->this$0:Lscenelib/annotations/io/classfile/CodeOffsetAdapter;

    iget-object v5, v5, Lscenelib/annotations/io/classfile/CodeOffsetAdapter;->buffer:[C

    invoke-virtual {v3, v4, v5}, Lorg/checkerframework/org/objectweb/asmx/ClassReader;->readUTF8(I[C)Ljava/lang/String;

    move-result-object v3

    .line 70
    .local v3, "attrName":Ljava/lang/String;
    sget-object v4, Lscenelib/annotations/io/classfile/CodeOffsetAdapter;->debug:Lscenelib/annotations/io/DebugWriter;

    filled-new-array {v3}, [Ljava/lang/Object;

    move-result-object v5

    const-string v6, "attribute %s%n"

    invoke-virtual {v4, v6, v5}, Lscenelib/annotations/io/DebugWriter;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 71
    const-string v4, "Code"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 72
    iget-object v4, p0, Lscenelib/annotations/io/classfile/CodeOffsetAdapter$1;->this$0:Lscenelib/annotations/io/classfile/CodeOffsetAdapter;

    iget v5, v4, Lscenelib/annotations/io/classfile/CodeOffsetAdapter;->codeStart:I

    add-int/lit8 v5, v5, 0x6

    iput v5, v4, Lscenelib/annotations/io/classfile/CodeOffsetAdapter;->codeStart:I

    .line 73
    iget-object v4, p0, Lscenelib/annotations/io/classfile/CodeOffsetAdapter$1;->this$0:Lscenelib/annotations/io/classfile/CodeOffsetAdapter;

    iget v5, v4, Lscenelib/annotations/io/classfile/CodeOffsetAdapter;->codeStart:I

    iget-object v7, p0, Lscenelib/annotations/io/classfile/CodeOffsetAdapter$1;->this$0:Lscenelib/annotations/io/classfile/CodeOffsetAdapter;

    iget-object v7, v7, Lscenelib/annotations/io/classfile/CodeOffsetAdapter;->classReader:Lorg/checkerframework/org/objectweb/asmx/ClassReader;

    iget-object v8, p0, Lscenelib/annotations/io/classfile/CodeOffsetAdapter$1;->this$0:Lscenelib/annotations/io/classfile/CodeOffsetAdapter;

    iget v8, v8, Lscenelib/annotations/io/classfile/CodeOffsetAdapter;->codeStart:I

    add-int/lit8 v8, v8, -0x4

    invoke-virtual {v7, v8}, Lorg/checkerframework/org/objectweb/asmx/ClassReader;->readInt(I)I

    move-result v7

    add-int/2addr v5, v7

    iput v5, v4, Lscenelib/annotations/io/classfile/CodeOffsetAdapter;->offset:I

    .line 74
    iget-object v4, p0, Lscenelib/annotations/io/classfile/CodeOffsetAdapter$1;->this$0:Lscenelib/annotations/io/classfile/CodeOffsetAdapter;

    iget v5, v4, Lscenelib/annotations/io/classfile/CodeOffsetAdapter;->codeStart:I

    add-int/lit8 v5, v5, 0x8

    iput v5, v4, Lscenelib/annotations/io/classfile/CodeOffsetAdapter;->codeStart:I

    .line 75
    :goto_1
    add-int/lit8 v2, v2, -0x1

    if-ltz v2, :cond_0

    .line 76
    sget-object v4, Lscenelib/annotations/io/classfile/CodeOffsetAdapter;->debug:Lscenelib/annotations/io/DebugWriter;

    iget-object v5, p0, Lscenelib/annotations/io/classfile/CodeOffsetAdapter$1;->this$0:Lscenelib/annotations/io/classfile/CodeOffsetAdapter;

    iget-object v5, v5, Lscenelib/annotations/io/classfile/CodeOffsetAdapter;->classReader:Lorg/checkerframework/org/objectweb/asmx/ClassReader;

    iget-object v7, p0, Lscenelib/annotations/io/classfile/CodeOffsetAdapter$1;->this$0:Lscenelib/annotations/io/classfile/CodeOffsetAdapter;

    iget v7, v7, Lscenelib/annotations/io/classfile/CodeOffsetAdapter;->offset:I

    iget-object v8, p0, Lscenelib/annotations/io/classfile/CodeOffsetAdapter$1;->this$0:Lscenelib/annotations/io/classfile/CodeOffsetAdapter;

    iget-object v8, v8, Lscenelib/annotations/io/classfile/CodeOffsetAdapter;->buffer:[C

    invoke-virtual {v5, v7, v8}, Lorg/checkerframework/org/objectweb/asmx/ClassReader;->readUTF8(I[C)Ljava/lang/String;

    move-result-object v5

    filled-new-array {v5}, [Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v4, v6, v5}, Lscenelib/annotations/io/DebugWriter;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 77
    iget-object v4, p0, Lscenelib/annotations/io/classfile/CodeOffsetAdapter$1;->this$0:Lscenelib/annotations/io/classfile/CodeOffsetAdapter;

    iget v5, v4, Lscenelib/annotations/io/classfile/CodeOffsetAdapter;->offset:I

    iget-object v7, p0, Lscenelib/annotations/io/classfile/CodeOffsetAdapter$1;->this$0:Lscenelib/annotations/io/classfile/CodeOffsetAdapter;

    iget-object v7, v7, Lscenelib/annotations/io/classfile/CodeOffsetAdapter;->classReader:Lorg/checkerframework/org/objectweb/asmx/ClassReader;

    iget-object v8, p0, Lscenelib/annotations/io/classfile/CodeOffsetAdapter$1;->this$0:Lscenelib/annotations/io/classfile/CodeOffsetAdapter;

    iget v8, v8, Lscenelib/annotations/io/classfile/CodeOffsetAdapter;->offset:I

    add-int/lit8 v8, v8, 0x2

    invoke-virtual {v7, v8}, Lorg/checkerframework/org/objectweb/asmx/ClassReader;->readInt(I)I

    move-result v7

    add-int/lit8 v7, v7, 0x6

    add-int/2addr v5, v7

    iput v5, v4, Lscenelib/annotations/io/classfile/CodeOffsetAdapter;->offset:I

    goto :goto_1

    .line 79
    :cond_0
    iget-object v4, p0, Lscenelib/annotations/io/classfile/CodeOffsetAdapter$1;->this$0:Lscenelib/annotations/io/classfile/CodeOffsetAdapter;

    iget v4, v4, Lscenelib/annotations/io/classfile/CodeOffsetAdapter;->offset:I

    iput v4, p0, Lscenelib/annotations/io/classfile/CodeOffsetAdapter$1;->methodEnd:I

    .line 80
    goto :goto_2

    .line 82
    :cond_1
    iget-object v4, p0, Lscenelib/annotations/io/classfile/CodeOffsetAdapter$1;->this$0:Lscenelib/annotations/io/classfile/CodeOffsetAdapter;

    iget v5, v4, Lscenelib/annotations/io/classfile/CodeOffsetAdapter;->codeStart:I

    iget-object v6, p0, Lscenelib/annotations/io/classfile/CodeOffsetAdapter$1;->this$0:Lscenelib/annotations/io/classfile/CodeOffsetAdapter;

    iget-object v6, v6, Lscenelib/annotations/io/classfile/CodeOffsetAdapter;->classReader:Lorg/checkerframework/org/objectweb/asmx/ClassReader;

    iget-object v7, p0, Lscenelib/annotations/io/classfile/CodeOffsetAdapter$1;->this$0:Lscenelib/annotations/io/classfile/CodeOffsetAdapter;

    iget v7, v7, Lscenelib/annotations/io/classfile/CodeOffsetAdapter;->codeStart:I

    add-int/lit8 v7, v7, 0x2

    invoke-virtual {v6, v7}, Lorg/checkerframework/org/objectweb/asmx/ClassReader;->readInt(I)I

    move-result v6

    add-int/lit8 v6, v6, 0x6

    add-int/2addr v5, v6

    iput v5, v4, Lscenelib/annotations/io/classfile/CodeOffsetAdapter;->codeStart:I

    .line 83
    iget-object v4, p0, Lscenelib/annotations/io/classfile/CodeOffsetAdapter$1;->this$0:Lscenelib/annotations/io/classfile/CodeOffsetAdapter;

    iget v4, v4, Lscenelib/annotations/io/classfile/CodeOffsetAdapter;->codeStart:I

    iput v4, p0, Lscenelib/annotations/io/classfile/CodeOffsetAdapter$1;->methodEnd:I

    .line 84
    .end local v3    # "attrName":Ljava/lang/String;
    goto/16 :goto_0

    .line 86
    :cond_2
    :goto_2
    iget-object v3, p0, Lscenelib/annotations/io/classfile/CodeOffsetAdapter$1;->this$0:Lscenelib/annotations/io/classfile/CodeOffsetAdapter;

    const/4 v4, 0x0

    iput v4, v3, Lscenelib/annotations/io/classfile/CodeOffsetAdapter;->offset:I

    .line 87
    .end local v0    # "name":Ljava/lang/String;
    .end local v1    # "descriptor":Ljava/lang/String;
    .end local v2    # "attrCount":I
    return-void
.end method

.method private readInt(I)I
    .locals 2
    .param p1, "i"    # I

    .line 90
    iget-object v0, p0, Lscenelib/annotations/io/classfile/CodeOffsetAdapter$1;->this$0:Lscenelib/annotations/io/classfile/CodeOffsetAdapter;

    iget-object v0, v0, Lscenelib/annotations/io/classfile/CodeOffsetAdapter;->classReader:Lorg/checkerframework/org/objectweb/asmx/ClassReader;

    iget-object v1, p0, Lscenelib/annotations/io/classfile/CodeOffsetAdapter$1;->this$0:Lscenelib/annotations/io/classfile/CodeOffsetAdapter;

    iget v1, v1, Lscenelib/annotations/io/classfile/CodeOffsetAdapter;->codeStart:I

    add-int/2addr v1, p1

    invoke-virtual {v0, v1}, Lorg/checkerframework/org/objectweb/asmx/ClassReader;->readInt(I)I

    move-result v0

    return v0
.end method


# virtual methods
.method public visitEnd()V
    .locals 2

    .line 203
    iget-object v0, p0, Lscenelib/annotations/io/classfile/CodeOffsetAdapter$1;->this$0:Lscenelib/annotations/io/classfile/CodeOffsetAdapter;

    iget v1, p0, Lscenelib/annotations/io/classfile/CodeOffsetAdapter$1;->methodEnd:I

    iput v1, v0, Lscenelib/annotations/io/classfile/CodeOffsetAdapter;->methodStart:I

    .line 204
    return-void
.end method

.method public visitFieldInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "opcode"    # I
    .param p2, "owner"    # Ljava/lang/String;
    .param p3, "name"    # Ljava/lang/String;
    .param p4, "descriptor"    # Ljava/lang/String;

    .line 95
    invoke-super {p0, p1, p2, p3, p4}, Lorg/checkerframework/org/objectweb/asmx/MethodAdapter;->visitFieldInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 96
    sget-object v0, Lscenelib/annotations/io/classfile/CodeOffsetAdapter;->debug:Lscenelib/annotations/io/DebugWriter;

    iget-object v1, p0, Lscenelib/annotations/io/classfile/CodeOffsetAdapter$1;->this$0:Lscenelib/annotations/io/classfile/CodeOffsetAdapter;

    iget v1, v1, Lscenelib/annotations/io/classfile/CodeOffsetAdapter;->offset:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    filled-new-array {v1, v2, p2, p3, p4}, [Ljava/lang/Object;

    move-result-object v1

    const-string v2, "%d visitFieldInsn(%d, %s, %s, %s)%n"

    invoke-virtual {v0, v2, v1}, Lscenelib/annotations/io/DebugWriter;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 97
    iget-object v0, p0, Lscenelib/annotations/io/classfile/CodeOffsetAdapter$1;->this$0:Lscenelib/annotations/io/classfile/CodeOffsetAdapter;

    iget v1, v0, Lscenelib/annotations/io/classfile/CodeOffsetAdapter;->offset:I

    add-int/lit8 v1, v1, 0x3

    iput v1, v0, Lscenelib/annotations/io/classfile/CodeOffsetAdapter;->offset:I

    .line 98
    return-void
.end method

.method public visitIincInsn(II)V
    .locals 4
    .param p1, "var"    # I
    .param p2, "increment"    # I

    .line 102
    invoke-super {p0, p1, p2}, Lorg/checkerframework/org/objectweb/asmx/MethodAdapter;->visitIincInsn(II)V

    .line 103
    sget-object v0, Lscenelib/annotations/io/classfile/CodeOffsetAdapter;->debug:Lscenelib/annotations/io/DebugWriter;

    iget-object v1, p0, Lscenelib/annotations/io/classfile/CodeOffsetAdapter$1;->this$0:Lscenelib/annotations/io/classfile/CodeOffsetAdapter;

    iget v1, v1, Lscenelib/annotations/io/classfile/CodeOffsetAdapter;->offset:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    filled-new-array {v1, v2, v3}, [Ljava/lang/Object;

    move-result-object v1

    const-string v2, "%d visitIincInsn(%d, %d)%n"

    invoke-virtual {v0, v2, v1}, Lscenelib/annotations/io/DebugWriter;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 104
    iget-object v0, p0, Lscenelib/annotations/io/classfile/CodeOffsetAdapter$1;->this$0:Lscenelib/annotations/io/classfile/CodeOffsetAdapter;

    iget v1, v0, Lscenelib/annotations/io/classfile/CodeOffsetAdapter;->offset:I

    add-int/lit8 v1, v1, 0x3

    iput v1, v0, Lscenelib/annotations/io/classfile/CodeOffsetAdapter;->offset:I

    .line 105
    return-void
.end method

.method public visitInsn(I)V
    .locals 3
    .param p1, "opcode"    # I

    .line 109
    invoke-super {p0, p1}, Lorg/checkerframework/org/objectweb/asmx/MethodAdapter;->visitInsn(I)V

    .line 110
    sget-object v0, Lscenelib/annotations/io/classfile/CodeOffsetAdapter;->debug:Lscenelib/annotations/io/DebugWriter;

    iget-object v1, p0, Lscenelib/annotations/io/classfile/CodeOffsetAdapter$1;->this$0:Lscenelib/annotations/io/classfile/CodeOffsetAdapter;

    iget v1, v1, Lscenelib/annotations/io/classfile/CodeOffsetAdapter;->offset:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    filled-new-array {v1, v2}, [Ljava/lang/Object;

    move-result-object v1

    const-string v2, "%d visitInsn(%d)%n"

    invoke-virtual {v0, v2, v1}, Lscenelib/annotations/io/DebugWriter;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 111
    iget-object v0, p0, Lscenelib/annotations/io/classfile/CodeOffsetAdapter$1;->this$0:Lscenelib/annotations/io/classfile/CodeOffsetAdapter;

    iget v1, v0, Lscenelib/annotations/io/classfile/CodeOffsetAdapter;->offset:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v0, Lscenelib/annotations/io/classfile/CodeOffsetAdapter;->offset:I

    .line 112
    return-void
.end method

.method public visitIntInsn(II)V
    .locals 4
    .param p1, "opcode"    # I
    .param p2, "operand"    # I

    .line 116
    invoke-super {p0, p1, p2}, Lorg/checkerframework/org/objectweb/asmx/MethodAdapter;->visitIntInsn(II)V

    .line 117
    sget-object v0, Lscenelib/annotations/io/classfile/CodeOffsetAdapter;->debug:Lscenelib/annotations/io/DebugWriter;

    iget-object v1, p0, Lscenelib/annotations/io/classfile/CodeOffsetAdapter$1;->this$0:Lscenelib/annotations/io/classfile/CodeOffsetAdapter;

    iget v1, v1, Lscenelib/annotations/io/classfile/CodeOffsetAdapter;->offset:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    filled-new-array {v1, v2, v3}, [Ljava/lang/Object;

    move-result-object v1

    const-string v2, "%d visitIntInsn(%d, %d)%n"

    invoke-virtual {v0, v2, v1}, Lscenelib/annotations/io/DebugWriter;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 118
    iget-object v0, p0, Lscenelib/annotations/io/classfile/CodeOffsetAdapter$1;->this$0:Lscenelib/annotations/io/classfile/CodeOffsetAdapter;

    iget v1, v0, Lscenelib/annotations/io/classfile/CodeOffsetAdapter;->offset:I

    const/16 v2, 0x11

    if-ne p1, v2, :cond_0

    const/4 v2, 0x3

    goto :goto_0

    :cond_0
    const/4 v2, 0x2

    :goto_0
    add-int/2addr v1, v2

    iput v1, v0, Lscenelib/annotations/io/classfile/CodeOffsetAdapter;->offset:I

    .line 119
    return-void
.end method

.method public varargs visitInvokeDynamicInsn(Ljava/lang/String;Ljava/lang/String;Lorg/checkerframework/org/objectweb/asmx/Handle;[Ljava/lang/Object;)V
    .locals 3
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "descriptor"    # Ljava/lang/String;
    .param p3, "bsm"    # Lorg/checkerframework/org/objectweb/asmx/Handle;
    .param p4, "bsmArgs"    # [Ljava/lang/Object;

    .line 124
    invoke-super {p0, p1, p2, p3, p4}, Lorg/checkerframework/org/objectweb/asmx/MethodAdapter;->visitInvokeDynamicInsn(Ljava/lang/String;Ljava/lang/String;Lorg/checkerframework/org/objectweb/asmx/Handle;[Ljava/lang/Object;)V

    .line 125
    sget-object v0, Lscenelib/annotations/io/classfile/CodeOffsetAdapter;->debug:Lscenelib/annotations/io/DebugWriter;

    iget-object v1, p0, Lscenelib/annotations/io/classfile/CodeOffsetAdapter$1;->this$0:Lscenelib/annotations/io/classfile/CodeOffsetAdapter;

    iget v1, v1, Lscenelib/annotations/io/classfile/CodeOffsetAdapter;->offset:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    filled-new-array {v1, p1, p2, p3, p4}, [Ljava/lang/Object;

    move-result-object v1

    const-string v2, "%d visitInvokeDynamicInsn(%s, %s)%n"

    invoke-virtual {v0, v2, v1}, Lscenelib/annotations/io/DebugWriter;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 127
    iget-object v0, p0, Lscenelib/annotations/io/classfile/CodeOffsetAdapter$1;->this$0:Lscenelib/annotations/io/classfile/CodeOffsetAdapter;

    iget v1, v0, Lscenelib/annotations/io/classfile/CodeOffsetAdapter;->offset:I

    add-int/lit8 v1, v1, 0x5

    iput v1, v0, Lscenelib/annotations/io/classfile/CodeOffsetAdapter;->offset:I

    .line 128
    return-void
.end method

.method public visitJumpInsn(ILorg/checkerframework/org/objectweb/asmx/Label;)V
    .locals 5
    .param p1, "opcode"    # I
    .param p2, "label"    # Lorg/checkerframework/org/objectweb/asmx/Label;

    .line 132
    invoke-super {p0, p1, p2}, Lorg/checkerframework/org/objectweb/asmx/MethodAdapter;->visitJumpInsn(ILorg/checkerframework/org/objectweb/asmx/Label;)V

    .line 133
    sget-object v0, Lscenelib/annotations/io/classfile/CodeOffsetAdapter;->debug:Lscenelib/annotations/io/DebugWriter;

    iget-object v1, p0, Lscenelib/annotations/io/classfile/CodeOffsetAdapter$1;->this$0:Lscenelib/annotations/io/classfile/CodeOffsetAdapter;

    iget v1, v1, Lscenelib/annotations/io/classfile/CodeOffsetAdapter;->offset:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    filled-new-array {v1, v2, p2}, [Ljava/lang/Object;

    move-result-object v1

    const-string v2, "%d visitJumpInsn(%d, %s)%n"

    invoke-virtual {v0, v2, v1}, Lscenelib/annotations/io/DebugWriter;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 135
    iget-object v0, p0, Lscenelib/annotations/io/classfile/CodeOffsetAdapter$1;->this$0:Lscenelib/annotations/io/classfile/CodeOffsetAdapter;

    iget v1, v0, Lscenelib/annotations/io/classfile/CodeOffsetAdapter;->offset:I

    iget-object v2, p0, Lscenelib/annotations/io/classfile/CodeOffsetAdapter$1;->this$0:Lscenelib/annotations/io/classfile/CodeOffsetAdapter;

    iget-object v2, v2, Lscenelib/annotations/io/classfile/CodeOffsetAdapter;->classReader:Lorg/checkerframework/org/objectweb/asmx/ClassReader;

    iget-object v3, p0, Lscenelib/annotations/io/classfile/CodeOffsetAdapter$1;->this$0:Lscenelib/annotations/io/classfile/CodeOffsetAdapter;

    iget v3, v3, Lscenelib/annotations/io/classfile/CodeOffsetAdapter;->codeStart:I

    iget-object v4, p0, Lscenelib/annotations/io/classfile/CodeOffsetAdapter$1;->this$0:Lscenelib/annotations/io/classfile/CodeOffsetAdapter;

    iget v4, v4, Lscenelib/annotations/io/classfile/CodeOffsetAdapter;->offset:I

    add-int/2addr v3, v4

    invoke-virtual {v2, v3}, Lorg/checkerframework/org/objectweb/asmx/ClassReader;->readByte(I)I

    move-result v2

    const/16 v3, 0xc8

    if-ge v2, v3, :cond_0

    const/4 v2, 0x3

    goto :goto_0

    :cond_0
    const/4 v2, 0x4

    :goto_0
    add-int/2addr v1, v2

    iput v1, v0, Lscenelib/annotations/io/classfile/CodeOffsetAdapter;->offset:I

    .line 136
    iget-object v0, p0, Lscenelib/annotations/io/classfile/CodeOffsetAdapter$1;->this$0:Lscenelib/annotations/io/classfile/CodeOffsetAdapter;

    iget v0, v0, Lscenelib/annotations/io/classfile/CodeOffsetAdapter;->offset:I

    if-lez v0, :cond_1

    iget v0, p0, Lscenelib/annotations/io/classfile/CodeOffsetAdapter$1;->methodEnd:I

    iget-object v1, p0, Lscenelib/annotations/io/classfile/CodeOffsetAdapter$1;->this$0:Lscenelib/annotations/io/classfile/CodeOffsetAdapter;

    iget v1, v1, Lscenelib/annotations/io/classfile/CodeOffsetAdapter;->codeStart:I

    iget-object v2, p0, Lscenelib/annotations/io/classfile/CodeOffsetAdapter$1;->this$0:Lscenelib/annotations/io/classfile/CodeOffsetAdapter;

    iget v2, v2, Lscenelib/annotations/io/classfile/CodeOffsetAdapter;->offset:I

    add-int/2addr v1, v2

    if-le v0, v1, :cond_1

    .line 137
    return-void

    .line 136
    :cond_1
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
.end method

.method public visitLdcInsn(Ljava/lang/Object;)V
    .locals 5
    .param p1, "cst"    # Ljava/lang/Object;

    .line 141
    invoke-super {p0, p1}, Lorg/checkerframework/org/objectweb/asmx/MethodAdapter;->visitLdcInsn(Ljava/lang/Object;)V

    .line 142
    sget-object v0, Lscenelib/annotations/io/classfile/CodeOffsetAdapter;->debug:Lscenelib/annotations/io/DebugWriter;

    iget-object v1, p0, Lscenelib/annotations/io/classfile/CodeOffsetAdapter$1;->this$0:Lscenelib/annotations/io/classfile/CodeOffsetAdapter;

    iget v1, v1, Lscenelib/annotations/io/classfile/CodeOffsetAdapter;->offset:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    filled-new-array {v1, p1}, [Ljava/lang/Object;

    move-result-object v1

    const-string v2, "%d visitLdcInsn(%s)%n"

    invoke-virtual {v0, v2, v1}, Lscenelib/annotations/io/DebugWriter;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 144
    iget-object v0, p0, Lscenelib/annotations/io/classfile/CodeOffsetAdapter$1;->this$0:Lscenelib/annotations/io/classfile/CodeOffsetAdapter;

    iget v1, v0, Lscenelib/annotations/io/classfile/CodeOffsetAdapter;->offset:I

    iget-object v2, p0, Lscenelib/annotations/io/classfile/CodeOffsetAdapter$1;->this$0:Lscenelib/annotations/io/classfile/CodeOffsetAdapter;

    iget-object v2, v2, Lscenelib/annotations/io/classfile/CodeOffsetAdapter;->classReader:Lorg/checkerframework/org/objectweb/asmx/ClassReader;

    iget-object v3, p0, Lscenelib/annotations/io/classfile/CodeOffsetAdapter$1;->this$0:Lscenelib/annotations/io/classfile/CodeOffsetAdapter;

    iget v3, v3, Lscenelib/annotations/io/classfile/CodeOffsetAdapter;->codeStart:I

    iget-object v4, p0, Lscenelib/annotations/io/classfile/CodeOffsetAdapter$1;->this$0:Lscenelib/annotations/io/classfile/CodeOffsetAdapter;

    iget v4, v4, Lscenelib/annotations/io/classfile/CodeOffsetAdapter;->offset:I

    add-int/2addr v3, v4

    invoke-virtual {v2, v3}, Lorg/checkerframework/org/objectweb/asmx/ClassReader;->readByte(I)I

    move-result v2

    const/16 v3, 0x12

    if-le v2, v3, :cond_0

    const/4 v2, 0x3

    goto :goto_0

    :cond_0
    const/4 v2, 0x2

    :goto_0
    add-int/2addr v1, v2

    iput v1, v0, Lscenelib/annotations/io/classfile/CodeOffsetAdapter;->offset:I

    .line 145
    iget-object v0, p0, Lscenelib/annotations/io/classfile/CodeOffsetAdapter$1;->this$0:Lscenelib/annotations/io/classfile/CodeOffsetAdapter;

    iget v0, v0, Lscenelib/annotations/io/classfile/CodeOffsetAdapter;->offset:I

    if-lez v0, :cond_1

    iget v0, p0, Lscenelib/annotations/io/classfile/CodeOffsetAdapter$1;->methodEnd:I

    iget-object v1, p0, Lscenelib/annotations/io/classfile/CodeOffsetAdapter$1;->this$0:Lscenelib/annotations/io/classfile/CodeOffsetAdapter;

    iget v1, v1, Lscenelib/annotations/io/classfile/CodeOffsetAdapter;->codeStart:I

    iget-object v2, p0, Lscenelib/annotations/io/classfile/CodeOffsetAdapter$1;->this$0:Lscenelib/annotations/io/classfile/CodeOffsetAdapter;

    iget v2, v2, Lscenelib/annotations/io/classfile/CodeOffsetAdapter;->offset:I

    add-int/2addr v1, v2

    if-le v0, v1, :cond_1

    .line 146
    return-void

    .line 145
    :cond_1
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
.end method

.method public visitLookupSwitchInsn(Lorg/checkerframework/org/objectweb/asmx/Label;[I[Lorg/checkerframework/org/objectweb/asmx/Label;)V
    .locals 3
    .param p1, "dflt"    # Lorg/checkerframework/org/objectweb/asmx/Label;
    .param p2, "keys"    # [I
    .param p3, "labels"    # [Lorg/checkerframework/org/objectweb/asmx/Label;

    .line 151
    invoke-super {p0, p1, p2, p3}, Lorg/checkerframework/org/objectweb/asmx/MethodAdapter;->visitLookupSwitchInsn(Lorg/checkerframework/org/objectweb/asmx/Label;[I[Lorg/checkerframework/org/objectweb/asmx/Label;)V

    .line 152
    sget-object v0, Lscenelib/annotations/io/classfile/CodeOffsetAdapter;->debug:Lscenelib/annotations/io/DebugWriter;

    iget-object v1, p0, Lscenelib/annotations/io/classfile/CodeOffsetAdapter$1;->this$0:Lscenelib/annotations/io/classfile/CodeOffsetAdapter;

    iget v1, v1, Lscenelib/annotations/io/classfile/CodeOffsetAdapter;->offset:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    filled-new-array {v1, p1, p2, p3}, [Ljava/lang/Object;

    move-result-object v1

    const-string v2, "%d visitLookupSwitchInsn(%s)%n"

    invoke-virtual {v0, v2, v1}, Lscenelib/annotations/io/DebugWriter;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 154
    iget-object v0, p0, Lscenelib/annotations/io/classfile/CodeOffsetAdapter$1;->this$0:Lscenelib/annotations/io/classfile/CodeOffsetAdapter;

    iget v1, v0, Lscenelib/annotations/io/classfile/CodeOffsetAdapter;->offset:I

    iget-object v2, p0, Lscenelib/annotations/io/classfile/CodeOffsetAdapter$1;->this$0:Lscenelib/annotations/io/classfile/CodeOffsetAdapter;

    iget v2, v2, Lscenelib/annotations/io/classfile/CodeOffsetAdapter;->offset:I

    and-int/lit8 v2, v2, 0x3

    rsub-int/lit8 v2, v2, 0x8

    add-int/2addr v1, v2

    iput v1, v0, Lscenelib/annotations/io/classfile/CodeOffsetAdapter;->offset:I

    .line 155
    iget-object v0, p0, Lscenelib/annotations/io/classfile/CodeOffsetAdapter$1;->this$0:Lscenelib/annotations/io/classfile/CodeOffsetAdapter;

    iget v1, v0, Lscenelib/annotations/io/classfile/CodeOffsetAdapter;->offset:I

    iget-object v2, p0, Lscenelib/annotations/io/classfile/CodeOffsetAdapter$1;->this$0:Lscenelib/annotations/io/classfile/CodeOffsetAdapter;

    iget v2, v2, Lscenelib/annotations/io/classfile/CodeOffsetAdapter;->offset:I

    invoke-direct {p0, v2}, Lscenelib/annotations/io/classfile/CodeOffsetAdapter$1;->readInt(I)I

    move-result v2

    mul-int/lit8 v2, v2, 0x8

    add-int/lit8 v2, v2, 0x4

    add-int/2addr v1, v2

    iput v1, v0, Lscenelib/annotations/io/classfile/CodeOffsetAdapter;->offset:I

    .line 156
    iget-object v0, p0, Lscenelib/annotations/io/classfile/CodeOffsetAdapter$1;->this$0:Lscenelib/annotations/io/classfile/CodeOffsetAdapter;

    iget v0, v0, Lscenelib/annotations/io/classfile/CodeOffsetAdapter;->offset:I

    if-lez v0, :cond_0

    iget v0, p0, Lscenelib/annotations/io/classfile/CodeOffsetAdapter$1;->methodEnd:I

    iget-object v1, p0, Lscenelib/annotations/io/classfile/CodeOffsetAdapter$1;->this$0:Lscenelib/annotations/io/classfile/CodeOffsetAdapter;

    iget v1, v1, Lscenelib/annotations/io/classfile/CodeOffsetAdapter;->codeStart:I

    iget-object v2, p0, Lscenelib/annotations/io/classfile/CodeOffsetAdapter$1;->this$0:Lscenelib/annotations/io/classfile/CodeOffsetAdapter;

    iget v2, v2, Lscenelib/annotations/io/classfile/CodeOffsetAdapter;->offset:I

    add-int/2addr v1, v2

    if-le v0, v1, :cond_0

    .line 157
    return-void

    .line 156
    :cond_0
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
.end method

.method public visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "opcode"    # I
    .param p2, "owner"    # Ljava/lang/String;
    .param p3, "name"    # Ljava/lang/String;
    .param p4, "descriptor"    # Ljava/lang/String;

    .line 162
    invoke-super {p0, p1, p2, p3, p4}, Lorg/checkerframework/org/objectweb/asmx/MethodAdapter;->visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 163
    sget-object v0, Lscenelib/annotations/io/classfile/CodeOffsetAdapter;->debug:Lscenelib/annotations/io/DebugWriter;

    iget-object v1, p0, Lscenelib/annotations/io/classfile/CodeOffsetAdapter$1;->this$0:Lscenelib/annotations/io/classfile/CodeOffsetAdapter;

    iget v1, v1, Lscenelib/annotations/io/classfile/CodeOffsetAdapter;->offset:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 164
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    filled-new-array {v1, v2, p2, p3, p4}, [Ljava/lang/Object;

    move-result-object v1

    .line 163
    const-string v2, "%d visitMethodInsn(%d, %s, %s, %s)%n"

    invoke-virtual {v0, v2, v1}, Lscenelib/annotations/io/DebugWriter;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 165
    iget-object v0, p0, Lscenelib/annotations/io/classfile/CodeOffsetAdapter$1;->this$0:Lscenelib/annotations/io/classfile/CodeOffsetAdapter;

    iget v1, v0, Lscenelib/annotations/io/classfile/CodeOffsetAdapter;->offset:I

    const/16 v2, 0xb9

    if-ne p1, v2, :cond_0

    const/4 v2, 0x5

    goto :goto_0

    :cond_0
    const/4 v2, 0x3

    :goto_0
    add-int/2addr v1, v2

    iput v1, v0, Lscenelib/annotations/io/classfile/CodeOffsetAdapter;->offset:I

    .line 166
    return-void
.end method

.method public visitMultiANewArrayInsn(Ljava/lang/String;I)V
    .locals 3
    .param p1, "descriptor"    # Ljava/lang/String;
    .param p2, "dims"    # I

    .line 170
    invoke-super {p0, p1, p2}, Lorg/checkerframework/org/objectweb/asmx/MethodAdapter;->visitMultiANewArrayInsn(Ljava/lang/String;I)V

    .line 171
    sget-object v0, Lscenelib/annotations/io/classfile/CodeOffsetAdapter;->debug:Lscenelib/annotations/io/DebugWriter;

    iget-object v1, p0, Lscenelib/annotations/io/classfile/CodeOffsetAdapter$1;->this$0:Lscenelib/annotations/io/classfile/CodeOffsetAdapter;

    iget v1, v1, Lscenelib/annotations/io/classfile/CodeOffsetAdapter;->offset:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 172
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    filled-new-array {v1, p1, v2}, [Ljava/lang/Object;

    move-result-object v1

    .line 171
    const-string v2, "%d visitMultiANewArrayInsn(%s, %d)%n"

    invoke-virtual {v0, v2, v1}, Lscenelib/annotations/io/DebugWriter;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 173
    iget-object v0, p0, Lscenelib/annotations/io/classfile/CodeOffsetAdapter$1;->this$0:Lscenelib/annotations/io/classfile/CodeOffsetAdapter;

    iget v1, v0, Lscenelib/annotations/io/classfile/CodeOffsetAdapter;->offset:I

    add-int/lit8 v1, v1, 0x4

    iput v1, v0, Lscenelib/annotations/io/classfile/CodeOffsetAdapter;->offset:I

    .line 174
    return-void
.end method

.method public visitTableSwitchInsn(IILorg/checkerframework/org/objectweb/asmx/Label;[Lorg/checkerframework/org/objectweb/asmx/Label;)V
    .locals 4
    .param p1, "min"    # I
    .param p2, "max"    # I
    .param p3, "dflt"    # Lorg/checkerframework/org/objectweb/asmx/Label;
    .param p4, "labels"    # [Lorg/checkerframework/org/objectweb/asmx/Label;

    .line 179
    invoke-super {p0, p1, p2, p3, p4}, Lorg/checkerframework/org/objectweb/asmx/MethodAdapter;->visitTableSwitchInsn(IILorg/checkerframework/org/objectweb/asmx/Label;[Lorg/checkerframework/org/objectweb/asmx/Label;)V

    .line 180
    sget-object v0, Lscenelib/annotations/io/classfile/CodeOffsetAdapter;->debug:Lscenelib/annotations/io/DebugWriter;

    iget-object v1, p0, Lscenelib/annotations/io/classfile/CodeOffsetAdapter$1;->this$0:Lscenelib/annotations/io/classfile/CodeOffsetAdapter;

    iget v1, v1, Lscenelib/annotations/io/classfile/CodeOffsetAdapter;->offset:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 181
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    filled-new-array {v1, v2, v3, p3, p4}, [Ljava/lang/Object;

    move-result-object v1

    .line 180
    const-string v2, "%d visitTableSwitchInsn(%d, %d, %s)%n"

    invoke-virtual {v0, v2, v1}, Lscenelib/annotations/io/DebugWriter;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 182
    iget-object v0, p0, Lscenelib/annotations/io/classfile/CodeOffsetAdapter$1;->this$0:Lscenelib/annotations/io/classfile/CodeOffsetAdapter;

    iget v1, v0, Lscenelib/annotations/io/classfile/CodeOffsetAdapter;->offset:I

    iget-object v2, p0, Lscenelib/annotations/io/classfile/CodeOffsetAdapter$1;->this$0:Lscenelib/annotations/io/classfile/CodeOffsetAdapter;

    iget v2, v2, Lscenelib/annotations/io/classfile/CodeOffsetAdapter;->offset:I

    and-int/lit8 v2, v2, 0x3

    rsub-int/lit8 v2, v2, 0x8

    add-int/2addr v1, v2

    iput v1, v0, Lscenelib/annotations/io/classfile/CodeOffsetAdapter;->offset:I

    .line 183
    iget-object v0, p0, Lscenelib/annotations/io/classfile/CodeOffsetAdapter$1;->this$0:Lscenelib/annotations/io/classfile/CodeOffsetAdapter;

    iget v1, v0, Lscenelib/annotations/io/classfile/CodeOffsetAdapter;->offset:I

    iget-object v2, p0, Lscenelib/annotations/io/classfile/CodeOffsetAdapter$1;->this$0:Lscenelib/annotations/io/classfile/CodeOffsetAdapter;

    iget v2, v2, Lscenelib/annotations/io/classfile/CodeOffsetAdapter;->offset:I

    add-int/lit8 v2, v2, 0x4

    invoke-direct {p0, v2}, Lscenelib/annotations/io/classfile/CodeOffsetAdapter$1;->readInt(I)I

    move-result v2

    iget-object v3, p0, Lscenelib/annotations/io/classfile/CodeOffsetAdapter$1;->this$0:Lscenelib/annotations/io/classfile/CodeOffsetAdapter;

    iget v3, v3, Lscenelib/annotations/io/classfile/CodeOffsetAdapter;->offset:I

    invoke-direct {p0, v3}, Lscenelib/annotations/io/classfile/CodeOffsetAdapter$1;->readInt(I)I

    move-result v3

    sub-int/2addr v2, v3

    add-int/lit8 v2, v2, 0x3

    mul-int/lit8 v2, v2, 0x4

    add-int/2addr v1, v2

    iput v1, v0, Lscenelib/annotations/io/classfile/CodeOffsetAdapter;->offset:I

    .line 184
    iget-object v0, p0, Lscenelib/annotations/io/classfile/CodeOffsetAdapter$1;->this$0:Lscenelib/annotations/io/classfile/CodeOffsetAdapter;

    iget v0, v0, Lscenelib/annotations/io/classfile/CodeOffsetAdapter;->offset:I

    if-lez v0, :cond_0

    iget v0, p0, Lscenelib/annotations/io/classfile/CodeOffsetAdapter$1;->methodEnd:I

    iget-object v1, p0, Lscenelib/annotations/io/classfile/CodeOffsetAdapter$1;->this$0:Lscenelib/annotations/io/classfile/CodeOffsetAdapter;

    iget v1, v1, Lscenelib/annotations/io/classfile/CodeOffsetAdapter;->codeStart:I

    iget-object v2, p0, Lscenelib/annotations/io/classfile/CodeOffsetAdapter$1;->this$0:Lscenelib/annotations/io/classfile/CodeOffsetAdapter;

    iget v2, v2, Lscenelib/annotations/io/classfile/CodeOffsetAdapter;->offset:I

    add-int/2addr v1, v2

    if-le v0, v1, :cond_0

    .line 185
    return-void

    .line 184
    :cond_0
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
.end method

.method public visitTypeInsn(ILjava/lang/String;)V
    .locals 3
    .param p1, "opcode"    # I
    .param p2, "descriptor"    # Ljava/lang/String;

    .line 189
    invoke-super {p0, p1, p2}, Lorg/checkerframework/org/objectweb/asmx/MethodAdapter;->visitTypeInsn(ILjava/lang/String;)V

    .line 190
    sget-object v0, Lscenelib/annotations/io/classfile/CodeOffsetAdapter;->debug:Lscenelib/annotations/io/DebugWriter;

    iget-object v1, p0, Lscenelib/annotations/io/classfile/CodeOffsetAdapter$1;->this$0:Lscenelib/annotations/io/classfile/CodeOffsetAdapter;

    iget v1, v1, Lscenelib/annotations/io/classfile/CodeOffsetAdapter;->offset:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    filled-new-array {v1, v2, p2}, [Ljava/lang/Object;

    move-result-object v1

    const-string v2, "%d visitTypeInsn(%d, %s)%n"

    invoke-virtual {v0, v2, v1}, Lscenelib/annotations/io/DebugWriter;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 191
    iget-object v0, p0, Lscenelib/annotations/io/classfile/CodeOffsetAdapter$1;->this$0:Lscenelib/annotations/io/classfile/CodeOffsetAdapter;

    iget v1, v0, Lscenelib/annotations/io/classfile/CodeOffsetAdapter;->offset:I

    add-int/lit8 v1, v1, 0x3

    iput v1, v0, Lscenelib/annotations/io/classfile/CodeOffsetAdapter;->offset:I

    .line 192
    return-void
.end method

.method public visitVarInsn(II)V
    .locals 4
    .param p1, "opcode"    # I
    .param p2, "var"    # I

    .line 196
    invoke-super {p0, p1, p2}, Lorg/checkerframework/org/objectweb/asmx/MethodAdapter;->visitVarInsn(II)V

    .line 197
    sget-object v0, Lscenelib/annotations/io/classfile/CodeOffsetAdapter;->debug:Lscenelib/annotations/io/DebugWriter;

    iget-object v1, p0, Lscenelib/annotations/io/classfile/CodeOffsetAdapter$1;->this$0:Lscenelib/annotations/io/classfile/CodeOffsetAdapter;

    iget v1, v1, Lscenelib/annotations/io/classfile/CodeOffsetAdapter;->offset:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    filled-new-array {v1, v2, v3}, [Ljava/lang/Object;

    move-result-object v1

    const-string v2, "%d visitVarInsn(%d, %d)%n"

    invoke-virtual {v0, v2, v1}, Lscenelib/annotations/io/DebugWriter;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 198
    iget-object v0, p0, Lscenelib/annotations/io/classfile/CodeOffsetAdapter$1;->this$0:Lscenelib/annotations/io/classfile/CodeOffsetAdapter;

    iget v1, v0, Lscenelib/annotations/io/classfile/CodeOffsetAdapter;->offset:I

    const/4 v2, 0x4

    if-ge p2, v2, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x2

    :goto_0
    add-int/2addr v1, v2

    iput v1, v0, Lscenelib/annotations/io/classfile/CodeOffsetAdapter;->offset:I

    .line 199
    return-void
.end method
