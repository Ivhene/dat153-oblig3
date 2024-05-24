.class public Lorg/checkerframework/org/objectweb/asmx/MethodAdapter;
.super Ljava/lang/Object;
.source "MethodAdapter.java"

# interfaces
.implements Lorg/checkerframework/org/objectweb/asmx/MethodVisitor;


# instance fields
.field protected mv:Lorg/checkerframework/org/objectweb/asmx/MethodVisitor;


# direct methods
.method public constructor <init>(Lorg/checkerframework/org/objectweb/asmx/MethodVisitor;)V
    .locals 0
    .param p1, "mv"    # Lorg/checkerframework/org/objectweb/asmx/MethodVisitor;

    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    iput-object p1, p0, Lorg/checkerframework/org/objectweb/asmx/MethodAdapter;->mv:Lorg/checkerframework/org/objectweb/asmx/MethodVisitor;

    .line 54
    return-void
.end method


# virtual methods
.method public visitAnnotation(Ljava/lang/String;Z)Lorg/checkerframework/org/objectweb/asmx/AnnotationVisitor;
    .locals 1
    .param p1, "desc"    # Ljava/lang/String;
    .param p2, "visible"    # Z

    .line 64
    iget-object v0, p0, Lorg/checkerframework/org/objectweb/asmx/MethodAdapter;->mv:Lorg/checkerframework/org/objectweb/asmx/MethodVisitor;

    invoke-interface {v0, p1, p2}, Lorg/checkerframework/org/objectweb/asmx/MethodVisitor;->visitAnnotation(Ljava/lang/String;Z)Lorg/checkerframework/org/objectweb/asmx/AnnotationVisitor;

    move-result-object v0

    return-object v0
.end method

.method public visitAnnotationDefault()Lorg/checkerframework/org/objectweb/asmx/AnnotationVisitor;
    .locals 1

    .line 57
    iget-object v0, p0, Lorg/checkerframework/org/objectweb/asmx/MethodAdapter;->mv:Lorg/checkerframework/org/objectweb/asmx/MethodVisitor;

    invoke-interface {v0}, Lorg/checkerframework/org/objectweb/asmx/MethodVisitor;->visitAnnotationDefault()Lorg/checkerframework/org/objectweb/asmx/AnnotationVisitor;

    move-result-object v0

    return-object v0
.end method

.method public visitAttribute(Lorg/checkerframework/org/objectweb/asmx/Attribute;)V
    .locals 1
    .param p1, "attr"    # Lorg/checkerframework/org/objectweb/asmx/Attribute;

    .line 85
    iget-object v0, p0, Lorg/checkerframework/org/objectweb/asmx/MethodAdapter;->mv:Lorg/checkerframework/org/objectweb/asmx/MethodVisitor;

    invoke-interface {v0, p1}, Lorg/checkerframework/org/objectweb/asmx/MethodVisitor;->visitAttribute(Lorg/checkerframework/org/objectweb/asmx/Attribute;)V

    .line 86
    return-void
.end method

.method public visitCode()V
    .locals 1

    .line 89
    iget-object v0, p0, Lorg/checkerframework/org/objectweb/asmx/MethodAdapter;->mv:Lorg/checkerframework/org/objectweb/asmx/MethodVisitor;

    invoke-interface {v0}, Lorg/checkerframework/org/objectweb/asmx/MethodVisitor;->visitCode()V

    .line 90
    return-void
.end method

.method public visitEnd()V
    .locals 1

    .line 212
    iget-object v0, p0, Lorg/checkerframework/org/objectweb/asmx/MethodAdapter;->mv:Lorg/checkerframework/org/objectweb/asmx/MethodVisitor;

    invoke-interface {v0}, Lorg/checkerframework/org/objectweb/asmx/MethodVisitor;->visitEnd()V

    .line 213
    return-void
.end method

.method public visitFieldInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "opcode"    # I
    .param p2, "owner"    # Ljava/lang/String;
    .param p3, "name"    # Ljava/lang/String;
    .param p4, "desc"    # Ljava/lang/String;

    .line 114
    iget-object v0, p0, Lorg/checkerframework/org/objectweb/asmx/MethodAdapter;->mv:Lorg/checkerframework/org/objectweb/asmx/MethodVisitor;

    invoke-interface {v0, p1, p2, p3, p4}, Lorg/checkerframework/org/objectweb/asmx/MethodVisitor;->visitFieldInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 115
    return-void
.end method

.method public visitIincInsn(II)V
    .locals 1
    .param p1, "var"    # I
    .param p2, "increment"    # I

    .line 149
    iget-object v0, p0, Lorg/checkerframework/org/objectweb/asmx/MethodAdapter;->mv:Lorg/checkerframework/org/objectweb/asmx/MethodVisitor;

    invoke-interface {v0, p1, p2}, Lorg/checkerframework/org/objectweb/asmx/MethodVisitor;->visitIincInsn(II)V

    .line 150
    return-void
.end method

.method public visitInsn(I)V
    .locals 1
    .param p1, "opcode"    # I

    .line 93
    iget-object v0, p0, Lorg/checkerframework/org/objectweb/asmx/MethodAdapter;->mv:Lorg/checkerframework/org/objectweb/asmx/MethodVisitor;

    invoke-interface {v0, p1}, Lorg/checkerframework/org/objectweb/asmx/MethodVisitor;->visitInsn(I)V

    .line 94
    return-void
.end method

.method public visitInsnAnnotation(ILorg/checkerframework/org/objectweb/asmx/TypePath;Ljava/lang/String;Z)Lorg/checkerframework/org/objectweb/asmx/AnnotationVisitor;
    .locals 1
    .param p1, "typeRef"    # I
    .param p2, "typePath"    # Lorg/checkerframework/org/objectweb/asmx/TypePath;
    .param p3, "desc"    # Ljava/lang/String;
    .param p4, "visible"    # Z

    .line 180
    iget-object v0, p0, Lorg/checkerframework/org/objectweb/asmx/MethodAdapter;->mv:Lorg/checkerframework/org/objectweb/asmx/MethodVisitor;

    invoke-interface {v0, p1, p2, p3, p4}, Lorg/checkerframework/org/objectweb/asmx/MethodVisitor;->visitInsnAnnotation(ILorg/checkerframework/org/objectweb/asmx/TypePath;Ljava/lang/String;Z)Lorg/checkerframework/org/objectweb/asmx/AnnotationVisitor;

    move-result-object v0

    return-object v0
.end method

.method public visitIntInsn(II)V
    .locals 1
    .param p1, "opcode"    # I
    .param p2, "operand"    # I

    .line 97
    iget-object v0, p0, Lorg/checkerframework/org/objectweb/asmx/MethodAdapter;->mv:Lorg/checkerframework/org/objectweb/asmx/MethodVisitor;

    invoke-interface {v0, p1, p2}, Lorg/checkerframework/org/objectweb/asmx/MethodVisitor;->visitIntInsn(II)V

    .line 98
    return-void
.end method

.method public varargs visitInvokeDynamicInsn(Ljava/lang/String;Ljava/lang/String;Lorg/checkerframework/org/objectweb/asmx/Handle;[Ljava/lang/Object;)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "desc"    # Ljava/lang/String;
    .param p3, "bsm"    # Lorg/checkerframework/org/objectweb/asmx/Handle;
    .param p4, "bsmArgs"    # [Ljava/lang/Object;

    .line 133
    iget-object v0, p0, Lorg/checkerframework/org/objectweb/asmx/MethodAdapter;->mv:Lorg/checkerframework/org/objectweb/asmx/MethodVisitor;

    invoke-interface {v0, p1, p2, p3, p4}, Lorg/checkerframework/org/objectweb/asmx/MethodVisitor;->visitInvokeDynamicInsn(Ljava/lang/String;Ljava/lang/String;Lorg/checkerframework/org/objectweb/asmx/Handle;[Ljava/lang/Object;)V

    .line 134
    return-void
.end method

.method public visitJumpInsn(ILorg/checkerframework/org/objectweb/asmx/Label;)V
    .locals 1
    .param p1, "opcode"    # I
    .param p2, "label"    # Lorg/checkerframework/org/objectweb/asmx/Label;

    .line 137
    iget-object v0, p0, Lorg/checkerframework/org/objectweb/asmx/MethodAdapter;->mv:Lorg/checkerframework/org/objectweb/asmx/MethodVisitor;

    invoke-interface {v0, p1, p2}, Lorg/checkerframework/org/objectweb/asmx/MethodVisitor;->visitJumpInsn(ILorg/checkerframework/org/objectweb/asmx/Label;)V

    .line 138
    return-void
.end method

.method public visitLabel(Lorg/checkerframework/org/objectweb/asmx/Label;)V
    .locals 1
    .param p1, "label"    # Lorg/checkerframework/org/objectweb/asmx/Label;

    .line 141
    iget-object v0, p0, Lorg/checkerframework/org/objectweb/asmx/MethodAdapter;->mv:Lorg/checkerframework/org/objectweb/asmx/MethodVisitor;

    invoke-interface {v0, p1}, Lorg/checkerframework/org/objectweb/asmx/MethodVisitor;->visitLabel(Lorg/checkerframework/org/objectweb/asmx/Label;)V

    .line 142
    return-void
.end method

.method public visitLdcInsn(Ljava/lang/Object;)V
    .locals 1
    .param p1, "cst"    # Ljava/lang/Object;

    .line 145
    iget-object v0, p0, Lorg/checkerframework/org/objectweb/asmx/MethodAdapter;->mv:Lorg/checkerframework/org/objectweb/asmx/MethodVisitor;

    invoke-interface {v0, p1}, Lorg/checkerframework/org/objectweb/asmx/MethodVisitor;->visitLdcInsn(Ljava/lang/Object;)V

    .line 146
    return-void
.end method

.method public visitLineNumber(ILorg/checkerframework/org/objectweb/asmx/Label;)V
    .locals 1
    .param p1, "line"    # I
    .param p2, "start"    # Lorg/checkerframework/org/objectweb/asmx/Label;

    .line 204
    iget-object v0, p0, Lorg/checkerframework/org/objectweb/asmx/MethodAdapter;->mv:Lorg/checkerframework/org/objectweb/asmx/MethodVisitor;

    invoke-interface {v0, p1, p2}, Lorg/checkerframework/org/objectweb/asmx/MethodVisitor;->visitLineNumber(ILorg/checkerframework/org/objectweb/asmx/Label;)V

    .line 205
    return-void
.end method

.method public visitLocalVariable(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/checkerframework/org/objectweb/asmx/Label;Lorg/checkerframework/org/objectweb/asmx/Label;I)V
    .locals 7
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "desc"    # Ljava/lang/String;
    .param p3, "signature"    # Ljava/lang/String;
    .param p4, "start"    # Lorg/checkerframework/org/objectweb/asmx/Label;
    .param p5, "end"    # Lorg/checkerframework/org/objectweb/asmx/Label;
    .param p6, "index"    # I

    .line 200
    iget-object v0, p0, Lorg/checkerframework/org/objectweb/asmx/MethodAdapter;->mv:Lorg/checkerframework/org/objectweb/asmx/MethodVisitor;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move v6, p6

    invoke-interface/range {v0 .. v6}, Lorg/checkerframework/org/objectweb/asmx/MethodVisitor;->visitLocalVariable(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/checkerframework/org/objectweb/asmx/Label;Lorg/checkerframework/org/objectweb/asmx/Label;I)V

    .line 201
    return-void
.end method

.method public visitLookupSwitchInsn(Lorg/checkerframework/org/objectweb/asmx/Label;[I[Lorg/checkerframework/org/objectweb/asmx/Label;)V
    .locals 1
    .param p1, "dflt"    # Lorg/checkerframework/org/objectweb/asmx/Label;
    .param p2, "keys"    # [I
    .param p3, "labels"    # [Lorg/checkerframework/org/objectweb/asmx/Label;

    .line 166
    iget-object v0, p0, Lorg/checkerframework/org/objectweb/asmx/MethodAdapter;->mv:Lorg/checkerframework/org/objectweb/asmx/MethodVisitor;

    invoke-interface {v0, p1, p2, p3}, Lorg/checkerframework/org/objectweb/asmx/MethodVisitor;->visitLookupSwitchInsn(Lorg/checkerframework/org/objectweb/asmx/Label;[I[Lorg/checkerframework/org/objectweb/asmx/Label;)V

    .line 167
    return-void
.end method

.method public visitMaxs(II)V
    .locals 1
    .param p1, "maxStack"    # I
    .param p2, "maxLocals"    # I

    .line 208
    iget-object v0, p0, Lorg/checkerframework/org/objectweb/asmx/MethodAdapter;->mv:Lorg/checkerframework/org/objectweb/asmx/MethodVisitor;

    invoke-interface {v0, p1, p2}, Lorg/checkerframework/org/objectweb/asmx/MethodVisitor;->visitMaxs(II)V

    .line 209
    return-void
.end method

.method public visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "opcode"    # I
    .param p2, "owner"    # Ljava/lang/String;
    .param p3, "name"    # Ljava/lang/String;
    .param p4, "desc"    # Ljava/lang/String;

    .line 123
    iget-object v0, p0, Lorg/checkerframework/org/objectweb/asmx/MethodAdapter;->mv:Lorg/checkerframework/org/objectweb/asmx/MethodVisitor;

    invoke-interface {v0, p1, p2, p3, p4}, Lorg/checkerframework/org/objectweb/asmx/MethodVisitor;->visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 124
    return-void
.end method

.method public visitMultiANewArrayInsn(Ljava/lang/String;I)V
    .locals 1
    .param p1, "desc"    # Ljava/lang/String;
    .param p2, "dims"    # I

    .line 170
    iget-object v0, p0, Lorg/checkerframework/org/objectweb/asmx/MethodAdapter;->mv:Lorg/checkerframework/org/objectweb/asmx/MethodVisitor;

    invoke-interface {v0, p1, p2}, Lorg/checkerframework/org/objectweb/asmx/MethodVisitor;->visitMultiANewArrayInsn(Ljava/lang/String;I)V

    .line 171
    return-void
.end method

.method public visitParameterAnnotation(ILjava/lang/String;Z)Lorg/checkerframework/org/objectweb/asmx/AnnotationVisitor;
    .locals 1
    .param p1, "parameter"    # I
    .param p2, "desc"    # Ljava/lang/String;
    .param p3, "visible"    # Z

    .line 81
    iget-object v0, p0, Lorg/checkerframework/org/objectweb/asmx/MethodAdapter;->mv:Lorg/checkerframework/org/objectweb/asmx/MethodVisitor;

    invoke-interface {v0, p1, p2, p3}, Lorg/checkerframework/org/objectweb/asmx/MethodVisitor;->visitParameterAnnotation(ILjava/lang/String;Z)Lorg/checkerframework/org/objectweb/asmx/AnnotationVisitor;

    move-result-object v0

    return-object v0
.end method

.method public visitTableSwitchInsn(IILorg/checkerframework/org/objectweb/asmx/Label;[Lorg/checkerframework/org/objectweb/asmx/Label;)V
    .locals 1
    .param p1, "min"    # I
    .param p2, "max"    # I
    .param p3, "dflt"    # Lorg/checkerframework/org/objectweb/asmx/Label;
    .param p4, "labels"    # [Lorg/checkerframework/org/objectweb/asmx/Label;

    .line 158
    iget-object v0, p0, Lorg/checkerframework/org/objectweb/asmx/MethodAdapter;->mv:Lorg/checkerframework/org/objectweb/asmx/MethodVisitor;

    invoke-interface {v0, p1, p2, p3, p4}, Lorg/checkerframework/org/objectweb/asmx/MethodVisitor;->visitTableSwitchInsn(IILorg/checkerframework/org/objectweb/asmx/Label;[Lorg/checkerframework/org/objectweb/asmx/Label;)V

    .line 159
    return-void
.end method

.method public visitTryCatchBlock(Lorg/checkerframework/org/objectweb/asmx/Label;Lorg/checkerframework/org/objectweb/asmx/Label;Lorg/checkerframework/org/objectweb/asmx/Label;Ljava/lang/String;)V
    .locals 1
    .param p1, "start"    # Lorg/checkerframework/org/objectweb/asmx/Label;
    .param p2, "end"    # Lorg/checkerframework/org/objectweb/asmx/Label;
    .param p3, "handler"    # Lorg/checkerframework/org/objectweb/asmx/Label;
    .param p4, "type"    # Ljava/lang/String;

    .line 189
    iget-object v0, p0, Lorg/checkerframework/org/objectweb/asmx/MethodAdapter;->mv:Lorg/checkerframework/org/objectweb/asmx/MethodVisitor;

    invoke-interface {v0, p1, p2, p3, p4}, Lorg/checkerframework/org/objectweb/asmx/MethodVisitor;->visitTryCatchBlock(Lorg/checkerframework/org/objectweb/asmx/Label;Lorg/checkerframework/org/objectweb/asmx/Label;Lorg/checkerframework/org/objectweb/asmx/Label;Ljava/lang/String;)V

    .line 190
    return-void
.end method

.method public visitTypeAnnotation(Ljava/lang/String;ZZ)Lorg/checkerframework/org/objectweb/asmx/TypeAnnotationVisitor;
    .locals 1
    .param p1, "desc"    # Ljava/lang/String;
    .param p2, "visible"    # Z
    .param p3, "inCode"    # Z

    .line 72
    iget-object v0, p0, Lorg/checkerframework/org/objectweb/asmx/MethodAdapter;->mv:Lorg/checkerframework/org/objectweb/asmx/MethodVisitor;

    invoke-interface {v0, p1, p2, p3}, Lorg/checkerframework/org/objectweb/asmx/MethodVisitor;->visitTypeAnnotation(Ljava/lang/String;ZZ)Lorg/checkerframework/org/objectweb/asmx/TypeAnnotationVisitor;

    move-result-object v0

    return-object v0
.end method

.method public visitTypeInsn(ILjava/lang/String;)V
    .locals 1
    .param p1, "opcode"    # I
    .param p2, "desc"    # Ljava/lang/String;

    .line 105
    iget-object v0, p0, Lorg/checkerframework/org/objectweb/asmx/MethodAdapter;->mv:Lorg/checkerframework/org/objectweb/asmx/MethodVisitor;

    invoke-interface {v0, p1, p2}, Lorg/checkerframework/org/objectweb/asmx/MethodVisitor;->visitTypeInsn(ILjava/lang/String;)V

    .line 106
    return-void
.end method

.method public visitVarInsn(II)V
    .locals 1
    .param p1, "opcode"    # I
    .param p2, "var"    # I

    .line 101
    iget-object v0, p0, Lorg/checkerframework/org/objectweb/asmx/MethodAdapter;->mv:Lorg/checkerframework/org/objectweb/asmx/MethodVisitor;

    invoke-interface {v0, p1, p2}, Lorg/checkerframework/org/objectweb/asmx/MethodVisitor;->visitVarInsn(II)V

    .line 102
    return-void
.end method
