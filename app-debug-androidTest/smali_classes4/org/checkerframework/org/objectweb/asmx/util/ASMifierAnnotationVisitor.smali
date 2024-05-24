.class public Lorg/checkerframework/org/objectweb/asmx/util/ASMifierAnnotationVisitor;
.super Lorg/checkerframework/org/objectweb/asmx/util/AbstractVisitor;
.source "ASMifierAnnotationVisitor.java"

# interfaces
.implements Lorg/checkerframework/org/objectweb/asmx/AnnotationVisitor;


# instance fields
.field protected final id:I


# direct methods
.method public constructor <init>(I)V
    .locals 0
    .param p1, "id"    # I

    .line 55
    invoke-direct {p0}, Lorg/checkerframework/org/objectweb/asmx/util/AbstractVisitor;-><init>()V

    .line 56
    iput p1, p0, Lorg/checkerframework/org/objectweb/asmx/util/ASMifierAnnotationVisitor;->id:I

    .line 57
    return-void
.end method


# virtual methods
.method public visit(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/Object;

    .line 64
    iget-object v0, p0, Lorg/checkerframework/org/objectweb/asmx/util/ASMifierAnnotationVisitor;->buf:Ljava/lang/StringBuffer;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->setLength(I)V

    .line 65
    iget-object v0, p0, Lorg/checkerframework/org/objectweb/asmx/util/ASMifierAnnotationVisitor;->buf:Ljava/lang/StringBuffer;

    const-string v1, "av"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget v1, p0, Lorg/checkerframework/org/objectweb/asmx/util/ASMifierAnnotationVisitor;->id:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, ".visit("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 66
    iget-object v0, p0, Lorg/checkerframework/org/objectweb/asmx/util/ASMifierAnnotationVisitor;->buf:Ljava/lang/StringBuffer;

    invoke-static {v0, p1}, Lorg/checkerframework/org/objectweb/asmx/util/ASMifierAbstractVisitor;->appendConstant(Ljava/lang/StringBuffer;Ljava/lang/Object;)V

    .line 67
    iget-object v0, p0, Lorg/checkerframework/org/objectweb/asmx/util/ASMifierAnnotationVisitor;->buf:Ljava/lang/StringBuffer;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 68
    iget-object v0, p0, Lorg/checkerframework/org/objectweb/asmx/util/ASMifierAnnotationVisitor;->buf:Ljava/lang/StringBuffer;

    invoke-static {v0, p2}, Lorg/checkerframework/org/objectweb/asmx/util/ASMifierAbstractVisitor;->appendConstant(Ljava/lang/StringBuffer;Ljava/lang/Object;)V

    .line 69
    iget-object v0, p0, Lorg/checkerframework/org/objectweb/asmx/util/ASMifierAnnotationVisitor;->buf:Ljava/lang/StringBuffer;

    const-string v1, ");\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 70
    iget-object v0, p0, Lorg/checkerframework/org/objectweb/asmx/util/ASMifierAnnotationVisitor;->text:Ljava/util/List;

    iget-object v1, p0, Lorg/checkerframework/org/objectweb/asmx/util/ASMifierAnnotationVisitor;->buf:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 71
    return-void
.end method

.method public visitAnnotation(Ljava/lang/String;Ljava/lang/String;)Lorg/checkerframework/org/objectweb/asmx/AnnotationVisitor;
    .locals 3
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "desc"    # Ljava/lang/String;

    .line 93
    iget-object v0, p0, Lorg/checkerframework/org/objectweb/asmx/util/ASMifierAnnotationVisitor;->buf:Ljava/lang/StringBuffer;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->setLength(I)V

    .line 94
    iget-object v0, p0, Lorg/checkerframework/org/objectweb/asmx/util/ASMifierAnnotationVisitor;->buf:Ljava/lang/StringBuffer;

    const-string v1, "{\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 95
    iget-object v0, p0, Lorg/checkerframework/org/objectweb/asmx/util/ASMifierAnnotationVisitor;->buf:Ljava/lang/StringBuffer;

    const-string v1, "AnnotationVisitor av"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget v1, p0, Lorg/checkerframework/org/objectweb/asmx/util/ASMifierAnnotationVisitor;->id:I

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, " = av"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 96
    iget-object v0, p0, Lorg/checkerframework/org/objectweb/asmx/util/ASMifierAnnotationVisitor;->buf:Ljava/lang/StringBuffer;

    iget v1, p0, Lorg/checkerframework/org/objectweb/asmx/util/ASMifierAnnotationVisitor;->id:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, ".visitAnnotation("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 97
    iget-object v0, p0, Lorg/checkerframework/org/objectweb/asmx/util/ASMifierAnnotationVisitor;->buf:Ljava/lang/StringBuffer;

    invoke-static {v0, p1}, Lorg/checkerframework/org/objectweb/asmx/util/ASMifierAbstractVisitor;->appendConstant(Ljava/lang/StringBuffer;Ljava/lang/Object;)V

    .line 98
    iget-object v0, p0, Lorg/checkerframework/org/objectweb/asmx/util/ASMifierAnnotationVisitor;->buf:Ljava/lang/StringBuffer;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 99
    iget-object v0, p0, Lorg/checkerframework/org/objectweb/asmx/util/ASMifierAnnotationVisitor;->buf:Ljava/lang/StringBuffer;

    invoke-static {v0, p2}, Lorg/checkerframework/org/objectweb/asmx/util/ASMifierAbstractVisitor;->appendConstant(Ljava/lang/StringBuffer;Ljava/lang/Object;)V

    .line 100
    iget-object v0, p0, Lorg/checkerframework/org/objectweb/asmx/util/ASMifierAnnotationVisitor;->buf:Ljava/lang/StringBuffer;

    const-string v1, ");\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 101
    iget-object v0, p0, Lorg/checkerframework/org/objectweb/asmx/util/ASMifierAnnotationVisitor;->text:Ljava/util/List;

    iget-object v1, p0, Lorg/checkerframework/org/objectweb/asmx/util/ASMifierAnnotationVisitor;->buf:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 102
    new-instance v0, Lorg/checkerframework/org/objectweb/asmx/util/ASMifierAnnotationVisitor;

    iget v1, p0, Lorg/checkerframework/org/objectweb/asmx/util/ASMifierAnnotationVisitor;->id:I

    add-int/lit8 v1, v1, 0x1

    invoke-direct {v0, v1}, Lorg/checkerframework/org/objectweb/asmx/util/ASMifierAnnotationVisitor;-><init>(I)V

    .line 103
    .local v0, "av":Lorg/checkerframework/org/objectweb/asmx/util/ASMifierAnnotationVisitor;
    iget-object v1, p0, Lorg/checkerframework/org/objectweb/asmx/util/ASMifierAnnotationVisitor;->text:Ljava/util/List;

    invoke-virtual {v0}, Lorg/checkerframework/org/objectweb/asmx/util/ASMifierAnnotationVisitor;->getText()Ljava/util/List;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 104
    iget-object v1, p0, Lorg/checkerframework/org/objectweb/asmx/util/ASMifierAnnotationVisitor;->text:Ljava/util/List;

    const-string v2, "}\n"

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 105
    return-object v0
.end method

.method public visitArray(Ljava/lang/String;)Lorg/checkerframework/org/objectweb/asmx/AnnotationVisitor;
    .locals 3
    .param p1, "name"    # Ljava/lang/String;

    .line 109
    iget-object v0, p0, Lorg/checkerframework/org/objectweb/asmx/util/ASMifierAnnotationVisitor;->buf:Ljava/lang/StringBuffer;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->setLength(I)V

    .line 110
    iget-object v0, p0, Lorg/checkerframework/org/objectweb/asmx/util/ASMifierAnnotationVisitor;->buf:Ljava/lang/StringBuffer;

    const-string v1, "{\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 111
    iget-object v0, p0, Lorg/checkerframework/org/objectweb/asmx/util/ASMifierAnnotationVisitor;->buf:Ljava/lang/StringBuffer;

    const-string v1, "AnnotationVisitor av"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget v1, p0, Lorg/checkerframework/org/objectweb/asmx/util/ASMifierAnnotationVisitor;->id:I

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, " = av"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 112
    iget-object v0, p0, Lorg/checkerframework/org/objectweb/asmx/util/ASMifierAnnotationVisitor;->buf:Ljava/lang/StringBuffer;

    iget v1, p0, Lorg/checkerframework/org/objectweb/asmx/util/ASMifierAnnotationVisitor;->id:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, ".visitArray("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 113
    iget-object v0, p0, Lorg/checkerframework/org/objectweb/asmx/util/ASMifierAnnotationVisitor;->buf:Ljava/lang/StringBuffer;

    invoke-static {v0, p1}, Lorg/checkerframework/org/objectweb/asmx/util/ASMifierAbstractVisitor;->appendConstant(Ljava/lang/StringBuffer;Ljava/lang/Object;)V

    .line 114
    iget-object v0, p0, Lorg/checkerframework/org/objectweb/asmx/util/ASMifierAnnotationVisitor;->buf:Ljava/lang/StringBuffer;

    const-string v1, ");\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 115
    iget-object v0, p0, Lorg/checkerframework/org/objectweb/asmx/util/ASMifierAnnotationVisitor;->text:Ljava/util/List;

    iget-object v1, p0, Lorg/checkerframework/org/objectweb/asmx/util/ASMifierAnnotationVisitor;->buf:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 116
    new-instance v0, Lorg/checkerframework/org/objectweb/asmx/util/ASMifierAnnotationVisitor;

    iget v1, p0, Lorg/checkerframework/org/objectweb/asmx/util/ASMifierAnnotationVisitor;->id:I

    add-int/lit8 v1, v1, 0x1

    invoke-direct {v0, v1}, Lorg/checkerframework/org/objectweb/asmx/util/ASMifierAnnotationVisitor;-><init>(I)V

    .line 117
    .local v0, "av":Lorg/checkerframework/org/objectweb/asmx/util/ASMifierAnnotationVisitor;
    iget-object v1, p0, Lorg/checkerframework/org/objectweb/asmx/util/ASMifierAnnotationVisitor;->text:Ljava/util/List;

    invoke-virtual {v0}, Lorg/checkerframework/org/objectweb/asmx/util/ASMifierAnnotationVisitor;->getText()Ljava/util/List;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 118
    iget-object v1, p0, Lorg/checkerframework/org/objectweb/asmx/util/ASMifierAnnotationVisitor;->text:Ljava/util/List;

    const-string v2, "}\n"

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 119
    return-object v0
.end method

.method public visitEnd()V
    .locals 2

    .line 123
    iget-object v0, p0, Lorg/checkerframework/org/objectweb/asmx/util/ASMifierAnnotationVisitor;->buf:Ljava/lang/StringBuffer;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->setLength(I)V

    .line 124
    iget-object v0, p0, Lorg/checkerframework/org/objectweb/asmx/util/ASMifierAnnotationVisitor;->buf:Ljava/lang/StringBuffer;

    const-string v1, "av"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget v1, p0, Lorg/checkerframework/org/objectweb/asmx/util/ASMifierAnnotationVisitor;->id:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, ".visitEnd();\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 125
    iget-object v0, p0, Lorg/checkerframework/org/objectweb/asmx/util/ASMifierAnnotationVisitor;->text:Ljava/util/List;

    iget-object v1, p0, Lorg/checkerframework/org/objectweb/asmx/util/ASMifierAnnotationVisitor;->buf:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 126
    return-void
.end method

.method public visitEnum(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "desc"    # Ljava/lang/String;
    .param p3, "value"    # Ljava/lang/String;

    .line 78
    iget-object v0, p0, Lorg/checkerframework/org/objectweb/asmx/util/ASMifierAnnotationVisitor;->buf:Ljava/lang/StringBuffer;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->setLength(I)V

    .line 79
    iget-object v0, p0, Lorg/checkerframework/org/objectweb/asmx/util/ASMifierAnnotationVisitor;->buf:Ljava/lang/StringBuffer;

    const-string v1, "av"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget v1, p0, Lorg/checkerframework/org/objectweb/asmx/util/ASMifierAnnotationVisitor;->id:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, ".visitEnum("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 80
    iget-object v0, p0, Lorg/checkerframework/org/objectweb/asmx/util/ASMifierAnnotationVisitor;->buf:Ljava/lang/StringBuffer;

    invoke-static {v0, p1}, Lorg/checkerframework/org/objectweb/asmx/util/ASMifierAbstractVisitor;->appendConstant(Ljava/lang/StringBuffer;Ljava/lang/Object;)V

    .line 81
    iget-object v0, p0, Lorg/checkerframework/org/objectweb/asmx/util/ASMifierAnnotationVisitor;->buf:Ljava/lang/StringBuffer;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 82
    iget-object v0, p0, Lorg/checkerframework/org/objectweb/asmx/util/ASMifierAnnotationVisitor;->buf:Ljava/lang/StringBuffer;

    invoke-static {v0, p2}, Lorg/checkerframework/org/objectweb/asmx/util/ASMifierAbstractVisitor;->appendConstant(Ljava/lang/StringBuffer;Ljava/lang/Object;)V

    .line 83
    iget-object v0, p0, Lorg/checkerframework/org/objectweb/asmx/util/ASMifierAnnotationVisitor;->buf:Ljava/lang/StringBuffer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 84
    iget-object v0, p0, Lorg/checkerframework/org/objectweb/asmx/util/ASMifierAnnotationVisitor;->buf:Ljava/lang/StringBuffer;

    invoke-static {v0, p3}, Lorg/checkerframework/org/objectweb/asmx/util/ASMifierAbstractVisitor;->appendConstant(Ljava/lang/StringBuffer;Ljava/lang/Object;)V

    .line 85
    iget-object v0, p0, Lorg/checkerframework/org/objectweb/asmx/util/ASMifierAnnotationVisitor;->buf:Ljava/lang/StringBuffer;

    const-string v1, ");\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 86
    iget-object v0, p0, Lorg/checkerframework/org/objectweb/asmx/util/ASMifierAnnotationVisitor;->text:Ljava/util/List;

    iget-object v1, p0, Lorg/checkerframework/org/objectweb/asmx/util/ASMifierAnnotationVisitor;->buf:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 87
    return-void
.end method
