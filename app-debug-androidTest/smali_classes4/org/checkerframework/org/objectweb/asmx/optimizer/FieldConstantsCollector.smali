.class public Lorg/checkerframework/org/objectweb/asmx/optimizer/FieldConstantsCollector;
.super Ljava/lang/Object;
.source "FieldConstantsCollector.java"

# interfaces
.implements Lorg/checkerframework/org/objectweb/asmx/FieldVisitor;


# instance fields
.field private cp:Lorg/checkerframework/org/objectweb/asmx/optimizer/ConstantPool;

.field private fv:Lorg/checkerframework/org/objectweb/asmx/FieldVisitor;


# direct methods
.method public constructor <init>(Lorg/checkerframework/org/objectweb/asmx/FieldVisitor;Lorg/checkerframework/org/objectweb/asmx/optimizer/ConstantPool;)V
    .locals 0
    .param p1, "fv"    # Lorg/checkerframework/org/objectweb/asmx/FieldVisitor;
    .param p2, "cp"    # Lorg/checkerframework/org/objectweb/asmx/optimizer/ConstantPool;

    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    iput-object p1, p0, Lorg/checkerframework/org/objectweb/asmx/optimizer/FieldConstantsCollector;->fv:Lorg/checkerframework/org/objectweb/asmx/FieldVisitor;

    .line 52
    iput-object p2, p0, Lorg/checkerframework/org/objectweb/asmx/optimizer/FieldConstantsCollector;->cp:Lorg/checkerframework/org/objectweb/asmx/optimizer/ConstantPool;

    .line 53
    return-void
.end method


# virtual methods
.method public visitAnnotation(Ljava/lang/String;Z)Lorg/checkerframework/org/objectweb/asmx/AnnotationVisitor;
    .locals 3
    .param p1, "desc"    # Ljava/lang/String;
    .param p2, "visible"    # Z

    .line 59
    iget-object v0, p0, Lorg/checkerframework/org/objectweb/asmx/optimizer/FieldConstantsCollector;->cp:Lorg/checkerframework/org/objectweb/asmx/optimizer/ConstantPool;

    invoke-virtual {v0, p1}, Lorg/checkerframework/org/objectweb/asmx/optimizer/ConstantPool;->newUTF8(Ljava/lang/String;)Lorg/checkerframework/org/objectweb/asmx/optimizer/Constant;

    .line 60
    if-eqz p2, :cond_0

    .line 61
    iget-object v0, p0, Lorg/checkerframework/org/objectweb/asmx/optimizer/FieldConstantsCollector;->cp:Lorg/checkerframework/org/objectweb/asmx/optimizer/ConstantPool;

    const-string v1, "RuntimeVisibleAnnotations"

    invoke-virtual {v0, v1}, Lorg/checkerframework/org/objectweb/asmx/optimizer/ConstantPool;->newUTF8(Ljava/lang/String;)Lorg/checkerframework/org/objectweb/asmx/optimizer/Constant;

    goto :goto_0

    .line 63
    :cond_0
    iget-object v0, p0, Lorg/checkerframework/org/objectweb/asmx/optimizer/FieldConstantsCollector;->cp:Lorg/checkerframework/org/objectweb/asmx/optimizer/ConstantPool;

    const-string v1, "RuntimeInvisibleAnnotations"

    invoke-virtual {v0, v1}, Lorg/checkerframework/org/objectweb/asmx/optimizer/ConstantPool;->newUTF8(Ljava/lang/String;)Lorg/checkerframework/org/objectweb/asmx/optimizer/Constant;

    .line 65
    :goto_0
    new-instance v0, Lorg/checkerframework/org/objectweb/asmx/optimizer/AnnotationConstantsCollector;

    iget-object v1, p0, Lorg/checkerframework/org/objectweb/asmx/optimizer/FieldConstantsCollector;->fv:Lorg/checkerframework/org/objectweb/asmx/FieldVisitor;

    .line 66
    invoke-interface {v1, p1, p2}, Lorg/checkerframework/org/objectweb/asmx/FieldVisitor;->visitAnnotation(Ljava/lang/String;Z)Lorg/checkerframework/org/objectweb/asmx/AnnotationVisitor;

    move-result-object v1

    iget-object v2, p0, Lorg/checkerframework/org/objectweb/asmx/optimizer/FieldConstantsCollector;->cp:Lorg/checkerframework/org/objectweb/asmx/optimizer/ConstantPool;

    invoke-direct {v0, v1, v2}, Lorg/checkerframework/org/objectweb/asmx/optimizer/AnnotationConstantsCollector;-><init>(Lorg/checkerframework/org/objectweb/asmx/AnnotationVisitor;Lorg/checkerframework/org/objectweb/asmx/optimizer/ConstantPool;)V

    .line 65
    return-object v0
.end method

.method public visitAttribute(Lorg/checkerframework/org/objectweb/asmx/Attribute;)V
    .locals 1
    .param p1, "attr"    # Lorg/checkerframework/org/objectweb/asmx/Attribute;

    .line 86
    iget-object v0, p0, Lorg/checkerframework/org/objectweb/asmx/optimizer/FieldConstantsCollector;->fv:Lorg/checkerframework/org/objectweb/asmx/FieldVisitor;

    invoke-interface {v0, p1}, Lorg/checkerframework/org/objectweb/asmx/FieldVisitor;->visitAttribute(Lorg/checkerframework/org/objectweb/asmx/Attribute;)V

    .line 87
    return-void
.end method

.method public visitEnd()V
    .locals 1

    .line 90
    iget-object v0, p0, Lorg/checkerframework/org/objectweb/asmx/optimizer/FieldConstantsCollector;->fv:Lorg/checkerframework/org/objectweb/asmx/FieldVisitor;

    invoke-interface {v0}, Lorg/checkerframework/org/objectweb/asmx/FieldVisitor;->visitEnd()V

    .line 91
    return-void
.end method

.method public visitTypeAnnotation(Ljava/lang/String;ZZ)Lorg/checkerframework/org/objectweb/asmx/TypeAnnotationVisitor;
    .locals 3
    .param p1, "desc"    # Ljava/lang/String;
    .param p2, "visible"    # Z
    .param p3, "inCode"    # Z

    .line 74
    iget-object v0, p0, Lorg/checkerframework/org/objectweb/asmx/optimizer/FieldConstantsCollector;->cp:Lorg/checkerframework/org/objectweb/asmx/optimizer/ConstantPool;

    invoke-virtual {v0, p1}, Lorg/checkerframework/org/objectweb/asmx/optimizer/ConstantPool;->newUTF8(Ljava/lang/String;)Lorg/checkerframework/org/objectweb/asmx/optimizer/Constant;

    .line 75
    if-eqz p2, :cond_0

    .line 76
    iget-object v0, p0, Lorg/checkerframework/org/objectweb/asmx/optimizer/FieldConstantsCollector;->cp:Lorg/checkerframework/org/objectweb/asmx/optimizer/ConstantPool;

    const-string v1, "RuntimeVisibleTypeAnnotations"

    invoke-virtual {v0, v1}, Lorg/checkerframework/org/objectweb/asmx/optimizer/ConstantPool;->newUTF8(Ljava/lang/String;)Lorg/checkerframework/org/objectweb/asmx/optimizer/Constant;

    goto :goto_0

    .line 78
    :cond_0
    iget-object v0, p0, Lorg/checkerframework/org/objectweb/asmx/optimizer/FieldConstantsCollector;->cp:Lorg/checkerframework/org/objectweb/asmx/optimizer/ConstantPool;

    const-string v1, "RuntimeInvisibleTypeAnnotations"

    invoke-virtual {v0, v1}, Lorg/checkerframework/org/objectweb/asmx/optimizer/ConstantPool;->newUTF8(Ljava/lang/String;)Lorg/checkerframework/org/objectweb/asmx/optimizer/Constant;

    .line 80
    :goto_0
    new-instance v0, Lorg/checkerframework/org/objectweb/asmx/optimizer/TypeAnnotationConstantsCollector;

    iget-object v1, p0, Lorg/checkerframework/org/objectweb/asmx/optimizer/FieldConstantsCollector;->fv:Lorg/checkerframework/org/objectweb/asmx/FieldVisitor;

    .line 81
    invoke-interface {v1, p1, p2, p3}, Lorg/checkerframework/org/objectweb/asmx/FieldVisitor;->visitTypeAnnotation(Ljava/lang/String;ZZ)Lorg/checkerframework/org/objectweb/asmx/TypeAnnotationVisitor;

    move-result-object v1

    iget-object v2, p0, Lorg/checkerframework/org/objectweb/asmx/optimizer/FieldConstantsCollector;->cp:Lorg/checkerframework/org/objectweb/asmx/optimizer/ConstantPool;

    invoke-direct {v0, v1, v2}, Lorg/checkerframework/org/objectweb/asmx/optimizer/TypeAnnotationConstantsCollector;-><init>(Lorg/checkerframework/org/objectweb/asmx/TypeAnnotationVisitor;Lorg/checkerframework/org/objectweb/asmx/optimizer/ConstantPool;)V

    .line 80
    return-object v0
.end method
