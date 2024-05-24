.class public Lorg/checkerframework/org/objectweb/asmx/util/CheckAnnotationAdapter;
.super Ljava/lang/Object;
.source "CheckAnnotationAdapter.java"

# interfaces
.implements Lorg/checkerframework/org/objectweb/asmx/AnnotationVisitor;


# instance fields
.field private av:Lorg/checkerframework/org/objectweb/asmx/AnnotationVisitor;

.field private end:Z

.field private named:Z


# direct methods
.method public constructor <init>(Lorg/checkerframework/org/objectweb/asmx/AnnotationVisitor;)V
    .locals 1
    .param p1, "av"    # Lorg/checkerframework/org/objectweb/asmx/AnnotationVisitor;

    .line 49
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lorg/checkerframework/org/objectweb/asmx/util/CheckAnnotationAdapter;-><init>(Lorg/checkerframework/org/objectweb/asmx/AnnotationVisitor;Z)V

    .line 50
    return-void
.end method

.method constructor <init>(Lorg/checkerframework/org/objectweb/asmx/AnnotationVisitor;Z)V
    .locals 0
    .param p1, "av"    # Lorg/checkerframework/org/objectweb/asmx/AnnotationVisitor;
    .param p2, "named"    # Z

    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    iput-object p1, p0, Lorg/checkerframework/org/objectweb/asmx/util/CheckAnnotationAdapter;->av:Lorg/checkerframework/org/objectweb/asmx/AnnotationVisitor;

    .line 57
    iput-boolean p2, p0, Lorg/checkerframework/org/objectweb/asmx/util/CheckAnnotationAdapter;->named:Z

    .line 58
    return-void
.end method

.method private checkEnd()V
    .locals 2

    .line 115
    iget-boolean v0, p0, Lorg/checkerframework/org/objectweb/asmx/util/CheckAnnotationAdapter;->end:Z

    if-nez v0, :cond_0

    .line 118
    return-void

    .line 116
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot call a visit method after visitEnd has been called"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private checkName(Ljava/lang/String;)V
    .locals 2
    .param p1, "name"    # Ljava/lang/String;

    .line 121
    iget-boolean v0, p0, Lorg/checkerframework/org/objectweb/asmx/util/CheckAnnotationAdapter;->named:Z

    if-eqz v0, :cond_1

    if-eqz p1, :cond_0

    goto :goto_0

    .line 122
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Annotation value name must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 124
    :cond_1
    :goto_0
    return-void
.end method


# virtual methods
.method public visit(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/Object;

    .line 61
    invoke-direct {p0}, Lorg/checkerframework/org/objectweb/asmx/util/CheckAnnotationAdapter;->checkEnd()V

    .line 62
    invoke-direct {p0, p1}, Lorg/checkerframework/org/objectweb/asmx/util/CheckAnnotationAdapter;->checkName(Ljava/lang/String;)V

    .line 63
    instance-of v0, p2, Ljava/lang/Byte;

    if-nez v0, :cond_1

    instance-of v0, p2, Ljava/lang/Boolean;

    if-nez v0, :cond_1

    instance-of v0, p2, Ljava/lang/Character;

    if-nez v0, :cond_1

    instance-of v0, p2, Ljava/lang/Short;

    if-nez v0, :cond_1

    instance-of v0, p2, Ljava/lang/Integer;

    if-nez v0, :cond_1

    instance-of v0, p2, Ljava/lang/Long;

    if-nez v0, :cond_1

    instance-of v0, p2, Ljava/lang/Float;

    if-nez v0, :cond_1

    instance-of v0, p2, Ljava/lang/Double;

    if-nez v0, :cond_1

    instance-of v0, p2, Ljava/lang/String;

    if-nez v0, :cond_1

    instance-of v0, p2, Lorg/checkerframework/org/objectweb/asmx/Type;

    if-nez v0, :cond_1

    instance-of v0, p2, [B

    if-nez v0, :cond_1

    instance-of v0, p2, [Z

    if-nez v0, :cond_1

    instance-of v0, p2, [C

    if-nez v0, :cond_1

    instance-of v0, p2, [S

    if-nez v0, :cond_1

    instance-of v0, p2, [I

    if-nez v0, :cond_1

    instance-of v0, p2, [J

    if-nez v0, :cond_1

    instance-of v0, p2, [F

    if-nez v0, :cond_1

    instance-of v0, p2, [D

    if-eqz v0, :cond_0

    goto :goto_0

    .line 73
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Invalid annotation value"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 75
    :cond_1
    :goto_0
    iget-object v0, p0, Lorg/checkerframework/org/objectweb/asmx/util/CheckAnnotationAdapter;->av:Lorg/checkerframework/org/objectweb/asmx/AnnotationVisitor;

    invoke-interface {v0, p1, p2}, Lorg/checkerframework/org/objectweb/asmx/AnnotationVisitor;->visit(Ljava/lang/String;Ljava/lang/Object;)V

    .line 76
    return-void
.end method

.method public visitAnnotation(Ljava/lang/String;Ljava/lang/String;)Lorg/checkerframework/org/objectweb/asmx/AnnotationVisitor;
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "desc"    # Ljava/lang/String;

    .line 96
    invoke-direct {p0}, Lorg/checkerframework/org/objectweb/asmx/util/CheckAnnotationAdapter;->checkEnd()V

    .line 97
    invoke-direct {p0, p1}, Lorg/checkerframework/org/objectweb/asmx/util/CheckAnnotationAdapter;->checkName(Ljava/lang/String;)V

    .line 98
    const/4 v0, 0x0

    invoke-static {p2, v0}, Lorg/checkerframework/org/objectweb/asmx/util/CheckMethodAdapter;->checkDesc(Ljava/lang/String;Z)V

    .line 99
    new-instance v0, Lorg/checkerframework/org/objectweb/asmx/util/CheckAnnotationAdapter;

    iget-object v1, p0, Lorg/checkerframework/org/objectweb/asmx/util/CheckAnnotationAdapter;->av:Lorg/checkerframework/org/objectweb/asmx/AnnotationVisitor;

    invoke-interface {v1, p1, p2}, Lorg/checkerframework/org/objectweb/asmx/AnnotationVisitor;->visitAnnotation(Ljava/lang/String;Ljava/lang/String;)Lorg/checkerframework/org/objectweb/asmx/AnnotationVisitor;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/checkerframework/org/objectweb/asmx/util/CheckAnnotationAdapter;-><init>(Lorg/checkerframework/org/objectweb/asmx/AnnotationVisitor;)V

    return-object v0
.end method

.method public visitArray(Ljava/lang/String;)Lorg/checkerframework/org/objectweb/asmx/AnnotationVisitor;
    .locals 3
    .param p1, "name"    # Ljava/lang/String;

    .line 103
    invoke-direct {p0}, Lorg/checkerframework/org/objectweb/asmx/util/CheckAnnotationAdapter;->checkEnd()V

    .line 104
    invoke-direct {p0, p1}, Lorg/checkerframework/org/objectweb/asmx/util/CheckAnnotationAdapter;->checkName(Ljava/lang/String;)V

    .line 105
    new-instance v0, Lorg/checkerframework/org/objectweb/asmx/util/CheckAnnotationAdapter;

    iget-object v1, p0, Lorg/checkerframework/org/objectweb/asmx/util/CheckAnnotationAdapter;->av:Lorg/checkerframework/org/objectweb/asmx/AnnotationVisitor;

    invoke-interface {v1, p1}, Lorg/checkerframework/org/objectweb/asmx/AnnotationVisitor;->visitArray(Ljava/lang/String;)Lorg/checkerframework/org/objectweb/asmx/AnnotationVisitor;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lorg/checkerframework/org/objectweb/asmx/util/CheckAnnotationAdapter;-><init>(Lorg/checkerframework/org/objectweb/asmx/AnnotationVisitor;Z)V

    return-object v0
.end method

.method public visitEnd()V
    .locals 1

    .line 109
    invoke-direct {p0}, Lorg/checkerframework/org/objectweb/asmx/util/CheckAnnotationAdapter;->checkEnd()V

    .line 110
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/checkerframework/org/objectweb/asmx/util/CheckAnnotationAdapter;->end:Z

    .line 111
    iget-object v0, p0, Lorg/checkerframework/org/objectweb/asmx/util/CheckAnnotationAdapter;->av:Lorg/checkerframework/org/objectweb/asmx/AnnotationVisitor;

    invoke-interface {v0}, Lorg/checkerframework/org/objectweb/asmx/AnnotationVisitor;->visitEnd()V

    .line 112
    return-void
.end method

.method public visitEnum(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "desc"    # Ljava/lang/String;
    .param p3, "value"    # Ljava/lang/String;

    .line 83
    invoke-direct {p0}, Lorg/checkerframework/org/objectweb/asmx/util/CheckAnnotationAdapter;->checkEnd()V

    .line 84
    invoke-direct {p0, p1}, Lorg/checkerframework/org/objectweb/asmx/util/CheckAnnotationAdapter;->checkName(Ljava/lang/String;)V

    .line 85
    const/4 v0, 0x0

    invoke-static {p2, v0}, Lorg/checkerframework/org/objectweb/asmx/util/CheckMethodAdapter;->checkDesc(Ljava/lang/String;Z)V

    .line 86
    if-eqz p3, :cond_0

    .line 89
    iget-object v0, p0, Lorg/checkerframework/org/objectweb/asmx/util/CheckAnnotationAdapter;->av:Lorg/checkerframework/org/objectweb/asmx/AnnotationVisitor;

    invoke-interface {v0, p1, p2, p3}, Lorg/checkerframework/org/objectweb/asmx/AnnotationVisitor;->visitEnum(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 90
    return-void

    .line 87
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Invalid enum value"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
