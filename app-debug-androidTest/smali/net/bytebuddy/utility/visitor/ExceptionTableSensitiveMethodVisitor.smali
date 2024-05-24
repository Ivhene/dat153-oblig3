.class public abstract Lnet/bytebuddy/utility/visitor/ExceptionTableSensitiveMethodVisitor;
.super Lnet/bytebuddy/jar/asm/MethodVisitor;
.source "ExceptionTableSensitiveMethodVisitor.java"


# instance fields
.field private trigger:Z


# direct methods
.method protected constructor <init>(ILnet/bytebuddy/jar/asm/MethodVisitor;)V
    .locals 1
    .param p1, "api"    # I
    .param p2, "methodVisitor"    # Lnet/bytebuddy/jar/asm/MethodVisitor;

    .line 39
    invoke-direct {p0, p1, p2}, Lnet/bytebuddy/jar/asm/MethodVisitor;-><init>(ILnet/bytebuddy/jar/asm/MethodVisitor;)V

    .line 40
    const/4 v0, 0x1

    iput-boolean v0, p0, Lnet/bytebuddy/utility/visitor/ExceptionTableSensitiveMethodVisitor;->trigger:Z

    .line 41
    return-void
.end method

.method private considerEndOfExceptionTable()V
    .locals 1

    .line 47
    iget-boolean v0, p0, Lnet/bytebuddy/utility/visitor/ExceptionTableSensitiveMethodVisitor;->trigger:Z

    if-eqz v0, :cond_0

    .line 48
    const/4 v0, 0x0

    iput-boolean v0, p0, Lnet/bytebuddy/utility/visitor/ExceptionTableSensitiveMethodVisitor;->trigger:Z

    .line 49
    invoke-virtual {p0}, Lnet/bytebuddy/utility/visitor/ExceptionTableSensitiveMethodVisitor;->onAfterExceptionTable()V

    .line 51
    :cond_0
    return-void
.end method


# virtual methods
.method protected abstract onAfterExceptionTable()V
.end method

.method protected onVisitFieldInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "opcode"    # I
    .param p2, "owner"    # Ljava/lang/String;
    .param p3, "name"    # Ljava/lang/String;
    .param p4, "descriptor"    # Ljava/lang/String;

    .line 158
    invoke-super {p0, p1, p2, p3, p4}, Lnet/bytebuddy/jar/asm/MethodVisitor;->visitFieldInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 159
    return-void
.end method

.method protected onVisitFrame(II[Ljava/lang/Object;I[Ljava/lang/Object;)V
    .locals 0
    .param p1, "type"    # I
    .param p2, "localVariableLength"    # I
    .param p3, "localVariable"    # [Ljava/lang/Object;
    .param p4, "stackSize"    # I
    .param p5, "stack"    # [Ljava/lang/Object;

    .line 76
    invoke-super/range {p0 .. p5}, Lnet/bytebuddy/jar/asm/MethodVisitor;->visitFrame(II[Ljava/lang/Object;I[Ljava/lang/Object;)V

    .line 77
    return-void
.end method

.method protected onVisitIincInsn(II)V
    .locals 0
    .param p1, "offset"    # I
    .param p2, "increment"    # I

    .line 264
    invoke-super {p0, p1, p2}, Lnet/bytebuddy/jar/asm/MethodVisitor;->visitIincInsn(II)V

    .line 265
    return-void
.end method

.method protected onVisitInsn(I)V
    .locals 0
    .param p1, "opcode"    # I

    .line 330
    invoke-super {p0, p1}, Lnet/bytebuddy/jar/asm/MethodVisitor;->visitInsn(I)V

    .line 331
    return-void
.end method

.method protected onVisitIntInsn(II)V
    .locals 0
    .param p1, "opcode"    # I
    .param p2, "operand"    # I

    .line 108
    invoke-super {p0, p1, p2}, Lnet/bytebuddy/jar/asm/MethodVisitor;->visitIntInsn(II)V

    .line 109
    return-void
.end method

.method protected varargs onVisitInvokeDynamicInsn(Ljava/lang/String;Ljava/lang/String;Lnet/bytebuddy/jar/asm/Handle;[Ljava/lang/Object;)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "descriptor"    # Ljava/lang/String;
    .param p3, "handle"    # Lnet/bytebuddy/jar/asm/Handle;
    .param p4, "argument"    # [Ljava/lang/Object;

    .line 217
    invoke-super {p0, p1, p2, p3, p4}, Lnet/bytebuddy/jar/asm/MethodVisitor;->visitInvokeDynamicInsn(Ljava/lang/String;Ljava/lang/String;Lnet/bytebuddy/jar/asm/Handle;[Ljava/lang/Object;)V

    .line 218
    return-void
.end method

.method protected onVisitJumpInsn(ILnet/bytebuddy/jar/asm/Label;)V
    .locals 0
    .param p1, "opcode"    # I
    .param p2, "label"    # Lnet/bytebuddy/jar/asm/Label;

    .line 233
    invoke-super {p0, p1, p2}, Lnet/bytebuddy/jar/asm/MethodVisitor;->visitJumpInsn(ILnet/bytebuddy/jar/asm/Label;)V

    .line 234
    return-void
.end method

.method protected onVisitLabel(Lnet/bytebuddy/jar/asm/Label;)V
    .locals 0
    .param p1, "label"    # Lnet/bytebuddy/jar/asm/Label;

    .line 92
    invoke-super {p0, p1}, Lnet/bytebuddy/jar/asm/MethodVisitor;->visitLabel(Lnet/bytebuddy/jar/asm/Label;)V

    .line 93
    return-void
.end method

.method protected onVisitLdcInsn(Ljava/lang/Object;)V
    .locals 0
    .param p1, "constant"    # Ljava/lang/Object;

    .line 248
    invoke-super {p0, p1}, Lnet/bytebuddy/jar/asm/MethodVisitor;->visitLdcInsn(Ljava/lang/Object;)V

    .line 249
    return-void
.end method

.method protected onVisitLookupSwitchInsn(Lnet/bytebuddy/jar/asm/Label;[I[Lnet/bytebuddy/jar/asm/Label;)V
    .locals 0
    .param p1, "defaultTarget"    # Lnet/bytebuddy/jar/asm/Label;
    .param p2, "key"    # [I
    .param p3, "label"    # [Lnet/bytebuddy/jar/asm/Label;

    .line 299
    invoke-super {p0, p1, p2, p3}, Lnet/bytebuddy/jar/asm/MethodVisitor;->visitLookupSwitchInsn(Lnet/bytebuddy/jar/asm/Label;[I[Lnet/bytebuddy/jar/asm/Label;)V

    .line 300
    return-void
.end method

.method protected onVisitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "opcode"    # I
    .param p2, "owner"    # Ljava/lang/String;
    .param p3, "name"    # Ljava/lang/String;
    .param p4, "descriptor"    # Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 180
    invoke-super {p0, p1, p2, p3, p4}, Lnet/bytebuddy/jar/asm/MethodVisitor;->visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 181
    return-void
.end method

.method protected onVisitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 0
    .param p1, "opcode"    # I
    .param p2, "owner"    # Ljava/lang/String;
    .param p3, "name"    # Ljava/lang/String;
    .param p4, "descriptor"    # Ljava/lang/String;
    .param p5, "isInterface"    # Z

    .line 199
    invoke-super/range {p0 .. p5}, Lnet/bytebuddy/jar/asm/MethodVisitor;->visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 200
    return-void
.end method

.method protected onVisitMultiANewArrayInsn(Ljava/lang/String;I)V
    .locals 0
    .param p1, "descriptor"    # Ljava/lang/String;
    .param p2, "dimensions"    # I

    .line 315
    invoke-super {p0, p1, p2}, Lnet/bytebuddy/jar/asm/MethodVisitor;->visitMultiANewArrayInsn(Ljava/lang/String;I)V

    .line 316
    return-void
.end method

.method protected varargs onVisitTableSwitchInsn(IILnet/bytebuddy/jar/asm/Label;[Lnet/bytebuddy/jar/asm/Label;)V
    .locals 0
    .param p1, "minimum"    # I
    .param p2, "maximum"    # I
    .param p3, "defaultTarget"    # Lnet/bytebuddy/jar/asm/Label;
    .param p4, "label"    # [Lnet/bytebuddy/jar/asm/Label;

    .line 282
    invoke-super {p0, p1, p2, p3, p4}, Lnet/bytebuddy/jar/asm/MethodVisitor;->visitTableSwitchInsn(IILnet/bytebuddy/jar/asm/Label;[Lnet/bytebuddy/jar/asm/Label;)V

    .line 283
    return-void
.end method

.method protected onVisitTypeInsn(ILjava/lang/String;)V
    .locals 0
    .param p1, "opcode"    # I
    .param p2, "type"    # Ljava/lang/String;

    .line 140
    invoke-super {p0, p1, p2}, Lnet/bytebuddy/jar/asm/MethodVisitor;->visitTypeInsn(ILjava/lang/String;)V

    .line 141
    return-void
.end method

.method protected onVisitVarInsn(II)V
    .locals 0
    .param p1, "opcode"    # I
    .param p2, "offset"    # I

    .line 124
    invoke-super {p0, p1, p2}, Lnet/bytebuddy/jar/asm/MethodVisitor;->visitVarInsn(II)V

    .line 125
    return-void
.end method

.method public final visitFieldInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "opcode"    # I
    .param p2, "owner"    # Ljava/lang/String;
    .param p3, "name"    # Ljava/lang/String;
    .param p4, "descriptor"    # Ljava/lang/String;

    .line 145
    invoke-direct {p0}, Lnet/bytebuddy/utility/visitor/ExceptionTableSensitiveMethodVisitor;->considerEndOfExceptionTable()V

    .line 146
    invoke-virtual {p0, p1, p2, p3, p4}, Lnet/bytebuddy/utility/visitor/ExceptionTableSensitiveMethodVisitor;->onVisitFieldInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 147
    return-void
.end method

.method public final visitFrame(II[Ljava/lang/Object;I[Ljava/lang/Object;)V
    .locals 0
    .param p1, "type"    # I
    .param p2, "localVariableLength"    # I
    .param p3, "localVariable"    # [Ljava/lang/Object;
    .param p4, "stackSize"    # I
    .param p5, "stack"    # [Ljava/lang/Object;

    .line 62
    invoke-direct {p0}, Lnet/bytebuddy/utility/visitor/ExceptionTableSensitiveMethodVisitor;->considerEndOfExceptionTable()V

    .line 63
    invoke-virtual/range {p0 .. p5}, Lnet/bytebuddy/utility/visitor/ExceptionTableSensitiveMethodVisitor;->onVisitFrame(II[Ljava/lang/Object;I[Ljava/lang/Object;)V

    .line 64
    return-void
.end method

.method public final visitIincInsn(II)V
    .locals 0
    .param p1, "offset"    # I
    .param p2, "increment"    # I

    .line 253
    invoke-direct {p0}, Lnet/bytebuddy/utility/visitor/ExceptionTableSensitiveMethodVisitor;->considerEndOfExceptionTable()V

    .line 254
    invoke-virtual {p0, p1, p2}, Lnet/bytebuddy/utility/visitor/ExceptionTableSensitiveMethodVisitor;->onVisitIincInsn(II)V

    .line 255
    return-void
.end method

.method public final visitInsn(I)V
    .locals 0
    .param p1, "opcode"    # I

    .line 320
    invoke-direct {p0}, Lnet/bytebuddy/utility/visitor/ExceptionTableSensitiveMethodVisitor;->considerEndOfExceptionTable()V

    .line 321
    invoke-virtual {p0, p1}, Lnet/bytebuddy/utility/visitor/ExceptionTableSensitiveMethodVisitor;->onVisitInsn(I)V

    .line 322
    return-void
.end method

.method public final visitIntInsn(II)V
    .locals 0
    .param p1, "opcode"    # I
    .param p2, "operand"    # I

    .line 97
    invoke-direct {p0}, Lnet/bytebuddy/utility/visitor/ExceptionTableSensitiveMethodVisitor;->considerEndOfExceptionTable()V

    .line 98
    invoke-virtual {p0, p1, p2}, Lnet/bytebuddy/utility/visitor/ExceptionTableSensitiveMethodVisitor;->onVisitIntInsn(II)V

    .line 99
    return-void
.end method

.method public final varargs visitInvokeDynamicInsn(Ljava/lang/String;Ljava/lang/String;Lnet/bytebuddy/jar/asm/Handle;[Ljava/lang/Object;)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "descriptor"    # Ljava/lang/String;
    .param p3, "handle"    # Lnet/bytebuddy/jar/asm/Handle;
    .param p4, "argument"    # [Ljava/lang/Object;

    .line 204
    invoke-direct {p0}, Lnet/bytebuddy/utility/visitor/ExceptionTableSensitiveMethodVisitor;->considerEndOfExceptionTable()V

    .line 205
    invoke-virtual {p0, p1, p2, p3, p4}, Lnet/bytebuddy/utility/visitor/ExceptionTableSensitiveMethodVisitor;->onVisitInvokeDynamicInsn(Ljava/lang/String;Ljava/lang/String;Lnet/bytebuddy/jar/asm/Handle;[Ljava/lang/Object;)V

    .line 206
    return-void
.end method

.method public final visitJumpInsn(ILnet/bytebuddy/jar/asm/Label;)V
    .locals 0
    .param p1, "opcode"    # I
    .param p2, "label"    # Lnet/bytebuddy/jar/asm/Label;

    .line 222
    invoke-direct {p0}, Lnet/bytebuddy/utility/visitor/ExceptionTableSensitiveMethodVisitor;->considerEndOfExceptionTable()V

    .line 223
    invoke-virtual {p0, p1, p2}, Lnet/bytebuddy/utility/visitor/ExceptionTableSensitiveMethodVisitor;->onVisitJumpInsn(ILnet/bytebuddy/jar/asm/Label;)V

    .line 224
    return-void
.end method

.method public final visitLabel(Lnet/bytebuddy/jar/asm/Label;)V
    .locals 0
    .param p1, "label"    # Lnet/bytebuddy/jar/asm/Label;

    .line 81
    invoke-direct {p0}, Lnet/bytebuddy/utility/visitor/ExceptionTableSensitiveMethodVisitor;->considerEndOfExceptionTable()V

    .line 82
    invoke-virtual {p0, p1}, Lnet/bytebuddy/utility/visitor/ExceptionTableSensitiveMethodVisitor;->onVisitLabel(Lnet/bytebuddy/jar/asm/Label;)V

    .line 83
    return-void
.end method

.method public final visitLdcInsn(Ljava/lang/Object;)V
    .locals 0
    .param p1, "constant"    # Ljava/lang/Object;

    .line 238
    invoke-direct {p0}, Lnet/bytebuddy/utility/visitor/ExceptionTableSensitiveMethodVisitor;->considerEndOfExceptionTable()V

    .line 239
    invoke-virtual {p0, p1}, Lnet/bytebuddy/utility/visitor/ExceptionTableSensitiveMethodVisitor;->onVisitLdcInsn(Ljava/lang/Object;)V

    .line 240
    return-void
.end method

.method public final visitLookupSwitchInsn(Lnet/bytebuddy/jar/asm/Label;[I[Lnet/bytebuddy/jar/asm/Label;)V
    .locals 0
    .param p1, "dflt"    # Lnet/bytebuddy/jar/asm/Label;
    .param p2, "key"    # [I
    .param p3, "label"    # [Lnet/bytebuddy/jar/asm/Label;

    .line 287
    invoke-direct {p0}, Lnet/bytebuddy/utility/visitor/ExceptionTableSensitiveMethodVisitor;->considerEndOfExceptionTable()V

    .line 288
    invoke-virtual {p0, p1, p2, p3}, Lnet/bytebuddy/utility/visitor/ExceptionTableSensitiveMethodVisitor;->onVisitLookupSwitchInsn(Lnet/bytebuddy/jar/asm/Label;[I[Lnet/bytebuddy/jar/asm/Label;)V

    .line 289
    return-void
.end method

.method public final visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "opcode"    # I
    .param p2, "owner"    # Ljava/lang/String;
    .param p3, "name"    # Ljava/lang/String;
    .param p4, "descriptor"    # Ljava/lang/String;

    .line 164
    invoke-direct {p0}, Lnet/bytebuddy/utility/visitor/ExceptionTableSensitiveMethodVisitor;->considerEndOfExceptionTable()V

    .line 165
    invoke-virtual {p0, p1, p2, p3, p4}, Lnet/bytebuddy/utility/visitor/ExceptionTableSensitiveMethodVisitor;->onVisitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 166
    return-void
.end method

.method public final visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 0
    .param p1, "opcode"    # I
    .param p2, "owner"    # Ljava/lang/String;
    .param p3, "name"    # Ljava/lang/String;
    .param p4, "descriptor"    # Ljava/lang/String;
    .param p5, "isInterface"    # Z

    .line 185
    invoke-direct {p0}, Lnet/bytebuddy/utility/visitor/ExceptionTableSensitiveMethodVisitor;->considerEndOfExceptionTable()V

    .line 186
    invoke-virtual/range {p0 .. p5}, Lnet/bytebuddy/utility/visitor/ExceptionTableSensitiveMethodVisitor;->onVisitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 187
    return-void
.end method

.method public final visitMultiANewArrayInsn(Ljava/lang/String;I)V
    .locals 0
    .param p1, "descriptor"    # Ljava/lang/String;
    .param p2, "dimensions"    # I

    .line 304
    invoke-direct {p0}, Lnet/bytebuddy/utility/visitor/ExceptionTableSensitiveMethodVisitor;->considerEndOfExceptionTable()V

    .line 305
    invoke-virtual {p0, p1, p2}, Lnet/bytebuddy/utility/visitor/ExceptionTableSensitiveMethodVisitor;->onVisitMultiANewArrayInsn(Ljava/lang/String;I)V

    .line 306
    return-void
.end method

.method public final varargs visitTableSwitchInsn(IILnet/bytebuddy/jar/asm/Label;[Lnet/bytebuddy/jar/asm/Label;)V
    .locals 0
    .param p1, "minimum"    # I
    .param p2, "maximum"    # I
    .param p3, "defaultTarget"    # Lnet/bytebuddy/jar/asm/Label;
    .param p4, "label"    # [Lnet/bytebuddy/jar/asm/Label;

    .line 269
    invoke-direct {p0}, Lnet/bytebuddy/utility/visitor/ExceptionTableSensitiveMethodVisitor;->considerEndOfExceptionTable()V

    .line 270
    invoke-virtual {p0, p1, p2, p3, p4}, Lnet/bytebuddy/utility/visitor/ExceptionTableSensitiveMethodVisitor;->onVisitTableSwitchInsn(IILnet/bytebuddy/jar/asm/Label;[Lnet/bytebuddy/jar/asm/Label;)V

    .line 271
    return-void
.end method

.method public final visitTypeInsn(ILjava/lang/String;)V
    .locals 0
    .param p1, "opcode"    # I
    .param p2, "type"    # Ljava/lang/String;

    .line 129
    invoke-direct {p0}, Lnet/bytebuddy/utility/visitor/ExceptionTableSensitiveMethodVisitor;->considerEndOfExceptionTable()V

    .line 130
    invoke-virtual {p0, p1, p2}, Lnet/bytebuddy/utility/visitor/ExceptionTableSensitiveMethodVisitor;->onVisitTypeInsn(ILjava/lang/String;)V

    .line 131
    return-void
.end method

.method public final visitVarInsn(II)V
    .locals 0
    .param p1, "opcode"    # I
    .param p2, "offset"    # I

    .line 113
    invoke-direct {p0}, Lnet/bytebuddy/utility/visitor/ExceptionTableSensitiveMethodVisitor;->considerEndOfExceptionTable()V

    .line 114
    invoke-virtual {p0, p1, p2}, Lnet/bytebuddy/utility/visitor/ExceptionTableSensitiveMethodVisitor;->onVisitVarInsn(II)V

    .line 115
    return-void
.end method
