.class public Lorg/checkerframework/org/objectweb/asmx/ClassAdapter;
.super Ljava/lang/Object;
.source "ClassAdapter.java"

# interfaces
.implements Lorg/checkerframework/org/objectweb/asmx/ClassVisitor;


# instance fields
.field protected cv:Lorg/checkerframework/org/objectweb/asmx/ClassVisitor;


# direct methods
.method public constructor <init>(Lorg/checkerframework/org/objectweb/asmx/ClassVisitor;)V
    .locals 0
    .param p1, "cv"    # Lorg/checkerframework/org/objectweb/asmx/ClassVisitor;

    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    iput-object p1, p0, Lorg/checkerframework/org/objectweb/asmx/ClassAdapter;->cv:Lorg/checkerframework/org/objectweb/asmx/ClassVisitor;

    .line 53
    return-void
.end method


# virtual methods
.method public visit(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V
    .locals 7
    .param p1, "version"    # I
    .param p2, "access"    # I
    .param p3, "name"    # Ljava/lang/String;
    .param p4, "signature"    # Ljava/lang/String;
    .param p5, "superName"    # Ljava/lang/String;
    .param p6, "interfaces"    # [Ljava/lang/String;

    .line 63
    iget-object v0, p0, Lorg/checkerframework/org/objectweb/asmx/ClassAdapter;->cv:Lorg/checkerframework/org/objectweb/asmx/ClassVisitor;

    move v1, p1

    move v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    invoke-interface/range {v0 .. v6}, Lorg/checkerframework/org/objectweb/asmx/ClassVisitor;->visit(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    .line 64
    return-void
.end method

.method public visitAnnotation(Ljava/lang/String;Z)Lorg/checkerframework/org/objectweb/asmx/AnnotationVisitor;
    .locals 1
    .param p1, "desc"    # Ljava/lang/String;
    .param p2, "visible"    # Z

    .line 82
    iget-object v0, p0, Lorg/checkerframework/org/objectweb/asmx/ClassAdapter;->cv:Lorg/checkerframework/org/objectweb/asmx/ClassVisitor;

    invoke-interface {v0, p1, p2}, Lorg/checkerframework/org/objectweb/asmx/ClassVisitor;->visitAnnotation(Ljava/lang/String;Z)Lorg/checkerframework/org/objectweb/asmx/AnnotationVisitor;

    move-result-object v0

    return-object v0
.end method

.method public visitAttribute(Lorg/checkerframework/org/objectweb/asmx/Attribute;)V
    .locals 1
    .param p1, "attr"    # Lorg/checkerframework/org/objectweb/asmx/Attribute;

    .line 95
    iget-object v0, p0, Lorg/checkerframework/org/objectweb/asmx/ClassAdapter;->cv:Lorg/checkerframework/org/objectweb/asmx/ClassVisitor;

    invoke-interface {v0, p1}, Lorg/checkerframework/org/objectweb/asmx/ClassVisitor;->visitAttribute(Lorg/checkerframework/org/objectweb/asmx/Attribute;)V

    .line 96
    return-void
.end method

.method public visitEnd()V
    .locals 1

    .line 128
    iget-object v0, p0, Lorg/checkerframework/org/objectweb/asmx/ClassAdapter;->cv:Lorg/checkerframework/org/objectweb/asmx/ClassVisitor;

    invoke-interface {v0}, Lorg/checkerframework/org/objectweb/asmx/ClassVisitor;->visitEnd()V

    .line 129
    return-void
.end method

.method public visitField(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)Lorg/checkerframework/org/objectweb/asmx/FieldVisitor;
    .locals 6
    .param p1, "access"    # I
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "desc"    # Ljava/lang/String;
    .param p4, "signature"    # Ljava/lang/String;
    .param p5, "value"    # Ljava/lang/Object;

    .line 114
    iget-object v0, p0, Lorg/checkerframework/org/objectweb/asmx/ClassAdapter;->cv:Lorg/checkerframework/org/objectweb/asmx/ClassVisitor;

    move v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-interface/range {v0 .. v5}, Lorg/checkerframework/org/objectweb/asmx/ClassVisitor;->visitField(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)Lorg/checkerframework/org/objectweb/asmx/FieldVisitor;

    move-result-object v0

    return-object v0
.end method

.method public visitInnerClass(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "outerName"    # Ljava/lang/String;
    .param p3, "innerName"    # Ljava/lang/String;
    .param p4, "access"    # I

    .line 104
    iget-object v0, p0, Lorg/checkerframework/org/objectweb/asmx/ClassAdapter;->cv:Lorg/checkerframework/org/objectweb/asmx/ClassVisitor;

    invoke-interface {v0, p1, p2, p3, p4}, Lorg/checkerframework/org/objectweb/asmx/ClassVisitor;->visitInnerClass(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    .line 105
    return-void
.end method

.method public visitMethod(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Lorg/checkerframework/org/objectweb/asmx/MethodVisitor;
    .locals 6
    .param p1, "access"    # I
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "desc"    # Ljava/lang/String;
    .param p4, "signature"    # Ljava/lang/String;
    .param p5, "exceptions"    # [Ljava/lang/String;

    .line 124
    iget-object v0, p0, Lorg/checkerframework/org/objectweb/asmx/ClassAdapter;->cv:Lorg/checkerframework/org/objectweb/asmx/ClassVisitor;

    move v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-interface/range {v0 .. v5}, Lorg/checkerframework/org/objectweb/asmx/ClassVisitor;->visitMethod(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Lorg/checkerframework/org/objectweb/asmx/MethodVisitor;

    move-result-object v0

    return-object v0
.end method

.method public visitOuterClass(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "owner"    # Ljava/lang/String;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "desc"    # Ljava/lang/String;

    .line 75
    iget-object v0, p0, Lorg/checkerframework/org/objectweb/asmx/ClassAdapter;->cv:Lorg/checkerframework/org/objectweb/asmx/ClassVisitor;

    invoke-interface {v0, p1, p2, p3}, Lorg/checkerframework/org/objectweb/asmx/ClassVisitor;->visitOuterClass(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 76
    return-void
.end method

.method public visitSource(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "source"    # Ljava/lang/String;
    .param p2, "debug"    # Ljava/lang/String;

    .line 67
    iget-object v0, p0, Lorg/checkerframework/org/objectweb/asmx/ClassAdapter;->cv:Lorg/checkerframework/org/objectweb/asmx/ClassVisitor;

    invoke-interface {v0, p1, p2}, Lorg/checkerframework/org/objectweb/asmx/ClassVisitor;->visitSource(Ljava/lang/String;Ljava/lang/String;)V

    .line 68
    return-void
.end method

.method public visitTypeAnnotation(Ljava/lang/String;ZZ)Lorg/checkerframework/org/objectweb/asmx/TypeAnnotationVisitor;
    .locals 1
    .param p1, "desc"    # Ljava/lang/String;
    .param p2, "visible"    # Z
    .param p3, "inCode"    # Z

    .line 90
    iget-object v0, p0, Lorg/checkerframework/org/objectweb/asmx/ClassAdapter;->cv:Lorg/checkerframework/org/objectweb/asmx/ClassVisitor;

    invoke-interface {v0, p1, p2, p3}, Lorg/checkerframework/org/objectweb/asmx/ClassVisitor;->visitTypeAnnotation(Ljava/lang/String;ZZ)Lorg/checkerframework/org/objectweb/asmx/TypeAnnotationVisitor;

    move-result-object v0

    return-object v0
.end method
