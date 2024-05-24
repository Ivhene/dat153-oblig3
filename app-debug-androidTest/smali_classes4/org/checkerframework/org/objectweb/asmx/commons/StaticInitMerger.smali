.class public Lorg/checkerframework/org/objectweb/asmx/commons/StaticInitMerger;
.super Lorg/checkerframework/org/objectweb/asmx/ClassAdapter;
.source "StaticInitMerger.java"


# instance fields
.field private clinit:Lorg/checkerframework/org/objectweb/asmx/MethodVisitor;

.field private counter:I

.field private name:Ljava/lang/String;

.field private prefix:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lorg/checkerframework/org/objectweb/asmx/ClassVisitor;)V
    .locals 0
    .param p1, "prefix"    # Ljava/lang/String;
    .param p2, "cv"    # Lorg/checkerframework/org/objectweb/asmx/ClassVisitor;

    .line 53
    invoke-direct {p0, p2}, Lorg/checkerframework/org/objectweb/asmx/ClassAdapter;-><init>(Lorg/checkerframework/org/objectweb/asmx/ClassVisitor;)V

    .line 54
    iput-object p1, p0, Lorg/checkerframework/org/objectweb/asmx/commons/StaticInitMerger;->prefix:Ljava/lang/String;

    .line 55
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

    .line 65
    iget-object v0, p0, Lorg/checkerframework/org/objectweb/asmx/commons/StaticInitMerger;->cv:Lorg/checkerframework/org/objectweb/asmx/ClassVisitor;

    move v1, p1

    move v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    invoke-interface/range {v0 .. v6}, Lorg/checkerframework/org/objectweb/asmx/ClassVisitor;->visit(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    .line 66
    iput-object p3, p0, Lorg/checkerframework/org/objectweb/asmx/commons/StaticInitMerger;->name:Ljava/lang/String;

    .line 67
    return-void
.end method

.method public visitEnd()V
    .locals 2

    .line 93
    iget-object v0, p0, Lorg/checkerframework/org/objectweb/asmx/commons/StaticInitMerger;->clinit:Lorg/checkerframework/org/objectweb/asmx/MethodVisitor;

    if-eqz v0, :cond_0

    .line 94
    const/16 v1, 0xb1

    invoke-interface {v0, v1}, Lorg/checkerframework/org/objectweb/asmx/MethodVisitor;->visitInsn(I)V

    .line 95
    iget-object v0, p0, Lorg/checkerframework/org/objectweb/asmx/commons/StaticInitMerger;->clinit:Lorg/checkerframework/org/objectweb/asmx/MethodVisitor;

    const/4 v1, 0x0

    invoke-interface {v0, v1, v1}, Lorg/checkerframework/org/objectweb/asmx/MethodVisitor;->visitMaxs(II)V

    .line 97
    :cond_0
    iget-object v0, p0, Lorg/checkerframework/org/objectweb/asmx/commons/StaticInitMerger;->cv:Lorg/checkerframework/org/objectweb/asmx/ClassVisitor;

    invoke-interface {v0}, Lorg/checkerframework/org/objectweb/asmx/ClassVisitor;->visitEnd()V

    .line 98
    return-void
.end method

.method public visitMethod(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Lorg/checkerframework/org/objectweb/asmx/MethodVisitor;
    .locals 12
    .param p1, "access"    # I
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "desc"    # Ljava/lang/String;
    .param p4, "signature"    # Ljava/lang/String;
    .param p5, "exceptions"    # [Ljava/lang/String;

    .line 77
    move-object v0, p0

    const-string v1, "<clinit>"

    move-object v8, p2

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 78
    const/16 v1, 0xa

    .line 79
    .local v1, "a":I
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, v0, Lorg/checkerframework/org/objectweb/asmx/commons/StaticInitMerger;->prefix:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, v0, Lorg/checkerframework/org/objectweb/asmx/commons/StaticInitMerger;->counter:I

    add-int/lit8 v4, v3, 0x1

    iput v4, v0, Lorg/checkerframework/org/objectweb/asmx/commons/StaticInitMerger;->counter:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 80
    .local v9, "n":Ljava/lang/String;
    iget-object v2, v0, Lorg/checkerframework/org/objectweb/asmx/commons/StaticInitMerger;->cv:Lorg/checkerframework/org/objectweb/asmx/ClassVisitor;

    move v3, v1

    move-object v4, v9

    move-object v5, p3

    move-object/from16 v6, p4

    move-object/from16 v7, p5

    invoke-interface/range {v2 .. v7}, Lorg/checkerframework/org/objectweb/asmx/ClassVisitor;->visitMethod(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Lorg/checkerframework/org/objectweb/asmx/MethodVisitor;

    move-result-object v10

    .line 82
    .local v10, "mv":Lorg/checkerframework/org/objectweb/asmx/MethodVisitor;
    iget-object v2, v0, Lorg/checkerframework/org/objectweb/asmx/commons/StaticInitMerger;->clinit:Lorg/checkerframework/org/objectweb/asmx/MethodVisitor;

    if-nez v2, :cond_0

    .line 83
    iget-object v2, v0, Lorg/checkerframework/org/objectweb/asmx/commons/StaticInitMerger;->cv:Lorg/checkerframework/org/objectweb/asmx/ClassVisitor;

    const/4 v6, 0x0

    const/4 v7, 0x0

    move v3, v1

    move-object v4, p2

    move-object v5, p3

    invoke-interface/range {v2 .. v7}, Lorg/checkerframework/org/objectweb/asmx/ClassVisitor;->visitMethod(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Lorg/checkerframework/org/objectweb/asmx/MethodVisitor;

    move-result-object v2

    iput-object v2, v0, Lorg/checkerframework/org/objectweb/asmx/commons/StaticInitMerger;->clinit:Lorg/checkerframework/org/objectweb/asmx/MethodVisitor;

    .line 85
    :cond_0
    iget-object v2, v0, Lorg/checkerframework/org/objectweb/asmx/commons/StaticInitMerger;->clinit:Lorg/checkerframework/org/objectweb/asmx/MethodVisitor;

    const/16 v3, 0xb8

    iget-object v4, v0, Lorg/checkerframework/org/objectweb/asmx/commons/StaticInitMerger;->name:Ljava/lang/String;

    move-object v11, p3

    invoke-interface {v2, v3, v4, v9, p3}, Lorg/checkerframework/org/objectweb/asmx/MethodVisitor;->visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 86
    .end local v1    # "a":I
    .end local v9    # "n":Ljava/lang/String;
    goto :goto_0

    .line 87
    .end local v10    # "mv":Lorg/checkerframework/org/objectweb/asmx/MethodVisitor;
    :cond_1
    move-object v11, p3

    iget-object v2, v0, Lorg/checkerframework/org/objectweb/asmx/commons/StaticInitMerger;->cv:Lorg/checkerframework/org/objectweb/asmx/ClassVisitor;

    move v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object/from16 v6, p4

    move-object/from16 v7, p5

    invoke-interface/range {v2 .. v7}, Lorg/checkerframework/org/objectweb/asmx/ClassVisitor;->visitMethod(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Lorg/checkerframework/org/objectweb/asmx/MethodVisitor;

    move-result-object v10

    .line 89
    .restart local v10    # "mv":Lorg/checkerframework/org/objectweb/asmx/MethodVisitor;
    :goto_0
    return-object v10
.end method
