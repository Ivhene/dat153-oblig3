.class public Lorg/checkerframework/org/objectweb/asmx/optimizer/ClassOptimizer;
.super Lorg/checkerframework/org/objectweb/asmx/ClassAdapter;
.source "ClassOptimizer.java"


# instance fields
.field private className:Ljava/lang/String;

.field private mapping:Lorg/checkerframework/org/objectweb/asmx/optimizer/NameMapping;

.field private pkgName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lorg/checkerframework/org/objectweb/asmx/ClassVisitor;Lorg/checkerframework/org/objectweb/asmx/optimizer/NameMapping;)V
    .locals 0
    .param p1, "cv"    # Lorg/checkerframework/org/objectweb/asmx/ClassVisitor;
    .param p2, "mapping"    # Lorg/checkerframework/org/objectweb/asmx/optimizer/NameMapping;

    .line 55
    invoke-direct {p0, p1}, Lorg/checkerframework/org/objectweb/asmx/ClassAdapter;-><init>(Lorg/checkerframework/org/objectweb/asmx/ClassVisitor;)V

    .line 56
    iput-object p2, p0, Lorg/checkerframework/org/objectweb/asmx/optimizer/ClassOptimizer;->mapping:Lorg/checkerframework/org/objectweb/asmx/optimizer/NameMapping;

    .line 57
    return-void
.end method


# virtual methods
.method public getClassName()Ljava/lang/String;
    .locals 1

    .line 60
    iget-object v0, p0, Lorg/checkerframework/org/objectweb/asmx/optimizer/ClassOptimizer;->className:Ljava/lang/String;

    return-object v0
.end method

.method public visit(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V
    .locals 8
    .param p1, "version"    # I
    .param p2, "access"    # I
    .param p3, "name"    # Ljava/lang/String;
    .param p4, "signature"    # Ljava/lang/String;
    .param p5, "superName"    # Ljava/lang/String;
    .param p6, "interfaces"    # [Ljava/lang/String;

    .line 75
    iput-object p3, p0, Lorg/checkerframework/org/objectweb/asmx/optimizer/ClassOptimizer;->className:Ljava/lang/String;

    .line 76
    const/16 v0, 0x2f

    invoke-virtual {p3, v0}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    const/4 v1, 0x0

    invoke-virtual {p3, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/checkerframework/org/objectweb/asmx/optimizer/ClassOptimizer;->pkgName:Ljava/lang/String;

    .line 77
    iget-object v1, p0, Lorg/checkerframework/org/objectweb/asmx/optimizer/ClassOptimizer;->cv:Lorg/checkerframework/org/objectweb/asmx/ClassVisitor;

    iget-object v0, p0, Lorg/checkerframework/org/objectweb/asmx/optimizer/ClassOptimizer;->mapping:Lorg/checkerframework/org/objectweb/asmx/optimizer/NameMapping;

    .line 79
    invoke-virtual {v0, p3}, Lorg/checkerframework/org/objectweb/asmx/optimizer/NameMapping;->map(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    iget-object v0, p0, Lorg/checkerframework/org/objectweb/asmx/optimizer/ClassOptimizer;->mapping:Lorg/checkerframework/org/objectweb/asmx/optimizer/NameMapping;

    .line 81
    invoke-virtual {v0, p5}, Lorg/checkerframework/org/objectweb/asmx/optimizer/NameMapping;->map(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 77
    move v2, p1

    move v3, p2

    move-object v7, p6

    invoke-interface/range {v1 .. v7}, Lorg/checkerframework/org/objectweb/asmx/ClassVisitor;->visit(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    .line 83
    return-void
.end method

.method public visitAnnotation(Ljava/lang/String;Z)Lorg/checkerframework/org/objectweb/asmx/AnnotationVisitor;
    .locals 1
    .param p1, "desc"    # Ljava/lang/String;
    .param p2, "visible"    # Z

    .line 101
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public visitAttribute(Lorg/checkerframework/org/objectweb/asmx/Attribute;)V
    .locals 0
    .param p1, "attr"    # Lorg/checkerframework/org/objectweb/asmx/Attribute;

    .line 106
    return-void
.end method

.method public visitField(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)Lorg/checkerframework/org/objectweb/asmx/FieldVisitor;
    .locals 10
    .param p1, "access"    # I
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "desc"    # Ljava/lang/String;
    .param p4, "signature"    # Ljava/lang/String;
    .param p5, "value"    # Ljava/lang/Object;

    .line 124
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lorg/checkerframework/org/objectweb/asmx/optimizer/ClassOptimizer;->className:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 125
    .local v0, "s":Ljava/lang/String;
    and-int/lit8 v1, p1, 0x5

    const/4 v2, 0x0

    if-nez v1, :cond_2

    .line 126
    and-int/lit8 v1, p1, 0x10

    if-eqz v1, :cond_0

    and-int/lit8 v1, p1, 0x8

    if-eqz v1, :cond_0

    .line 127
    const-string v1, "I"

    invoke-virtual {p3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 129
    return-object v2

    .line 131
    :cond_0
    iget-object v1, p0, Lorg/checkerframework/org/objectweb/asmx/optimizer/ClassOptimizer;->pkgName:Ljava/lang/String;

    const-string v3, "org/checkerframework/org/objectweb/asmx"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lorg/checkerframework/org/objectweb/asmx/optimizer/ClassOptimizer;->mapping:Lorg/checkerframework/org/objectweb/asmx/optimizer/NameMapping;

    .line 132
    invoke-virtual {v1, v0}, Lorg/checkerframework/org/objectweb/asmx/optimizer/NameMapping;->map(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 134
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "INFO: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " could be renamed"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 136
    :cond_1
    iget-object v4, p0, Lorg/checkerframework/org/objectweb/asmx/optimizer/ClassOptimizer;->cv:Lorg/checkerframework/org/objectweb/asmx/ClassVisitor;

    iget-object v1, p0, Lorg/checkerframework/org/objectweb/asmx/optimizer/ClassOptimizer;->mapping:Lorg/checkerframework/org/objectweb/asmx/optimizer/NameMapping;

    .line 137
    invoke-virtual {v1, v0}, Lorg/checkerframework/org/objectweb/asmx/optimizer/NameMapping;->map(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iget-object v1, p0, Lorg/checkerframework/org/objectweb/asmx/optimizer/ClassOptimizer;->mapping:Lorg/checkerframework/org/objectweb/asmx/optimizer/NameMapping;

    .line 138
    invoke-virtual {v1, p3}, Lorg/checkerframework/org/objectweb/asmx/optimizer/NameMapping;->fix(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    .line 136
    move v5, p1

    move-object v9, p5

    invoke-interface/range {v4 .. v9}, Lorg/checkerframework/org/objectweb/asmx/ClassVisitor;->visitField(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)Lorg/checkerframework/org/objectweb/asmx/FieldVisitor;

    goto :goto_0

    .line 142
    :cond_2
    iget-object v1, p0, Lorg/checkerframework/org/objectweb/asmx/optimizer/ClassOptimizer;->mapping:Lorg/checkerframework/org/objectweb/asmx/optimizer/NameMapping;

    invoke-virtual {v1, v0}, Lorg/checkerframework/org/objectweb/asmx/optimizer/NameMapping;->map(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 146
    iget-object v3, p0, Lorg/checkerframework/org/objectweb/asmx/optimizer/ClassOptimizer;->cv:Lorg/checkerframework/org/objectweb/asmx/ClassVisitor;

    const/4 v7, 0x0

    move v4, p1

    move-object v5, p2

    move-object v6, p3

    move-object v8, p5

    invoke-interface/range {v3 .. v8}, Lorg/checkerframework/org/objectweb/asmx/ClassVisitor;->visitField(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)Lorg/checkerframework/org/objectweb/asmx/FieldVisitor;

    .line 148
    :goto_0
    return-object v2

    .line 143
    :cond_3
    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "The public or protected field "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " must not be renamed."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public visitInnerClass(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "outerName"    # Ljava/lang/String;
    .param p3, "innerName"    # Ljava/lang/String;
    .param p4, "access"    # I

    .line 115
    return-void
.end method

.method public visitMethod(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Lorg/checkerframework/org/objectweb/asmx/MethodVisitor;
    .locals 8
    .param p1, "access"    # I
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "desc"    # Ljava/lang/String;
    .param p4, "signature"    # Ljava/lang/String;
    .param p5, "exceptions"    # [Ljava/lang/String;

    .line 158
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lorg/checkerframework/org/objectweb/asmx/optimizer/ClassOptimizer;->className:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 159
    .local v0, "s":Ljava/lang/String;
    and-int/lit8 v1, p1, 0x5

    if-nez v1, :cond_1

    .line 160
    iget-object v1, p0, Lorg/checkerframework/org/objectweb/asmx/optimizer/ClassOptimizer;->pkgName:Ljava/lang/String;

    const-string v2, "org/checkerframework/org/objectweb/asmx"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "<"

    invoke-virtual {p2, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lorg/checkerframework/org/objectweb/asmx/optimizer/ClassOptimizer;->mapping:Lorg/checkerframework/org/objectweb/asmx/optimizer/NameMapping;

    .line 161
    invoke-virtual {v1, v0}, Lorg/checkerframework/org/objectweb/asmx/optimizer/NameMapping;->map(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 163
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "INFO: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " could be renamed"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 165
    :cond_0
    new-instance v1, Lorg/checkerframework/org/objectweb/asmx/optimizer/MethodOptimizer;

    iget-object v2, p0, Lorg/checkerframework/org/objectweb/asmx/optimizer/ClassOptimizer;->cv:Lorg/checkerframework/org/objectweb/asmx/ClassVisitor;

    iget-object v3, p0, Lorg/checkerframework/org/objectweb/asmx/optimizer/ClassOptimizer;->mapping:Lorg/checkerframework/org/objectweb/asmx/optimizer/NameMapping;

    .line 166
    invoke-virtual {v3, v0}, Lorg/checkerframework/org/objectweb/asmx/optimizer/NameMapping;->map(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iget-object v3, p0, Lorg/checkerframework/org/objectweb/asmx/optimizer/ClassOptimizer;->mapping:Lorg/checkerframework/org/objectweb/asmx/optimizer/NameMapping;

    .line 167
    invoke-virtual {v3, p3}, Lorg/checkerframework/org/objectweb/asmx/optimizer/NameMapping;->fix(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    .line 165
    move v3, p1

    move-object v7, p5

    invoke-interface/range {v2 .. v7}, Lorg/checkerframework/org/objectweb/asmx/ClassVisitor;->visitMethod(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Lorg/checkerframework/org/objectweb/asmx/MethodVisitor;

    move-result-object v2

    iget-object v3, p0, Lorg/checkerframework/org/objectweb/asmx/optimizer/ClassOptimizer;->mapping:Lorg/checkerframework/org/objectweb/asmx/optimizer/NameMapping;

    invoke-direct {v1, v2, v3}, Lorg/checkerframework/org/objectweb/asmx/optimizer/MethodOptimizer;-><init>(Lorg/checkerframework/org/objectweb/asmx/MethodVisitor;Lorg/checkerframework/org/objectweb/asmx/optimizer/NameMapping;)V

    return-object v1

    .line 171
    :cond_1
    iget-object v1, p0, Lorg/checkerframework/org/objectweb/asmx/optimizer/ClassOptimizer;->mapping:Lorg/checkerframework/org/objectweb/asmx/optimizer/NameMapping;

    invoke-virtual {v1, v0}, Lorg/checkerframework/org/objectweb/asmx/optimizer/NameMapping;->map(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 175
    new-instance v1, Lorg/checkerframework/org/objectweb/asmx/optimizer/MethodOptimizer;

    iget-object v2, p0, Lorg/checkerframework/org/objectweb/asmx/optimizer/ClassOptimizer;->cv:Lorg/checkerframework/org/objectweb/asmx/ClassVisitor;

    const/4 v6, 0x0

    move v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v7, p5

    invoke-interface/range {v2 .. v7}, Lorg/checkerframework/org/objectweb/asmx/ClassVisitor;->visitMethod(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Lorg/checkerframework/org/objectweb/asmx/MethodVisitor;

    move-result-object v2

    iget-object v3, p0, Lorg/checkerframework/org/objectweb/asmx/optimizer/ClassOptimizer;->mapping:Lorg/checkerframework/org/objectweb/asmx/optimizer/NameMapping;

    invoke-direct {v1, v2, v3}, Lorg/checkerframework/org/objectweb/asmx/optimizer/MethodOptimizer;-><init>(Lorg/checkerframework/org/objectweb/asmx/MethodVisitor;Lorg/checkerframework/org/objectweb/asmx/optimizer/NameMapping;)V

    return-object v1

    .line 172
    :cond_2
    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "The public or protected method "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " must not be renamed."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public visitOuterClass(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "owner"    # Ljava/lang/String;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "desc"    # Ljava/lang/String;

    .line 95
    return-void
.end method

.method public visitSource(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "source"    # Ljava/lang/String;
    .param p2, "debug"    # Ljava/lang/String;

    .line 87
    return-void
.end method
