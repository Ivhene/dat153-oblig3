.class public Lorg/checkerframework/org/objectweb/asmx/optimizer/ClassConstantsCollector;
.super Lorg/checkerframework/org/objectweb/asmx/ClassAdapter;
.source "ClassConstantsCollector.java"


# instance fields
.field private cp:Lorg/checkerframework/org/objectweb/asmx/optimizer/ConstantPool;


# direct methods
.method public constructor <init>(Lorg/checkerframework/org/objectweb/asmx/ClassVisitor;Lorg/checkerframework/org/objectweb/asmx/optimizer/ConstantPool;)V
    .locals 0
    .param p1, "cv"    # Lorg/checkerframework/org/objectweb/asmx/ClassVisitor;
    .param p2, "cp"    # Lorg/checkerframework/org/objectweb/asmx/optimizer/ConstantPool;

    .line 52
    invoke-direct {p0, p1}, Lorg/checkerframework/org/objectweb/asmx/ClassAdapter;-><init>(Lorg/checkerframework/org/objectweb/asmx/ClassVisitor;)V

    .line 53
    iput-object p2, p0, Lorg/checkerframework/org/objectweb/asmx/optimizer/ClassConstantsCollector;->cp:Lorg/checkerframework/org/objectweb/asmx/optimizer/ConstantPool;

    .line 54
    return-void
.end method


# virtual methods
.method public visit(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V
    .locals 8
    .param p1, "version"    # I
    .param p2, "access"    # I
    .param p3, "name"    # Ljava/lang/String;
    .param p4, "signature"    # Ljava/lang/String;
    .param p5, "superName"    # Ljava/lang/String;
    .param p6, "interfaces"    # [Ljava/lang/String;

    .line 64
    const/high16 v0, 0x20000

    and-int/2addr v0, p2

    if-eqz v0, :cond_0

    .line 65
    iget-object v0, p0, Lorg/checkerframework/org/objectweb/asmx/optimizer/ClassConstantsCollector;->cp:Lorg/checkerframework/org/objectweb/asmx/optimizer/ConstantPool;

    const-string v1, "Deprecated"

    invoke-virtual {v0, v1}, Lorg/checkerframework/org/objectweb/asmx/optimizer/ConstantPool;->newUTF8(Ljava/lang/String;)Lorg/checkerframework/org/objectweb/asmx/optimizer/Constant;

    .line 67
    :cond_0
    and-int/lit16 v0, p2, 0x1000

    if-eqz v0, :cond_1

    .line 68
    iget-object v0, p0, Lorg/checkerframework/org/objectweb/asmx/optimizer/ClassConstantsCollector;->cp:Lorg/checkerframework/org/objectweb/asmx/optimizer/ConstantPool;

    const-string v1, "Synthetic"

    invoke-virtual {v0, v1}, Lorg/checkerframework/org/objectweb/asmx/optimizer/ConstantPool;->newUTF8(Ljava/lang/String;)Lorg/checkerframework/org/objectweb/asmx/optimizer/Constant;

    .line 70
    :cond_1
    iget-object v0, p0, Lorg/checkerframework/org/objectweb/asmx/optimizer/ClassConstantsCollector;->cp:Lorg/checkerframework/org/objectweb/asmx/optimizer/ConstantPool;

    invoke-virtual {v0, p3}, Lorg/checkerframework/org/objectweb/asmx/optimizer/ConstantPool;->newClass(Ljava/lang/String;)Lorg/checkerframework/org/objectweb/asmx/optimizer/Constant;

    .line 71
    if-eqz p4, :cond_2

    .line 72
    iget-object v0, p0, Lorg/checkerframework/org/objectweb/asmx/optimizer/ClassConstantsCollector;->cp:Lorg/checkerframework/org/objectweb/asmx/optimizer/ConstantPool;

    const-string v1, "Signature"

    invoke-virtual {v0, v1}, Lorg/checkerframework/org/objectweb/asmx/optimizer/ConstantPool;->newUTF8(Ljava/lang/String;)Lorg/checkerframework/org/objectweb/asmx/optimizer/Constant;

    .line 73
    iget-object v0, p0, Lorg/checkerframework/org/objectweb/asmx/optimizer/ClassConstantsCollector;->cp:Lorg/checkerframework/org/objectweb/asmx/optimizer/ConstantPool;

    invoke-virtual {v0, p4}, Lorg/checkerframework/org/objectweb/asmx/optimizer/ConstantPool;->newUTF8(Ljava/lang/String;)Lorg/checkerframework/org/objectweb/asmx/optimizer/Constant;

    .line 75
    :cond_2
    if-eqz p5, :cond_3

    .line 76
    iget-object v0, p0, Lorg/checkerframework/org/objectweb/asmx/optimizer/ClassConstantsCollector;->cp:Lorg/checkerframework/org/objectweb/asmx/optimizer/ConstantPool;

    invoke-virtual {v0, p5}, Lorg/checkerframework/org/objectweb/asmx/optimizer/ConstantPool;->newClass(Ljava/lang/String;)Lorg/checkerframework/org/objectweb/asmx/optimizer/Constant;

    .line 78
    :cond_3
    if-eqz p6, :cond_4

    .line 79
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v1, p6

    if-ge v0, v1, :cond_4

    .line 80
    iget-object v1, p0, Lorg/checkerframework/org/objectweb/asmx/optimizer/ClassConstantsCollector;->cp:Lorg/checkerframework/org/objectweb/asmx/optimizer/ConstantPool;

    aget-object v2, p6, v0

    invoke-virtual {v1, v2}, Lorg/checkerframework/org/objectweb/asmx/optimizer/ConstantPool;->newClass(Ljava/lang/String;)Lorg/checkerframework/org/objectweb/asmx/optimizer/Constant;

    .line 79
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 83
    .end local v0    # "i":I
    :cond_4
    iget-object v1, p0, Lorg/checkerframework/org/objectweb/asmx/optimizer/ClassConstantsCollector;->cv:Lorg/checkerframework/org/objectweb/asmx/ClassVisitor;

    move v2, p1

    move v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    move-object v7, p6

    invoke-interface/range {v1 .. v7}, Lorg/checkerframework/org/objectweb/asmx/ClassVisitor;->visit(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    .line 84
    return-void
.end method

.method public visitAnnotation(Ljava/lang/String;Z)Lorg/checkerframework/org/objectweb/asmx/AnnotationVisitor;
    .locals 3
    .param p1, "desc"    # Ljava/lang/String;
    .param p2, "visible"    # Z

    .line 114
    iget-object v0, p0, Lorg/checkerframework/org/objectweb/asmx/optimizer/ClassConstantsCollector;->cp:Lorg/checkerframework/org/objectweb/asmx/optimizer/ConstantPool;

    invoke-virtual {v0, p1}, Lorg/checkerframework/org/objectweb/asmx/optimizer/ConstantPool;->newUTF8(Ljava/lang/String;)Lorg/checkerframework/org/objectweb/asmx/optimizer/Constant;

    .line 115
    if-eqz p2, :cond_0

    .line 116
    iget-object v0, p0, Lorg/checkerframework/org/objectweb/asmx/optimizer/ClassConstantsCollector;->cp:Lorg/checkerframework/org/objectweb/asmx/optimizer/ConstantPool;

    const-string v1, "RuntimeVisibleAnnotations"

    invoke-virtual {v0, v1}, Lorg/checkerframework/org/objectweb/asmx/optimizer/ConstantPool;->newUTF8(Ljava/lang/String;)Lorg/checkerframework/org/objectweb/asmx/optimizer/Constant;

    goto :goto_0

    .line 118
    :cond_0
    iget-object v0, p0, Lorg/checkerframework/org/objectweb/asmx/optimizer/ClassConstantsCollector;->cp:Lorg/checkerframework/org/objectweb/asmx/optimizer/ConstantPool;

    const-string v1, "RuntimeInvisibleAnnotations"

    invoke-virtual {v0, v1}, Lorg/checkerframework/org/objectweb/asmx/optimizer/ConstantPool;->newUTF8(Ljava/lang/String;)Lorg/checkerframework/org/objectweb/asmx/optimizer/Constant;

    .line 120
    :goto_0
    new-instance v0, Lorg/checkerframework/org/objectweb/asmx/optimizer/AnnotationConstantsCollector;

    iget-object v1, p0, Lorg/checkerframework/org/objectweb/asmx/optimizer/ClassConstantsCollector;->cv:Lorg/checkerframework/org/objectweb/asmx/ClassVisitor;

    invoke-interface {v1, p1, p2}, Lorg/checkerframework/org/objectweb/asmx/ClassVisitor;->visitAnnotation(Ljava/lang/String;Z)Lorg/checkerframework/org/objectweb/asmx/AnnotationVisitor;

    move-result-object v1

    iget-object v2, p0, Lorg/checkerframework/org/objectweb/asmx/optimizer/ClassConstantsCollector;->cp:Lorg/checkerframework/org/objectweb/asmx/optimizer/ConstantPool;

    invoke-direct {v0, v1, v2}, Lorg/checkerframework/org/objectweb/asmx/optimizer/AnnotationConstantsCollector;-><init>(Lorg/checkerframework/org/objectweb/asmx/AnnotationVisitor;Lorg/checkerframework/org/objectweb/asmx/optimizer/ConstantPool;)V

    return-object v0
.end method

.method public visitAttribute(Lorg/checkerframework/org/objectweb/asmx/Attribute;)V
    .locals 1
    .param p1, "attr"    # Lorg/checkerframework/org/objectweb/asmx/Attribute;

    .line 126
    iget-object v0, p0, Lorg/checkerframework/org/objectweb/asmx/optimizer/ClassConstantsCollector;->cv:Lorg/checkerframework/org/objectweb/asmx/ClassVisitor;

    invoke-interface {v0, p1}, Lorg/checkerframework/org/objectweb/asmx/ClassVisitor;->visitAttribute(Lorg/checkerframework/org/objectweb/asmx/Attribute;)V

    .line 127
    return-void
.end method

.method public visitEnd()V
    .locals 1

    .line 210
    iget-object v0, p0, Lorg/checkerframework/org/objectweb/asmx/optimizer/ClassConstantsCollector;->cv:Lorg/checkerframework/org/objectweb/asmx/ClassVisitor;

    invoke-interface {v0}, Lorg/checkerframework/org/objectweb/asmx/ClassVisitor;->visitEnd()V

    .line 211
    return-void
.end method

.method public visitField(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)Lorg/checkerframework/org/objectweb/asmx/FieldVisitor;
    .locals 7
    .param p1, "access"    # I
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "desc"    # Ljava/lang/String;
    .param p4, "signature"    # Ljava/lang/String;
    .param p5, "value"    # Ljava/lang/Object;

    .line 155
    and-int/lit16 v0, p1, 0x1000

    if-eqz v0, :cond_0

    .line 156
    iget-object v0, p0, Lorg/checkerframework/org/objectweb/asmx/optimizer/ClassConstantsCollector;->cp:Lorg/checkerframework/org/objectweb/asmx/optimizer/ConstantPool;

    const-string v1, "Synthetic"

    invoke-virtual {v0, v1}, Lorg/checkerframework/org/objectweb/asmx/optimizer/ConstantPool;->newUTF8(Ljava/lang/String;)Lorg/checkerframework/org/objectweb/asmx/optimizer/Constant;

    .line 158
    :cond_0
    const/high16 v0, 0x20000

    and-int/2addr v0, p1

    if-eqz v0, :cond_1

    .line 159
    iget-object v0, p0, Lorg/checkerframework/org/objectweb/asmx/optimizer/ClassConstantsCollector;->cp:Lorg/checkerframework/org/objectweb/asmx/optimizer/ConstantPool;

    const-string v1, "Deprecated"

    invoke-virtual {v0, v1}, Lorg/checkerframework/org/objectweb/asmx/optimizer/ConstantPool;->newUTF8(Ljava/lang/String;)Lorg/checkerframework/org/objectweb/asmx/optimizer/Constant;

    .line 161
    :cond_1
    iget-object v0, p0, Lorg/checkerframework/org/objectweb/asmx/optimizer/ClassConstantsCollector;->cp:Lorg/checkerframework/org/objectweb/asmx/optimizer/ConstantPool;

    invoke-virtual {v0, p2}, Lorg/checkerframework/org/objectweb/asmx/optimizer/ConstantPool;->newUTF8(Ljava/lang/String;)Lorg/checkerframework/org/objectweb/asmx/optimizer/Constant;

    .line 162
    iget-object v0, p0, Lorg/checkerframework/org/objectweb/asmx/optimizer/ClassConstantsCollector;->cp:Lorg/checkerframework/org/objectweb/asmx/optimizer/ConstantPool;

    invoke-virtual {v0, p3}, Lorg/checkerframework/org/objectweb/asmx/optimizer/ConstantPool;->newUTF8(Ljava/lang/String;)Lorg/checkerframework/org/objectweb/asmx/optimizer/Constant;

    .line 163
    if-eqz p4, :cond_2

    .line 164
    iget-object v0, p0, Lorg/checkerframework/org/objectweb/asmx/optimizer/ClassConstantsCollector;->cp:Lorg/checkerframework/org/objectweb/asmx/optimizer/ConstantPool;

    const-string v1, "Signature"

    invoke-virtual {v0, v1}, Lorg/checkerframework/org/objectweb/asmx/optimizer/ConstantPool;->newUTF8(Ljava/lang/String;)Lorg/checkerframework/org/objectweb/asmx/optimizer/Constant;

    .line 165
    iget-object v0, p0, Lorg/checkerframework/org/objectweb/asmx/optimizer/ClassConstantsCollector;->cp:Lorg/checkerframework/org/objectweb/asmx/optimizer/ConstantPool;

    invoke-virtual {v0, p4}, Lorg/checkerframework/org/objectweb/asmx/optimizer/ConstantPool;->newUTF8(Ljava/lang/String;)Lorg/checkerframework/org/objectweb/asmx/optimizer/Constant;

    .line 167
    :cond_2
    if-eqz p5, :cond_3

    .line 168
    iget-object v0, p0, Lorg/checkerframework/org/objectweb/asmx/optimizer/ClassConstantsCollector;->cp:Lorg/checkerframework/org/objectweb/asmx/optimizer/ConstantPool;

    invoke-virtual {v0, p5}, Lorg/checkerframework/org/objectweb/asmx/optimizer/ConstantPool;->newConst(Ljava/lang/Object;)Lorg/checkerframework/org/objectweb/asmx/optimizer/Constant;

    .line 170
    :cond_3
    new-instance v0, Lorg/checkerframework/org/objectweb/asmx/optimizer/FieldConstantsCollector;

    iget-object v1, p0, Lorg/checkerframework/org/objectweb/asmx/optimizer/ClassConstantsCollector;->cv:Lorg/checkerframework/org/objectweb/asmx/ClassVisitor;

    move v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-interface/range {v1 .. v6}, Lorg/checkerframework/org/objectweb/asmx/ClassVisitor;->visitField(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)Lorg/checkerframework/org/objectweb/asmx/FieldVisitor;

    move-result-object v1

    iget-object v2, p0, Lorg/checkerframework/org/objectweb/asmx/optimizer/ClassConstantsCollector;->cp:Lorg/checkerframework/org/objectweb/asmx/optimizer/ConstantPool;

    invoke-direct {v0, v1, v2}, Lorg/checkerframework/org/objectweb/asmx/optimizer/FieldConstantsCollector;-><init>(Lorg/checkerframework/org/objectweb/asmx/FieldVisitor;Lorg/checkerframework/org/objectweb/asmx/optimizer/ConstantPool;)V

    return-object v0
.end method

.method public visitInnerClass(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "outerName"    # Ljava/lang/String;
    .param p3, "innerName"    # Ljava/lang/String;
    .param p4, "access"    # I

    .line 135
    iget-object v0, p0, Lorg/checkerframework/org/objectweb/asmx/optimizer/ClassConstantsCollector;->cp:Lorg/checkerframework/org/objectweb/asmx/optimizer/ConstantPool;

    const-string v1, "InnerClasses"

    invoke-virtual {v0, v1}, Lorg/checkerframework/org/objectweb/asmx/optimizer/ConstantPool;->newUTF8(Ljava/lang/String;)Lorg/checkerframework/org/objectweb/asmx/optimizer/Constant;

    .line 136
    if-eqz p1, :cond_0

    .line 137
    iget-object v0, p0, Lorg/checkerframework/org/objectweb/asmx/optimizer/ClassConstantsCollector;->cp:Lorg/checkerframework/org/objectweb/asmx/optimizer/ConstantPool;

    invoke-virtual {v0, p1}, Lorg/checkerframework/org/objectweb/asmx/optimizer/ConstantPool;->newClass(Ljava/lang/String;)Lorg/checkerframework/org/objectweb/asmx/optimizer/Constant;

    .line 139
    :cond_0
    if-eqz p2, :cond_1

    .line 140
    iget-object v0, p0, Lorg/checkerframework/org/objectweb/asmx/optimizer/ClassConstantsCollector;->cp:Lorg/checkerframework/org/objectweb/asmx/optimizer/ConstantPool;

    invoke-virtual {v0, p2}, Lorg/checkerframework/org/objectweb/asmx/optimizer/ConstantPool;->newClass(Ljava/lang/String;)Lorg/checkerframework/org/objectweb/asmx/optimizer/Constant;

    .line 142
    :cond_1
    if-eqz p3, :cond_2

    .line 143
    iget-object v0, p0, Lorg/checkerframework/org/objectweb/asmx/optimizer/ClassConstantsCollector;->cp:Lorg/checkerframework/org/objectweb/asmx/optimizer/ConstantPool;

    invoke-virtual {v0, p3}, Lorg/checkerframework/org/objectweb/asmx/optimizer/ConstantPool;->newClass(Ljava/lang/String;)Lorg/checkerframework/org/objectweb/asmx/optimizer/Constant;

    .line 145
    :cond_2
    iget-object v0, p0, Lorg/checkerframework/org/objectweb/asmx/optimizer/ClassConstantsCollector;->cv:Lorg/checkerframework/org/objectweb/asmx/ClassVisitor;

    invoke-interface {v0, p1, p2, p3, p4}, Lorg/checkerframework/org/objectweb/asmx/ClassVisitor;->visitInnerClass(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    .line 146
    return-void
.end method

.method public visitMethod(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Lorg/checkerframework/org/objectweb/asmx/MethodVisitor;
    .locals 7
    .param p1, "access"    # I
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "desc"    # Ljava/lang/String;
    .param p4, "signature"    # Ljava/lang/String;
    .param p5, "exceptions"    # [Ljava/lang/String;

    .line 184
    and-int/lit16 v0, p1, 0x1000

    if-eqz v0, :cond_0

    .line 185
    iget-object v0, p0, Lorg/checkerframework/org/objectweb/asmx/optimizer/ClassConstantsCollector;->cp:Lorg/checkerframework/org/objectweb/asmx/optimizer/ConstantPool;

    const-string v1, "Synthetic"

    invoke-virtual {v0, v1}, Lorg/checkerframework/org/objectweb/asmx/optimizer/ConstantPool;->newUTF8(Ljava/lang/String;)Lorg/checkerframework/org/objectweb/asmx/optimizer/Constant;

    .line 187
    :cond_0
    const/high16 v0, 0x20000

    and-int/2addr v0, p1

    if-eqz v0, :cond_1

    .line 188
    iget-object v0, p0, Lorg/checkerframework/org/objectweb/asmx/optimizer/ClassConstantsCollector;->cp:Lorg/checkerframework/org/objectweb/asmx/optimizer/ConstantPool;

    const-string v1, "Deprecated"

    invoke-virtual {v0, v1}, Lorg/checkerframework/org/objectweb/asmx/optimizer/ConstantPool;->newUTF8(Ljava/lang/String;)Lorg/checkerframework/org/objectweb/asmx/optimizer/Constant;

    .line 190
    :cond_1
    iget-object v0, p0, Lorg/checkerframework/org/objectweb/asmx/optimizer/ClassConstantsCollector;->cp:Lorg/checkerframework/org/objectweb/asmx/optimizer/ConstantPool;

    invoke-virtual {v0, p2}, Lorg/checkerframework/org/objectweb/asmx/optimizer/ConstantPool;->newUTF8(Ljava/lang/String;)Lorg/checkerframework/org/objectweb/asmx/optimizer/Constant;

    .line 191
    iget-object v0, p0, Lorg/checkerframework/org/objectweb/asmx/optimizer/ClassConstantsCollector;->cp:Lorg/checkerframework/org/objectweb/asmx/optimizer/ConstantPool;

    invoke-virtual {v0, p3}, Lorg/checkerframework/org/objectweb/asmx/optimizer/ConstantPool;->newUTF8(Ljava/lang/String;)Lorg/checkerframework/org/objectweb/asmx/optimizer/Constant;

    .line 192
    if-eqz p4, :cond_2

    .line 193
    iget-object v0, p0, Lorg/checkerframework/org/objectweb/asmx/optimizer/ClassConstantsCollector;->cp:Lorg/checkerframework/org/objectweb/asmx/optimizer/ConstantPool;

    const-string v1, "Signature"

    invoke-virtual {v0, v1}, Lorg/checkerframework/org/objectweb/asmx/optimizer/ConstantPool;->newUTF8(Ljava/lang/String;)Lorg/checkerframework/org/objectweb/asmx/optimizer/Constant;

    .line 194
    iget-object v0, p0, Lorg/checkerframework/org/objectweb/asmx/optimizer/ClassConstantsCollector;->cp:Lorg/checkerframework/org/objectweb/asmx/optimizer/ConstantPool;

    invoke-virtual {v0, p4}, Lorg/checkerframework/org/objectweb/asmx/optimizer/ConstantPool;->newUTF8(Ljava/lang/String;)Lorg/checkerframework/org/objectweb/asmx/optimizer/Constant;

    .line 196
    :cond_2
    if-eqz p5, :cond_3

    .line 197
    iget-object v0, p0, Lorg/checkerframework/org/objectweb/asmx/optimizer/ClassConstantsCollector;->cp:Lorg/checkerframework/org/objectweb/asmx/optimizer/ConstantPool;

    const-string v1, "Exceptions"

    invoke-virtual {v0, v1}, Lorg/checkerframework/org/objectweb/asmx/optimizer/ConstantPool;->newUTF8(Ljava/lang/String;)Lorg/checkerframework/org/objectweb/asmx/optimizer/Constant;

    .line 198
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v1, p5

    if-ge v0, v1, :cond_3

    .line 199
    iget-object v1, p0, Lorg/checkerframework/org/objectweb/asmx/optimizer/ClassConstantsCollector;->cp:Lorg/checkerframework/org/objectweb/asmx/optimizer/ConstantPool;

    aget-object v2, p5, v0

    invoke-virtual {v1, v2}, Lorg/checkerframework/org/objectweb/asmx/optimizer/ConstantPool;->newClass(Ljava/lang/String;)Lorg/checkerframework/org/objectweb/asmx/optimizer/Constant;

    .line 198
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 202
    .end local v0    # "i":I
    :cond_3
    new-instance v0, Lorg/checkerframework/org/objectweb/asmx/optimizer/MethodConstantsCollector;

    iget-object v1, p0, Lorg/checkerframework/org/objectweb/asmx/optimizer/ClassConstantsCollector;->cv:Lorg/checkerframework/org/objectweb/asmx/ClassVisitor;

    move v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-interface/range {v1 .. v6}, Lorg/checkerframework/org/objectweb/asmx/ClassVisitor;->visitMethod(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Lorg/checkerframework/org/objectweb/asmx/MethodVisitor;

    move-result-object v1

    iget-object v2, p0, Lorg/checkerframework/org/objectweb/asmx/optimizer/ClassConstantsCollector;->cp:Lorg/checkerframework/org/objectweb/asmx/optimizer/ConstantPool;

    invoke-direct {v0, v1, v2}, Lorg/checkerframework/org/objectweb/asmx/optimizer/MethodConstantsCollector;-><init>(Lorg/checkerframework/org/objectweb/asmx/MethodVisitor;Lorg/checkerframework/org/objectweb/asmx/optimizer/ConstantPool;)V

    return-object v0
.end method

.method public visitOuterClass(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "owner"    # Ljava/lang/String;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "desc"    # Ljava/lang/String;

    .line 102
    iget-object v0, p0, Lorg/checkerframework/org/objectweb/asmx/optimizer/ClassConstantsCollector;->cp:Lorg/checkerframework/org/objectweb/asmx/optimizer/ConstantPool;

    const-string v1, "EnclosingMethod"

    invoke-virtual {v0, v1}, Lorg/checkerframework/org/objectweb/asmx/optimizer/ConstantPool;->newUTF8(Ljava/lang/String;)Lorg/checkerframework/org/objectweb/asmx/optimizer/Constant;

    .line 103
    iget-object v0, p0, Lorg/checkerframework/org/objectweb/asmx/optimizer/ClassConstantsCollector;->cp:Lorg/checkerframework/org/objectweb/asmx/optimizer/ConstantPool;

    invoke-virtual {v0, p1}, Lorg/checkerframework/org/objectweb/asmx/optimizer/ConstantPool;->newClass(Ljava/lang/String;)Lorg/checkerframework/org/objectweb/asmx/optimizer/Constant;

    .line 104
    if-eqz p2, :cond_0

    if-eqz p3, :cond_0

    .line 105
    iget-object v0, p0, Lorg/checkerframework/org/objectweb/asmx/optimizer/ClassConstantsCollector;->cp:Lorg/checkerframework/org/objectweb/asmx/optimizer/ConstantPool;

    invoke-virtual {v0, p2, p3}, Lorg/checkerframework/org/objectweb/asmx/optimizer/ConstantPool;->newNameType(Ljava/lang/String;Ljava/lang/String;)Lorg/checkerframework/org/objectweb/asmx/optimizer/Constant;

    .line 107
    :cond_0
    iget-object v0, p0, Lorg/checkerframework/org/objectweb/asmx/optimizer/ClassConstantsCollector;->cv:Lorg/checkerframework/org/objectweb/asmx/ClassVisitor;

    invoke-interface {v0, p1, p2, p3}, Lorg/checkerframework/org/objectweb/asmx/ClassVisitor;->visitOuterClass(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 108
    return-void
.end method

.method public visitSource(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "source"    # Ljava/lang/String;
    .param p2, "debug"    # Ljava/lang/String;

    .line 87
    if-eqz p1, :cond_0

    .line 88
    iget-object v0, p0, Lorg/checkerframework/org/objectweb/asmx/optimizer/ClassConstantsCollector;->cp:Lorg/checkerframework/org/objectweb/asmx/optimizer/ConstantPool;

    const-string v1, "SourceFile"

    invoke-virtual {v0, v1}, Lorg/checkerframework/org/objectweb/asmx/optimizer/ConstantPool;->newUTF8(Ljava/lang/String;)Lorg/checkerframework/org/objectweb/asmx/optimizer/Constant;

    .line 89
    iget-object v0, p0, Lorg/checkerframework/org/objectweb/asmx/optimizer/ClassConstantsCollector;->cp:Lorg/checkerframework/org/objectweb/asmx/optimizer/ConstantPool;

    invoke-virtual {v0, p1}, Lorg/checkerframework/org/objectweb/asmx/optimizer/ConstantPool;->newUTF8(Ljava/lang/String;)Lorg/checkerframework/org/objectweb/asmx/optimizer/Constant;

    .line 91
    :cond_0
    if-eqz p2, :cond_1

    .line 92
    iget-object v0, p0, Lorg/checkerframework/org/objectweb/asmx/optimizer/ClassConstantsCollector;->cp:Lorg/checkerframework/org/objectweb/asmx/optimizer/ConstantPool;

    const-string v1, "SourceDebugExtension"

    invoke-virtual {v0, v1}, Lorg/checkerframework/org/objectweb/asmx/optimizer/ConstantPool;->newUTF8(Ljava/lang/String;)Lorg/checkerframework/org/objectweb/asmx/optimizer/Constant;

    .line 94
    :cond_1
    iget-object v0, p0, Lorg/checkerframework/org/objectweb/asmx/optimizer/ClassConstantsCollector;->cv:Lorg/checkerframework/org/objectweb/asmx/ClassVisitor;

    invoke-interface {v0, p1, p2}, Lorg/checkerframework/org/objectweb/asmx/ClassVisitor;->visitSource(Ljava/lang/String;Ljava/lang/String;)V

    .line 95
    return-void
.end method
