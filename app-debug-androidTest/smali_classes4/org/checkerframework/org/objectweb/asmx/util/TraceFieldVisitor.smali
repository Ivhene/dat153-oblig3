.class public Lorg/checkerframework/org/objectweb/asmx/util/TraceFieldVisitor;
.super Lorg/checkerframework/org/objectweb/asmx/util/TraceAbstractVisitor;
.source "TraceFieldVisitor.java"

# interfaces
.implements Lorg/checkerframework/org/objectweb/asmx/FieldVisitor;


# instance fields
.field protected fv:Lorg/checkerframework/org/objectweb/asmx/FieldVisitor;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 43
    invoke-direct {p0}, Lorg/checkerframework/org/objectweb/asmx/util/TraceAbstractVisitor;-><init>()V

    return-void
.end method


# virtual methods
.method public visitAnnotation(Ljava/lang/String;Z)Lorg/checkerframework/org/objectweb/asmx/AnnotationVisitor;
    .locals 3
    .param p1, "desc"    # Ljava/lang/String;
    .param p2, "visible"    # Z

    .line 57
    invoke-super {p0, p1, p2}, Lorg/checkerframework/org/objectweb/asmx/util/TraceAbstractVisitor;->visitAnnotation(Ljava/lang/String;Z)Lorg/checkerframework/org/objectweb/asmx/AnnotationVisitor;

    move-result-object v0

    .line 58
    .local v0, "av":Lorg/checkerframework/org/objectweb/asmx/AnnotationVisitor;
    iget-object v1, p0, Lorg/checkerframework/org/objectweb/asmx/util/TraceFieldVisitor;->fv:Lorg/checkerframework/org/objectweb/asmx/FieldVisitor;

    if-eqz v1, :cond_0

    .line 59
    move-object v2, v0

    check-cast v2, Lorg/checkerframework/org/objectweb/asmx/util/TraceAnnotationVisitor;

    invoke-interface {v1, p1, p2}, Lorg/checkerframework/org/objectweb/asmx/FieldVisitor;->visitAnnotation(Ljava/lang/String;Z)Lorg/checkerframework/org/objectweb/asmx/AnnotationVisitor;

    move-result-object v1

    iput-object v1, v2, Lorg/checkerframework/org/objectweb/asmx/util/TraceAnnotationVisitor;->av:Lorg/checkerframework/org/objectweb/asmx/AnnotationVisitor;

    .line 61
    :cond_0
    return-object v0
.end method

.method public visitAttribute(Lorg/checkerframework/org/objectweb/asmx/Attribute;)V
    .locals 1
    .param p1, "attr"    # Lorg/checkerframework/org/objectweb/asmx/Attribute;

    .line 79
    invoke-super {p0, p1}, Lorg/checkerframework/org/objectweb/asmx/util/TraceAbstractVisitor;->visitAttribute(Lorg/checkerframework/org/objectweb/asmx/Attribute;)V

    .line 81
    iget-object v0, p0, Lorg/checkerframework/org/objectweb/asmx/util/TraceFieldVisitor;->fv:Lorg/checkerframework/org/objectweb/asmx/FieldVisitor;

    if-eqz v0, :cond_0

    .line 82
    invoke-interface {v0, p1}, Lorg/checkerframework/org/objectweb/asmx/FieldVisitor;->visitAttribute(Lorg/checkerframework/org/objectweb/asmx/Attribute;)V

    .line 84
    :cond_0
    return-void
.end method

.method public visitEnd()V
    .locals 1

    .line 87
    invoke-super {p0}, Lorg/checkerframework/org/objectweb/asmx/util/TraceAbstractVisitor;->visitEnd()V

    .line 89
    iget-object v0, p0, Lorg/checkerframework/org/objectweb/asmx/util/TraceFieldVisitor;->fv:Lorg/checkerframework/org/objectweb/asmx/FieldVisitor;

    if-eqz v0, :cond_0

    .line 90
    invoke-interface {v0}, Lorg/checkerframework/org/objectweb/asmx/FieldVisitor;->visitEnd()V

    .line 92
    :cond_0
    return-void
.end method

.method public visitTypeAnnotation(Ljava/lang/String;ZZ)Lorg/checkerframework/org/objectweb/asmx/TypeAnnotationVisitor;
    .locals 3
    .param p1, "desc"    # Ljava/lang/String;
    .param p2, "visible"    # Z
    .param p3, "inCode"    # Z

    .line 70
    invoke-super {p0, p1, p2}, Lorg/checkerframework/org/objectweb/asmx/util/TraceAbstractVisitor;->visitTypeAnnotation(Ljava/lang/String;Z)Lorg/checkerframework/org/objectweb/asmx/TypeAnnotationVisitor;

    move-result-object v0

    .line 71
    .local v0, "xav":Lorg/checkerframework/org/objectweb/asmx/TypeAnnotationVisitor;
    iget-object v1, p0, Lorg/checkerframework/org/objectweb/asmx/util/TraceFieldVisitor;->fv:Lorg/checkerframework/org/objectweb/asmx/FieldVisitor;

    if-eqz v1, :cond_0

    .line 72
    move-object v2, v0

    check-cast v2, Lorg/checkerframework/org/objectweb/asmx/util/TraceTypeAnnotationVisitor;

    invoke-interface {v1, p1, p2, p3}, Lorg/checkerframework/org/objectweb/asmx/FieldVisitor;->visitTypeAnnotation(Ljava/lang/String;ZZ)Lorg/checkerframework/org/objectweb/asmx/TypeAnnotationVisitor;

    move-result-object v1

    iput-object v1, v2, Lorg/checkerframework/org/objectweb/asmx/util/TraceTypeAnnotationVisitor;->xav:Lorg/checkerframework/org/objectweb/asmx/TypeAnnotationVisitor;

    .line 74
    :cond_0
    return-object v0
.end method
