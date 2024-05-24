.class public Lorg/checkerframework/org/objectweb/asmx/optimizer/MethodOptimizer;
.super Lorg/checkerframework/org/objectweb/asmx/MethodAdapter;
.source "MethodOptimizer.java"


# instance fields
.field private mapping:Lorg/checkerframework/org/objectweb/asmx/optimizer/NameMapping;


# direct methods
.method public constructor <init>(Lorg/checkerframework/org/objectweb/asmx/MethodVisitor;Lorg/checkerframework/org/objectweb/asmx/optimizer/NameMapping;)V
    .locals 0
    .param p1, "mv"    # Lorg/checkerframework/org/objectweb/asmx/MethodVisitor;
    .param p2, "mapping"    # Lorg/checkerframework/org/objectweb/asmx/optimizer/NameMapping;

    .line 48
    invoke-direct {p0, p1}, Lorg/checkerframework/org/objectweb/asmx/MethodAdapter;-><init>(Lorg/checkerframework/org/objectweb/asmx/MethodVisitor;)V

    .line 49
    iput-object p2, p0, Lorg/checkerframework/org/objectweb/asmx/optimizer/MethodOptimizer;->mapping:Lorg/checkerframework/org/objectweb/asmx/optimizer/NameMapping;

    .line 50
    return-void
.end method


# virtual methods
.method public visitAnnotationDefault()Lorg/checkerframework/org/objectweb/asmx/AnnotationVisitor;
    .locals 1

    .line 57
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public visitFieldInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .param p1, "opcode"    # I
    .param p2, "owner"    # Ljava/lang/String;
    .param p3, "name"    # Ljava/lang/String;
    .param p4, "desc"    # Ljava/lang/String;

    .line 80
    iget-object v0, p0, Lorg/checkerframework/org/objectweb/asmx/optimizer/MethodOptimizer;->mv:Lorg/checkerframework/org/objectweb/asmx/MethodVisitor;

    iget-object v1, p0, Lorg/checkerframework/org/objectweb/asmx/optimizer/MethodOptimizer;->mapping:Lorg/checkerframework/org/objectweb/asmx/optimizer/NameMapping;

    invoke-virtual {v1, p2}, Lorg/checkerframework/org/objectweb/asmx/optimizer/NameMapping;->map(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lorg/checkerframework/org/objectweb/asmx/optimizer/MethodOptimizer;->mapping:Lorg/checkerframework/org/objectweb/asmx/optimizer/NameMapping;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/checkerframework/org/objectweb/asmx/optimizer/NameMapping;->map(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lorg/checkerframework/org/objectweb/asmx/optimizer/MethodOptimizer;->mapping:Lorg/checkerframework/org/objectweb/asmx/optimizer/NameMapping;

    .line 81
    invoke-virtual {v3, p4}, Lorg/checkerframework/org/objectweb/asmx/optimizer/NameMapping;->fix(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 80
    invoke-interface {v0, p1, v1, v2, v3}, Lorg/checkerframework/org/objectweb/asmx/MethodVisitor;->visitFieldInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 82
    return-void
.end method

.method public visitLineNumber(ILorg/checkerframework/org/objectweb/asmx/Label;)V
    .locals 0
    .param p1, "line"    # I
    .param p2, "start"    # Lorg/checkerframework/org/objectweb/asmx/Label;

    .line 107
    return-void
.end method

.method public visitLocalVariable(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/checkerframework/org/objectweb/asmx/Label;Lorg/checkerframework/org/objectweb/asmx/Label;I)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "desc"    # Ljava/lang/String;
    .param p3, "signature"    # Ljava/lang/String;
    .param p4, "start"    # Lorg/checkerframework/org/objectweb/asmx/Label;
    .param p5, "end"    # Lorg/checkerframework/org/objectweb/asmx/Label;
    .param p6, "index"    # I

    .line 103
    return-void
.end method

.method public visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .param p1, "opcode"    # I
    .param p2, "owner"    # Ljava/lang/String;
    .param p3, "name"    # Ljava/lang/String;
    .param p4, "desc"    # Ljava/lang/String;

    .line 90
    iget-object v0, p0, Lorg/checkerframework/org/objectweb/asmx/optimizer/MethodOptimizer;->mv:Lorg/checkerframework/org/objectweb/asmx/MethodVisitor;

    iget-object v1, p0, Lorg/checkerframework/org/objectweb/asmx/optimizer/MethodOptimizer;->mapping:Lorg/checkerframework/org/objectweb/asmx/optimizer/NameMapping;

    invoke-virtual {v1, p2}, Lorg/checkerframework/org/objectweb/asmx/optimizer/NameMapping;->map(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lorg/checkerframework/org/objectweb/asmx/optimizer/MethodOptimizer;->mapping:Lorg/checkerframework/org/objectweb/asmx/optimizer/NameMapping;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/checkerframework/org/objectweb/asmx/optimizer/NameMapping;->map(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lorg/checkerframework/org/objectweb/asmx/optimizer/MethodOptimizer;->mapping:Lorg/checkerframework/org/objectweb/asmx/optimizer/NameMapping;

    .line 91
    invoke-virtual {v3, p4}, Lorg/checkerframework/org/objectweb/asmx/optimizer/NameMapping;->fix(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 90
    invoke-interface {v0, p1, v1, v2, v3}, Lorg/checkerframework/org/objectweb/asmx/MethodVisitor;->visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 92
    return-void
.end method

.method public visitParameterAnnotation(ILjava/lang/String;Z)Lorg/checkerframework/org/objectweb/asmx/AnnotationVisitor;
    .locals 1
    .param p1, "parameter"    # I
    .param p2, "desc"    # Ljava/lang/String;
    .param p3, "visible"    # Z

    .line 65
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public visitTypeInsn(ILjava/lang/String;)V
    .locals 2
    .param p1, "opcode"    # I
    .param p2, "desc"    # Ljava/lang/String;

    .line 69
    iget-object v0, p0, Lorg/checkerframework/org/objectweb/asmx/optimizer/MethodOptimizer;->mv:Lorg/checkerframework/org/objectweb/asmx/MethodVisitor;

    const-string v1, "["

    invoke-virtual {p2, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lorg/checkerframework/org/objectweb/asmx/optimizer/MethodOptimizer;->mapping:Lorg/checkerframework/org/objectweb/asmx/optimizer/NameMapping;

    .line 70
    invoke-virtual {v1, p2}, Lorg/checkerframework/org/objectweb/asmx/optimizer/NameMapping;->fix(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lorg/checkerframework/org/objectweb/asmx/optimizer/MethodOptimizer;->mapping:Lorg/checkerframework/org/objectweb/asmx/optimizer/NameMapping;

    .line 71
    invoke-virtual {v1, p2}, Lorg/checkerframework/org/objectweb/asmx/optimizer/NameMapping;->map(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 69
    :goto_0
    invoke-interface {v0, p1, v1}, Lorg/checkerframework/org/objectweb/asmx/MethodVisitor;->visitTypeInsn(ILjava/lang/String;)V

    .line 72
    return-void
.end method
