.class public Lorg/checkerframework/org/objectweb/asmx/util/ASMifierTypeAnnotationVisitor;
.super Lorg/checkerframework/org/objectweb/asmx/util/AbstractVisitor;
.source "ASMifierTypeAnnotationVisitor.java"

# interfaces
.implements Lorg/checkerframework/org/objectweb/asmx/TypeAnnotationVisitor;


# instance fields
.field protected final id:I


# direct methods
.method public constructor <init>(I)V
    .locals 0
    .param p1, "id"    # I

    .line 30
    invoke-direct {p0}, Lorg/checkerframework/org/objectweb/asmx/util/AbstractVisitor;-><init>()V

    .line 31
    iput p1, p0, Lorg/checkerframework/org/objectweb/asmx/util/ASMifierTypeAnnotationVisitor;->id:I

    .line 32
    return-void
.end method


# virtual methods
.method public appendConstant(Ljava/lang/StringBuffer;I)V
    .locals 1
    .param p1, "buf"    # Ljava/lang/StringBuffer;
    .param p2, "i"    # I

    .line 104
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {p1, v0}, Lorg/checkerframework/org/objectweb/asmx/util/ASMifierAbstractVisitor;->appendConstant(Ljava/lang/StringBuffer;Ljava/lang/Object;)V

    .line 105
    return-void
.end method

.method public visit(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/Object;

    .line 39
    iget-object v0, p0, Lorg/checkerframework/org/objectweb/asmx/util/ASMifierTypeAnnotationVisitor;->buf:Ljava/lang/StringBuffer;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->setLength(I)V

    .line 40
    iget-object v0, p0, Lorg/checkerframework/org/objectweb/asmx/util/ASMifierTypeAnnotationVisitor;->buf:Ljava/lang/StringBuffer;

    const-string v1, "xav"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget v1, p0, Lorg/checkerframework/org/objectweb/asmx/util/ASMifierTypeAnnotationVisitor;->id:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, ".visit("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 41
    iget-object v0, p0, Lorg/checkerframework/org/objectweb/asmx/util/ASMifierTypeAnnotationVisitor;->buf:Ljava/lang/StringBuffer;

    invoke-static {v0, p1}, Lorg/checkerframework/org/objectweb/asmx/util/ASMifierAbstractVisitor;->appendConstant(Ljava/lang/StringBuffer;Ljava/lang/Object;)V

    .line 42
    iget-object v0, p0, Lorg/checkerframework/org/objectweb/asmx/util/ASMifierTypeAnnotationVisitor;->buf:Ljava/lang/StringBuffer;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 43
    iget-object v0, p0, Lorg/checkerframework/org/objectweb/asmx/util/ASMifierTypeAnnotationVisitor;->buf:Ljava/lang/StringBuffer;

    invoke-static {v0, p2}, Lorg/checkerframework/org/objectweb/asmx/util/ASMifierAbstractVisitor;->appendConstant(Ljava/lang/StringBuffer;Ljava/lang/Object;)V

    .line 44
    iget-object v0, p0, Lorg/checkerframework/org/objectweb/asmx/util/ASMifierTypeAnnotationVisitor;->buf:Ljava/lang/StringBuffer;

    const-string v1, ");\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 45
    iget-object v0, p0, Lorg/checkerframework/org/objectweb/asmx/util/ASMifierTypeAnnotationVisitor;->text:Ljava/util/List;

    iget-object v1, p0, Lorg/checkerframework/org/objectweb/asmx/util/ASMifierTypeAnnotationVisitor;->buf:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 46
    return-void
.end method

.method public visitAnnotation(Ljava/lang/String;Ljava/lang/String;)Lorg/checkerframework/org/objectweb/asmx/AnnotationVisitor;
    .locals 3
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "desc"    # Ljava/lang/String;

    .line 68
    iget-object v0, p0, Lorg/checkerframework/org/objectweb/asmx/util/ASMifierTypeAnnotationVisitor;->buf:Ljava/lang/StringBuffer;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->setLength(I)V

    .line 69
    iget-object v0, p0, Lorg/checkerframework/org/objectweb/asmx/util/ASMifierTypeAnnotationVisitor;->buf:Ljava/lang/StringBuffer;

    const-string v1, "{\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 70
    iget-object v0, p0, Lorg/checkerframework/org/objectweb/asmx/util/ASMifierTypeAnnotationVisitor;->buf:Ljava/lang/StringBuffer;

    const-string v1, "AnnotationVisitor av"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget v1, p0, Lorg/checkerframework/org/objectweb/asmx/util/ASMifierTypeAnnotationVisitor;->id:I

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, " = av"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 71
    iget-object v0, p0, Lorg/checkerframework/org/objectweb/asmx/util/ASMifierTypeAnnotationVisitor;->buf:Ljava/lang/StringBuffer;

    iget v1, p0, Lorg/checkerframework/org/objectweb/asmx/util/ASMifierTypeAnnotationVisitor;->id:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, ".visitAnnotation("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 72
    iget-object v0, p0, Lorg/checkerframework/org/objectweb/asmx/util/ASMifierTypeAnnotationVisitor;->buf:Ljava/lang/StringBuffer;

    invoke-static {v0, p1}, Lorg/checkerframework/org/objectweb/asmx/util/ASMifierAbstractVisitor;->appendConstant(Ljava/lang/StringBuffer;Ljava/lang/Object;)V

    .line 73
    iget-object v0, p0, Lorg/checkerframework/org/objectweb/asmx/util/ASMifierTypeAnnotationVisitor;->buf:Ljava/lang/StringBuffer;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 74
    iget-object v0, p0, Lorg/checkerframework/org/objectweb/asmx/util/ASMifierTypeAnnotationVisitor;->buf:Ljava/lang/StringBuffer;

    invoke-static {v0, p2}, Lorg/checkerframework/org/objectweb/asmx/util/ASMifierAbstractVisitor;->appendConstant(Ljava/lang/StringBuffer;Ljava/lang/Object;)V

    .line 75
    iget-object v0, p0, Lorg/checkerframework/org/objectweb/asmx/util/ASMifierTypeAnnotationVisitor;->buf:Ljava/lang/StringBuffer;

    const-string v1, ");\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 76
    iget-object v0, p0, Lorg/checkerframework/org/objectweb/asmx/util/ASMifierTypeAnnotationVisitor;->text:Ljava/util/List;

    iget-object v1, p0, Lorg/checkerframework/org/objectweb/asmx/util/ASMifierTypeAnnotationVisitor;->buf:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 77
    new-instance v0, Lorg/checkerframework/org/objectweb/asmx/util/ASMifierAnnotationVisitor;

    iget v1, p0, Lorg/checkerframework/org/objectweb/asmx/util/ASMifierTypeAnnotationVisitor;->id:I

    add-int/lit8 v1, v1, 0x1

    invoke-direct {v0, v1}, Lorg/checkerframework/org/objectweb/asmx/util/ASMifierAnnotationVisitor;-><init>(I)V

    .line 78
    .local v0, "av":Lorg/checkerframework/org/objectweb/asmx/util/ASMifierAnnotationVisitor;
    iget-object v1, p0, Lorg/checkerframework/org/objectweb/asmx/util/ASMifierTypeAnnotationVisitor;->text:Ljava/util/List;

    invoke-virtual {v0}, Lorg/checkerframework/org/objectweb/asmx/util/ASMifierAnnotationVisitor;->getText()Ljava/util/List;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 79
    iget-object v1, p0, Lorg/checkerframework/org/objectweb/asmx/util/ASMifierTypeAnnotationVisitor;->text:Ljava/util/List;

    const-string v2, "}\n"

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 80
    return-object v0
.end method

.method public visitArray(Ljava/lang/String;)Lorg/checkerframework/org/objectweb/asmx/AnnotationVisitor;
    .locals 3
    .param p1, "name"    # Ljava/lang/String;

    .line 84
    iget-object v0, p0, Lorg/checkerframework/org/objectweb/asmx/util/ASMifierTypeAnnotationVisitor;->buf:Ljava/lang/StringBuffer;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->setLength(I)V

    .line 85
    iget-object v0, p0, Lorg/checkerframework/org/objectweb/asmx/util/ASMifierTypeAnnotationVisitor;->buf:Ljava/lang/StringBuffer;

    const-string v1, "{\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 86
    iget-object v0, p0, Lorg/checkerframework/org/objectweb/asmx/util/ASMifierTypeAnnotationVisitor;->buf:Ljava/lang/StringBuffer;

    const-string v1, "AnnotationVisitor av"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget v1, p0, Lorg/checkerframework/org/objectweb/asmx/util/ASMifierTypeAnnotationVisitor;->id:I

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, " = av"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 87
    iget-object v0, p0, Lorg/checkerframework/org/objectweb/asmx/util/ASMifierTypeAnnotationVisitor;->buf:Ljava/lang/StringBuffer;

    iget v1, p0, Lorg/checkerframework/org/objectweb/asmx/util/ASMifierTypeAnnotationVisitor;->id:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, ".visitArray("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 88
    iget-object v0, p0, Lorg/checkerframework/org/objectweb/asmx/util/ASMifierTypeAnnotationVisitor;->buf:Ljava/lang/StringBuffer;

    invoke-static {v0, p1}, Lorg/checkerframework/org/objectweb/asmx/util/ASMifierAbstractVisitor;->appendConstant(Ljava/lang/StringBuffer;Ljava/lang/Object;)V

    .line 89
    iget-object v0, p0, Lorg/checkerframework/org/objectweb/asmx/util/ASMifierTypeAnnotationVisitor;->buf:Ljava/lang/StringBuffer;

    const-string v1, ");\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 90
    iget-object v0, p0, Lorg/checkerframework/org/objectweb/asmx/util/ASMifierTypeAnnotationVisitor;->text:Ljava/util/List;

    iget-object v1, p0, Lorg/checkerframework/org/objectweb/asmx/util/ASMifierTypeAnnotationVisitor;->buf:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 91
    new-instance v0, Lorg/checkerframework/org/objectweb/asmx/util/ASMifierAnnotationVisitor;

    iget v1, p0, Lorg/checkerframework/org/objectweb/asmx/util/ASMifierTypeAnnotationVisitor;->id:I

    add-int/lit8 v1, v1, 0x1

    invoke-direct {v0, v1}, Lorg/checkerframework/org/objectweb/asmx/util/ASMifierAnnotationVisitor;-><init>(I)V

    .line 92
    .local v0, "av":Lorg/checkerframework/org/objectweb/asmx/util/ASMifierAnnotationVisitor;
    iget-object v1, p0, Lorg/checkerframework/org/objectweb/asmx/util/ASMifierTypeAnnotationVisitor;->text:Ljava/util/List;

    invoke-virtual {v0}, Lorg/checkerframework/org/objectweb/asmx/util/ASMifierAnnotationVisitor;->getText()Ljava/util/List;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 93
    iget-object v1, p0, Lorg/checkerframework/org/objectweb/asmx/util/ASMifierTypeAnnotationVisitor;->text:Ljava/util/List;

    const-string v2, "}\n"

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 94
    return-object v0
.end method

.method public visitEnd()V
    .locals 2

    .line 98
    iget-object v0, p0, Lorg/checkerframework/org/objectweb/asmx/util/ASMifierTypeAnnotationVisitor;->buf:Ljava/lang/StringBuffer;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->setLength(I)V

    .line 99
    iget-object v0, p0, Lorg/checkerframework/org/objectweb/asmx/util/ASMifierTypeAnnotationVisitor;->buf:Ljava/lang/StringBuffer;

    const-string v1, "xav"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget v1, p0, Lorg/checkerframework/org/objectweb/asmx/util/ASMifierTypeAnnotationVisitor;->id:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, ".visitEnd();\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 100
    iget-object v0, p0, Lorg/checkerframework/org/objectweb/asmx/util/ASMifierTypeAnnotationVisitor;->text:Ljava/util/List;

    iget-object v1, p0, Lorg/checkerframework/org/objectweb/asmx/util/ASMifierTypeAnnotationVisitor;->buf:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 101
    return-void
.end method

.method public visitEnum(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "desc"    # Ljava/lang/String;
    .param p3, "value"    # Ljava/lang/String;

    .line 53
    iget-object v0, p0, Lorg/checkerframework/org/objectweb/asmx/util/ASMifierTypeAnnotationVisitor;->buf:Ljava/lang/StringBuffer;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->setLength(I)V

    .line 54
    iget-object v0, p0, Lorg/checkerframework/org/objectweb/asmx/util/ASMifierTypeAnnotationVisitor;->buf:Ljava/lang/StringBuffer;

    const-string v1, "xav"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget v1, p0, Lorg/checkerframework/org/objectweb/asmx/util/ASMifierTypeAnnotationVisitor;->id:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, ".visitEnum("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 55
    iget-object v0, p0, Lorg/checkerframework/org/objectweb/asmx/util/ASMifierTypeAnnotationVisitor;->buf:Ljava/lang/StringBuffer;

    invoke-static {v0, p1}, Lorg/checkerframework/org/objectweb/asmx/util/ASMifierAbstractVisitor;->appendConstant(Ljava/lang/StringBuffer;Ljava/lang/Object;)V

    .line 56
    iget-object v0, p0, Lorg/checkerframework/org/objectweb/asmx/util/ASMifierTypeAnnotationVisitor;->buf:Ljava/lang/StringBuffer;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 57
    iget-object v0, p0, Lorg/checkerframework/org/objectweb/asmx/util/ASMifierTypeAnnotationVisitor;->buf:Ljava/lang/StringBuffer;

    invoke-static {v0, p2}, Lorg/checkerframework/org/objectweb/asmx/util/ASMifierAbstractVisitor;->appendConstant(Ljava/lang/StringBuffer;Ljava/lang/Object;)V

    .line 58
    iget-object v0, p0, Lorg/checkerframework/org/objectweb/asmx/util/ASMifierTypeAnnotationVisitor;->buf:Ljava/lang/StringBuffer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 59
    iget-object v0, p0, Lorg/checkerframework/org/objectweb/asmx/util/ASMifierTypeAnnotationVisitor;->buf:Ljava/lang/StringBuffer;

    invoke-static {v0, p3}, Lorg/checkerframework/org/objectweb/asmx/util/ASMifierAbstractVisitor;->appendConstant(Ljava/lang/StringBuffer;Ljava/lang/Object;)V

    .line 60
    iget-object v0, p0, Lorg/checkerframework/org/objectweb/asmx/util/ASMifierTypeAnnotationVisitor;->buf:Ljava/lang/StringBuffer;

    const-string v1, ");\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 61
    iget-object v0, p0, Lorg/checkerframework/org/objectweb/asmx/util/ASMifierTypeAnnotationVisitor;->text:Ljava/util/List;

    iget-object v1, p0, Lorg/checkerframework/org/objectweb/asmx/util/ASMifierTypeAnnotationVisitor;->buf:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 62
    return-void
.end method

.method public visitXBoundIndex(I)V
    .locals 2
    .param p1, "bound_index"    # I

    .line 180
    iget-object v0, p0, Lorg/checkerframework/org/objectweb/asmx/util/ASMifierTypeAnnotationVisitor;->buf:Ljava/lang/StringBuffer;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->setLength(I)V

    .line 181
    iget-object v0, p0, Lorg/checkerframework/org/objectweb/asmx/util/ASMifierTypeAnnotationVisitor;->buf:Ljava/lang/StringBuffer;

    const-string v1, "xav"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget v1, p0, Lorg/checkerframework/org/objectweb/asmx/util/ASMifierTypeAnnotationVisitor;->id:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, ".visitXBoundIndex("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 182
    iget-object v0, p0, Lorg/checkerframework/org/objectweb/asmx/util/ASMifierTypeAnnotationVisitor;->buf:Ljava/lang/StringBuffer;

    invoke-virtual {p0, v0, p1}, Lorg/checkerframework/org/objectweb/asmx/util/ASMifierTypeAnnotationVisitor;->appendConstant(Ljava/lang/StringBuffer;I)V

    .line 183
    iget-object v0, p0, Lorg/checkerframework/org/objectweb/asmx/util/ASMifierTypeAnnotationVisitor;->buf:Ljava/lang/StringBuffer;

    const-string v1, ");\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 184
    iget-object v0, p0, Lorg/checkerframework/org/objectweb/asmx/util/ASMifierTypeAnnotationVisitor;->text:Ljava/util/List;

    iget-object v1, p0, Lorg/checkerframework/org/objectweb/asmx/util/ASMifierTypeAnnotationVisitor;->buf:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 185
    return-void
.end method

.method public visitXExceptionIndex(I)V
    .locals 2
    .param p1, "exception_index"    # I

    .line 196
    iget-object v0, p0, Lorg/checkerframework/org/objectweb/asmx/util/ASMifierTypeAnnotationVisitor;->buf:Ljava/lang/StringBuffer;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->setLength(I)V

    .line 197
    iget-object v0, p0, Lorg/checkerframework/org/objectweb/asmx/util/ASMifierTypeAnnotationVisitor;->buf:Ljava/lang/StringBuffer;

    const-string v1, "xav"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget v1, p0, Lorg/checkerframework/org/objectweb/asmx/util/ASMifierTypeAnnotationVisitor;->id:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, ".visitXExceptionIndex("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 198
    iget-object v0, p0, Lorg/checkerframework/org/objectweb/asmx/util/ASMifierTypeAnnotationVisitor;->buf:Ljava/lang/StringBuffer;

    invoke-virtual {p0, v0, p1}, Lorg/checkerframework/org/objectweb/asmx/util/ASMifierTypeAnnotationVisitor;->appendConstant(Ljava/lang/StringBuffer;I)V

    .line 199
    iget-object v0, p0, Lorg/checkerframework/org/objectweb/asmx/util/ASMifierTypeAnnotationVisitor;->buf:Ljava/lang/StringBuffer;

    const-string v1, ");\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 200
    iget-object v0, p0, Lorg/checkerframework/org/objectweb/asmx/util/ASMifierTypeAnnotationVisitor;->text:Ljava/util/List;

    iget-object v1, p0, Lorg/checkerframework/org/objectweb/asmx/util/ASMifierTypeAnnotationVisitor;->buf:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 201
    return-void
.end method

.method public visitXIndex(I)V
    .locals 2
    .param p1, "index"    # I

    .line 164
    iget-object v0, p0, Lorg/checkerframework/org/objectweb/asmx/util/ASMifierTypeAnnotationVisitor;->buf:Ljava/lang/StringBuffer;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->setLength(I)V

    .line 165
    iget-object v0, p0, Lorg/checkerframework/org/objectweb/asmx/util/ASMifierTypeAnnotationVisitor;->buf:Ljava/lang/StringBuffer;

    const-string v1, "xav"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget v1, p0, Lorg/checkerframework/org/objectweb/asmx/util/ASMifierTypeAnnotationVisitor;->id:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, ".visitXIndex("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 166
    iget-object v0, p0, Lorg/checkerframework/org/objectweb/asmx/util/ASMifierTypeAnnotationVisitor;->buf:Ljava/lang/StringBuffer;

    invoke-virtual {p0, v0, p1}, Lorg/checkerframework/org/objectweb/asmx/util/ASMifierTypeAnnotationVisitor;->appendConstant(Ljava/lang/StringBuffer;I)V

    .line 167
    iget-object v0, p0, Lorg/checkerframework/org/objectweb/asmx/util/ASMifierTypeAnnotationVisitor;->buf:Ljava/lang/StringBuffer;

    const-string v1, ");\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 168
    iget-object v0, p0, Lorg/checkerframework/org/objectweb/asmx/util/ASMifierTypeAnnotationVisitor;->text:Ljava/util/List;

    iget-object v1, p0, Lorg/checkerframework/org/objectweb/asmx/util/ASMifierTypeAnnotationVisitor;->buf:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 169
    return-void
.end method

.method public visitXLength(I)V
    .locals 2
    .param p1, "length"    # I

    .line 156
    iget-object v0, p0, Lorg/checkerframework/org/objectweb/asmx/util/ASMifierTypeAnnotationVisitor;->buf:Ljava/lang/StringBuffer;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->setLength(I)V

    .line 157
    iget-object v0, p0, Lorg/checkerframework/org/objectweb/asmx/util/ASMifierTypeAnnotationVisitor;->buf:Ljava/lang/StringBuffer;

    const-string v1, "xav"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget v1, p0, Lorg/checkerframework/org/objectweb/asmx/util/ASMifierTypeAnnotationVisitor;->id:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, ".visitXLength("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 158
    iget-object v0, p0, Lorg/checkerframework/org/objectweb/asmx/util/ASMifierTypeAnnotationVisitor;->buf:Ljava/lang/StringBuffer;

    invoke-virtual {p0, v0, p1}, Lorg/checkerframework/org/objectweb/asmx/util/ASMifierTypeAnnotationVisitor;->appendConstant(Ljava/lang/StringBuffer;I)V

    .line 159
    iget-object v0, p0, Lorg/checkerframework/org/objectweb/asmx/util/ASMifierTypeAnnotationVisitor;->buf:Ljava/lang/StringBuffer;

    const-string v1, ");\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 160
    iget-object v0, p0, Lorg/checkerframework/org/objectweb/asmx/util/ASMifierTypeAnnotationVisitor;->text:Ljava/util/List;

    iget-object v1, p0, Lorg/checkerframework/org/objectweb/asmx/util/ASMifierTypeAnnotationVisitor;->buf:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 161
    return-void
.end method

.method public visitXLocation(Lcom/sun/tools/javac/code/TypeAnnotationPosition$TypePathEntry;)V
    .locals 2
    .param p1, "location"    # Lcom/sun/tools/javac/code/TypeAnnotationPosition$TypePathEntry;

    .line 132
    iget-object v0, p0, Lorg/checkerframework/org/objectweb/asmx/util/ASMifierTypeAnnotationVisitor;->buf:Ljava/lang/StringBuffer;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->setLength(I)V

    .line 133
    iget-object v0, p0, Lorg/checkerframework/org/objectweb/asmx/util/ASMifierTypeAnnotationVisitor;->buf:Ljava/lang/StringBuffer;

    const-string v1, "xav"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget v1, p0, Lorg/checkerframework/org/objectweb/asmx/util/ASMifierTypeAnnotationVisitor;->id:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, ".visitXLocation("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 134
    iget-object v0, p0, Lorg/checkerframework/org/objectweb/asmx/util/ASMifierTypeAnnotationVisitor;->buf:Ljava/lang/StringBuffer;

    invoke-virtual {p1}, Lcom/sun/tools/javac/code/TypeAnnotationPosition$TypePathEntry;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 135
    iget-object v0, p0, Lorg/checkerframework/org/objectweb/asmx/util/ASMifierTypeAnnotationVisitor;->buf:Ljava/lang/StringBuffer;

    const-string v1, ");\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 136
    iget-object v0, p0, Lorg/checkerframework/org/objectweb/asmx/util/ASMifierTypeAnnotationVisitor;->text:Ljava/util/List;

    iget-object v1, p0, Lorg/checkerframework/org/objectweb/asmx/util/ASMifierTypeAnnotationVisitor;->buf:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 137
    return-void
.end method

.method public visitXLocationLength(I)V
    .locals 2
    .param p1, "location_length"    # I

    .line 124
    iget-object v0, p0, Lorg/checkerframework/org/objectweb/asmx/util/ASMifierTypeAnnotationVisitor;->buf:Ljava/lang/StringBuffer;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->setLength(I)V

    .line 125
    iget-object v0, p0, Lorg/checkerframework/org/objectweb/asmx/util/ASMifierTypeAnnotationVisitor;->buf:Ljava/lang/StringBuffer;

    const-string v1, "xav"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget v1, p0, Lorg/checkerframework/org/objectweb/asmx/util/ASMifierTypeAnnotationVisitor;->id:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, ".visitXLocationLength("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 126
    iget-object v0, p0, Lorg/checkerframework/org/objectweb/asmx/util/ASMifierTypeAnnotationVisitor;->buf:Ljava/lang/StringBuffer;

    invoke-virtual {p0, v0, p1}, Lorg/checkerframework/org/objectweb/asmx/util/ASMifierTypeAnnotationVisitor;->appendConstant(Ljava/lang/StringBuffer;I)V

    .line 127
    iget-object v0, p0, Lorg/checkerframework/org/objectweb/asmx/util/ASMifierTypeAnnotationVisitor;->buf:Ljava/lang/StringBuffer;

    const-string v1, ");\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 128
    iget-object v0, p0, Lorg/checkerframework/org/objectweb/asmx/util/ASMifierTypeAnnotationVisitor;->text:Ljava/util/List;

    iget-object v1, p0, Lorg/checkerframework/org/objectweb/asmx/util/ASMifierTypeAnnotationVisitor;->buf:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 129
    return-void
.end method

.method public visitXNameAndArgsSize()V
    .locals 0

    .line 204
    return-void
.end method

.method public visitXNumEntries(I)V
    .locals 2
    .param p1, "num_entries"    # I

    .line 140
    iget-object v0, p0, Lorg/checkerframework/org/objectweb/asmx/util/ASMifierTypeAnnotationVisitor;->buf:Ljava/lang/StringBuffer;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->setLength(I)V

    .line 141
    iget-object v0, p0, Lorg/checkerframework/org/objectweb/asmx/util/ASMifierTypeAnnotationVisitor;->buf:Ljava/lang/StringBuffer;

    const-string v1, "xav"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget v1, p0, Lorg/checkerframework/org/objectweb/asmx/util/ASMifierTypeAnnotationVisitor;->id:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, ".visitXNumEntries("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 142
    iget-object v0, p0, Lorg/checkerframework/org/objectweb/asmx/util/ASMifierTypeAnnotationVisitor;->buf:Ljava/lang/StringBuffer;

    invoke-virtual {p0, v0, p1}, Lorg/checkerframework/org/objectweb/asmx/util/ASMifierTypeAnnotationVisitor;->appendConstant(Ljava/lang/StringBuffer;I)V

    .line 143
    iget-object v0, p0, Lorg/checkerframework/org/objectweb/asmx/util/ASMifierTypeAnnotationVisitor;->buf:Ljava/lang/StringBuffer;

    const-string v1, ");\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 144
    iget-object v0, p0, Lorg/checkerframework/org/objectweb/asmx/util/ASMifierTypeAnnotationVisitor;->text:Ljava/util/List;

    iget-object v1, p0, Lorg/checkerframework/org/objectweb/asmx/util/ASMifierTypeAnnotationVisitor;->buf:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 145
    return-void
.end method

.method public visitXOffset(I)V
    .locals 2
    .param p1, "offset"    # I

    .line 116
    iget-object v0, p0, Lorg/checkerframework/org/objectweb/asmx/util/ASMifierTypeAnnotationVisitor;->buf:Ljava/lang/StringBuffer;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->setLength(I)V

    .line 117
    iget-object v0, p0, Lorg/checkerframework/org/objectweb/asmx/util/ASMifierTypeAnnotationVisitor;->buf:Ljava/lang/StringBuffer;

    const-string v1, "xav"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget v1, p0, Lorg/checkerframework/org/objectweb/asmx/util/ASMifierTypeAnnotationVisitor;->id:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, ".visitXOffset("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 118
    iget-object v0, p0, Lorg/checkerframework/org/objectweb/asmx/util/ASMifierTypeAnnotationVisitor;->buf:Ljava/lang/StringBuffer;

    invoke-virtual {p0, v0, p1}, Lorg/checkerframework/org/objectweb/asmx/util/ASMifierTypeAnnotationVisitor;->appendConstant(Ljava/lang/StringBuffer;I)V

    .line 119
    iget-object v0, p0, Lorg/checkerframework/org/objectweb/asmx/util/ASMifierTypeAnnotationVisitor;->buf:Ljava/lang/StringBuffer;

    const-string v1, ");\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 120
    iget-object v0, p0, Lorg/checkerframework/org/objectweb/asmx/util/ASMifierTypeAnnotationVisitor;->text:Ljava/util/List;

    iget-object v1, p0, Lorg/checkerframework/org/objectweb/asmx/util/ASMifierTypeAnnotationVisitor;->buf:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 121
    return-void
.end method

.method public visitXParamIndex(I)V
    .locals 2
    .param p1, "param_index"    # I

    .line 172
    iget-object v0, p0, Lorg/checkerframework/org/objectweb/asmx/util/ASMifierTypeAnnotationVisitor;->buf:Ljava/lang/StringBuffer;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->setLength(I)V

    .line 173
    iget-object v0, p0, Lorg/checkerframework/org/objectweb/asmx/util/ASMifierTypeAnnotationVisitor;->buf:Ljava/lang/StringBuffer;

    const-string v1, "xav"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget v1, p0, Lorg/checkerframework/org/objectweb/asmx/util/ASMifierTypeAnnotationVisitor;->id:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, ".visitXParamIndex("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 174
    iget-object v0, p0, Lorg/checkerframework/org/objectweb/asmx/util/ASMifierTypeAnnotationVisitor;->buf:Ljava/lang/StringBuffer;

    invoke-virtual {p0, v0, p1}, Lorg/checkerframework/org/objectweb/asmx/util/ASMifierTypeAnnotationVisitor;->appendConstant(Ljava/lang/StringBuffer;I)V

    .line 175
    iget-object v0, p0, Lorg/checkerframework/org/objectweb/asmx/util/ASMifierTypeAnnotationVisitor;->buf:Ljava/lang/StringBuffer;

    const-string v1, ");\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 176
    iget-object v0, p0, Lorg/checkerframework/org/objectweb/asmx/util/ASMifierTypeAnnotationVisitor;->text:Ljava/util/List;

    iget-object v1, p0, Lorg/checkerframework/org/objectweb/asmx/util/ASMifierTypeAnnotationVisitor;->buf:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 177
    return-void
.end method

.method public visitXStartPc(I)V
    .locals 2
    .param p1, "start_pc"    # I

    .line 148
    iget-object v0, p0, Lorg/checkerframework/org/objectweb/asmx/util/ASMifierTypeAnnotationVisitor;->buf:Ljava/lang/StringBuffer;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->setLength(I)V

    .line 149
    iget-object v0, p0, Lorg/checkerframework/org/objectweb/asmx/util/ASMifierTypeAnnotationVisitor;->buf:Ljava/lang/StringBuffer;

    const-string v1, "xav"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget v1, p0, Lorg/checkerframework/org/objectweb/asmx/util/ASMifierTypeAnnotationVisitor;->id:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, ".visitXStartPc("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 150
    iget-object v0, p0, Lorg/checkerframework/org/objectweb/asmx/util/ASMifierTypeAnnotationVisitor;->buf:Ljava/lang/StringBuffer;

    invoke-virtual {p0, v0, p1}, Lorg/checkerframework/org/objectweb/asmx/util/ASMifierTypeAnnotationVisitor;->appendConstant(Ljava/lang/StringBuffer;I)V

    .line 151
    iget-object v0, p0, Lorg/checkerframework/org/objectweb/asmx/util/ASMifierTypeAnnotationVisitor;->buf:Ljava/lang/StringBuffer;

    const-string v1, ");\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 152
    iget-object v0, p0, Lorg/checkerframework/org/objectweb/asmx/util/ASMifierTypeAnnotationVisitor;->text:Ljava/util/List;

    iget-object v1, p0, Lorg/checkerframework/org/objectweb/asmx/util/ASMifierTypeAnnotationVisitor;->buf:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 153
    return-void
.end method

.method public visitXTargetType(I)V
    .locals 2
    .param p1, "target_type"    # I

    .line 108
    iget-object v0, p0, Lorg/checkerframework/org/objectweb/asmx/util/ASMifierTypeAnnotationVisitor;->buf:Ljava/lang/StringBuffer;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->setLength(I)V

    .line 109
    iget-object v0, p0, Lorg/checkerframework/org/objectweb/asmx/util/ASMifierTypeAnnotationVisitor;->buf:Ljava/lang/StringBuffer;

    const-string v1, "xav"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget v1, p0, Lorg/checkerframework/org/objectweb/asmx/util/ASMifierTypeAnnotationVisitor;->id:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, ".visitXTargetType("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 110
    iget-object v0, p0, Lorg/checkerframework/org/objectweb/asmx/util/ASMifierTypeAnnotationVisitor;->buf:Ljava/lang/StringBuffer;

    invoke-virtual {p0, v0, p1}, Lorg/checkerframework/org/objectweb/asmx/util/ASMifierTypeAnnotationVisitor;->appendConstant(Ljava/lang/StringBuffer;I)V

    .line 111
    iget-object v0, p0, Lorg/checkerframework/org/objectweb/asmx/util/ASMifierTypeAnnotationVisitor;->buf:Ljava/lang/StringBuffer;

    const-string v1, ");\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 112
    iget-object v0, p0, Lorg/checkerframework/org/objectweb/asmx/util/ASMifierTypeAnnotationVisitor;->text:Ljava/util/List;

    iget-object v1, p0, Lorg/checkerframework/org/objectweb/asmx/util/ASMifierTypeAnnotationVisitor;->buf:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 113
    return-void
.end method

.method public visitXTypeIndex(I)V
    .locals 2
    .param p1, "type_index"    # I

    .line 188
    iget-object v0, p0, Lorg/checkerframework/org/objectweb/asmx/util/ASMifierTypeAnnotationVisitor;->buf:Ljava/lang/StringBuffer;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->setLength(I)V

    .line 189
    iget-object v0, p0, Lorg/checkerframework/org/objectweb/asmx/util/ASMifierTypeAnnotationVisitor;->buf:Ljava/lang/StringBuffer;

    const-string v1, "xav"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget v1, p0, Lorg/checkerframework/org/objectweb/asmx/util/ASMifierTypeAnnotationVisitor;->id:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, ".visitXTypeIndex("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 190
    iget-object v0, p0, Lorg/checkerframework/org/objectweb/asmx/util/ASMifierTypeAnnotationVisitor;->buf:Ljava/lang/StringBuffer;

    invoke-virtual {p0, v0, p1}, Lorg/checkerframework/org/objectweb/asmx/util/ASMifierTypeAnnotationVisitor;->appendConstant(Ljava/lang/StringBuffer;I)V

    .line 191
    iget-object v0, p0, Lorg/checkerframework/org/objectweb/asmx/util/ASMifierTypeAnnotationVisitor;->buf:Ljava/lang/StringBuffer;

    const-string v1, ");\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 192
    iget-object v0, p0, Lorg/checkerframework/org/objectweb/asmx/util/ASMifierTypeAnnotationVisitor;->text:Ljava/util/List;

    iget-object v1, p0, Lorg/checkerframework/org/objectweb/asmx/util/ASMifierTypeAnnotationVisitor;->buf:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 193
    return-void
.end method
