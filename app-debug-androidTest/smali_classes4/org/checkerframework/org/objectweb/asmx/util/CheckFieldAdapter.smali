.class public Lorg/checkerframework/org/objectweb/asmx/util/CheckFieldAdapter;
.super Ljava/lang/Object;
.source "CheckFieldAdapter.java"

# interfaces
.implements Lorg/checkerframework/org/objectweb/asmx/FieldVisitor;


# instance fields
.field private end:Z

.field private fv:Lorg/checkerframework/org/objectweb/asmx/FieldVisitor;


# direct methods
.method public constructor <init>(Lorg/checkerframework/org/objectweb/asmx/FieldVisitor;)V
    .locals 0
    .param p1, "fv"    # Lorg/checkerframework/org/objectweb/asmx/FieldVisitor;

    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    iput-object p1, p0, Lorg/checkerframework/org/objectweb/asmx/util/CheckFieldAdapter;->fv:Lorg/checkerframework/org/objectweb/asmx/FieldVisitor;

    .line 48
    return-void
.end method

.method private checkEnd()V
    .locals 2

    .line 81
    iget-boolean v0, p0, Lorg/checkerframework/org/objectweb/asmx/util/CheckFieldAdapter;->end:Z

    if-nez v0, :cond_0

    .line 84
    return-void

    .line 82
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot call a visit method after visitEnd has been called"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public visitAnnotation(Ljava/lang/String;Z)Lorg/checkerframework/org/objectweb/asmx/AnnotationVisitor;
    .locals 2
    .param p1, "desc"    # Ljava/lang/String;
    .param p2, "visible"    # Z

    .line 52
    invoke-direct {p0}, Lorg/checkerframework/org/objectweb/asmx/util/CheckFieldAdapter;->checkEnd()V

    .line 53
    const/4 v0, 0x0

    invoke-static {p1, v0}, Lorg/checkerframework/org/objectweb/asmx/util/CheckMethodAdapter;->checkDesc(Ljava/lang/String;Z)V

    .line 54
    new-instance v0, Lorg/checkerframework/org/objectweb/asmx/util/CheckAnnotationAdapter;

    iget-object v1, p0, Lorg/checkerframework/org/objectweb/asmx/util/CheckFieldAdapter;->fv:Lorg/checkerframework/org/objectweb/asmx/FieldVisitor;

    invoke-interface {v1, p1, p2}, Lorg/checkerframework/org/objectweb/asmx/FieldVisitor;->visitAnnotation(Ljava/lang/String;Z)Lorg/checkerframework/org/objectweb/asmx/AnnotationVisitor;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/checkerframework/org/objectweb/asmx/util/CheckAnnotationAdapter;-><init>(Lorg/checkerframework/org/objectweb/asmx/AnnotationVisitor;)V

    return-object v0
.end method

.method public visitAttribute(Lorg/checkerframework/org/objectweb/asmx/Attribute;)V
    .locals 2
    .param p1, "attr"    # Lorg/checkerframework/org/objectweb/asmx/Attribute;

    .line 67
    invoke-direct {p0}, Lorg/checkerframework/org/objectweb/asmx/util/CheckFieldAdapter;->checkEnd()V

    .line 68
    if-eqz p1, :cond_0

    .line 71
    iget-object v0, p0, Lorg/checkerframework/org/objectweb/asmx/util/CheckFieldAdapter;->fv:Lorg/checkerframework/org/objectweb/asmx/FieldVisitor;

    invoke-interface {v0, p1}, Lorg/checkerframework/org/objectweb/asmx/FieldVisitor;->visitAttribute(Lorg/checkerframework/org/objectweb/asmx/Attribute;)V

    .line 72
    return-void

    .line 69
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Invalid attribute (must not be null)"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public visitEnd()V
    .locals 1

    .line 75
    invoke-direct {p0}, Lorg/checkerframework/org/objectweb/asmx/util/CheckFieldAdapter;->checkEnd()V

    .line 76
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/checkerframework/org/objectweb/asmx/util/CheckFieldAdapter;->end:Z

    .line 77
    iget-object v0, p0, Lorg/checkerframework/org/objectweb/asmx/util/CheckFieldAdapter;->fv:Lorg/checkerframework/org/objectweb/asmx/FieldVisitor;

    invoke-interface {v0}, Lorg/checkerframework/org/objectweb/asmx/FieldVisitor;->visitEnd()V

    .line 78
    return-void
.end method

.method public visitTypeAnnotation(Ljava/lang/String;ZZ)Lorg/checkerframework/org/objectweb/asmx/TypeAnnotationVisitor;
    .locals 2
    .param p1, "desc"    # Ljava/lang/String;
    .param p2, "visible"    # Z
    .param p3, "inCode"    # Z

    .line 62
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Jaime did not implement yet"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
