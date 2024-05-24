.class public abstract Lorg/checkerframework/org/objectweb/asmx/util/TraceAbstractVisitor;
.super Lorg/checkerframework/org/objectweb/asmx/util/AbstractVisitor;
.source "TraceAbstractVisitor.java"


# static fields
.field public static final CLASS_DECLARATION:I = 0x7

.field public static final CLASS_SIGNATURE:I = 0x5

.field public static final FIELD_DESCRIPTOR:I = 0x1

.field public static final FIELD_SIGNATURE:I = 0x2

.field public static final INTERNAL_NAME:I = 0x0

.field public static final METHOD_DESCRIPTOR:I = 0x3

.field public static final METHOD_SIGNATURE:I = 0x4

.field public static final PARAMETERS_DECLARATION:I = 0x8

.field public static final TYPE_DECLARATION:I = 0x6


# instance fields
.field protected tab:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 42
    invoke-direct {p0}, Lorg/checkerframework/org/objectweb/asmx/util/AbstractVisitor;-><init>()V

    .line 102
    const-string v0, "  "

    iput-object v0, p0, Lorg/checkerframework/org/objectweb/asmx/util/TraceAbstractVisitor;->tab:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method protected appendDescriptor(ILjava/lang/String;)V
    .locals 2
    .param p1, "type"    # I
    .param p2, "desc"    # Ljava/lang/String;

    .line 194
    const/4 v0, 0x5

    if-eq p1, v0, :cond_1

    const/4 v0, 0x2

    if-eq p1, v0, :cond_1

    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    goto :goto_0

    .line 201
    :cond_0
    iget-object v0, p0, Lorg/checkerframework/org/objectweb/asmx/util/TraceAbstractVisitor;->buf:Ljava/lang/StringBuffer;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_1

    .line 197
    :cond_1
    :goto_0
    if-eqz p2, :cond_2

    .line 198
    iget-object v0, p0, Lorg/checkerframework/org/objectweb/asmx/util/TraceAbstractVisitor;->buf:Ljava/lang/StringBuffer;

    const-string v1, "// signature "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 203
    :cond_2
    :goto_1
    return-void
.end method

.method protected createTraceAnnotationVisitor()Lorg/checkerframework/org/objectweb/asmx/util/TraceAnnotationVisitor;
    .locals 1

    .line 175
    new-instance v0, Lorg/checkerframework/org/objectweb/asmx/util/TraceAnnotationVisitor;

    invoke-direct {v0}, Lorg/checkerframework/org/objectweb/asmx/util/TraceAnnotationVisitor;-><init>()V

    return-object v0
.end method

.method protected createTraceTypeAnnotationVisitor()Lorg/checkerframework/org/objectweb/asmx/util/TraceTypeAnnotationVisitor;
    .locals 1

    .line 180
    new-instance v0, Lorg/checkerframework/org/objectweb/asmx/util/TraceTypeAnnotationVisitor;

    invoke-direct {v0}, Lorg/checkerframework/org/objectweb/asmx/util/TraceTypeAnnotationVisitor;-><init>()V

    return-object v0
.end method

.method public visitAnnotation(Ljava/lang/String;Z)Lorg/checkerframework/org/objectweb/asmx/AnnotationVisitor;
    .locals 3
    .param p1, "desc"    # Ljava/lang/String;
    .param p2, "visible"    # Z

    .line 115
    iget-object v0, p0, Lorg/checkerframework/org/objectweb/asmx/util/TraceAbstractVisitor;->buf:Ljava/lang/StringBuffer;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->setLength(I)V

    .line 116
    iget-object v0, p0, Lorg/checkerframework/org/objectweb/asmx/util/TraceAbstractVisitor;->buf:Ljava/lang/StringBuffer;

    iget-object v1, p0, Lorg/checkerframework/org/objectweb/asmx/util/TraceAbstractVisitor;->tab:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const/16 v1, 0x40

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 117
    const/4 v0, 0x1

    invoke-virtual {p0, v0, p1}, Lorg/checkerframework/org/objectweb/asmx/util/TraceAbstractVisitor;->appendDescriptor(ILjava/lang/String;)V

    .line 118
    iget-object v0, p0, Lorg/checkerframework/org/objectweb/asmx/util/TraceAbstractVisitor;->buf:Ljava/lang/StringBuffer;

    const/16 v1, 0x28

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 119
    iget-object v0, p0, Lorg/checkerframework/org/objectweb/asmx/util/TraceAbstractVisitor;->text:Ljava/util/List;

    iget-object v1, p0, Lorg/checkerframework/org/objectweb/asmx/util/TraceAbstractVisitor;->buf:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 120
    invoke-virtual {p0}, Lorg/checkerframework/org/objectweb/asmx/util/TraceAbstractVisitor;->createTraceAnnotationVisitor()Lorg/checkerframework/org/objectweb/asmx/util/TraceAnnotationVisitor;

    move-result-object v0

    .line 121
    .local v0, "tav":Lorg/checkerframework/org/objectweb/asmx/util/TraceAnnotationVisitor;
    iget-object v1, p0, Lorg/checkerframework/org/objectweb/asmx/util/TraceAbstractVisitor;->text:Ljava/util/List;

    invoke-virtual {v0}, Lorg/checkerframework/org/objectweb/asmx/util/TraceAnnotationVisitor;->getText()Ljava/util/List;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 122
    iget-object v1, p0, Lorg/checkerframework/org/objectweb/asmx/util/TraceAbstractVisitor;->text:Ljava/util/List;

    if-eqz p2, :cond_0

    const-string v2, ")\n"

    goto :goto_0

    :cond_0
    const-string v2, ") // invisible\n"

    :goto_0
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 123
    return-object v0
.end method

.method public visitAttribute(Lorg/checkerframework/org/objectweb/asmx/Attribute;)V
    .locals 3
    .param p1, "attr"    # Lorg/checkerframework/org/objectweb/asmx/Attribute;

    .line 150
    iget-object v0, p0, Lorg/checkerframework/org/objectweb/asmx/util/TraceAbstractVisitor;->buf:Ljava/lang/StringBuffer;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->setLength(I)V

    .line 151
    iget-object v0, p0, Lorg/checkerframework/org/objectweb/asmx/util/TraceAbstractVisitor;->buf:Ljava/lang/StringBuffer;

    iget-object v1, p0, Lorg/checkerframework/org/objectweb/asmx/util/TraceAbstractVisitor;->tab:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, "ATTRIBUTE "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 152
    const/4 v0, -0x1

    iget-object v1, p1, Lorg/checkerframework/org/objectweb/asmx/Attribute;->type:Ljava/lang/String;

    invoke-virtual {p0, v0, v1}, Lorg/checkerframework/org/objectweb/asmx/util/TraceAbstractVisitor;->appendDescriptor(ILjava/lang/String;)V

    .line 154
    instance-of v0, p1, Lorg/checkerframework/org/objectweb/asmx/util/attrs/Traceable;

    if-eqz v0, :cond_0

    .line 155
    move-object v0, p1

    check-cast v0, Lorg/checkerframework/org/objectweb/asmx/util/attrs/Traceable;

    iget-object v1, p0, Lorg/checkerframework/org/objectweb/asmx/util/TraceAbstractVisitor;->buf:Ljava/lang/StringBuffer;

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lorg/checkerframework/org/objectweb/asmx/util/attrs/Traceable;->trace(Ljava/lang/StringBuffer;Ljava/util/Map;)V

    goto :goto_0

    .line 157
    :cond_0
    iget-object v0, p0, Lorg/checkerframework/org/objectweb/asmx/util/TraceAbstractVisitor;->buf:Ljava/lang/StringBuffer;

    const-string v1, " : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 160
    :goto_0
    iget-object v0, p0, Lorg/checkerframework/org/objectweb/asmx/util/TraceAbstractVisitor;->text:Ljava/util/List;

    iget-object v1, p0, Lorg/checkerframework/org/objectweb/asmx/util/TraceAbstractVisitor;->buf:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 161
    return-void
.end method

.method public visitEnd()V
    .locals 0

    .line 168
    return-void
.end method

.method public visitTypeAnnotation(Ljava/lang/String;Z)Lorg/checkerframework/org/objectweb/asmx/TypeAnnotationVisitor;
    .locals 3
    .param p1, "desc"    # Ljava/lang/String;
    .param p2, "visible"    # Z

    .line 131
    iget-object v0, p0, Lorg/checkerframework/org/objectweb/asmx/util/TraceAbstractVisitor;->buf:Ljava/lang/StringBuffer;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->setLength(I)V

    .line 132
    iget-object v0, p0, Lorg/checkerframework/org/objectweb/asmx/util/TraceAbstractVisitor;->buf:Ljava/lang/StringBuffer;

    iget-object v1, p0, Lorg/checkerframework/org/objectweb/asmx/util/TraceAbstractVisitor;->tab:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const/16 v1, 0x40

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 133
    const/4 v0, 0x1

    invoke-virtual {p0, v0, p1}, Lorg/checkerframework/org/objectweb/asmx/util/TraceAbstractVisitor;->appendDescriptor(ILjava/lang/String;)V

    .line 134
    iget-object v0, p0, Lorg/checkerframework/org/objectweb/asmx/util/TraceAbstractVisitor;->buf:Ljava/lang/StringBuffer;

    const/16 v1, 0x28

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 135
    iget-object v0, p0, Lorg/checkerframework/org/objectweb/asmx/util/TraceAbstractVisitor;->text:Ljava/util/List;

    iget-object v1, p0, Lorg/checkerframework/org/objectweb/asmx/util/TraceAbstractVisitor;->buf:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 136
    nop

    .line 137
    invoke-virtual {p0}, Lorg/checkerframework/org/objectweb/asmx/util/TraceAbstractVisitor;->createTraceTypeAnnotationVisitor()Lorg/checkerframework/org/objectweb/asmx/util/TraceTypeAnnotationVisitor;

    move-result-object v0

    .line 138
    .local v0, "txav":Lorg/checkerframework/org/objectweb/asmx/util/TraceTypeAnnotationVisitor;
    iget-object v1, p0, Lorg/checkerframework/org/objectweb/asmx/util/TraceAbstractVisitor;->text:Ljava/util/List;

    invoke-virtual {v0}, Lorg/checkerframework/org/objectweb/asmx/util/TraceTypeAnnotationVisitor;->getText()Ljava/util/List;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 139
    iget-object v1, p0, Lorg/checkerframework/org/objectweb/asmx/util/TraceAbstractVisitor;->text:Ljava/util/List;

    if-eqz p2, :cond_0

    const-string v2, ")\n"

    goto :goto_0

    :cond_0
    const-string v2, ") // invisible\n"

    :goto_0
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 140
    return-object v0
.end method
