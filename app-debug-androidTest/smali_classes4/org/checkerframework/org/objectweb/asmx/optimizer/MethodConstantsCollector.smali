.class public Lorg/checkerframework/org/objectweb/asmx/optimizer/MethodConstantsCollector;
.super Lorg/checkerframework/org/objectweb/asmx/MethodAdapter;
.source "MethodConstantsCollector.java"


# instance fields
.field private cp:Lorg/checkerframework/org/objectweb/asmx/optimizer/ConstantPool;


# direct methods
.method public constructor <init>(Lorg/checkerframework/org/objectweb/asmx/MethodVisitor;Lorg/checkerframework/org/objectweb/asmx/optimizer/ConstantPool;)V
    .locals 0
    .param p1, "mv"    # Lorg/checkerframework/org/objectweb/asmx/MethodVisitor;
    .param p2, "cp"    # Lorg/checkerframework/org/objectweb/asmx/optimizer/ConstantPool;

    .line 52
    invoke-direct {p0, p1}, Lorg/checkerframework/org/objectweb/asmx/MethodAdapter;-><init>(Lorg/checkerframework/org/objectweb/asmx/MethodVisitor;)V

    .line 53
    iput-object p2, p0, Lorg/checkerframework/org/objectweb/asmx/optimizer/MethodConstantsCollector;->cp:Lorg/checkerframework/org/objectweb/asmx/optimizer/ConstantPool;

    .line 54
    return-void
.end method


# virtual methods
.method public visitAnnotation(Ljava/lang/String;Z)Lorg/checkerframework/org/objectweb/asmx/AnnotationVisitor;
    .locals 3
    .param p1, "desc"    # Ljava/lang/String;
    .param p2, "visible"    # Z

    .line 65
    iget-object v0, p0, Lorg/checkerframework/org/objectweb/asmx/optimizer/MethodConstantsCollector;->cp:Lorg/checkerframework/org/objectweb/asmx/optimizer/ConstantPool;

    invoke-virtual {v0, p1}, Lorg/checkerframework/org/objectweb/asmx/optimizer/ConstantPool;->newUTF8(Ljava/lang/String;)Lorg/checkerframework/org/objectweb/asmx/optimizer/Constant;

    .line 66
    if-eqz p2, :cond_0

    .line 67
    iget-object v0, p0, Lorg/checkerframework/org/objectweb/asmx/optimizer/MethodConstantsCollector;->cp:Lorg/checkerframework/org/objectweb/asmx/optimizer/ConstantPool;

    const-string v1, "RuntimeVisibleAnnotations"

    invoke-virtual {v0, v1}, Lorg/checkerframework/org/objectweb/asmx/optimizer/ConstantPool;->newUTF8(Ljava/lang/String;)Lorg/checkerframework/org/objectweb/asmx/optimizer/Constant;

    goto :goto_0

    .line 69
    :cond_0
    iget-object v0, p0, Lorg/checkerframework/org/objectweb/asmx/optimizer/MethodConstantsCollector;->cp:Lorg/checkerframework/org/objectweb/asmx/optimizer/ConstantPool;

    const-string v1, "RuntimeInvisibleAnnotations"

    invoke-virtual {v0, v1}, Lorg/checkerframework/org/objectweb/asmx/optimizer/ConstantPool;->newUTF8(Ljava/lang/String;)Lorg/checkerframework/org/objectweb/asmx/optimizer/Constant;

    .line 71
    :goto_0
    new-instance v0, Lorg/checkerframework/org/objectweb/asmx/optimizer/AnnotationConstantsCollector;

    iget-object v1, p0, Lorg/checkerframework/org/objectweb/asmx/optimizer/MethodConstantsCollector;->mv:Lorg/checkerframework/org/objectweb/asmx/MethodVisitor;

    invoke-interface {v1, p1, p2}, Lorg/checkerframework/org/objectweb/asmx/MethodVisitor;->visitAnnotation(Ljava/lang/String;Z)Lorg/checkerframework/org/objectweb/asmx/AnnotationVisitor;

    move-result-object v1

    iget-object v2, p0, Lorg/checkerframework/org/objectweb/asmx/optimizer/MethodConstantsCollector;->cp:Lorg/checkerframework/org/objectweb/asmx/optimizer/ConstantPool;

    invoke-direct {v0, v1, v2}, Lorg/checkerframework/org/objectweb/asmx/optimizer/AnnotationConstantsCollector;-><init>(Lorg/checkerframework/org/objectweb/asmx/AnnotationVisitor;Lorg/checkerframework/org/objectweb/asmx/optimizer/ConstantPool;)V

    return-object v0
.end method

.method public visitAnnotationDefault()Lorg/checkerframework/org/objectweb/asmx/AnnotationVisitor;
    .locals 3

    .line 57
    iget-object v0, p0, Lorg/checkerframework/org/objectweb/asmx/optimizer/MethodConstantsCollector;->cp:Lorg/checkerframework/org/objectweb/asmx/optimizer/ConstantPool;

    const-string v1, "AnnotationDefault"

    invoke-virtual {v0, v1}, Lorg/checkerframework/org/objectweb/asmx/optimizer/ConstantPool;->newUTF8(Ljava/lang/String;)Lorg/checkerframework/org/objectweb/asmx/optimizer/Constant;

    .line 58
    new-instance v0, Lorg/checkerframework/org/objectweb/asmx/optimizer/AnnotationConstantsCollector;

    iget-object v1, p0, Lorg/checkerframework/org/objectweb/asmx/optimizer/MethodConstantsCollector;->mv:Lorg/checkerframework/org/objectweb/asmx/MethodVisitor;

    invoke-interface {v1}, Lorg/checkerframework/org/objectweb/asmx/MethodVisitor;->visitAnnotationDefault()Lorg/checkerframework/org/objectweb/asmx/AnnotationVisitor;

    move-result-object v1

    iget-object v2, p0, Lorg/checkerframework/org/objectweb/asmx/optimizer/MethodConstantsCollector;->cp:Lorg/checkerframework/org/objectweb/asmx/optimizer/ConstantPool;

    invoke-direct {v0, v1, v2}, Lorg/checkerframework/org/objectweb/asmx/optimizer/AnnotationConstantsCollector;-><init>(Lorg/checkerframework/org/objectweb/asmx/AnnotationVisitor;Lorg/checkerframework/org/objectweb/asmx/optimizer/ConstantPool;)V

    return-object v0
.end method

.method public visitFieldInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "opcode"    # I
    .param p2, "owner"    # Ljava/lang/String;
    .param p3, "name"    # Ljava/lang/String;
    .param p4, "desc"    # Ljava/lang/String;

    .line 103
    iget-object v0, p0, Lorg/checkerframework/org/objectweb/asmx/optimizer/MethodConstantsCollector;->cp:Lorg/checkerframework/org/objectweb/asmx/optimizer/ConstantPool;

    invoke-virtual {v0, p2, p3, p4}, Lorg/checkerframework/org/objectweb/asmx/optimizer/ConstantPool;->newField(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/checkerframework/org/objectweb/asmx/optimizer/Constant;

    .line 104
    iget-object v0, p0, Lorg/checkerframework/org/objectweb/asmx/optimizer/MethodConstantsCollector;->mv:Lorg/checkerframework/org/objectweb/asmx/MethodVisitor;

    invoke-interface {v0, p1, p2, p3, p4}, Lorg/checkerframework/org/objectweb/asmx/MethodVisitor;->visitFieldInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 105
    return-void
.end method

.method public visitLdcInsn(Ljava/lang/Object;)V
    .locals 1
    .param p1, "cst"    # Ljava/lang/Object;

    .line 119
    iget-object v0, p0, Lorg/checkerframework/org/objectweb/asmx/optimizer/MethodConstantsCollector;->cp:Lorg/checkerframework/org/objectweb/asmx/optimizer/ConstantPool;

    invoke-virtual {v0, p1}, Lorg/checkerframework/org/objectweb/asmx/optimizer/ConstantPool;->newConst(Ljava/lang/Object;)Lorg/checkerframework/org/objectweb/asmx/optimizer/Constant;

    .line 120
    iget-object v0, p0, Lorg/checkerframework/org/objectweb/asmx/optimizer/MethodConstantsCollector;->mv:Lorg/checkerframework/org/objectweb/asmx/MethodVisitor;

    invoke-interface {v0, p1}, Lorg/checkerframework/org/objectweb/asmx/MethodVisitor;->visitLdcInsn(Ljava/lang/Object;)V

    .line 121
    return-void
.end method

.method public visitLineNumber(ILorg/checkerframework/org/objectweb/asmx/Label;)V
    .locals 2
    .param p1, "line"    # I
    .param p2, "start"    # Lorg/checkerframework/org/objectweb/asmx/Label;

    .line 160
    iget-object v0, p0, Lorg/checkerframework/org/objectweb/asmx/optimizer/MethodConstantsCollector;->cp:Lorg/checkerframework/org/objectweb/asmx/optimizer/ConstantPool;

    const-string v1, "LineNumberTable"

    invoke-virtual {v0, v1}, Lorg/checkerframework/org/objectweb/asmx/optimizer/ConstantPool;->newUTF8(Ljava/lang/String;)Lorg/checkerframework/org/objectweb/asmx/optimizer/Constant;

    .line 161
    iget-object v0, p0, Lorg/checkerframework/org/objectweb/asmx/optimizer/MethodConstantsCollector;->mv:Lorg/checkerframework/org/objectweb/asmx/MethodVisitor;

    invoke-interface {v0, p1, p2}, Lorg/checkerframework/org/objectweb/asmx/MethodVisitor;->visitLineNumber(ILorg/checkerframework/org/objectweb/asmx/Label;)V

    .line 162
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

    .line 148
    if-eqz p3, :cond_0

    .line 149
    iget-object v0, p0, Lorg/checkerframework/org/objectweb/asmx/optimizer/MethodConstantsCollector;->cp:Lorg/checkerframework/org/objectweb/asmx/optimizer/ConstantPool;

    const-string v1, "LocalVariableTypeTable"

    invoke-virtual {v0, v1}, Lorg/checkerframework/org/objectweb/asmx/optimizer/ConstantPool;->newUTF8(Ljava/lang/String;)Lorg/checkerframework/org/objectweb/asmx/optimizer/Constant;

    .line 150
    iget-object v0, p0, Lorg/checkerframework/org/objectweb/asmx/optimizer/MethodConstantsCollector;->cp:Lorg/checkerframework/org/objectweb/asmx/optimizer/ConstantPool;

    invoke-virtual {v0, p1}, Lorg/checkerframework/org/objectweb/asmx/optimizer/ConstantPool;->newUTF8(Ljava/lang/String;)Lorg/checkerframework/org/objectweb/asmx/optimizer/Constant;

    .line 151
    iget-object v0, p0, Lorg/checkerframework/org/objectweb/asmx/optimizer/MethodConstantsCollector;->cp:Lorg/checkerframework/org/objectweb/asmx/optimizer/ConstantPool;

    invoke-virtual {v0, p3}, Lorg/checkerframework/org/objectweb/asmx/optimizer/ConstantPool;->newUTF8(Ljava/lang/String;)Lorg/checkerframework/org/objectweb/asmx/optimizer/Constant;

    .line 153
    :cond_0
    iget-object v0, p0, Lorg/checkerframework/org/objectweb/asmx/optimizer/MethodConstantsCollector;->cp:Lorg/checkerframework/org/objectweb/asmx/optimizer/ConstantPool;

    const-string v1, "LocalVariableTable"

    invoke-virtual {v0, v1}, Lorg/checkerframework/org/objectweb/asmx/optimizer/ConstantPool;->newUTF8(Ljava/lang/String;)Lorg/checkerframework/org/objectweb/asmx/optimizer/Constant;

    .line 154
    iget-object v0, p0, Lorg/checkerframework/org/objectweb/asmx/optimizer/MethodConstantsCollector;->cp:Lorg/checkerframework/org/objectweb/asmx/optimizer/ConstantPool;

    invoke-virtual {v0, p1}, Lorg/checkerframework/org/objectweb/asmx/optimizer/ConstantPool;->newUTF8(Ljava/lang/String;)Lorg/checkerframework/org/objectweb/asmx/optimizer/Constant;

    .line 155
    iget-object v0, p0, Lorg/checkerframework/org/objectweb/asmx/optimizer/MethodConstantsCollector;->cp:Lorg/checkerframework/org/objectweb/asmx/optimizer/ConstantPool;

    invoke-virtual {v0, p2}, Lorg/checkerframework/org/objectweb/asmx/optimizer/ConstantPool;->newUTF8(Ljava/lang/String;)Lorg/checkerframework/org/objectweb/asmx/optimizer/Constant;

    .line 156
    iget-object v1, p0, Lorg/checkerframework/org/objectweb/asmx/optimizer/MethodConstantsCollector;->mv:Lorg/checkerframework/org/objectweb/asmx/MethodVisitor;

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    move v7, p6

    invoke-interface/range {v1 .. v7}, Lorg/checkerframework/org/objectweb/asmx/MethodVisitor;->visitLocalVariable(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/checkerframework/org/objectweb/asmx/Label;Lorg/checkerframework/org/objectweb/asmx/Label;I)V

    .line 157
    return-void
.end method

.method public visitMaxs(II)V
    .locals 2
    .param p1, "maxStack"    # I
    .param p2, "maxLocals"    # I

    .line 165
    iget-object v0, p0, Lorg/checkerframework/org/objectweb/asmx/optimizer/MethodConstantsCollector;->cp:Lorg/checkerframework/org/objectweb/asmx/optimizer/ConstantPool;

    const-string v1, "Code"

    invoke-virtual {v0, v1}, Lorg/checkerframework/org/objectweb/asmx/optimizer/ConstantPool;->newUTF8(Ljava/lang/String;)Lorg/checkerframework/org/objectweb/asmx/optimizer/Constant;

    .line 166
    iget-object v0, p0, Lorg/checkerframework/org/objectweb/asmx/optimizer/MethodConstantsCollector;->mv:Lorg/checkerframework/org/objectweb/asmx/MethodVisitor;

    invoke-interface {v0, p1, p2}, Lorg/checkerframework/org/objectweb/asmx/MethodVisitor;->visitMaxs(II)V

    .line 167
    return-void
.end method

.method public visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "opcode"    # I
    .param p2, "owner"    # Ljava/lang/String;
    .param p3, "name"    # Ljava/lang/String;
    .param p4, "desc"    # Ljava/lang/String;

    .line 113
    const/16 v0, 0xb9

    if-ne p1, v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 114
    .local v0, "itf":Z
    :goto_0
    iget-object v1, p0, Lorg/checkerframework/org/objectweb/asmx/optimizer/MethodConstantsCollector;->cp:Lorg/checkerframework/org/objectweb/asmx/optimizer/ConstantPool;

    invoke-virtual {v1, p2, p3, p4, v0}, Lorg/checkerframework/org/objectweb/asmx/optimizer/ConstantPool;->newMethod(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Lorg/checkerframework/org/objectweb/asmx/optimizer/Constant;

    .line 115
    iget-object v1, p0, Lorg/checkerframework/org/objectweb/asmx/optimizer/MethodConstantsCollector;->mv:Lorg/checkerframework/org/objectweb/asmx/MethodVisitor;

    invoke-interface {v1, p1, p2, p3, p4}, Lorg/checkerframework/org/objectweb/asmx/MethodVisitor;->visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 116
    return-void
.end method

.method public visitMultiANewArrayInsn(Ljava/lang/String;I)V
    .locals 1
    .param p1, "desc"    # Ljava/lang/String;
    .param p2, "dims"    # I

    .line 124
    iget-object v0, p0, Lorg/checkerframework/org/objectweb/asmx/optimizer/MethodConstantsCollector;->cp:Lorg/checkerframework/org/objectweb/asmx/optimizer/ConstantPool;

    invoke-virtual {v0, p1}, Lorg/checkerframework/org/objectweb/asmx/optimizer/ConstantPool;->newClass(Ljava/lang/String;)Lorg/checkerframework/org/objectweb/asmx/optimizer/Constant;

    .line 125
    iget-object v0, p0, Lorg/checkerframework/org/objectweb/asmx/optimizer/MethodConstantsCollector;->mv:Lorg/checkerframework/org/objectweb/asmx/MethodVisitor;

    invoke-interface {v0, p1, p2}, Lorg/checkerframework/org/objectweb/asmx/MethodVisitor;->visitMultiANewArrayInsn(Ljava/lang/String;I)V

    .line 126
    return-void
.end method

.method public visitParameterAnnotation(ILjava/lang/String;Z)Lorg/checkerframework/org/objectweb/asmx/AnnotationVisitor;
    .locals 3
    .param p1, "parameter"    # I
    .param p2, "desc"    # Ljava/lang/String;
    .param p3, "visible"    # Z

    .line 80
    iget-object v0, p0, Lorg/checkerframework/org/objectweb/asmx/optimizer/MethodConstantsCollector;->cp:Lorg/checkerframework/org/objectweb/asmx/optimizer/ConstantPool;

    invoke-virtual {v0, p2}, Lorg/checkerframework/org/objectweb/asmx/optimizer/ConstantPool;->newUTF8(Ljava/lang/String;)Lorg/checkerframework/org/objectweb/asmx/optimizer/Constant;

    .line 81
    if-eqz p3, :cond_0

    .line 82
    iget-object v0, p0, Lorg/checkerframework/org/objectweb/asmx/optimizer/MethodConstantsCollector;->cp:Lorg/checkerframework/org/objectweb/asmx/optimizer/ConstantPool;

    const-string v1, "RuntimeVisibleParameterAnnotations"

    invoke-virtual {v0, v1}, Lorg/checkerframework/org/objectweb/asmx/optimizer/ConstantPool;->newUTF8(Ljava/lang/String;)Lorg/checkerframework/org/objectweb/asmx/optimizer/Constant;

    goto :goto_0

    .line 84
    :cond_0
    iget-object v0, p0, Lorg/checkerframework/org/objectweb/asmx/optimizer/MethodConstantsCollector;->cp:Lorg/checkerframework/org/objectweb/asmx/optimizer/ConstantPool;

    const-string v1, "RuntimeInvisibleParameterAnnotations"

    invoke-virtual {v0, v1}, Lorg/checkerframework/org/objectweb/asmx/optimizer/ConstantPool;->newUTF8(Ljava/lang/String;)Lorg/checkerframework/org/objectweb/asmx/optimizer/Constant;

    .line 86
    :goto_0
    new-instance v0, Lorg/checkerframework/org/objectweb/asmx/optimizer/AnnotationConstantsCollector;

    iget-object v1, p0, Lorg/checkerframework/org/objectweb/asmx/optimizer/MethodConstantsCollector;->mv:Lorg/checkerframework/org/objectweb/asmx/MethodVisitor;

    invoke-interface {v1, p1, p2, p3}, Lorg/checkerframework/org/objectweb/asmx/MethodVisitor;->visitParameterAnnotation(ILjava/lang/String;Z)Lorg/checkerframework/org/objectweb/asmx/AnnotationVisitor;

    move-result-object v1

    iget-object v2, p0, Lorg/checkerframework/org/objectweb/asmx/optimizer/MethodConstantsCollector;->cp:Lorg/checkerframework/org/objectweb/asmx/optimizer/ConstantPool;

    invoke-direct {v0, v1, v2}, Lorg/checkerframework/org/objectweb/asmx/optimizer/AnnotationConstantsCollector;-><init>(Lorg/checkerframework/org/objectweb/asmx/AnnotationVisitor;Lorg/checkerframework/org/objectweb/asmx/optimizer/ConstantPool;)V

    return-object v0
.end method

.method public visitTryCatchBlock(Lorg/checkerframework/org/objectweb/asmx/Label;Lorg/checkerframework/org/objectweb/asmx/Label;Lorg/checkerframework/org/objectweb/asmx/Label;Ljava/lang/String;)V
    .locals 1
    .param p1, "start"    # Lorg/checkerframework/org/objectweb/asmx/Label;
    .param p2, "end"    # Lorg/checkerframework/org/objectweb/asmx/Label;
    .param p3, "handler"    # Lorg/checkerframework/org/objectweb/asmx/Label;
    .param p4, "type"    # Ljava/lang/String;

    .line 134
    if-eqz p4, :cond_0

    .line 135
    iget-object v0, p0, Lorg/checkerframework/org/objectweb/asmx/optimizer/MethodConstantsCollector;->cp:Lorg/checkerframework/org/objectweb/asmx/optimizer/ConstantPool;

    invoke-virtual {v0, p4}, Lorg/checkerframework/org/objectweb/asmx/optimizer/ConstantPool;->newClass(Ljava/lang/String;)Lorg/checkerframework/org/objectweb/asmx/optimizer/Constant;

    .line 137
    :cond_0
    iget-object v0, p0, Lorg/checkerframework/org/objectweb/asmx/optimizer/MethodConstantsCollector;->mv:Lorg/checkerframework/org/objectweb/asmx/MethodVisitor;

    invoke-interface {v0, p1, p2, p3, p4}, Lorg/checkerframework/org/objectweb/asmx/MethodVisitor;->visitTryCatchBlock(Lorg/checkerframework/org/objectweb/asmx/Label;Lorg/checkerframework/org/objectweb/asmx/Label;Lorg/checkerframework/org/objectweb/asmx/Label;Ljava/lang/String;)V

    .line 138
    return-void
.end method

.method public visitTypeInsn(ILjava/lang/String;)V
    .locals 1
    .param p1, "opcode"    # I
    .param p2, "desc"    # Ljava/lang/String;

    .line 93
    iget-object v0, p0, Lorg/checkerframework/org/objectweb/asmx/optimizer/MethodConstantsCollector;->cp:Lorg/checkerframework/org/objectweb/asmx/optimizer/ConstantPool;

    invoke-virtual {v0, p2}, Lorg/checkerframework/org/objectweb/asmx/optimizer/ConstantPool;->newClass(Ljava/lang/String;)Lorg/checkerframework/org/objectweb/asmx/optimizer/Constant;

    .line 94
    iget-object v0, p0, Lorg/checkerframework/org/objectweb/asmx/optimizer/MethodConstantsCollector;->mv:Lorg/checkerframework/org/objectweb/asmx/MethodVisitor;

    invoke-interface {v0, p1, p2}, Lorg/checkerframework/org/objectweb/asmx/MethodVisitor;->visitTypeInsn(ILjava/lang/String;)V

    .line 95
    return-void
.end method
