.class public Lorg/checkerframework/org/objectweb/asmx/util/TraceMethodVisitor;
.super Lorg/checkerframework/org/objectweb/asmx/util/TraceAbstractVisitor;
.source "TraceMethodVisitor.java"

# interfaces
.implements Lorg/checkerframework/org/objectweb/asmx/MethodVisitor;


# instance fields
.field protected final labelNames:Ljava/util/HashMap;

.field protected ltab:Ljava/lang/String;

.field protected mv:Lorg/checkerframework/org/objectweb/asmx/MethodVisitor;

.field protected tab2:Ljava/lang/String;

.field protected tab3:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 85
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lorg/checkerframework/org/objectweb/asmx/util/TraceMethodVisitor;-><init>(Lorg/checkerframework/org/objectweb/asmx/MethodVisitor;)V

    .line 86
    return-void
.end method

.method public constructor <init>(Lorg/checkerframework/org/objectweb/asmx/MethodVisitor;)V
    .locals 1
    .param p1, "mv"    # Lorg/checkerframework/org/objectweb/asmx/MethodVisitor;

    .line 94
    invoke-direct {p0}, Lorg/checkerframework/org/objectweb/asmx/util/TraceAbstractVisitor;-><init>()V

    .line 64
    const-string v0, "    "

    iput-object v0, p0, Lorg/checkerframework/org/objectweb/asmx/util/TraceMethodVisitor;->tab2:Ljava/lang/String;

    .line 69
    const-string v0, "      "

    iput-object v0, p0, Lorg/checkerframework/org/objectweb/asmx/util/TraceMethodVisitor;->tab3:Ljava/lang/String;

    .line 74
    const-string v0, "   "

    iput-object v0, p0, Lorg/checkerframework/org/objectweb/asmx/util/TraceMethodVisitor;->ltab:Ljava/lang/String;

    .line 95
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/checkerframework/org/objectweb/asmx/util/TraceMethodVisitor;->labelNames:Ljava/util/HashMap;

    .line 96
    iput-object p1, p0, Lorg/checkerframework/org/objectweb/asmx/util/TraceMethodVisitor;->mv:Lorg/checkerframework/org/objectweb/asmx/MethodVisitor;

    .line 97
    return-void
.end method


# virtual methods
.method public appendLabel(Lorg/checkerframework/org/objectweb/asmx/Label;)V
    .locals 3
    .param p1, "l"    # Lorg/checkerframework/org/objectweb/asmx/Label;

    .line 510
    iget-object v0, p0, Lorg/checkerframework/org/objectweb/asmx/util/TraceMethodVisitor;->labelNames:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 511
    .local v0, "name":Ljava/lang/String;
    if-nez v0, :cond_0

    .line 512
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "L"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lorg/checkerframework/org/objectweb/asmx/util/TraceMethodVisitor;->labelNames:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 513
    iget-object v1, p0, Lorg/checkerframework/org/objectweb/asmx/util/TraceMethodVisitor;->labelNames:Ljava/util/HashMap;

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 515
    :cond_0
    iget-object v1, p0, Lorg/checkerframework/org/objectweb/asmx/util/TraceMethodVisitor;->buf:Ljava/lang/StringBuffer;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 516
    return-void
.end method

.method public visitAnnotation(Ljava/lang/String;Z)Lorg/checkerframework/org/objectweb/asmx/AnnotationVisitor;
    .locals 3
    .param p1, "desc"    # Ljava/lang/String;
    .param p2, "visible"    # Z

    .line 107
    invoke-super {p0, p1, p2}, Lorg/checkerframework/org/objectweb/asmx/util/TraceAbstractVisitor;->visitAnnotation(Ljava/lang/String;Z)Lorg/checkerframework/org/objectweb/asmx/AnnotationVisitor;

    move-result-object v0

    .line 108
    .local v0, "av":Lorg/checkerframework/org/objectweb/asmx/AnnotationVisitor;
    iget-object v1, p0, Lorg/checkerframework/org/objectweb/asmx/util/TraceMethodVisitor;->mv:Lorg/checkerframework/org/objectweb/asmx/MethodVisitor;

    if-eqz v1, :cond_0

    .line 109
    move-object v2, v0

    check-cast v2, Lorg/checkerframework/org/objectweb/asmx/util/TraceAnnotationVisitor;

    invoke-interface {v1, p1, p2}, Lorg/checkerframework/org/objectweb/asmx/MethodVisitor;->visitAnnotation(Ljava/lang/String;Z)Lorg/checkerframework/org/objectweb/asmx/AnnotationVisitor;

    move-result-object v1

    iput-object v1, v2, Lorg/checkerframework/org/objectweb/asmx/util/TraceAnnotationVisitor;->av:Lorg/checkerframework/org/objectweb/asmx/AnnotationVisitor;

    .line 111
    :cond_0
    return-object v0
.end method

.method public visitAnnotationDefault()Lorg/checkerframework/org/objectweb/asmx/AnnotationVisitor;
    .locals 3

    .line 147
    iget-object v0, p0, Lorg/checkerframework/org/objectweb/asmx/util/TraceMethodVisitor;->text:Ljava/util/List;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lorg/checkerframework/org/objectweb/asmx/util/TraceMethodVisitor;->tab2:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "default="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 148
    new-instance v0, Lorg/checkerframework/org/objectweb/asmx/util/TraceAnnotationVisitor;

    invoke-direct {v0}, Lorg/checkerframework/org/objectweb/asmx/util/TraceAnnotationVisitor;-><init>()V

    .line 149
    .local v0, "tav":Lorg/checkerframework/org/objectweb/asmx/util/TraceAnnotationVisitor;
    iget-object v1, p0, Lorg/checkerframework/org/objectweb/asmx/util/TraceMethodVisitor;->text:Ljava/util/List;

    invoke-virtual {v0}, Lorg/checkerframework/org/objectweb/asmx/util/TraceAnnotationVisitor;->getText()Ljava/util/List;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 150
    iget-object v1, p0, Lorg/checkerframework/org/objectweb/asmx/util/TraceMethodVisitor;->text:Ljava/util/List;

    const-string v2, "\n"

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 151
    iget-object v1, p0, Lorg/checkerframework/org/objectweb/asmx/util/TraceMethodVisitor;->mv:Lorg/checkerframework/org/objectweb/asmx/MethodVisitor;

    if-eqz v1, :cond_0

    .line 152
    invoke-interface {v1}, Lorg/checkerframework/org/objectweb/asmx/MethodVisitor;->visitAnnotationDefault()Lorg/checkerframework/org/objectweb/asmx/AnnotationVisitor;

    move-result-object v1

    iput-object v1, v0, Lorg/checkerframework/org/objectweb/asmx/util/TraceAnnotationVisitor;->av:Lorg/checkerframework/org/objectweb/asmx/AnnotationVisitor;

    .line 154
    :cond_0
    return-object v0
.end method

.method public visitAttribute(Lorg/checkerframework/org/objectweb/asmx/Attribute;)V
    .locals 3
    .param p1, "attr"    # Lorg/checkerframework/org/objectweb/asmx/Attribute;

    .line 130
    iget-object v0, p0, Lorg/checkerframework/org/objectweb/asmx/util/TraceMethodVisitor;->buf:Ljava/lang/StringBuffer;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->setLength(I)V

    .line 131
    iget-object v0, p0, Lorg/checkerframework/org/objectweb/asmx/util/TraceMethodVisitor;->buf:Ljava/lang/StringBuffer;

    iget-object v1, p0, Lorg/checkerframework/org/objectweb/asmx/util/TraceMethodVisitor;->tab:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, "ATTRIBUTE "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 132
    const/4 v0, -0x1

    iget-object v1, p1, Lorg/checkerframework/org/objectweb/asmx/Attribute;->type:Ljava/lang/String;

    invoke-virtual {p0, v0, v1}, Lorg/checkerframework/org/objectweb/asmx/util/TraceMethodVisitor;->appendDescriptor(ILjava/lang/String;)V

    .line 134
    instance-of v0, p1, Lorg/checkerframework/org/objectweb/asmx/util/attrs/Traceable;

    if-eqz v0, :cond_0

    .line 135
    move-object v0, p1

    check-cast v0, Lorg/checkerframework/org/objectweb/asmx/util/attrs/Traceable;

    iget-object v1, p0, Lorg/checkerframework/org/objectweb/asmx/util/TraceMethodVisitor;->buf:Ljava/lang/StringBuffer;

    iget-object v2, p0, Lorg/checkerframework/org/objectweb/asmx/util/TraceMethodVisitor;->labelNames:Ljava/util/HashMap;

    invoke-interface {v0, v1, v2}, Lorg/checkerframework/org/objectweb/asmx/util/attrs/Traceable;->trace(Ljava/lang/StringBuffer;Ljava/util/Map;)V

    goto :goto_0

    .line 137
    :cond_0
    iget-object v0, p0, Lorg/checkerframework/org/objectweb/asmx/util/TraceMethodVisitor;->buf:Ljava/lang/StringBuffer;

    const-string v1, " : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 140
    :goto_0
    iget-object v0, p0, Lorg/checkerframework/org/objectweb/asmx/util/TraceMethodVisitor;->text:Ljava/util/List;

    iget-object v1, p0, Lorg/checkerframework/org/objectweb/asmx/util/TraceMethodVisitor;->buf:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 141
    iget-object v0, p0, Lorg/checkerframework/org/objectweb/asmx/util/TraceMethodVisitor;->mv:Lorg/checkerframework/org/objectweb/asmx/MethodVisitor;

    if-eqz v0, :cond_1

    .line 142
    invoke-interface {v0, p1}, Lorg/checkerframework/org/objectweb/asmx/MethodVisitor;->visitAttribute(Lorg/checkerframework/org/objectweb/asmx/Attribute;)V

    .line 144
    :cond_1
    return-void
.end method

.method public visitCode()V
    .locals 1

    .line 179
    iget-object v0, p0, Lorg/checkerframework/org/objectweb/asmx/util/TraceMethodVisitor;->mv:Lorg/checkerframework/org/objectweb/asmx/MethodVisitor;

    if-eqz v0, :cond_0

    .line 180
    invoke-interface {v0}, Lorg/checkerframework/org/objectweb/asmx/MethodVisitor;->visitCode()V

    .line 182
    :cond_0
    return-void
.end method

.method public visitEnd()V
    .locals 1

    .line 492
    invoke-super {p0}, Lorg/checkerframework/org/objectweb/asmx/util/TraceAbstractVisitor;->visitEnd()V

    .line 494
    iget-object v0, p0, Lorg/checkerframework/org/objectweb/asmx/util/TraceMethodVisitor;->mv:Lorg/checkerframework/org/objectweb/asmx/MethodVisitor;

    if-eqz v0, :cond_0

    .line 495
    invoke-interface {v0}, Lorg/checkerframework/org/objectweb/asmx/MethodVisitor;->visitEnd()V

    .line 497
    :cond_0
    return-void
.end method

.method public visitFieldInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "opcode"    # I
    .param p2, "owner"    # Ljava/lang/String;
    .param p3, "name"    # Ljava/lang/String;
    .param p4, "desc"    # Ljava/lang/String;

    .line 246
    iget-object v0, p0, Lorg/checkerframework/org/objectweb/asmx/util/TraceMethodVisitor;->buf:Ljava/lang/StringBuffer;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->setLength(I)V

    .line 247
    iget-object v0, p0, Lorg/checkerframework/org/objectweb/asmx/util/TraceMethodVisitor;->buf:Ljava/lang/StringBuffer;

    iget-object v2, p0, Lorg/checkerframework/org/objectweb/asmx/util/TraceMethodVisitor;->tab2:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    sget-object v2, Lorg/checkerframework/org/objectweb/asmx/util/TraceMethodVisitor;->OPCODES:[Ljava/lang/String;

    aget-object v2, v2, p1

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const/16 v2, 0x20

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 248
    invoke-virtual {p0, v1, p2}, Lorg/checkerframework/org/objectweb/asmx/util/TraceMethodVisitor;->appendDescriptor(ILjava/lang/String;)V

    .line 249
    iget-object v0, p0, Lorg/checkerframework/org/objectweb/asmx/util/TraceMethodVisitor;->buf:Ljava/lang/StringBuffer;

    const/16 v1, 0x2e

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, " : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 250
    const/4 v0, 0x1

    invoke-virtual {p0, v0, p4}, Lorg/checkerframework/org/objectweb/asmx/util/TraceMethodVisitor;->appendDescriptor(ILjava/lang/String;)V

    .line 251
    iget-object v0, p0, Lorg/checkerframework/org/objectweb/asmx/util/TraceMethodVisitor;->buf:Ljava/lang/StringBuffer;

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 252
    iget-object v0, p0, Lorg/checkerframework/org/objectweb/asmx/util/TraceMethodVisitor;->text:Ljava/util/List;

    iget-object v1, p0, Lorg/checkerframework/org/objectweb/asmx/util/TraceMethodVisitor;->buf:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 254
    iget-object v0, p0, Lorg/checkerframework/org/objectweb/asmx/util/TraceMethodVisitor;->mv:Lorg/checkerframework/org/objectweb/asmx/MethodVisitor;

    if-eqz v0, :cond_0

    .line 255
    invoke-interface {v0, p1, p2, p3, p4}, Lorg/checkerframework/org/objectweb/asmx/MethodVisitor;->visitFieldInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 257
    :cond_0
    return-void
.end method

.method public visitIincInsn(II)V
    .locals 2
    .param p1, "var"    # I
    .param p2, "increment"    # I

    .line 335
    iget-object v0, p0, Lorg/checkerframework/org/objectweb/asmx/util/TraceMethodVisitor;->buf:Ljava/lang/StringBuffer;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->setLength(I)V

    .line 336
    iget-object v0, p0, Lorg/checkerframework/org/objectweb/asmx/util/TraceMethodVisitor;->buf:Ljava/lang/StringBuffer;

    iget-object v1, p0, Lorg/checkerframework/org/objectweb/asmx/util/TraceMethodVisitor;->tab2:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    .line 337
    const-string v1, "IINC "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    .line 338
    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v0

    .line 339
    const/16 v1, 0x20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v0

    .line 340
    invoke-virtual {v0, p2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v0

    .line 341
    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 342
    iget-object v0, p0, Lorg/checkerframework/org/objectweb/asmx/util/TraceMethodVisitor;->text:Ljava/util/List;

    iget-object v1, p0, Lorg/checkerframework/org/objectweb/asmx/util/TraceMethodVisitor;->buf:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 344
    iget-object v0, p0, Lorg/checkerframework/org/objectweb/asmx/util/TraceMethodVisitor;->mv:Lorg/checkerframework/org/objectweb/asmx/MethodVisitor;

    if-eqz v0, :cond_0

    .line 345
    invoke-interface {v0, p1, p2}, Lorg/checkerframework/org/objectweb/asmx/MethodVisitor;->visitIincInsn(II)V

    .line 347
    :cond_0
    return-void
.end method

.method public visitInsn(I)V
    .locals 2
    .param p1, "opcode"    # I

    .line 185
    iget-object v0, p0, Lorg/checkerframework/org/objectweb/asmx/util/TraceMethodVisitor;->buf:Ljava/lang/StringBuffer;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->setLength(I)V

    .line 186
    iget-object v0, p0, Lorg/checkerframework/org/objectweb/asmx/util/TraceMethodVisitor;->buf:Ljava/lang/StringBuffer;

    iget-object v1, p0, Lorg/checkerframework/org/objectweb/asmx/util/TraceMethodVisitor;->tab2:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    sget-object v1, Lorg/checkerframework/org/objectweb/asmx/util/TraceMethodVisitor;->OPCODES:[Ljava/lang/String;

    aget-object v1, v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 187
    iget-object v0, p0, Lorg/checkerframework/org/objectweb/asmx/util/TraceMethodVisitor;->text:Ljava/util/List;

    iget-object v1, p0, Lorg/checkerframework/org/objectweb/asmx/util/TraceMethodVisitor;->buf:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 189
    iget-object v0, p0, Lorg/checkerframework/org/objectweb/asmx/util/TraceMethodVisitor;->mv:Lorg/checkerframework/org/objectweb/asmx/MethodVisitor;

    if-eqz v0, :cond_0

    .line 190
    invoke-interface {v0, p1}, Lorg/checkerframework/org/objectweb/asmx/MethodVisitor;->visitInsn(I)V

    .line 192
    :cond_0
    return-void
.end method

.method public visitInsnAnnotation(ILorg/checkerframework/org/objectweb/asmx/TypePath;Ljava/lang/String;Z)Lorg/checkerframework/org/objectweb/asmx/AnnotationVisitor;
    .locals 1
    .param p1, "typeRef"    # I
    .param p2, "typePath"    # Lorg/checkerframework/org/objectweb/asmx/TypePath;
    .param p3, "desc"    # Ljava/lang/String;
    .param p4, "visible"    # Z

    .line 289
    const/4 v0, 0x0

    return-object v0
.end method

.method public visitIntInsn(II)V
    .locals 2
    .param p1, "opcode"    # I
    .param p2, "operand"    # I

    .line 195
    iget-object v0, p0, Lorg/checkerframework/org/objectweb/asmx/util/TraceMethodVisitor;->buf:Ljava/lang/StringBuffer;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->setLength(I)V

    .line 196
    iget-object v0, p0, Lorg/checkerframework/org/objectweb/asmx/util/TraceMethodVisitor;->buf:Ljava/lang/StringBuffer;

    iget-object v1, p0, Lorg/checkerframework/org/objectweb/asmx/util/TraceMethodVisitor;->tab2:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    sget-object v1, Lorg/checkerframework/org/objectweb/asmx/util/TraceMethodVisitor;->OPCODES:[Ljava/lang/String;

    aget-object v1, v1, p1

    .line 197
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    .line 198
    const/16 v1, 0x20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v0

    const/16 v1, 0xbc

    if-ne p1, v1, :cond_0

    sget-object v1, Lorg/checkerframework/org/objectweb/asmx/util/TraceMethodVisitor;->TYPES:[Ljava/lang/String;

    aget-object v1, v1, p2

    goto :goto_0

    .line 201
    :cond_0
    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    .line 199
    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    .line 202
    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 203
    iget-object v0, p0, Lorg/checkerframework/org/objectweb/asmx/util/TraceMethodVisitor;->text:Ljava/util/List;

    iget-object v1, p0, Lorg/checkerframework/org/objectweb/asmx/util/TraceMethodVisitor;->buf:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 205
    iget-object v0, p0, Lorg/checkerframework/org/objectweb/asmx/util/TraceMethodVisitor;->mv:Lorg/checkerframework/org/objectweb/asmx/MethodVisitor;

    if-eqz v0, :cond_1

    .line 206
    invoke-interface {v0, p1, p2}, Lorg/checkerframework/org/objectweb/asmx/MethodVisitor;->visitIntInsn(II)V

    .line 208
    :cond_1
    return-void
.end method

.method public varargs visitInvokeDynamicInsn(Ljava/lang/String;Ljava/lang/String;Lorg/checkerframework/org/objectweb/asmx/Handle;[Ljava/lang/Object;)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "desc"    # Ljava/lang/String;
    .param p3, "bsm"    # Lorg/checkerframework/org/objectweb/asmx/Handle;
    .param p4, "bsmArgs"    # [Ljava/lang/Object;

    .line 283
    return-void
.end method

.method public visitJumpInsn(ILorg/checkerframework/org/objectweb/asmx/Label;)V
    .locals 2
    .param p1, "opcode"    # I
    .param p2, "label"    # Lorg/checkerframework/org/objectweb/asmx/Label;

    .line 293
    iget-object v0, p0, Lorg/checkerframework/org/objectweb/asmx/util/TraceMethodVisitor;->buf:Ljava/lang/StringBuffer;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->setLength(I)V

    .line 294
    iget-object v0, p0, Lorg/checkerframework/org/objectweb/asmx/util/TraceMethodVisitor;->buf:Ljava/lang/StringBuffer;

    iget-object v1, p0, Lorg/checkerframework/org/objectweb/asmx/util/TraceMethodVisitor;->tab2:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    sget-object v1, Lorg/checkerframework/org/objectweb/asmx/util/TraceMethodVisitor;->OPCODES:[Ljava/lang/String;

    aget-object v1, v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const/16 v1, 0x20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 295
    invoke-virtual {p0, p2}, Lorg/checkerframework/org/objectweb/asmx/util/TraceMethodVisitor;->appendLabel(Lorg/checkerframework/org/objectweb/asmx/Label;)V

    .line 296
    iget-object v0, p0, Lorg/checkerframework/org/objectweb/asmx/util/TraceMethodVisitor;->buf:Ljava/lang/StringBuffer;

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 297
    iget-object v0, p0, Lorg/checkerframework/org/objectweb/asmx/util/TraceMethodVisitor;->text:Ljava/util/List;

    iget-object v1, p0, Lorg/checkerframework/org/objectweb/asmx/util/TraceMethodVisitor;->buf:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 299
    iget-object v0, p0, Lorg/checkerframework/org/objectweb/asmx/util/TraceMethodVisitor;->mv:Lorg/checkerframework/org/objectweb/asmx/MethodVisitor;

    if-eqz v0, :cond_0

    .line 300
    invoke-interface {v0, p1, p2}, Lorg/checkerframework/org/objectweb/asmx/MethodVisitor;->visitJumpInsn(ILorg/checkerframework/org/objectweb/asmx/Label;)V

    .line 302
    :cond_0
    return-void
.end method

.method public visitLabel(Lorg/checkerframework/org/objectweb/asmx/Label;)V
    .locals 2
    .param p1, "label"    # Lorg/checkerframework/org/objectweb/asmx/Label;

    .line 305
    iget-object v0, p0, Lorg/checkerframework/org/objectweb/asmx/util/TraceMethodVisitor;->buf:Ljava/lang/StringBuffer;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->setLength(I)V

    .line 306
    iget-object v0, p0, Lorg/checkerframework/org/objectweb/asmx/util/TraceMethodVisitor;->buf:Ljava/lang/StringBuffer;

    iget-object v1, p0, Lorg/checkerframework/org/objectweb/asmx/util/TraceMethodVisitor;->ltab:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 307
    invoke-virtual {p0, p1}, Lorg/checkerframework/org/objectweb/asmx/util/TraceMethodVisitor;->appendLabel(Lorg/checkerframework/org/objectweb/asmx/Label;)V

    .line 308
    iget-object v0, p0, Lorg/checkerframework/org/objectweb/asmx/util/TraceMethodVisitor;->buf:Ljava/lang/StringBuffer;

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 309
    iget-object v0, p0, Lorg/checkerframework/org/objectweb/asmx/util/TraceMethodVisitor;->text:Ljava/util/List;

    iget-object v1, p0, Lorg/checkerframework/org/objectweb/asmx/util/TraceMethodVisitor;->buf:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 311
    iget-object v0, p0, Lorg/checkerframework/org/objectweb/asmx/util/TraceMethodVisitor;->mv:Lorg/checkerframework/org/objectweb/asmx/MethodVisitor;

    if-eqz v0, :cond_0

    .line 312
    invoke-interface {v0, p1}, Lorg/checkerframework/org/objectweb/asmx/MethodVisitor;->visitLabel(Lorg/checkerframework/org/objectweb/asmx/Label;)V

    .line 314
    :cond_0
    return-void
.end method

.method public visitLdcInsn(Ljava/lang/Object;)V
    .locals 3
    .param p1, "cst"    # Ljava/lang/Object;

    .line 317
    iget-object v0, p0, Lorg/checkerframework/org/objectweb/asmx/util/TraceMethodVisitor;->buf:Ljava/lang/StringBuffer;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->setLength(I)V

    .line 318
    iget-object v0, p0, Lorg/checkerframework/org/objectweb/asmx/util/TraceMethodVisitor;->buf:Ljava/lang/StringBuffer;

    iget-object v1, p0, Lorg/checkerframework/org/objectweb/asmx/util/TraceMethodVisitor;->tab2:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, "LDC "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 319
    instance-of v0, p1, Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 320
    iget-object v0, p0, Lorg/checkerframework/org/objectweb/asmx/util/TraceMethodVisitor;->buf:Ljava/lang/StringBuffer;

    move-object v1, p1

    check-cast v1, Ljava/lang/String;

    invoke-static {v0, v1}, Lorg/checkerframework/org/objectweb/asmx/util/AbstractVisitor;->appendString(Ljava/lang/StringBuffer;Ljava/lang/String;)V

    goto :goto_0

    .line 321
    :cond_0
    instance-of v0, p1, Lorg/checkerframework/org/objectweb/asmx/Type;

    if-eqz v0, :cond_1

    .line 322
    iget-object v0, p0, Lorg/checkerframework/org/objectweb/asmx/util/TraceMethodVisitor;->buf:Ljava/lang/StringBuffer;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    move-object v2, p1

    check-cast v2, Lorg/checkerframework/org/objectweb/asmx/Type;

    invoke-virtual {v2}, Lorg/checkerframework/org/objectweb/asmx/Type;->getDescriptor()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ".class"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0

    .line 324
    :cond_1
    iget-object v0, p0, Lorg/checkerframework/org/objectweb/asmx/util/TraceMethodVisitor;->buf:Ljava/lang/StringBuffer;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    .line 326
    :goto_0
    iget-object v0, p0, Lorg/checkerframework/org/objectweb/asmx/util/TraceMethodVisitor;->buf:Ljava/lang/StringBuffer;

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 327
    iget-object v0, p0, Lorg/checkerframework/org/objectweb/asmx/util/TraceMethodVisitor;->text:Ljava/util/List;

    iget-object v1, p0, Lorg/checkerframework/org/objectweb/asmx/util/TraceMethodVisitor;->buf:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 329
    iget-object v0, p0, Lorg/checkerframework/org/objectweb/asmx/util/TraceMethodVisitor;->mv:Lorg/checkerframework/org/objectweb/asmx/MethodVisitor;

    if-eqz v0, :cond_2

    .line 330
    invoke-interface {v0, p1}, Lorg/checkerframework/org/objectweb/asmx/MethodVisitor;->visitLdcInsn(Ljava/lang/Object;)V

    .line 332
    :cond_2
    return-void
.end method

.method public visitLineNumber(ILorg/checkerframework/org/objectweb/asmx/Label;)V
    .locals 2
    .param p1, "line"    # I
    .param p2, "start"    # Lorg/checkerframework/org/objectweb/asmx/Label;

    .line 466
    iget-object v0, p0, Lorg/checkerframework/org/objectweb/asmx/util/TraceMethodVisitor;->buf:Ljava/lang/StringBuffer;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->setLength(I)V

    .line 467
    iget-object v0, p0, Lorg/checkerframework/org/objectweb/asmx/util/TraceMethodVisitor;->buf:Ljava/lang/StringBuffer;

    iget-object v1, p0, Lorg/checkerframework/org/objectweb/asmx/util/TraceMethodVisitor;->tab2:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, "LINENUMBER "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v0

    const/16 v1, 0x20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 468
    invoke-virtual {p0, p2}, Lorg/checkerframework/org/objectweb/asmx/util/TraceMethodVisitor;->appendLabel(Lorg/checkerframework/org/objectweb/asmx/Label;)V

    .line 469
    iget-object v0, p0, Lorg/checkerframework/org/objectweb/asmx/util/TraceMethodVisitor;->buf:Ljava/lang/StringBuffer;

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 470
    iget-object v0, p0, Lorg/checkerframework/org/objectweb/asmx/util/TraceMethodVisitor;->text:Ljava/util/List;

    iget-object v1, p0, Lorg/checkerframework/org/objectweb/asmx/util/TraceMethodVisitor;->buf:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 472
    iget-object v0, p0, Lorg/checkerframework/org/objectweb/asmx/util/TraceMethodVisitor;->mv:Lorg/checkerframework/org/objectweb/asmx/MethodVisitor;

    if-eqz v0, :cond_0

    .line 473
    invoke-interface {v0, p1, p2}, Lorg/checkerframework/org/objectweb/asmx/MethodVisitor;->visitLineNumber(ILorg/checkerframework/org/objectweb/asmx/Label;)V

    .line 475
    :cond_0
    return-void
.end method

.method public visitLocalVariable(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/checkerframework/org/objectweb/asmx/Label;Lorg/checkerframework/org/objectweb/asmx/Label;I)V
    .locals 9
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "desc"    # Ljava/lang/String;
    .param p3, "signature"    # Ljava/lang/String;
    .param p4, "start"    # Lorg/checkerframework/org/objectweb/asmx/Label;
    .param p5, "end"    # Lorg/checkerframework/org/objectweb/asmx/Label;
    .param p6, "index"    # I

    .line 437
    iget-object v0, p0, Lorg/checkerframework/org/objectweb/asmx/util/TraceMethodVisitor;->buf:Ljava/lang/StringBuffer;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->setLength(I)V

    .line 438
    iget-object v0, p0, Lorg/checkerframework/org/objectweb/asmx/util/TraceMethodVisitor;->buf:Ljava/lang/StringBuffer;

    iget-object v2, p0, Lorg/checkerframework/org/objectweb/asmx/util/TraceMethodVisitor;->tab2:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v2, "LOCALVARIABLE "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const/16 v2, 0x20

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 439
    const/4 v0, 0x1

    invoke-virtual {p0, v0, p2}, Lorg/checkerframework/org/objectweb/asmx/util/TraceMethodVisitor;->appendDescriptor(ILjava/lang/String;)V

    .line 440
    iget-object v0, p0, Lorg/checkerframework/org/objectweb/asmx/util/TraceMethodVisitor;->buf:Ljava/lang/StringBuffer;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 441
    invoke-virtual {p0, p4}, Lorg/checkerframework/org/objectweb/asmx/util/TraceMethodVisitor;->appendLabel(Lorg/checkerframework/org/objectweb/asmx/Label;)V

    .line 442
    iget-object v0, p0, Lorg/checkerframework/org/objectweb/asmx/util/TraceMethodVisitor;->buf:Ljava/lang/StringBuffer;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 443
    invoke-virtual {p0, p5}, Lorg/checkerframework/org/objectweb/asmx/util/TraceMethodVisitor;->appendLabel(Lorg/checkerframework/org/objectweb/asmx/Label;)V

    .line 444
    iget-object v0, p0, Lorg/checkerframework/org/objectweb/asmx/util/TraceMethodVisitor;->buf:Ljava/lang/StringBuffer;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0, p6}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v0

    const/16 v2, 0xa

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 446
    if-eqz p3, :cond_0

    .line 447
    iget-object v0, p0, Lorg/checkerframework/org/objectweb/asmx/util/TraceMethodVisitor;->buf:Ljava/lang/StringBuffer;

    iget-object v3, p0, Lorg/checkerframework/org/objectweb/asmx/util/TraceMethodVisitor;->tab2:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 448
    const/4 v0, 0x2

    invoke-virtual {p0, v0, p3}, Lorg/checkerframework/org/objectweb/asmx/util/TraceMethodVisitor;->appendDescriptor(ILjava/lang/String;)V

    .line 450
    new-instance v0, Lorg/checkerframework/org/objectweb/asmx/util/TraceSignatureVisitor;

    invoke-direct {v0, v1}, Lorg/checkerframework/org/objectweb/asmx/util/TraceSignatureVisitor;-><init>(I)V

    .line 451
    .local v0, "sv":Lorg/checkerframework/org/objectweb/asmx/util/TraceSignatureVisitor;
    new-instance v1, Lorg/checkerframework/org/objectweb/asmx/signature/SignatureReader;

    invoke-direct {v1, p3}, Lorg/checkerframework/org/objectweb/asmx/signature/SignatureReader;-><init>(Ljava/lang/String;)V

    .line 452
    .local v1, "r":Lorg/checkerframework/org/objectweb/asmx/signature/SignatureReader;
    invoke-virtual {v1, v0}, Lorg/checkerframework/org/objectweb/asmx/signature/SignatureReader;->acceptType(Lorg/checkerframework/org/objectweb/asmx/signature/SignatureVisitor;)V

    .line 453
    iget-object v3, p0, Lorg/checkerframework/org/objectweb/asmx/util/TraceMethodVisitor;->buf:Ljava/lang/StringBuffer;

    iget-object v4, p0, Lorg/checkerframework/org/objectweb/asmx/util/TraceMethodVisitor;->tab2:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    .line 454
    const-string v4, "// declaration: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    .line 455
    invoke-virtual {v0}, Lorg/checkerframework/org/objectweb/asmx/util/TraceSignatureVisitor;->getDeclaration()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    .line 456
    invoke-virtual {v3, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 458
    .end local v0    # "sv":Lorg/checkerframework/org/objectweb/asmx/util/TraceSignatureVisitor;
    .end local v1    # "r":Lorg/checkerframework/org/objectweb/asmx/signature/SignatureReader;
    :cond_0
    iget-object v0, p0, Lorg/checkerframework/org/objectweb/asmx/util/TraceMethodVisitor;->text:Ljava/util/List;

    iget-object v1, p0, Lorg/checkerframework/org/objectweb/asmx/util/TraceMethodVisitor;->buf:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 460
    iget-object v2, p0, Lorg/checkerframework/org/objectweb/asmx/util/TraceMethodVisitor;->mv:Lorg/checkerframework/org/objectweb/asmx/MethodVisitor;

    if-eqz v2, :cond_1

    .line 461
    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    move-object v7, p5

    move v8, p6

    invoke-interface/range {v2 .. v8}, Lorg/checkerframework/org/objectweb/asmx/MethodVisitor;->visitLocalVariable(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/checkerframework/org/objectweb/asmx/Label;Lorg/checkerframework/org/objectweb/asmx/Label;I)V

    .line 463
    :cond_1
    return-void
.end method

.method public visitLookupSwitchInsn(Lorg/checkerframework/org/objectweb/asmx/Label;[I[Lorg/checkerframework/org/objectweb/asmx/Label;)V
    .locals 4
    .param p1, "dflt"    # Lorg/checkerframework/org/objectweb/asmx/Label;
    .param p2, "keys"    # [I
    .param p3, "labels"    # [Lorg/checkerframework/org/objectweb/asmx/Label;

    .line 377
    iget-object v0, p0, Lorg/checkerframework/org/objectweb/asmx/util/TraceMethodVisitor;->buf:Ljava/lang/StringBuffer;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->setLength(I)V

    .line 378
    iget-object v0, p0, Lorg/checkerframework/org/objectweb/asmx/util/TraceMethodVisitor;->buf:Ljava/lang/StringBuffer;

    iget-object v1, p0, Lorg/checkerframework/org/objectweb/asmx/util/TraceMethodVisitor;->tab2:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, "LOOKUPSWITCH\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 379
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v1, p3

    const/16 v2, 0xa

    if-ge v0, v1, :cond_0

    .line 380
    iget-object v1, p0, Lorg/checkerframework/org/objectweb/asmx/util/TraceMethodVisitor;->buf:Ljava/lang/StringBuffer;

    iget-object v3, p0, Lorg/checkerframework/org/objectweb/asmx/util/TraceMethodVisitor;->tab3:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    aget v3, p2, v0

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v3, ": "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 381
    aget-object v1, p3, v0

    invoke-virtual {p0, v1}, Lorg/checkerframework/org/objectweb/asmx/util/TraceMethodVisitor;->appendLabel(Lorg/checkerframework/org/objectweb/asmx/Label;)V

    .line 382
    iget-object v1, p0, Lorg/checkerframework/org/objectweb/asmx/util/TraceMethodVisitor;->buf:Ljava/lang/StringBuffer;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 379
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 384
    .end local v0    # "i":I
    :cond_0
    iget-object v0, p0, Lorg/checkerframework/org/objectweb/asmx/util/TraceMethodVisitor;->buf:Ljava/lang/StringBuffer;

    iget-object v1, p0, Lorg/checkerframework/org/objectweb/asmx/util/TraceMethodVisitor;->tab3:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, "default: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 385
    invoke-virtual {p0, p1}, Lorg/checkerframework/org/objectweb/asmx/util/TraceMethodVisitor;->appendLabel(Lorg/checkerframework/org/objectweb/asmx/Label;)V

    .line 386
    iget-object v0, p0, Lorg/checkerframework/org/objectweb/asmx/util/TraceMethodVisitor;->buf:Ljava/lang/StringBuffer;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 387
    iget-object v0, p0, Lorg/checkerframework/org/objectweb/asmx/util/TraceMethodVisitor;->text:Ljava/util/List;

    iget-object v1, p0, Lorg/checkerframework/org/objectweb/asmx/util/TraceMethodVisitor;->buf:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 389
    iget-object v0, p0, Lorg/checkerframework/org/objectweb/asmx/util/TraceMethodVisitor;->mv:Lorg/checkerframework/org/objectweb/asmx/MethodVisitor;

    if-eqz v0, :cond_1

    .line 390
    invoke-interface {v0, p1, p2, p3}, Lorg/checkerframework/org/objectweb/asmx/MethodVisitor;->visitLookupSwitchInsn(Lorg/checkerframework/org/objectweb/asmx/Label;[I[Lorg/checkerframework/org/objectweb/asmx/Label;)V

    .line 392
    :cond_1
    return-void
.end method

.method public visitMaxs(II)V
    .locals 4
    .param p1, "maxStack"    # I
    .param p2, "maxLocals"    # I

    .line 478
    iget-object v0, p0, Lorg/checkerframework/org/objectweb/asmx/util/TraceMethodVisitor;->buf:Ljava/lang/StringBuffer;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->setLength(I)V

    .line 479
    iget-object v0, p0, Lorg/checkerframework/org/objectweb/asmx/util/TraceMethodVisitor;->buf:Ljava/lang/StringBuffer;

    iget-object v2, p0, Lorg/checkerframework/org/objectweb/asmx/util/TraceMethodVisitor;->tab2:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v2, "MAXSTACK = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v0

    const/16 v2, 0xa

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 480
    iget-object v0, p0, Lorg/checkerframework/org/objectweb/asmx/util/TraceMethodVisitor;->text:Ljava/util/List;

    iget-object v3, p0, Lorg/checkerframework/org/objectweb/asmx/util/TraceMethodVisitor;->buf:Ljava/lang/StringBuffer;

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 482
    iget-object v0, p0, Lorg/checkerframework/org/objectweb/asmx/util/TraceMethodVisitor;->buf:Ljava/lang/StringBuffer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->setLength(I)V

    .line 483
    iget-object v0, p0, Lorg/checkerframework/org/objectweb/asmx/util/TraceMethodVisitor;->buf:Ljava/lang/StringBuffer;

    iget-object v1, p0, Lorg/checkerframework/org/objectweb/asmx/util/TraceMethodVisitor;->tab2:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, "MAXLOCALS = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 484
    iget-object v0, p0, Lorg/checkerframework/org/objectweb/asmx/util/TraceMethodVisitor;->text:Ljava/util/List;

    iget-object v1, p0, Lorg/checkerframework/org/objectweb/asmx/util/TraceMethodVisitor;->buf:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 486
    iget-object v0, p0, Lorg/checkerframework/org/objectweb/asmx/util/TraceMethodVisitor;->mv:Lorg/checkerframework/org/objectweb/asmx/MethodVisitor;

    if-eqz v0, :cond_0

    .line 487
    invoke-interface {v0, p1, p2}, Lorg/checkerframework/org/objectweb/asmx/MethodVisitor;->visitMaxs(II)V

    .line 489
    :cond_0
    return-void
.end method

.method public visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "opcode"    # I
    .param p2, "owner"    # Ljava/lang/String;
    .param p3, "name"    # Ljava/lang/String;
    .param p4, "desc"    # Ljava/lang/String;

    .line 265
    iget-object v0, p0, Lorg/checkerframework/org/objectweb/asmx/util/TraceMethodVisitor;->buf:Ljava/lang/StringBuffer;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->setLength(I)V

    .line 266
    iget-object v0, p0, Lorg/checkerframework/org/objectweb/asmx/util/TraceMethodVisitor;->buf:Ljava/lang/StringBuffer;

    iget-object v2, p0, Lorg/checkerframework/org/objectweb/asmx/util/TraceMethodVisitor;->tab2:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    sget-object v2, Lorg/checkerframework/org/objectweb/asmx/util/TraceMethodVisitor;->OPCODES:[Ljava/lang/String;

    aget-object v2, v2, p1

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const/16 v2, 0x20

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 267
    invoke-virtual {p0, v1, p2}, Lorg/checkerframework/org/objectweb/asmx/util/TraceMethodVisitor;->appendDescriptor(ILjava/lang/String;)V

    .line 268
    iget-object v0, p0, Lorg/checkerframework/org/objectweb/asmx/util/TraceMethodVisitor;->buf:Ljava/lang/StringBuffer;

    const/16 v1, 0x2e

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 269
    const/4 v0, 0x3

    invoke-virtual {p0, v0, p4}, Lorg/checkerframework/org/objectweb/asmx/util/TraceMethodVisitor;->appendDescriptor(ILjava/lang/String;)V

    .line 270
    iget-object v0, p0, Lorg/checkerframework/org/objectweb/asmx/util/TraceMethodVisitor;->buf:Ljava/lang/StringBuffer;

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 271
    iget-object v0, p0, Lorg/checkerframework/org/objectweb/asmx/util/TraceMethodVisitor;->text:Ljava/util/List;

    iget-object v1, p0, Lorg/checkerframework/org/objectweb/asmx/util/TraceMethodVisitor;->buf:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 273
    iget-object v0, p0, Lorg/checkerframework/org/objectweb/asmx/util/TraceMethodVisitor;->mv:Lorg/checkerframework/org/objectweb/asmx/MethodVisitor;

    if-eqz v0, :cond_0

    .line 274
    invoke-interface {v0, p1, p2, p3, p4}, Lorg/checkerframework/org/objectweb/asmx/MethodVisitor;->visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 276
    :cond_0
    return-void
.end method

.method public visitMultiANewArrayInsn(Ljava/lang/String;I)V
    .locals 2
    .param p1, "desc"    # Ljava/lang/String;
    .param p2, "dims"    # I

    .line 395
    iget-object v0, p0, Lorg/checkerframework/org/objectweb/asmx/util/TraceMethodVisitor;->buf:Ljava/lang/StringBuffer;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->setLength(I)V

    .line 396
    iget-object v0, p0, Lorg/checkerframework/org/objectweb/asmx/util/TraceMethodVisitor;->buf:Ljava/lang/StringBuffer;

    iget-object v1, p0, Lorg/checkerframework/org/objectweb/asmx/util/TraceMethodVisitor;->tab2:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, "MULTIANEWARRAY "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 397
    const/4 v0, 0x1

    invoke-virtual {p0, v0, p1}, Lorg/checkerframework/org/objectweb/asmx/util/TraceMethodVisitor;->appendDescriptor(ILjava/lang/String;)V

    .line 398
    iget-object v0, p0, Lorg/checkerframework/org/objectweb/asmx/util/TraceMethodVisitor;->buf:Ljava/lang/StringBuffer;

    const/16 v1, 0x20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v0

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 399
    iget-object v0, p0, Lorg/checkerframework/org/objectweb/asmx/util/TraceMethodVisitor;->text:Ljava/util/List;

    iget-object v1, p0, Lorg/checkerframework/org/objectweb/asmx/util/TraceMethodVisitor;->buf:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 401
    iget-object v0, p0, Lorg/checkerframework/org/objectweb/asmx/util/TraceMethodVisitor;->mv:Lorg/checkerframework/org/objectweb/asmx/MethodVisitor;

    if-eqz v0, :cond_0

    .line 402
    invoke-interface {v0, p1, p2}, Lorg/checkerframework/org/objectweb/asmx/MethodVisitor;->visitMultiANewArrayInsn(Ljava/lang/String;I)V

    .line 404
    :cond_0
    return-void
.end method

.method public visitParameterAnnotation(ILjava/lang/String;Z)Lorg/checkerframework/org/objectweb/asmx/AnnotationVisitor;
    .locals 3
    .param p1, "parameter"    # I
    .param p2, "desc"    # Ljava/lang/String;
    .param p3, "visible"    # Z

    .line 162
    iget-object v0, p0, Lorg/checkerframework/org/objectweb/asmx/util/TraceMethodVisitor;->buf:Ljava/lang/StringBuffer;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->setLength(I)V

    .line 163
    iget-object v0, p0, Lorg/checkerframework/org/objectweb/asmx/util/TraceMethodVisitor;->buf:Ljava/lang/StringBuffer;

    iget-object v1, p0, Lorg/checkerframework/org/objectweb/asmx/util/TraceMethodVisitor;->tab2:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const/16 v1, 0x40

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 164
    const/4 v0, 0x1

    invoke-virtual {p0, v0, p2}, Lorg/checkerframework/org/objectweb/asmx/util/TraceMethodVisitor;->appendDescriptor(ILjava/lang/String;)V

    .line 165
    iget-object v0, p0, Lorg/checkerframework/org/objectweb/asmx/util/TraceMethodVisitor;->buf:Ljava/lang/StringBuffer;

    const/16 v1, 0x28

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 166
    iget-object v0, p0, Lorg/checkerframework/org/objectweb/asmx/util/TraceMethodVisitor;->text:Ljava/util/List;

    iget-object v1, p0, Lorg/checkerframework/org/objectweb/asmx/util/TraceMethodVisitor;->buf:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 167
    new-instance v0, Lorg/checkerframework/org/objectweb/asmx/util/TraceAnnotationVisitor;

    invoke-direct {v0}, Lorg/checkerframework/org/objectweb/asmx/util/TraceAnnotationVisitor;-><init>()V

    .line 168
    .local v0, "tav":Lorg/checkerframework/org/objectweb/asmx/util/TraceAnnotationVisitor;
    iget-object v1, p0, Lorg/checkerframework/org/objectweb/asmx/util/TraceMethodVisitor;->text:Ljava/util/List;

    invoke-virtual {v0}, Lorg/checkerframework/org/objectweb/asmx/util/TraceAnnotationVisitor;->getText()Ljava/util/List;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 169
    iget-object v1, p0, Lorg/checkerframework/org/objectweb/asmx/util/TraceMethodVisitor;->text:Ljava/util/List;

    if-eqz p3, :cond_0

    const-string v2, ") // parameter "

    goto :goto_0

    :cond_0
    const-string v2, ") // invisible, parameter "

    :goto_0
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 170
    iget-object v1, p0, Lorg/checkerframework/org/objectweb/asmx/util/TraceMethodVisitor;->text:Ljava/util/List;

    new-instance v2, Ljava/lang/Integer;

    invoke-direct {v2, p1}, Ljava/lang/Integer;-><init>(I)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 171
    iget-object v1, p0, Lorg/checkerframework/org/objectweb/asmx/util/TraceMethodVisitor;->text:Ljava/util/List;

    const-string v2, "\n"

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 172
    iget-object v1, p0, Lorg/checkerframework/org/objectweb/asmx/util/TraceMethodVisitor;->mv:Lorg/checkerframework/org/objectweb/asmx/MethodVisitor;

    if-eqz v1, :cond_1

    .line 173
    invoke-interface {v1, p1, p2, p3}, Lorg/checkerframework/org/objectweb/asmx/MethodVisitor;->visitParameterAnnotation(ILjava/lang/String;Z)Lorg/checkerframework/org/objectweb/asmx/AnnotationVisitor;

    move-result-object v1

    iput-object v1, v0, Lorg/checkerframework/org/objectweb/asmx/util/TraceAnnotationVisitor;->av:Lorg/checkerframework/org/objectweb/asmx/AnnotationVisitor;

    .line 175
    :cond_1
    return-object v0
.end method

.method public visitTableSwitchInsn(IILorg/checkerframework/org/objectweb/asmx/Label;[Lorg/checkerframework/org/objectweb/asmx/Label;)V
    .locals 4
    .param p1, "min"    # I
    .param p2, "max"    # I
    .param p3, "dflt"    # Lorg/checkerframework/org/objectweb/asmx/Label;
    .param p4, "labels"    # [Lorg/checkerframework/org/objectweb/asmx/Label;

    .line 355
    iget-object v0, p0, Lorg/checkerframework/org/objectweb/asmx/util/TraceMethodVisitor;->buf:Ljava/lang/StringBuffer;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->setLength(I)V

    .line 356
    iget-object v0, p0, Lorg/checkerframework/org/objectweb/asmx/util/TraceMethodVisitor;->buf:Ljava/lang/StringBuffer;

    iget-object v1, p0, Lorg/checkerframework/org/objectweb/asmx/util/TraceMethodVisitor;->tab2:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, "TABLESWITCH\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 357
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v1, p4

    const/16 v2, 0xa

    if-ge v0, v1, :cond_0

    .line 358
    iget-object v1, p0, Lorg/checkerframework/org/objectweb/asmx/util/TraceMethodVisitor;->buf:Ljava/lang/StringBuffer;

    iget-object v3, p0, Lorg/checkerframework/org/objectweb/asmx/util/TraceMethodVisitor;->tab3:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    add-int v3, p1, v0

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v3, ": "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 359
    aget-object v1, p4, v0

    invoke-virtual {p0, v1}, Lorg/checkerframework/org/objectweb/asmx/util/TraceMethodVisitor;->appendLabel(Lorg/checkerframework/org/objectweb/asmx/Label;)V

    .line 360
    iget-object v1, p0, Lorg/checkerframework/org/objectweb/asmx/util/TraceMethodVisitor;->buf:Ljava/lang/StringBuffer;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 357
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 362
    .end local v0    # "i":I
    :cond_0
    iget-object v0, p0, Lorg/checkerframework/org/objectweb/asmx/util/TraceMethodVisitor;->buf:Ljava/lang/StringBuffer;

    iget-object v1, p0, Lorg/checkerframework/org/objectweb/asmx/util/TraceMethodVisitor;->tab3:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, "default: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 363
    invoke-virtual {p0, p3}, Lorg/checkerframework/org/objectweb/asmx/util/TraceMethodVisitor;->appendLabel(Lorg/checkerframework/org/objectweb/asmx/Label;)V

    .line 364
    iget-object v0, p0, Lorg/checkerframework/org/objectweb/asmx/util/TraceMethodVisitor;->buf:Ljava/lang/StringBuffer;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 365
    iget-object v0, p0, Lorg/checkerframework/org/objectweb/asmx/util/TraceMethodVisitor;->text:Ljava/util/List;

    iget-object v1, p0, Lorg/checkerframework/org/objectweb/asmx/util/TraceMethodVisitor;->buf:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 367
    iget-object v0, p0, Lorg/checkerframework/org/objectweb/asmx/util/TraceMethodVisitor;->mv:Lorg/checkerframework/org/objectweb/asmx/MethodVisitor;

    if-eqz v0, :cond_1

    .line 368
    invoke-interface {v0, p1, p2, p3, p4}, Lorg/checkerframework/org/objectweb/asmx/MethodVisitor;->visitTableSwitchInsn(IILorg/checkerframework/org/objectweb/asmx/Label;[Lorg/checkerframework/org/objectweb/asmx/Label;)V

    .line 370
    :cond_1
    return-void
.end method

.method public visitTryCatchBlock(Lorg/checkerframework/org/objectweb/asmx/Label;Lorg/checkerframework/org/objectweb/asmx/Label;Lorg/checkerframework/org/objectweb/asmx/Label;Ljava/lang/String;)V
    .locals 3
    .param p1, "start"    # Lorg/checkerframework/org/objectweb/asmx/Label;
    .param p2, "end"    # Lorg/checkerframework/org/objectweb/asmx/Label;
    .param p3, "handler"    # Lorg/checkerframework/org/objectweb/asmx/Label;
    .param p4, "type"    # Ljava/lang/String;

    .line 412
    iget-object v0, p0, Lorg/checkerframework/org/objectweb/asmx/util/TraceMethodVisitor;->buf:Ljava/lang/StringBuffer;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->setLength(I)V

    .line 413
    iget-object v0, p0, Lorg/checkerframework/org/objectweb/asmx/util/TraceMethodVisitor;->buf:Ljava/lang/StringBuffer;

    iget-object v2, p0, Lorg/checkerframework/org/objectweb/asmx/util/TraceMethodVisitor;->tab2:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v2, "TRYCATCHBLOCK "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 414
    invoke-virtual {p0, p1}, Lorg/checkerframework/org/objectweb/asmx/util/TraceMethodVisitor;->appendLabel(Lorg/checkerframework/org/objectweb/asmx/Label;)V

    .line 415
    iget-object v0, p0, Lorg/checkerframework/org/objectweb/asmx/util/TraceMethodVisitor;->buf:Ljava/lang/StringBuffer;

    const/16 v2, 0x20

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 416
    invoke-virtual {p0, p2}, Lorg/checkerframework/org/objectweb/asmx/util/TraceMethodVisitor;->appendLabel(Lorg/checkerframework/org/objectweb/asmx/Label;)V

    .line 417
    iget-object v0, p0, Lorg/checkerframework/org/objectweb/asmx/util/TraceMethodVisitor;->buf:Ljava/lang/StringBuffer;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 418
    invoke-virtual {p0, p3}, Lorg/checkerframework/org/objectweb/asmx/util/TraceMethodVisitor;->appendLabel(Lorg/checkerframework/org/objectweb/asmx/Label;)V

    .line 419
    iget-object v0, p0, Lorg/checkerframework/org/objectweb/asmx/util/TraceMethodVisitor;->buf:Ljava/lang/StringBuffer;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 420
    invoke-virtual {p0, v1, p4}, Lorg/checkerframework/org/objectweb/asmx/util/TraceMethodVisitor;->appendDescriptor(ILjava/lang/String;)V

    .line 421
    iget-object v0, p0, Lorg/checkerframework/org/objectweb/asmx/util/TraceMethodVisitor;->buf:Ljava/lang/StringBuffer;

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 422
    iget-object v0, p0, Lorg/checkerframework/org/objectweb/asmx/util/TraceMethodVisitor;->text:Ljava/util/List;

    iget-object v1, p0, Lorg/checkerframework/org/objectweb/asmx/util/TraceMethodVisitor;->buf:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 424
    iget-object v0, p0, Lorg/checkerframework/org/objectweb/asmx/util/TraceMethodVisitor;->mv:Lorg/checkerframework/org/objectweb/asmx/MethodVisitor;

    if-eqz v0, :cond_0

    .line 425
    invoke-interface {v0, p1, p2, p3, p4}, Lorg/checkerframework/org/objectweb/asmx/MethodVisitor;->visitTryCatchBlock(Lorg/checkerframework/org/objectweb/asmx/Label;Lorg/checkerframework/org/objectweb/asmx/Label;Lorg/checkerframework/org/objectweb/asmx/Label;Ljava/lang/String;)V

    .line 427
    :cond_0
    return-void
.end method

.method public visitTypeAnnotation(Ljava/lang/String;ZZ)Lorg/checkerframework/org/objectweb/asmx/TypeAnnotationVisitor;
    .locals 3
    .param p1, "desc"    # Ljava/lang/String;
    .param p2, "visible"    # Z
    .param p3, "inCode"    # Z

    .line 120
    invoke-super {p0, p1, p2}, Lorg/checkerframework/org/objectweb/asmx/util/TraceAbstractVisitor;->visitTypeAnnotation(Ljava/lang/String;Z)Lorg/checkerframework/org/objectweb/asmx/TypeAnnotationVisitor;

    move-result-object v0

    .line 121
    .local v0, "xav":Lorg/checkerframework/org/objectweb/asmx/TypeAnnotationVisitor;
    iget-object v1, p0, Lorg/checkerframework/org/objectweb/asmx/util/TraceMethodVisitor;->mv:Lorg/checkerframework/org/objectweb/asmx/MethodVisitor;

    if-eqz v1, :cond_0

    .line 122
    move-object v2, v0

    check-cast v2, Lorg/checkerframework/org/objectweb/asmx/util/TraceTypeAnnotationVisitor;

    .line 123
    invoke-interface {v1, p1, p2, p3}, Lorg/checkerframework/org/objectweb/asmx/MethodVisitor;->visitTypeAnnotation(Ljava/lang/String;ZZ)Lorg/checkerframework/org/objectweb/asmx/TypeAnnotationVisitor;

    move-result-object v1

    iput-object v1, v2, Lorg/checkerframework/org/objectweb/asmx/util/TraceTypeAnnotationVisitor;->xav:Lorg/checkerframework/org/objectweb/asmx/TypeAnnotationVisitor;

    .line 125
    :cond_0
    return-object v0
.end method

.method public visitTypeInsn(ILjava/lang/String;)V
    .locals 3
    .param p1, "opcode"    # I
    .param p2, "desc"    # Ljava/lang/String;

    .line 225
    iget-object v0, p0, Lorg/checkerframework/org/objectweb/asmx/util/TraceMethodVisitor;->buf:Ljava/lang/StringBuffer;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->setLength(I)V

    .line 226
    iget-object v0, p0, Lorg/checkerframework/org/objectweb/asmx/util/TraceMethodVisitor;->buf:Ljava/lang/StringBuffer;

    iget-object v2, p0, Lorg/checkerframework/org/objectweb/asmx/util/TraceMethodVisitor;->tab2:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    sget-object v2, Lorg/checkerframework/org/objectweb/asmx/util/TraceMethodVisitor;->OPCODES:[Ljava/lang/String;

    aget-object v2, v2, p1

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const/16 v2, 0x20

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 227
    const-string v0, "["

    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 228
    const/4 v0, 0x1

    invoke-virtual {p0, v0, p2}, Lorg/checkerframework/org/objectweb/asmx/util/TraceMethodVisitor;->appendDescriptor(ILjava/lang/String;)V

    goto :goto_0

    .line 230
    :cond_0
    invoke-virtual {p0, v1, p2}, Lorg/checkerframework/org/objectweb/asmx/util/TraceMethodVisitor;->appendDescriptor(ILjava/lang/String;)V

    .line 232
    :goto_0
    iget-object v0, p0, Lorg/checkerframework/org/objectweb/asmx/util/TraceMethodVisitor;->buf:Ljava/lang/StringBuffer;

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 233
    iget-object v0, p0, Lorg/checkerframework/org/objectweb/asmx/util/TraceMethodVisitor;->text:Ljava/util/List;

    iget-object v1, p0, Lorg/checkerframework/org/objectweb/asmx/util/TraceMethodVisitor;->buf:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 235
    iget-object v0, p0, Lorg/checkerframework/org/objectweb/asmx/util/TraceMethodVisitor;->mv:Lorg/checkerframework/org/objectweb/asmx/MethodVisitor;

    if-eqz v0, :cond_1

    .line 236
    invoke-interface {v0, p1, p2}, Lorg/checkerframework/org/objectweb/asmx/MethodVisitor;->visitTypeInsn(ILjava/lang/String;)V

    .line 238
    :cond_1
    return-void
.end method

.method public visitVarInsn(II)V
    .locals 2
    .param p1, "opcode"    # I
    .param p2, "var"    # I

    .line 211
    iget-object v0, p0, Lorg/checkerframework/org/objectweb/asmx/util/TraceMethodVisitor;->buf:Ljava/lang/StringBuffer;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->setLength(I)V

    .line 212
    iget-object v0, p0, Lorg/checkerframework/org/objectweb/asmx/util/TraceMethodVisitor;->buf:Ljava/lang/StringBuffer;

    iget-object v1, p0, Lorg/checkerframework/org/objectweb/asmx/util/TraceMethodVisitor;->tab2:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    sget-object v1, Lorg/checkerframework/org/objectweb/asmx/util/TraceMethodVisitor;->OPCODES:[Ljava/lang/String;

    aget-object v1, v1, p1

    .line 213
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    .line 214
    const/16 v1, 0x20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v0

    .line 215
    invoke-virtual {v0, p2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v0

    .line 216
    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 217
    iget-object v0, p0, Lorg/checkerframework/org/objectweb/asmx/util/TraceMethodVisitor;->text:Ljava/util/List;

    iget-object v1, p0, Lorg/checkerframework/org/objectweb/asmx/util/TraceMethodVisitor;->buf:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 219
    iget-object v0, p0, Lorg/checkerframework/org/objectweb/asmx/util/TraceMethodVisitor;->mv:Lorg/checkerframework/org/objectweb/asmx/MethodVisitor;

    if-eqz v0, :cond_0

    .line 220
    invoke-interface {v0, p1, p2}, Lorg/checkerframework/org/objectweb/asmx/MethodVisitor;->visitVarInsn(II)V

    .line 222
    :cond_0
    return-void
.end method
