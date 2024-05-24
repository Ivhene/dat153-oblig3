.class public Lorg/checkerframework/org/objectweb/asmx/util/ASMifierMethodVisitor;
.super Lorg/checkerframework/org/objectweb/asmx/util/ASMifierAbstractVisitor;
.source "ASMifierMethodVisitor.java"

# interfaces
.implements Lorg/checkerframework/org/objectweb/asmx/MethodVisitor;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 55
    const-string v0, "mv"

    invoke-direct {p0, v0}, Lorg/checkerframework/org/objectweb/asmx/util/ASMifierAbstractVisitor;-><init>(Ljava/lang/String;)V

    .line 56
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/checkerframework/org/objectweb/asmx/util/ASMifierMethodVisitor;->labelNames:Ljava/util/HashMap;

    .line 57
    return-void
.end method

.method private appendLabel(Lorg/checkerframework/org/objectweb/asmx/Label;)V
    .locals 2
    .param p1, "l"    # Lorg/checkerframework/org/objectweb/asmx/Label;

    .line 380
    iget-object v0, p0, Lorg/checkerframework/org/objectweb/asmx/util/ASMifierMethodVisitor;->buf:Ljava/lang/StringBuffer;

    iget-object v1, p0, Lorg/checkerframework/org/objectweb/asmx/util/ASMifierMethodVisitor;->labelNames:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 381
    return-void
.end method

.method private declareLabel(Lorg/checkerframework/org/objectweb/asmx/Label;)V
    .locals 3
    .param p1, "l"    # Lorg/checkerframework/org/objectweb/asmx/Label;

    .line 364
    iget-object v0, p0, Lorg/checkerframework/org/objectweb/asmx/util/ASMifierMethodVisitor;->labelNames:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 365
    .local v0, "name":Ljava/lang/String;
    if-nez v0, :cond_0

    .line 366
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "l"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lorg/checkerframework/org/objectweb/asmx/util/ASMifierMethodVisitor;->labelNames:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 367
    iget-object v1, p0, Lorg/checkerframework/org/objectweb/asmx/util/ASMifierMethodVisitor;->labelNames:Ljava/util/HashMap;

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 368
    iget-object v1, p0, Lorg/checkerframework/org/objectweb/asmx/util/ASMifierMethodVisitor;->buf:Ljava/lang/StringBuffer;

    const-string v2, "Label "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, " = new Label();\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 370
    :cond_0
    return-void
.end method


# virtual methods
.method public visitAnnotationDefault()Lorg/checkerframework/org/objectweb/asmx/AnnotationVisitor;
    .locals 3

    .line 61
    iget-object v0, p0, Lorg/checkerframework/org/objectweb/asmx/util/ASMifierMethodVisitor;->buf:Ljava/lang/StringBuffer;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->setLength(I)V

    .line 62
    iget-object v0, p0, Lorg/checkerframework/org/objectweb/asmx/util/ASMifierMethodVisitor;->buf:Ljava/lang/StringBuffer;

    const-string v2, "{\n"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v2, "av0 = mv.visitAnnotationDefault();\n"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 63
    iget-object v0, p0, Lorg/checkerframework/org/objectweb/asmx/util/ASMifierMethodVisitor;->text:Ljava/util/List;

    iget-object v2, p0, Lorg/checkerframework/org/objectweb/asmx/util/ASMifierMethodVisitor;->buf:Ljava/lang/StringBuffer;

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 64
    new-instance v0, Lorg/checkerframework/org/objectweb/asmx/util/ASMifierAnnotationVisitor;

    invoke-direct {v0, v1}, Lorg/checkerframework/org/objectweb/asmx/util/ASMifierAnnotationVisitor;-><init>(I)V

    .line 65
    .local v0, "av":Lorg/checkerframework/org/objectweb/asmx/util/ASMifierAnnotationVisitor;
    iget-object v1, p0, Lorg/checkerframework/org/objectweb/asmx/util/ASMifierMethodVisitor;->text:Ljava/util/List;

    invoke-virtual {v0}, Lorg/checkerframework/org/objectweb/asmx/util/ASMifierAnnotationVisitor;->getText()Ljava/util/List;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 66
    iget-object v1, p0, Lorg/checkerframework/org/objectweb/asmx/util/ASMifierMethodVisitor;->text:Ljava/util/List;

    const-string v2, "}\n"

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 67
    return-object v0
.end method

.method public visitCode()V
    .locals 2

    .line 92
    iget-object v0, p0, Lorg/checkerframework/org/objectweb/asmx/util/ASMifierMethodVisitor;->text:Ljava/util/List;

    const-string v1, "mv.visitCode();\n"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 93
    return-void
.end method

.method public visitFieldInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "opcode"    # I
    .param p2, "owner"    # Ljava/lang/String;
    .param p3, "name"    # Ljava/lang/String;
    .param p4, "desc"    # Ljava/lang/String;

    .line 142
    iget-object v0, p0, Lorg/checkerframework/org/objectweb/asmx/util/ASMifierMethodVisitor;->buf:Ljava/lang/StringBuffer;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->setLength(I)V

    .line 143
    iget-object v0, p0, Lorg/checkerframework/org/objectweb/asmx/util/ASMifierMethodVisitor;->buf:Ljava/lang/StringBuffer;

    const-string v1, "mv.visitFieldInsn("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    sget-object v1, Lorg/checkerframework/org/objectweb/asmx/util/ASMifierMethodVisitor;->OPCODES:[Ljava/lang/String;

    aget-object v1, v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 144
    invoke-virtual {p0, p2}, Lorg/checkerframework/org/objectweb/asmx/util/ASMifierMethodVisitor;->appendConstant(Ljava/lang/Object;)V

    .line 145
    iget-object v0, p0, Lorg/checkerframework/org/objectweb/asmx/util/ASMifierMethodVisitor;->buf:Ljava/lang/StringBuffer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 146
    invoke-virtual {p0, p3}, Lorg/checkerframework/org/objectweb/asmx/util/ASMifierMethodVisitor;->appendConstant(Ljava/lang/Object;)V

    .line 147
    iget-object v0, p0, Lorg/checkerframework/org/objectweb/asmx/util/ASMifierMethodVisitor;->buf:Ljava/lang/StringBuffer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 148
    invoke-virtual {p0, p4}, Lorg/checkerframework/org/objectweb/asmx/util/ASMifierMethodVisitor;->appendConstant(Ljava/lang/Object;)V

    .line 149
    iget-object v0, p0, Lorg/checkerframework/org/objectweb/asmx/util/ASMifierMethodVisitor;->buf:Ljava/lang/StringBuffer;

    const-string v1, ");\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 150
    iget-object v0, p0, Lorg/checkerframework/org/objectweb/asmx/util/ASMifierMethodVisitor;->text:Ljava/util/List;

    iget-object v1, p0, Lorg/checkerframework/org/objectweb/asmx/util/ASMifierMethodVisitor;->buf:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 151
    return-void
.end method

.method public visitIincInsn(II)V
    .locals 2
    .param p1, "var"    # I
    .param p2, "increment"    # I

    .line 216
    iget-object v0, p0, Lorg/checkerframework/org/objectweb/asmx/util/ASMifierMethodVisitor;->buf:Ljava/lang/StringBuffer;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->setLength(I)V

    .line 217
    iget-object v0, p0, Lorg/checkerframework/org/objectweb/asmx/util/ASMifierMethodVisitor;->buf:Ljava/lang/StringBuffer;

    const-string v1, "mv.visitIincInsn("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    .line 218
    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v0

    .line 219
    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    .line 220
    invoke-virtual {v0, p2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v0

    .line 221
    const-string v1, ");\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 222
    iget-object v0, p0, Lorg/checkerframework/org/objectweb/asmx/util/ASMifierMethodVisitor;->text:Ljava/util/List;

    iget-object v1, p0, Lorg/checkerframework/org/objectweb/asmx/util/ASMifierMethodVisitor;->buf:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 223
    return-void
.end method

.method public visitInsn(I)V
    .locals 2
    .param p1, "opcode"    # I

    .line 97
    iget-object v0, p0, Lorg/checkerframework/org/objectweb/asmx/util/ASMifierMethodVisitor;->buf:Ljava/lang/StringBuffer;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->setLength(I)V

    .line 98
    iget-object v0, p0, Lorg/checkerframework/org/objectweb/asmx/util/ASMifierMethodVisitor;->buf:Ljava/lang/StringBuffer;

    const-string v1, "mv.visitInsn("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    sget-object v1, Lorg/checkerframework/org/objectweb/asmx/util/ASMifierMethodVisitor;->OPCODES:[Ljava/lang/String;

    aget-object v1, v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, ");\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 99
    iget-object v0, p0, Lorg/checkerframework/org/objectweb/asmx/util/ASMifierMethodVisitor;->text:Ljava/util/List;

    iget-object v1, p0, Lorg/checkerframework/org/objectweb/asmx/util/ASMifierMethodVisitor;->buf:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 100
    return-void
.end method

.method public visitInsnAnnotation(ILorg/checkerframework/org/objectweb/asmx/TypePath;Ljava/lang/String;Z)Lorg/checkerframework/org/objectweb/asmx/AnnotationVisitor;
    .locals 1
    .param p1, "typeRef"    # I
    .param p2, "typePath"    # Lorg/checkerframework/org/objectweb/asmx/TypePath;
    .param p3, "desc"    # Ljava/lang/String;
    .param p4, "visible"    # Z

    .line 182
    const/4 v0, 0x0

    return-object v0
.end method

.method public visitIntInsn(II)V
    .locals 2
    .param p1, "opcode"    # I
    .param p2, "operand"    # I

    .line 104
    iget-object v0, p0, Lorg/checkerframework/org/objectweb/asmx/util/ASMifierMethodVisitor;->buf:Ljava/lang/StringBuffer;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->setLength(I)V

    .line 105
    iget-object v0, p0, Lorg/checkerframework/org/objectweb/asmx/util/ASMifierMethodVisitor;->buf:Ljava/lang/StringBuffer;

    const-string v1, "mv.visitIntInsn("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    sget-object v1, Lorg/checkerframework/org/objectweb/asmx/util/ASMifierMethodVisitor;->OPCODES:[Ljava/lang/String;

    aget-object v1, v1, p1

    .line 106
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    .line 107
    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const/16 v1, 0xbc

    if-ne p1, v1, :cond_0

    sget-object v1, Lorg/checkerframework/org/objectweb/asmx/util/ASMifierMethodVisitor;->TYPES:[Ljava/lang/String;

    aget-object v1, v1, p2

    goto :goto_0

    .line 110
    :cond_0
    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    .line 108
    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    .line 111
    const-string v1, ");\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 112
    iget-object v0, p0, Lorg/checkerframework/org/objectweb/asmx/util/ASMifierMethodVisitor;->text:Ljava/util/List;

    iget-object v1, p0, Lorg/checkerframework/org/objectweb/asmx/util/ASMifierMethodVisitor;->buf:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 113
    return-void
.end method

.method public varargs visitInvokeDynamicInsn(Ljava/lang/String;Ljava/lang/String;Lorg/checkerframework/org/objectweb/asmx/Handle;[Ljava/lang/Object;)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "desc"    # Ljava/lang/String;
    .param p3, "bsm"    # Lorg/checkerframework/org/objectweb/asmx/Handle;
    .param p4, "bsmArgs"    # [Ljava/lang/Object;

    .line 176
    return-void
.end method

.method public visitJumpInsn(ILorg/checkerframework/org/objectweb/asmx/Label;)V
    .locals 2
    .param p1, "opcode"    # I
    .param p2, "label"    # Lorg/checkerframework/org/objectweb/asmx/Label;

    .line 187
    iget-object v0, p0, Lorg/checkerframework/org/objectweb/asmx/util/ASMifierMethodVisitor;->buf:Ljava/lang/StringBuffer;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->setLength(I)V

    .line 188
    invoke-direct {p0, p2}, Lorg/checkerframework/org/objectweb/asmx/util/ASMifierMethodVisitor;->declareLabel(Lorg/checkerframework/org/objectweb/asmx/Label;)V

    .line 189
    iget-object v0, p0, Lorg/checkerframework/org/objectweb/asmx/util/ASMifierMethodVisitor;->buf:Ljava/lang/StringBuffer;

    const-string v1, "mv.visitJumpInsn("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    sget-object v1, Lorg/checkerframework/org/objectweb/asmx/util/ASMifierMethodVisitor;->OPCODES:[Ljava/lang/String;

    aget-object v1, v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 190
    invoke-direct {p0, p2}, Lorg/checkerframework/org/objectweb/asmx/util/ASMifierMethodVisitor;->appendLabel(Lorg/checkerframework/org/objectweb/asmx/Label;)V

    .line 191
    iget-object v0, p0, Lorg/checkerframework/org/objectweb/asmx/util/ASMifierMethodVisitor;->buf:Ljava/lang/StringBuffer;

    const-string v1, ");\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 192
    iget-object v0, p0, Lorg/checkerframework/org/objectweb/asmx/util/ASMifierMethodVisitor;->text:Ljava/util/List;

    iget-object v1, p0, Lorg/checkerframework/org/objectweb/asmx/util/ASMifierMethodVisitor;->buf:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 193
    return-void
.end method

.method public visitLabel(Lorg/checkerframework/org/objectweb/asmx/Label;)V
    .locals 2
    .param p1, "label"    # Lorg/checkerframework/org/objectweb/asmx/Label;

    .line 197
    iget-object v0, p0, Lorg/checkerframework/org/objectweb/asmx/util/ASMifierMethodVisitor;->buf:Ljava/lang/StringBuffer;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->setLength(I)V

    .line 198
    invoke-direct {p0, p1}, Lorg/checkerframework/org/objectweb/asmx/util/ASMifierMethodVisitor;->declareLabel(Lorg/checkerframework/org/objectweb/asmx/Label;)V

    .line 199
    iget-object v0, p0, Lorg/checkerframework/org/objectweb/asmx/util/ASMifierMethodVisitor;->buf:Ljava/lang/StringBuffer;

    const-string v1, "mv.visitLabel("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 200
    invoke-direct {p0, p1}, Lorg/checkerframework/org/objectweb/asmx/util/ASMifierMethodVisitor;->appendLabel(Lorg/checkerframework/org/objectweb/asmx/Label;)V

    .line 201
    iget-object v0, p0, Lorg/checkerframework/org/objectweb/asmx/util/ASMifierMethodVisitor;->buf:Ljava/lang/StringBuffer;

    const-string v1, ");\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 202
    iget-object v0, p0, Lorg/checkerframework/org/objectweb/asmx/util/ASMifierMethodVisitor;->text:Ljava/util/List;

    iget-object v1, p0, Lorg/checkerframework/org/objectweb/asmx/util/ASMifierMethodVisitor;->buf:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 203
    return-void
.end method

.method public visitLdcInsn(Ljava/lang/Object;)V
    .locals 2
    .param p1, "cst"    # Ljava/lang/Object;

    .line 207
    iget-object v0, p0, Lorg/checkerframework/org/objectweb/asmx/util/ASMifierMethodVisitor;->buf:Ljava/lang/StringBuffer;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->setLength(I)V

    .line 208
    iget-object v0, p0, Lorg/checkerframework/org/objectweb/asmx/util/ASMifierMethodVisitor;->buf:Ljava/lang/StringBuffer;

    const-string v1, "mv.visitLdcInsn("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 209
    invoke-virtual {p0, p1}, Lorg/checkerframework/org/objectweb/asmx/util/ASMifierMethodVisitor;->appendConstant(Ljava/lang/Object;)V

    .line 210
    iget-object v0, p0, Lorg/checkerframework/org/objectweb/asmx/util/ASMifierMethodVisitor;->buf:Ljava/lang/StringBuffer;

    const-string v1, ");\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 211
    iget-object v0, p0, Lorg/checkerframework/org/objectweb/asmx/util/ASMifierMethodVisitor;->text:Ljava/util/List;

    iget-object v1, p0, Lorg/checkerframework/org/objectweb/asmx/util/ASMifierMethodVisitor;->buf:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 212
    return-void
.end method

.method public visitLineNumber(ILorg/checkerframework/org/objectweb/asmx/Label;)V
    .locals 2
    .param p1, "line"    # I
    .param p2, "start"    # Lorg/checkerframework/org/objectweb/asmx/Label;

    .line 338
    iget-object v0, p0, Lorg/checkerframework/org/objectweb/asmx/util/ASMifierMethodVisitor;->buf:Ljava/lang/StringBuffer;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->setLength(I)V

    .line 339
    iget-object v0, p0, Lorg/checkerframework/org/objectweb/asmx/util/ASMifierMethodVisitor;->buf:Ljava/lang/StringBuffer;

    const-string v1, "mv.visitLineNumber("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 340
    invoke-direct {p0, p2}, Lorg/checkerframework/org/objectweb/asmx/util/ASMifierMethodVisitor;->appendLabel(Lorg/checkerframework/org/objectweb/asmx/Label;)V

    .line 341
    iget-object v0, p0, Lorg/checkerframework/org/objectweb/asmx/util/ASMifierMethodVisitor;->buf:Ljava/lang/StringBuffer;

    const-string v1, ");\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 342
    iget-object v0, p0, Lorg/checkerframework/org/objectweb/asmx/util/ASMifierMethodVisitor;->text:Ljava/util/List;

    iget-object v1, p0, Lorg/checkerframework/org/objectweb/asmx/util/ASMifierMethodVisitor;->buf:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 343
    return-void
.end method

.method public visitLocalVariable(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/checkerframework/org/objectweb/asmx/Label;Lorg/checkerframework/org/objectweb/asmx/Label;I)V
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "desc"    # Ljava/lang/String;
    .param p3, "signature"    # Ljava/lang/String;
    .param p4, "start"    # Lorg/checkerframework/org/objectweb/asmx/Label;
    .param p5, "end"    # Lorg/checkerframework/org/objectweb/asmx/Label;
    .param p6, "index"    # I

    .line 321
    iget-object v0, p0, Lorg/checkerframework/org/objectweb/asmx/util/ASMifierMethodVisitor;->buf:Ljava/lang/StringBuffer;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->setLength(I)V

    .line 322
    iget-object v0, p0, Lorg/checkerframework/org/objectweb/asmx/util/ASMifierMethodVisitor;->buf:Ljava/lang/StringBuffer;

    const-string v1, "mv.visitLocalVariable("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 323
    invoke-virtual {p0, p1}, Lorg/checkerframework/org/objectweb/asmx/util/ASMifierMethodVisitor;->appendConstant(Ljava/lang/Object;)V

    .line 324
    iget-object v0, p0, Lorg/checkerframework/org/objectweb/asmx/util/ASMifierMethodVisitor;->buf:Ljava/lang/StringBuffer;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 325
    invoke-virtual {p0, p2}, Lorg/checkerframework/org/objectweb/asmx/util/ASMifierMethodVisitor;->appendConstant(Ljava/lang/Object;)V

    .line 326
    iget-object v0, p0, Lorg/checkerframework/org/objectweb/asmx/util/ASMifierMethodVisitor;->buf:Ljava/lang/StringBuffer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 327
    invoke-virtual {p0, p3}, Lorg/checkerframework/org/objectweb/asmx/util/ASMifierMethodVisitor;->appendConstant(Ljava/lang/Object;)V

    .line 328
    iget-object v0, p0, Lorg/checkerframework/org/objectweb/asmx/util/ASMifierMethodVisitor;->buf:Ljava/lang/StringBuffer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 329
    invoke-direct {p0, p4}, Lorg/checkerframework/org/objectweb/asmx/util/ASMifierMethodVisitor;->appendLabel(Lorg/checkerframework/org/objectweb/asmx/Label;)V

    .line 330
    iget-object v0, p0, Lorg/checkerframework/org/objectweb/asmx/util/ASMifierMethodVisitor;->buf:Ljava/lang/StringBuffer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 331
    invoke-direct {p0, p5}, Lorg/checkerframework/org/objectweb/asmx/util/ASMifierMethodVisitor;->appendLabel(Lorg/checkerframework/org/objectweb/asmx/Label;)V

    .line 332
    iget-object v0, p0, Lorg/checkerframework/org/objectweb/asmx/util/ASMifierMethodVisitor;->buf:Ljava/lang/StringBuffer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0, p6}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, ");\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 333
    iget-object v0, p0, Lorg/checkerframework/org/objectweb/asmx/util/ASMifierMethodVisitor;->text:Ljava/util/List;

    iget-object v1, p0, Lorg/checkerframework/org/objectweb/asmx/util/ASMifierMethodVisitor;->buf:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 334
    return-void
.end method

.method public visitLookupSwitchInsn(Lorg/checkerframework/org/objectweb/asmx/Label;[I[Lorg/checkerframework/org/objectweb/asmx/Label;)V
    .locals 5
    .param p1, "dflt"    # Lorg/checkerframework/org/objectweb/asmx/Label;
    .param p2, "keys"    # [I
    .param p3, "labels"    # [Lorg/checkerframework/org/objectweb/asmx/Label;

    .line 259
    iget-object v0, p0, Lorg/checkerframework/org/objectweb/asmx/util/ASMifierMethodVisitor;->buf:Ljava/lang/StringBuffer;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->setLength(I)V

    .line 260
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v1, p3

    if-ge v0, v1, :cond_0

    .line 261
    aget-object v1, p3, v0

    invoke-direct {p0, v1}, Lorg/checkerframework/org/objectweb/asmx/util/ASMifierMethodVisitor;->declareLabel(Lorg/checkerframework/org/objectweb/asmx/Label;)V

    .line 260
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 263
    .end local v0    # "i":I
    :cond_0
    invoke-direct {p0, p1}, Lorg/checkerframework/org/objectweb/asmx/util/ASMifierMethodVisitor;->declareLabel(Lorg/checkerframework/org/objectweb/asmx/Label;)V

    .line 265
    iget-object v0, p0, Lorg/checkerframework/org/objectweb/asmx/util/ASMifierMethodVisitor;->buf:Ljava/lang/StringBuffer;

    const-string v1, "mv.visitLookupSwitchInsn("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 266
    invoke-direct {p0, p1}, Lorg/checkerframework/org/objectweb/asmx/util/ASMifierMethodVisitor;->appendLabel(Lorg/checkerframework/org/objectweb/asmx/Label;)V

    .line 267
    iget-object v0, p0, Lorg/checkerframework/org/objectweb/asmx/util/ASMifierMethodVisitor;->buf:Ljava/lang/StringBuffer;

    const-string v1, ", new int[] {"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 268
    const/4 v0, 0x0

    .restart local v0    # "i":I
    :goto_1
    array-length v1, p2

    const-string v2, " "

    const-string v3, ", "

    if-ge v0, v1, :cond_2

    .line 269
    iget-object v1, p0, Lorg/checkerframework/org/objectweb/asmx/util/ASMifierMethodVisitor;->buf:Ljava/lang/StringBuffer;

    if-nez v0, :cond_1

    goto :goto_2

    :cond_1
    move-object v2, v3

    :goto_2
    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    aget v2, p2, v0

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 268
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 271
    .end local v0    # "i":I
    :cond_2
    iget-object v0, p0, Lorg/checkerframework/org/objectweb/asmx/util/ASMifierMethodVisitor;->buf:Ljava/lang/StringBuffer;

    const-string v1, " }, new Label[] {"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 272
    const/4 v0, 0x0

    .restart local v0    # "i":I
    :goto_3
    array-length v1, p3

    if-ge v0, v1, :cond_4

    .line 273
    iget-object v1, p0, Lorg/checkerframework/org/objectweb/asmx/util/ASMifierMethodVisitor;->buf:Ljava/lang/StringBuffer;

    if-nez v0, :cond_3

    move-object v4, v2

    goto :goto_4

    :cond_3
    move-object v4, v3

    :goto_4
    invoke-virtual {v1, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 274
    aget-object v1, p3, v0

    invoke-direct {p0, v1}, Lorg/checkerframework/org/objectweb/asmx/util/ASMifierMethodVisitor;->appendLabel(Lorg/checkerframework/org/objectweb/asmx/Label;)V

    .line 272
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 276
    .end local v0    # "i":I
    :cond_4
    iget-object v0, p0, Lorg/checkerframework/org/objectweb/asmx/util/ASMifierMethodVisitor;->buf:Ljava/lang/StringBuffer;

    const-string v1, " });\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 277
    iget-object v0, p0, Lorg/checkerframework/org/objectweb/asmx/util/ASMifierMethodVisitor;->text:Ljava/util/List;

    iget-object v1, p0, Lorg/checkerframework/org/objectweb/asmx/util/ASMifierMethodVisitor;->buf:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 278
    return-void
.end method

.method public visitMaxs(II)V
    .locals 2
    .param p1, "maxStack"    # I
    .param p2, "maxLocals"    # I

    .line 347
    iget-object v0, p0, Lorg/checkerframework/org/objectweb/asmx/util/ASMifierMethodVisitor;->buf:Ljava/lang/StringBuffer;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->setLength(I)V

    .line 348
    iget-object v0, p0, Lorg/checkerframework/org/objectweb/asmx/util/ASMifierMethodVisitor;->buf:Ljava/lang/StringBuffer;

    const-string v1, "mv.visitMaxs("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    .line 349
    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v0

    .line 350
    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    .line 351
    invoke-virtual {v0, p2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v0

    .line 352
    const-string v1, ");\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 353
    iget-object v0, p0, Lorg/checkerframework/org/objectweb/asmx/util/ASMifierMethodVisitor;->text:Ljava/util/List;

    iget-object v1, p0, Lorg/checkerframework/org/objectweb/asmx/util/ASMifierMethodVisitor;->buf:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 354
    return-void
.end method

.method public visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "opcode"    # I
    .param p2, "owner"    # Ljava/lang/String;
    .param p3, "name"    # Ljava/lang/String;
    .param p4, "desc"    # Ljava/lang/String;

    .line 160
    iget-object v0, p0, Lorg/checkerframework/org/objectweb/asmx/util/ASMifierMethodVisitor;->buf:Ljava/lang/StringBuffer;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->setLength(I)V

    .line 161
    iget-object v0, p0, Lorg/checkerframework/org/objectweb/asmx/util/ASMifierMethodVisitor;->buf:Ljava/lang/StringBuffer;

    const-string v1, "mv.visitMethodInsn("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    sget-object v1, Lorg/checkerframework/org/objectweb/asmx/util/ASMifierMethodVisitor;->OPCODES:[Ljava/lang/String;

    aget-object v1, v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 162
    invoke-virtual {p0, p2}, Lorg/checkerframework/org/objectweb/asmx/util/ASMifierMethodVisitor;->appendConstant(Ljava/lang/Object;)V

    .line 163
    iget-object v0, p0, Lorg/checkerframework/org/objectweb/asmx/util/ASMifierMethodVisitor;->buf:Ljava/lang/StringBuffer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 164
    invoke-virtual {p0, p3}, Lorg/checkerframework/org/objectweb/asmx/util/ASMifierMethodVisitor;->appendConstant(Ljava/lang/Object;)V

    .line 165
    iget-object v0, p0, Lorg/checkerframework/org/objectweb/asmx/util/ASMifierMethodVisitor;->buf:Ljava/lang/StringBuffer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 166
    invoke-virtual {p0, p4}, Lorg/checkerframework/org/objectweb/asmx/util/ASMifierMethodVisitor;->appendConstant(Ljava/lang/Object;)V

    .line 167
    iget-object v0, p0, Lorg/checkerframework/org/objectweb/asmx/util/ASMifierMethodVisitor;->buf:Ljava/lang/StringBuffer;

    const-string v1, ");\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 168
    iget-object v0, p0, Lorg/checkerframework/org/objectweb/asmx/util/ASMifierMethodVisitor;->text:Ljava/util/List;

    iget-object v1, p0, Lorg/checkerframework/org/objectweb/asmx/util/ASMifierMethodVisitor;->buf:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 169
    return-void
.end method

.method public visitMultiANewArrayInsn(Ljava/lang/String;I)V
    .locals 2
    .param p1, "desc"    # Ljava/lang/String;
    .param p2, "dims"    # I

    .line 282
    iget-object v0, p0, Lorg/checkerframework/org/objectweb/asmx/util/ASMifierMethodVisitor;->buf:Ljava/lang/StringBuffer;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->setLength(I)V

    .line 283
    iget-object v0, p0, Lorg/checkerframework/org/objectweb/asmx/util/ASMifierMethodVisitor;->buf:Ljava/lang/StringBuffer;

    const-string v1, "mv.visitMultiANewArrayInsn("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 284
    invoke-virtual {p0, p1}, Lorg/checkerframework/org/objectweb/asmx/util/ASMifierMethodVisitor;->appendConstant(Ljava/lang/Object;)V

    .line 285
    iget-object v0, p0, Lorg/checkerframework/org/objectweb/asmx/util/ASMifierMethodVisitor;->buf:Ljava/lang/StringBuffer;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, ");\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 286
    iget-object v0, p0, Lorg/checkerframework/org/objectweb/asmx/util/ASMifierMethodVisitor;->text:Ljava/util/List;

    iget-object v1, p0, Lorg/checkerframework/org/objectweb/asmx/util/ASMifierMethodVisitor;->buf:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 287
    return-void
.end method

.method public visitParameterAnnotation(ILjava/lang/String;Z)Lorg/checkerframework/org/objectweb/asmx/AnnotationVisitor;
    .locals 3
    .param p1, "parameter"    # I
    .param p2, "desc"    # Ljava/lang/String;
    .param p3, "visible"    # Z

    .line 76
    iget-object v0, p0, Lorg/checkerframework/org/objectweb/asmx/util/ASMifierMethodVisitor;->buf:Ljava/lang/StringBuffer;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->setLength(I)V

    .line 77
    iget-object v0, p0, Lorg/checkerframework/org/objectweb/asmx/util/ASMifierMethodVisitor;->buf:Ljava/lang/StringBuffer;

    const-string v2, "{\n"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    .line 78
    const-string v2, "av0 = mv.visitParameterAnnotation("

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    .line 79
    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v0

    .line 80
    const-string v2, ", "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 81
    invoke-virtual {p0, p2}, Lorg/checkerframework/org/objectweb/asmx/util/ASMifierMethodVisitor;->appendConstant(Ljava/lang/Object;)V

    .line 82
    iget-object v0, p0, Lorg/checkerframework/org/objectweb/asmx/util/ASMifierMethodVisitor;->buf:Ljava/lang/StringBuffer;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuffer;->append(Z)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v2, ");\n"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 83
    iget-object v0, p0, Lorg/checkerframework/org/objectweb/asmx/util/ASMifierMethodVisitor;->text:Ljava/util/List;

    iget-object v2, p0, Lorg/checkerframework/org/objectweb/asmx/util/ASMifierMethodVisitor;->buf:Ljava/lang/StringBuffer;

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 84
    new-instance v0, Lorg/checkerframework/org/objectweb/asmx/util/ASMifierAnnotationVisitor;

    invoke-direct {v0, v1}, Lorg/checkerframework/org/objectweb/asmx/util/ASMifierAnnotationVisitor;-><init>(I)V

    .line 85
    .local v0, "av":Lorg/checkerframework/org/objectweb/asmx/util/ASMifierAnnotationVisitor;
    iget-object v1, p0, Lorg/checkerframework/org/objectweb/asmx/util/ASMifierMethodVisitor;->text:Ljava/util/List;

    invoke-virtual {v0}, Lorg/checkerframework/org/objectweb/asmx/util/ASMifierAnnotationVisitor;->getText()Ljava/util/List;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 86
    iget-object v1, p0, Lorg/checkerframework/org/objectweb/asmx/util/ASMifierMethodVisitor;->text:Ljava/util/List;

    const-string v2, "}\n"

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 87
    return-object v0
.end method

.method public visitTableSwitchInsn(IILorg/checkerframework/org/objectweb/asmx/Label;[Lorg/checkerframework/org/objectweb/asmx/Label;)V
    .locals 4
    .param p1, "min"    # I
    .param p2, "max"    # I
    .param p3, "dflt"    # Lorg/checkerframework/org/objectweb/asmx/Label;
    .param p4, "labels"    # [Lorg/checkerframework/org/objectweb/asmx/Label;

    .line 232
    iget-object v0, p0, Lorg/checkerframework/org/objectweb/asmx/util/ASMifierMethodVisitor;->buf:Ljava/lang/StringBuffer;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->setLength(I)V

    .line 233
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v1, p4

    if-ge v0, v1, :cond_0

    .line 234
    aget-object v1, p4, v0

    invoke-direct {p0, v1}, Lorg/checkerframework/org/objectweb/asmx/util/ASMifierMethodVisitor;->declareLabel(Lorg/checkerframework/org/objectweb/asmx/Label;)V

    .line 233
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 236
    .end local v0    # "i":I
    :cond_0
    invoke-direct {p0, p3}, Lorg/checkerframework/org/objectweb/asmx/util/ASMifierMethodVisitor;->declareLabel(Lorg/checkerframework/org/objectweb/asmx/Label;)V

    .line 238
    iget-object v0, p0, Lorg/checkerframework/org/objectweb/asmx/util/ASMifierMethodVisitor;->buf:Ljava/lang/StringBuffer;

    const-string v1, "mv.visitTableSwitchInsn("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    .line 239
    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v0

    .line 240
    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    .line 241
    invoke-virtual {v0, p2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v0

    .line 242
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 243
    invoke-direct {p0, p3}, Lorg/checkerframework/org/objectweb/asmx/util/ASMifierMethodVisitor;->appendLabel(Lorg/checkerframework/org/objectweb/asmx/Label;)V

    .line 244
    iget-object v0, p0, Lorg/checkerframework/org/objectweb/asmx/util/ASMifierMethodVisitor;->buf:Ljava/lang/StringBuffer;

    const-string v2, ", new Label[] {"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 245
    const/4 v0, 0x0

    .restart local v0    # "i":I
    :goto_1
    array-length v2, p4

    if-ge v0, v2, :cond_2

    .line 246
    iget-object v2, p0, Lorg/checkerframework/org/objectweb/asmx/util/ASMifierMethodVisitor;->buf:Ljava/lang/StringBuffer;

    if-nez v0, :cond_1

    const-string v3, " "

    goto :goto_2

    :cond_1
    move-object v3, v1

    :goto_2
    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 247
    aget-object v2, p4, v0

    invoke-direct {p0, v2}, Lorg/checkerframework/org/objectweb/asmx/util/ASMifierMethodVisitor;->appendLabel(Lorg/checkerframework/org/objectweb/asmx/Label;)V

    .line 245
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 249
    .end local v0    # "i":I
    :cond_2
    iget-object v0, p0, Lorg/checkerframework/org/objectweb/asmx/util/ASMifierMethodVisitor;->buf:Ljava/lang/StringBuffer;

    const-string v1, " });\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 250
    iget-object v0, p0, Lorg/checkerframework/org/objectweb/asmx/util/ASMifierMethodVisitor;->text:Ljava/util/List;

    iget-object v1, p0, Lorg/checkerframework/org/objectweb/asmx/util/ASMifierMethodVisitor;->buf:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 251
    return-void
.end method

.method public visitTryCatchBlock(Lorg/checkerframework/org/objectweb/asmx/Label;Lorg/checkerframework/org/objectweb/asmx/Label;Lorg/checkerframework/org/objectweb/asmx/Label;Ljava/lang/String;)V
    .locals 2
    .param p1, "start"    # Lorg/checkerframework/org/objectweb/asmx/Label;
    .param p2, "end"    # Lorg/checkerframework/org/objectweb/asmx/Label;
    .param p3, "handler"    # Lorg/checkerframework/org/objectweb/asmx/Label;
    .param p4, "type"    # Ljava/lang/String;

    .line 296
    iget-object v0, p0, Lorg/checkerframework/org/objectweb/asmx/util/ASMifierMethodVisitor;->buf:Ljava/lang/StringBuffer;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->setLength(I)V

    .line 297
    invoke-direct {p0, p1}, Lorg/checkerframework/org/objectweb/asmx/util/ASMifierMethodVisitor;->declareLabel(Lorg/checkerframework/org/objectweb/asmx/Label;)V

    .line 298
    invoke-direct {p0, p2}, Lorg/checkerframework/org/objectweb/asmx/util/ASMifierMethodVisitor;->declareLabel(Lorg/checkerframework/org/objectweb/asmx/Label;)V

    .line 299
    invoke-direct {p0, p3}, Lorg/checkerframework/org/objectweb/asmx/util/ASMifierMethodVisitor;->declareLabel(Lorg/checkerframework/org/objectweb/asmx/Label;)V

    .line 300
    iget-object v0, p0, Lorg/checkerframework/org/objectweb/asmx/util/ASMifierMethodVisitor;->buf:Ljava/lang/StringBuffer;

    const-string v1, "mv.visitTryCatchBlock("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 301
    invoke-direct {p0, p1}, Lorg/checkerframework/org/objectweb/asmx/util/ASMifierMethodVisitor;->appendLabel(Lorg/checkerframework/org/objectweb/asmx/Label;)V

    .line 302
    iget-object v0, p0, Lorg/checkerframework/org/objectweb/asmx/util/ASMifierMethodVisitor;->buf:Ljava/lang/StringBuffer;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 303
    invoke-direct {p0, p2}, Lorg/checkerframework/org/objectweb/asmx/util/ASMifierMethodVisitor;->appendLabel(Lorg/checkerframework/org/objectweb/asmx/Label;)V

    .line 304
    iget-object v0, p0, Lorg/checkerframework/org/objectweb/asmx/util/ASMifierMethodVisitor;->buf:Ljava/lang/StringBuffer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 305
    invoke-direct {p0, p3}, Lorg/checkerframework/org/objectweb/asmx/util/ASMifierMethodVisitor;->appendLabel(Lorg/checkerframework/org/objectweb/asmx/Label;)V

    .line 306
    iget-object v0, p0, Lorg/checkerframework/org/objectweb/asmx/util/ASMifierMethodVisitor;->buf:Ljava/lang/StringBuffer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 307
    invoke-virtual {p0, p4}, Lorg/checkerframework/org/objectweb/asmx/util/ASMifierMethodVisitor;->appendConstant(Ljava/lang/Object;)V

    .line 308
    iget-object v0, p0, Lorg/checkerframework/org/objectweb/asmx/util/ASMifierMethodVisitor;->buf:Ljava/lang/StringBuffer;

    const-string v1, ");\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 309
    iget-object v0, p0, Lorg/checkerframework/org/objectweb/asmx/util/ASMifierMethodVisitor;->text:Ljava/util/List;

    iget-object v1, p0, Lorg/checkerframework/org/objectweb/asmx/util/ASMifierMethodVisitor;->buf:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 310
    return-void
.end method

.method public visitTypeInsn(ILjava/lang/String;)V
    .locals 2
    .param p1, "opcode"    # I
    .param p2, "desc"    # Ljava/lang/String;

    .line 128
    iget-object v0, p0, Lorg/checkerframework/org/objectweb/asmx/util/ASMifierMethodVisitor;->buf:Ljava/lang/StringBuffer;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->setLength(I)V

    .line 129
    iget-object v0, p0, Lorg/checkerframework/org/objectweb/asmx/util/ASMifierMethodVisitor;->buf:Ljava/lang/StringBuffer;

    const-string v1, "mv.visitTypeInsn("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    sget-object v1, Lorg/checkerframework/org/objectweb/asmx/util/ASMifierMethodVisitor;->OPCODES:[Ljava/lang/String;

    aget-object v1, v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 130
    invoke-virtual {p0, p2}, Lorg/checkerframework/org/objectweb/asmx/util/ASMifierMethodVisitor;->appendConstant(Ljava/lang/Object;)V

    .line 131
    iget-object v0, p0, Lorg/checkerframework/org/objectweb/asmx/util/ASMifierMethodVisitor;->buf:Ljava/lang/StringBuffer;

    const-string v1, ");\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 132
    iget-object v0, p0, Lorg/checkerframework/org/objectweb/asmx/util/ASMifierMethodVisitor;->text:Ljava/util/List;

    iget-object v1, p0, Lorg/checkerframework/org/objectweb/asmx/util/ASMifierMethodVisitor;->buf:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 133
    return-void
.end method

.method public visitVarInsn(II)V
    .locals 2
    .param p1, "opcode"    # I
    .param p2, "var"    # I

    .line 117
    iget-object v0, p0, Lorg/checkerframework/org/objectweb/asmx/util/ASMifierMethodVisitor;->buf:Ljava/lang/StringBuffer;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->setLength(I)V

    .line 118
    iget-object v0, p0, Lorg/checkerframework/org/objectweb/asmx/util/ASMifierMethodVisitor;->buf:Ljava/lang/StringBuffer;

    const-string v1, "mv.visitVarInsn("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    sget-object v1, Lorg/checkerframework/org/objectweb/asmx/util/ASMifierMethodVisitor;->OPCODES:[Ljava/lang/String;

    aget-object v1, v1, p1

    .line 119
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    .line 120
    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    .line 121
    invoke-virtual {v0, p2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v0

    .line 122
    const-string v1, ");\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 123
    iget-object v0, p0, Lorg/checkerframework/org/objectweb/asmx/util/ASMifierMethodVisitor;->text:Ljava/util/List;

    iget-object v1, p0, Lorg/checkerframework/org/objectweb/asmx/util/ASMifierMethodVisitor;->buf:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 124
    return-void
.end method
