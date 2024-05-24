.class public Lorg/checkerframework/org/objectweb/asmx/util/CheckClassAdapter;
.super Lorg/checkerframework/org/objectweb/asmx/ClassAdapter;
.source "CheckClassAdapter.java"


# instance fields
.field private end:Z

.field private outer:Z

.field private source:Z

.field private start:Z


# direct methods
.method public constructor <init>(Lorg/checkerframework/org/objectweb/asmx/ClassVisitor;)V
    .locals 0
    .param p1, "cv"    # Lorg/checkerframework/org/objectweb/asmx/ClassVisitor;

    .line 191
    invoke-direct {p0, p1}, Lorg/checkerframework/org/objectweb/asmx/ClassAdapter;-><init>(Lorg/checkerframework/org/objectweb/asmx/ClassVisitor;)V

    .line 192
    return-void
.end method

.method static checkAccess(II)V
    .locals 8
    .param p0, "access"    # I
    .param p1, "possibleAccess"    # I

    .line 398
    not-int v0, p1

    and-int/2addr v0, p0

    if-nez v0, :cond_7

    .line 402
    and-int/lit8 v0, p0, 0x1

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v1

    .line 403
    .local v0, "pub":I
    :goto_0
    and-int/lit8 v3, p0, 0x2

    if-eqz v3, :cond_1

    move v3, v2

    goto :goto_1

    :cond_1
    move v3, v1

    .line 404
    .local v3, "pri":I
    :goto_1
    and-int/lit8 v4, p0, 0x4

    if-eqz v4, :cond_2

    move v4, v2

    goto :goto_2

    :cond_2
    move v4, v1

    .line 405
    .local v4, "pro":I
    :goto_2
    add-int v5, v0, v3

    add-int/2addr v5, v4

    if-gt v5, v2, :cond_6

    .line 409
    and-int/lit8 v5, p0, 0x10

    if-eqz v5, :cond_3

    move v5, v2

    goto :goto_3

    :cond_3
    move v5, v1

    .line 410
    .local v5, "fin":I
    :goto_3
    and-int/lit16 v6, p0, 0x400

    if-eqz v6, :cond_4

    move v1, v2

    .line 411
    .local v1, "abs":I
    :cond_4
    add-int v6, v5, v1

    if-gt v6, v2, :cond_5

    .line 415
    return-void

    .line 412
    :cond_5
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "final and abstract are mutually exclusive: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v2, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 406
    .end local v1    # "abs":I
    .end local v5    # "fin":I
    :cond_6
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "public private and protected are mutually exclusive: "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 399
    .end local v0    # "pub":I
    .end local v3    # "pri":I
    .end local v4    # "pro":I
    :cond_7
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid access flags: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private checkState()V
    .locals 2

    .line 381
    iget-boolean v0, p0, Lorg/checkerframework/org/objectweb/asmx/util/CheckClassAdapter;->start:Z

    if-eqz v0, :cond_1

    .line 384
    iget-boolean v0, p0, Lorg/checkerframework/org/objectweb/asmx/util/CheckClassAdapter;->end:Z

    if-nez v0, :cond_0

    .line 387
    return-void

    .line 385
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot visit member after visitEnd has been called."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 382
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot visit member before visit has been called."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static getShortName(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p0, "name"    # Ljava/lang/String;

    .line 179
    const/16 v0, 0x2f

    invoke-virtual {p0, v0}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    .line 180
    .local v0, "n":I
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    .line 181
    .local v1, "k":I
    add-int/lit8 v2, v1, -0x1

    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v3, 0x3b

    if-ne v2, v3, :cond_0

    add-int/lit8 v1, v1, -0x1

    .line 182
    :cond_0
    const/4 v2, -0x1

    if-ne v0, v2, :cond_1

    move-object v2, p0

    goto :goto_0

    :cond_1
    add-int/lit8 v2, v0, 0x1

    invoke-virtual {p0, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    :goto_0
    return-object v2
.end method

.method public static main([Ljava/lang/String;)V
    .locals 4
    .param p0, "args"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 96
    array-length v0, p0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    .line 97
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v1, "Verifies the given class."

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 98
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v1, "Usage: CheckClassAdapter <fully qualified class name or class file name>"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 100
    return-void

    .line 103
    :cond_0
    const/4 v0, 0x0

    aget-object v1, p0, v0

    const-string v2, ".class"

    invoke-virtual {v1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 104
    new-instance v1, Lorg/checkerframework/org/objectweb/asmx/ClassReader;

    new-instance v2, Ljava/io/FileInputStream;

    aget-object v3, p0, v0

    invoke-direct {v2, v3}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    invoke-direct {v1, v2}, Lorg/checkerframework/org/objectweb/asmx/ClassReader;-><init>(Ljava/io/InputStream;)V

    .local v1, "cr":Lorg/checkerframework/org/objectweb/asmx/ClassReader;
    goto :goto_0

    .line 106
    .end local v1    # "cr":Lorg/checkerframework/org/objectweb/asmx/ClassReader;
    :cond_1
    new-instance v1, Lorg/checkerframework/org/objectweb/asmx/ClassReader;

    aget-object v2, p0, v0

    invoke-direct {v1, v2}, Lorg/checkerframework/org/objectweb/asmx/ClassReader;-><init>(Ljava/lang/String;)V

    .line 109
    .restart local v1    # "cr":Lorg/checkerframework/org/objectweb/asmx/ClassReader;
    :goto_0
    new-instance v2, Ljava/io/PrintWriter;

    sget-object v3, Ljava/lang/System;->err:Ljava/io/PrintStream;

    invoke-direct {v2, v3}, Ljava/io/PrintWriter;-><init>(Ljava/io/OutputStream;)V

    invoke-static {v1, v0, v2}, Lorg/checkerframework/org/objectweb/asmx/util/CheckClassAdapter;->verify(Lorg/checkerframework/org/objectweb/asmx/ClassReader;ZLjava/io/PrintWriter;)V

    .line 110
    return-void
.end method

.method public static verify(Lorg/checkerframework/org/objectweb/asmx/ClassReader;ZLjava/io/PrintWriter;)V
    .locals 17
    .param p0, "cr"    # Lorg/checkerframework/org/objectweb/asmx/ClassReader;
    .param p1, "dump"    # Z
    .param p2, "pw"    # Ljava/io/PrintWriter;

    .line 120
    move-object/from16 v1, p2

    new-instance v0, Lorg/checkerframework/org/objectweb/asmx/tree/ClassNode;

    invoke-direct {v0}, Lorg/checkerframework/org/objectweb/asmx/tree/ClassNode;-><init>()V

    move-object v2, v0

    .line 121
    .local v2, "cn":Lorg/checkerframework/org/objectweb/asmx/tree/ClassNode;
    new-instance v0, Lorg/checkerframework/org/objectweb/asmx/util/CheckClassAdapter;

    invoke-direct {v0, v2}, Lorg/checkerframework/org/objectweb/asmx/util/CheckClassAdapter;-><init>(Lorg/checkerframework/org/objectweb/asmx/ClassVisitor;)V

    const/4 v3, 0x1

    move-object/from16 v4, p0

    invoke-virtual {v4, v0, v3}, Lorg/checkerframework/org/objectweb/asmx/ClassReader;->accept(Lorg/checkerframework/org/objectweb/asmx/ClassVisitor;Z)V

    .line 123
    iget-object v5, v2, Lorg/checkerframework/org/objectweb/asmx/tree/ClassNode;->methods:Ljava/util/List;

    .line 124
    .local v5, "methods":Ljava/util/List;
    const/4 v0, 0x0

    move v6, v0

    .local v6, "i":I
    :goto_0
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v0

    if-ge v6, v0, :cond_9

    .line 125
    invoke-interface {v5, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v7, v0

    check-cast v7, Lorg/checkerframework/org/objectweb/asmx/tree/MethodNode;

    .line 126
    .local v7, "method":Lorg/checkerframework/org/objectweb/asmx/tree/MethodNode;
    iget-object v0, v7, Lorg/checkerframework/org/objectweb/asmx/tree/MethodNode;->instructions:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_8

    .line 127
    new-instance v0, Lorg/checkerframework/org/objectweb/asmx/tree/analysis/Analyzer;

    new-instance v8, Lorg/checkerframework/org/objectweb/asmx/tree/analysis/SimpleVerifier;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "L"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v11, v2, Lorg/checkerframework/org/objectweb/asmx/tree/ClassNode;->name:Ljava/lang/String;

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v11, ";"

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lorg/checkerframework/org/objectweb/asmx/Type;->getType(Ljava/lang/String;)Lorg/checkerframework/org/objectweb/asmx/Type;

    move-result-object v9

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v12, v2, Lorg/checkerframework/org/objectweb/asmx/tree/ClassNode;->superName:Ljava/lang/String;

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 129
    invoke-static {v10}, Lorg/checkerframework/org/objectweb/asmx/Type;->getType(Ljava/lang/String;)Lorg/checkerframework/org/objectweb/asmx/Type;

    move-result-object v10

    iget v11, v2, Lorg/checkerframework/org/objectweb/asmx/tree/ClassNode;->access:I

    and-int/lit16 v11, v11, 0x200

    if-eqz v11, :cond_0

    move v11, v3

    goto :goto_1

    :cond_0
    const/4 v11, 0x0

    :goto_1
    invoke-direct {v8, v9, v10, v11}, Lorg/checkerframework/org/objectweb/asmx/tree/analysis/SimpleVerifier;-><init>(Lorg/checkerframework/org/objectweb/asmx/Type;Lorg/checkerframework/org/objectweb/asmx/Type;Z)V

    invoke-direct {v0, v8}, Lorg/checkerframework/org/objectweb/asmx/tree/analysis/Analyzer;-><init>(Lorg/checkerframework/org/objectweb/asmx/tree/analysis/Interpreter;)V

    move-object v8, v0

    .line 132
    .local v8, "a":Lorg/checkerframework/org/objectweb/asmx/tree/analysis/Analyzer;
    :try_start_0
    iget-object v0, v2, Lorg/checkerframework/org/objectweb/asmx/tree/ClassNode;->name:Ljava/lang/String;

    invoke-virtual {v8, v0, v7}, Lorg/checkerframework/org/objectweb/asmx/tree/analysis/Analyzer;->analyze(Ljava/lang/String;Lorg/checkerframework/org/objectweb/asmx/tree/MethodNode;)[Lorg/checkerframework/org/objectweb/asmx/tree/analysis/Frame;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 133
    if-nez p1, :cond_1

    .line 134
    move v15, v3

    goto/16 :goto_8

    .line 138
    :cond_1
    goto :goto_2

    .line 136
    :catch_0
    move-exception v0

    .line 137
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 139
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_2
    invoke-virtual {v8}, Lorg/checkerframework/org/objectweb/asmx/tree/analysis/Analyzer;->getFrames()[Lorg/checkerframework/org/objectweb/asmx/tree/analysis/Frame;

    move-result-object v0

    .line 141
    .local v0, "frames":[Lorg/checkerframework/org/objectweb/asmx/tree/analysis/Frame;
    new-instance v9, Lorg/checkerframework/org/objectweb/asmx/util/TraceMethodVisitor;

    invoke-direct {v9}, Lorg/checkerframework/org/objectweb/asmx/util/TraceMethodVisitor;-><init>()V

    .line 143
    .local v9, "mv":Lorg/checkerframework/org/objectweb/asmx/util/TraceMethodVisitor;
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v11, v7, Lorg/checkerframework/org/objectweb/asmx/tree/MethodNode;->name:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, v7, Lorg/checkerframework/org/objectweb/asmx/tree/MethodNode;->desc:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v1, v10}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 144
    const/4 v10, 0x0

    .local v10, "j":I
    :goto_3
    iget-object v11, v7, Lorg/checkerframework/org/objectweb/asmx/tree/MethodNode;->instructions:Ljava/util/List;

    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v11

    const-string v12, " "

    if-ge v10, v11, :cond_6

    .line 145
    iget-object v11, v7, Lorg/checkerframework/org/objectweb/asmx/tree/MethodNode;->instructions:Ljava/util/List;

    invoke-interface {v11, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lorg/checkerframework/org/objectweb/asmx/tree/AbstractInsnNode;

    invoke-virtual {v11, v9}, Lorg/checkerframework/org/objectweb/asmx/tree/AbstractInsnNode;->accept(Lorg/checkerframework/org/objectweb/asmx/MethodVisitor;)V

    .line 147
    new-instance v11, Ljava/lang/StringBuffer;

    invoke-direct {v11}, Ljava/lang/StringBuffer;-><init>()V

    .line 148
    .local v11, "s":Ljava/lang/StringBuffer;
    aget-object v13, v0, v10

    .line 149
    .local v13, "f":Lorg/checkerframework/org/objectweb/asmx/tree/analysis/Frame;
    const-string v14, " : "

    if-nez v13, :cond_2

    .line 150
    const/16 v3, 0x3f

    invoke-virtual {v11, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-object/from16 v16, v0

    goto :goto_6

    .line 152
    :cond_2
    const/4 v3, 0x0

    .local v3, "k":I
    :goto_4
    invoke-virtual {v13}, Lorg/checkerframework/org/objectweb/asmx/tree/analysis/Frame;->getLocals()I

    move-result v15

    if-ge v3, v15, :cond_3

    .line 153
    invoke-virtual {v13, v3}, Lorg/checkerframework/org/objectweb/asmx/tree/analysis/Frame;->getLocal(I)Lorg/checkerframework/org/objectweb/asmx/tree/analysis/Value;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v15}, Lorg/checkerframework/org/objectweb/asmx/util/CheckClassAdapter;->getShortName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v11, v15}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v15

    .line 154
    move-object/from16 v16, v0

    const/16 v0, 0x20

    .end local v0    # "frames":[Lorg/checkerframework/org/objectweb/asmx/tree/analysis/Frame;
    .local v16, "frames":[Lorg/checkerframework/org/objectweb/asmx/tree/analysis/Frame;
    invoke-virtual {v15, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 152
    add-int/lit8 v3, v3, 0x1

    move-object/from16 v0, v16

    goto :goto_4

    .end local v16    # "frames":[Lorg/checkerframework/org/objectweb/asmx/tree/analysis/Frame;
    .restart local v0    # "frames":[Lorg/checkerframework/org/objectweb/asmx/tree/analysis/Frame;
    :cond_3
    move-object/from16 v16, v0

    .line 156
    .end local v0    # "frames":[Lorg/checkerframework/org/objectweb/asmx/tree/analysis/Frame;
    .end local v3    # "k":I
    .restart local v16    # "frames":[Lorg/checkerframework/org/objectweb/asmx/tree/analysis/Frame;
    invoke-virtual {v11, v14}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 157
    const/4 v0, 0x0

    .local v0, "k":I
    :goto_5
    invoke-virtual {v13}, Lorg/checkerframework/org/objectweb/asmx/tree/analysis/Frame;->getStackSize()I

    move-result v3

    if-ge v0, v3, :cond_4

    .line 158
    invoke-virtual {v13, v0}, Lorg/checkerframework/org/objectweb/asmx/tree/analysis/Frame;->getStack(I)Lorg/checkerframework/org/objectweb/asmx/tree/analysis/Value;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lorg/checkerframework/org/objectweb/asmx/util/CheckClassAdapter;->getShortName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v11, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    .line 159
    const/16 v15, 0x20

    invoke-virtual {v3, v15}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 157
    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    .line 162
    .end local v0    # "k":I
    :cond_4
    :goto_6
    invoke-virtual {v11}, Ljava/lang/StringBuffer;->length()I

    move-result v0

    iget v3, v7, Lorg/checkerframework/org/objectweb/asmx/tree/MethodNode;->maxStack:I

    iget v15, v7, Lorg/checkerframework/org/objectweb/asmx/tree/MethodNode;->maxLocals:I

    add-int/2addr v3, v15

    const/4 v15, 0x1

    add-int/2addr v3, v15

    if-ge v0, v3, :cond_5

    .line 164
    const/16 v0, 0x20

    invoke-virtual {v11, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_6

    .line 166
    :cond_5
    const v0, 0x186a0

    add-int/2addr v0, v10

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v15}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 167
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v3, v9, Lorg/checkerframework/org/objectweb/asmx/util/TraceMethodVisitor;->buf:Ljava/lang/StringBuffer;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 144
    .end local v11    # "s":Ljava/lang/StringBuffer;
    .end local v13    # "f":Lorg/checkerframework/org/objectweb/asmx/tree/analysis/Frame;
    add-int/lit8 v10, v10, 0x1

    move v3, v15

    move-object/from16 v0, v16

    goto/16 :goto_3

    .end local v16    # "frames":[Lorg/checkerframework/org/objectweb/asmx/tree/analysis/Frame;
    .local v0, "frames":[Lorg/checkerframework/org/objectweb/asmx/tree/analysis/Frame;
    :cond_6
    move-object/from16 v16, v0

    move v15, v3

    .line 169
    .end local v0    # "frames":[Lorg/checkerframework/org/objectweb/asmx/tree/analysis/Frame;
    .end local v10    # "j":I
    .restart local v16    # "frames":[Lorg/checkerframework/org/objectweb/asmx/tree/analysis/Frame;
    const/4 v0, 0x0

    .local v0, "j":I
    :goto_7
    iget-object v3, v7, Lorg/checkerframework/org/objectweb/asmx/tree/MethodNode;->tryCatchBlocks:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v0, v3, :cond_7

    .line 170
    iget-object v3, v7, Lorg/checkerframework/org/objectweb/asmx/tree/MethodNode;->tryCatchBlocks:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/checkerframework/org/objectweb/asmx/tree/TryCatchBlockNode;

    invoke-virtual {v3, v9}, Lorg/checkerframework/org/objectweb/asmx/tree/TryCatchBlockNode;->accept(Lorg/checkerframework/org/objectweb/asmx/MethodVisitor;)V

    .line 171
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v10, v9, Lorg/checkerframework/org/objectweb/asmx/util/TraceMethodVisitor;->buf:Ljava/lang/StringBuffer;

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 169
    add-int/lit8 v0, v0, 0x1

    goto :goto_7

    .line 173
    .end local v0    # "j":I
    :cond_7
    invoke-virtual/range {p2 .. p2}, Ljava/io/PrintWriter;->println()V

    goto :goto_8

    .line 126
    .end local v8    # "a":Lorg/checkerframework/org/objectweb/asmx/tree/analysis/Analyzer;
    .end local v9    # "mv":Lorg/checkerframework/org/objectweb/asmx/util/TraceMethodVisitor;
    .end local v16    # "frames":[Lorg/checkerframework/org/objectweb/asmx/tree/analysis/Frame;
    :cond_8
    move v15, v3

    .line 124
    .end local v7    # "method":Lorg/checkerframework/org/objectweb/asmx/tree/MethodNode;
    :goto_8
    add-int/lit8 v6, v6, 0x1

    move v3, v15

    goto/16 :goto_0

    .line 176
    .end local v6    # "i":I
    :cond_9
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

    .line 206
    iget-boolean v0, p0, Lorg/checkerframework/org/objectweb/asmx/util/CheckClassAdapter;->start:Z

    if-nez v0, :cond_5

    .line 209
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/checkerframework/org/objectweb/asmx/util/CheckClassAdapter;->start:Z

    .line 211
    invoke-direct {p0}, Lorg/checkerframework/org/objectweb/asmx/util/CheckClassAdapter;->checkState()V

    .line 212
    const v0, 0x27631

    invoke-static {p2, v0}, Lorg/checkerframework/org/objectweb/asmx/util/CheckClassAdapter;->checkAccess(II)V

    .line 217
    const-string v0, "class name"

    invoke-static {p3, v0}, Lorg/checkerframework/org/objectweb/asmx/util/CheckMethodAdapter;->checkInternalName(Ljava/lang/String;Ljava/lang/String;)V

    .line 218
    const-string v0, "java/lang/Object"

    invoke-virtual {v0, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 219
    if-nez p5, :cond_0

    goto :goto_0

    .line 220
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "The super class name of the Object class must be \'null\'"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 223
    :cond_1
    const-string v1, "super class name"

    invoke-static {p5, v1}, Lorg/checkerframework/org/objectweb/asmx/util/CheckMethodAdapter;->checkInternalName(Ljava/lang/String;Ljava/lang/String;)V

    .line 225
    :goto_0
    nop

    .line 228
    and-int/lit16 v1, p2, 0x200

    if-eqz v1, :cond_3

    .line 229
    invoke-virtual {v0, p5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_1

    .line 230
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "The super class name of interfaces must be \'java/lang/Object\'"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 233
    :cond_3
    :goto_1
    if-eqz p6, :cond_4

    .line 234
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_2
    array-length v1, p6

    if-ge v0, v1, :cond_4

    .line 235
    aget-object v1, p6, v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "interface name at index "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lorg/checkerframework/org/objectweb/asmx/util/CheckMethodAdapter;->checkInternalName(Ljava/lang/String;Ljava/lang/String;)V

    .line 234
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 239
    .end local v0    # "i":I
    :cond_4
    iget-object v1, p0, Lorg/checkerframework/org/objectweb/asmx/util/CheckClassAdapter;->cv:Lorg/checkerframework/org/objectweb/asmx/ClassVisitor;

    move v2, p1

    move v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    move-object v7, p6

    invoke-interface/range {v1 .. v7}, Lorg/checkerframework/org/objectweb/asmx/ClassVisitor;->visit(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    .line 240
    return-void

    .line 207
    :cond_5
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "visit must be called only once"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public visitAnnotation(Ljava/lang/String;Z)Lorg/checkerframework/org/objectweb/asmx/AnnotationVisitor;
    .locals 2
    .param p1, "desc"    # Ljava/lang/String;
    .param p2, "visible"    # Z

    .line 353
    invoke-direct {p0}, Lorg/checkerframework/org/objectweb/asmx/util/CheckClassAdapter;->checkState()V

    .line 354
    const/4 v0, 0x0

    invoke-static {p1, v0}, Lorg/checkerframework/org/objectweb/asmx/util/CheckMethodAdapter;->checkDesc(Ljava/lang/String;Z)V

    .line 355
    new-instance v0, Lorg/checkerframework/org/objectweb/asmx/util/CheckAnnotationAdapter;

    iget-object v1, p0, Lorg/checkerframework/org/objectweb/asmx/util/CheckClassAdapter;->cv:Lorg/checkerframework/org/objectweb/asmx/ClassVisitor;

    invoke-interface {v1, p1, p2}, Lorg/checkerframework/org/objectweb/asmx/ClassVisitor;->visitAnnotation(Ljava/lang/String;Z)Lorg/checkerframework/org/objectweb/asmx/AnnotationVisitor;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/checkerframework/org/objectweb/asmx/util/CheckAnnotationAdapter;-><init>(Lorg/checkerframework/org/objectweb/asmx/AnnotationVisitor;)V

    return-object v0
.end method

.method public visitAttribute(Lorg/checkerframework/org/objectweb/asmx/Attribute;)V
    .locals 2
    .param p1, "attr"    # Lorg/checkerframework/org/objectweb/asmx/Attribute;

    .line 359
    invoke-direct {p0}, Lorg/checkerframework/org/objectweb/asmx/util/CheckClassAdapter;->checkState()V

    .line 360
    if-eqz p1, :cond_0

    .line 363
    iget-object v0, p0, Lorg/checkerframework/org/objectweb/asmx/util/CheckClassAdapter;->cv:Lorg/checkerframework/org/objectweb/asmx/ClassVisitor;

    invoke-interface {v0, p1}, Lorg/checkerframework/org/objectweb/asmx/ClassVisitor;->visitAttribute(Lorg/checkerframework/org/objectweb/asmx/Attribute;)V

    .line 364
    return-void

    .line 361
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Invalid attribute (must not be null)"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public visitEnd()V
    .locals 1

    .line 367
    invoke-direct {p0}, Lorg/checkerframework/org/objectweb/asmx/util/CheckClassAdapter;->checkState()V

    .line 368
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/checkerframework/org/objectweb/asmx/util/CheckClassAdapter;->end:Z

    .line 369
    iget-object v0, p0, Lorg/checkerframework/org/objectweb/asmx/util/CheckClassAdapter;->cv:Lorg/checkerframework/org/objectweb/asmx/ClassVisitor;

    invoke-interface {v0}, Lorg/checkerframework/org/objectweb/asmx/ClassVisitor;->visitEnd()V

    .line 370
    return-void
.end method

.method public visitField(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)Lorg/checkerframework/org/objectweb/asmx/FieldVisitor;
    .locals 7
    .param p1, "access"    # I
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "desc"    # Ljava/lang/String;
    .param p4, "signature"    # Ljava/lang/String;
    .param p5, "value"    # Ljava/lang/Object;

    .line 299
    invoke-direct {p0}, Lorg/checkerframework/org/objectweb/asmx/util/CheckClassAdapter;->checkState()V

    .line 300
    const v0, 0x250df

    invoke-static {p1, v0}, Lorg/checkerframework/org/objectweb/asmx/util/CheckClassAdapter;->checkAccess(II)V

    .line 305
    const-string v0, "field name"

    invoke-static {p2, v0}, Lorg/checkerframework/org/objectweb/asmx/util/CheckMethodAdapter;->checkIdentifier(Ljava/lang/String;Ljava/lang/String;)V

    .line 306
    const/4 v0, 0x0

    invoke-static {p3, v0}, Lorg/checkerframework/org/objectweb/asmx/util/CheckMethodAdapter;->checkDesc(Ljava/lang/String;Z)V

    .line 307
    nop

    .line 310
    if-eqz p5, :cond_0

    .line 311
    invoke-static {p5}, Lorg/checkerframework/org/objectweb/asmx/util/CheckMethodAdapter;->checkConstant(Ljava/lang/Object;)V

    .line 313
    :cond_0
    iget-object v1, p0, Lorg/checkerframework/org/objectweb/asmx/util/CheckClassAdapter;->cv:Lorg/checkerframework/org/objectweb/asmx/ClassVisitor;

    move v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-interface/range {v1 .. v6}, Lorg/checkerframework/org/objectweb/asmx/ClassVisitor;->visitField(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)Lorg/checkerframework/org/objectweb/asmx/FieldVisitor;

    move-result-object v0

    .line 314
    .local v0, "av":Lorg/checkerframework/org/objectweb/asmx/FieldVisitor;
    new-instance v1, Lorg/checkerframework/org/objectweb/asmx/util/CheckFieldAdapter;

    invoke-direct {v1, v0}, Lorg/checkerframework/org/objectweb/asmx/util/CheckFieldAdapter;-><init>(Lorg/checkerframework/org/objectweb/asmx/FieldVisitor;)V

    return-object v1
.end method

.method public visitInnerClass(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "outerName"    # Ljava/lang/String;
    .param p3, "innerName"    # Ljava/lang/String;
    .param p4, "access"    # I

    .line 276
    invoke-direct {p0}, Lorg/checkerframework/org/objectweb/asmx/util/CheckClassAdapter;->checkState()V

    .line 277
    const-string v0, "class name"

    invoke-static {p1, v0}, Lorg/checkerframework/org/objectweb/asmx/util/CheckMethodAdapter;->checkInternalName(Ljava/lang/String;Ljava/lang/String;)V

    .line 278
    if-eqz p2, :cond_0

    .line 279
    const-string v0, "outer class name"

    invoke-static {p2, v0}, Lorg/checkerframework/org/objectweb/asmx/util/CheckMethodAdapter;->checkInternalName(Ljava/lang/String;Ljava/lang/String;)V

    .line 281
    :cond_0
    if-eqz p3, :cond_1

    .line 282
    const-string v0, "inner class name"

    invoke-static {p3, v0}, Lorg/checkerframework/org/objectweb/asmx/util/CheckMethodAdapter;->checkIdentifier(Ljava/lang/String;Ljava/lang/String;)V

    .line 284
    :cond_1
    const/16 v0, 0x761f

    invoke-static {p4, v0}, Lorg/checkerframework/org/objectweb/asmx/util/CheckClassAdapter;->checkAccess(II)V

    .line 289
    iget-object v0, p0, Lorg/checkerframework/org/objectweb/asmx/util/CheckClassAdapter;->cv:Lorg/checkerframework/org/objectweb/asmx/ClassVisitor;

    invoke-interface {v0, p1, p2, p3, p4}, Lorg/checkerframework/org/objectweb/asmx/ClassVisitor;->visitInnerClass(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    .line 290
    return-void
.end method

.method public visitMethod(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Lorg/checkerframework/org/objectweb/asmx/MethodVisitor;
    .locals 7
    .param p1, "access"    # I
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "desc"    # Ljava/lang/String;
    .param p4, "signature"    # Ljava/lang/String;
    .param p5, "exceptions"    # [Ljava/lang/String;

    .line 324
    invoke-direct {p0}, Lorg/checkerframework/org/objectweb/asmx/util/CheckClassAdapter;->checkState()V

    .line 325
    const v0, 0x21dff

    invoke-static {p1, v0}, Lorg/checkerframework/org/objectweb/asmx/util/CheckClassAdapter;->checkAccess(II)V

    .line 331
    const-string v0, "method name"

    invoke-static {p2, v0}, Lorg/checkerframework/org/objectweb/asmx/util/CheckMethodAdapter;->checkMethodIdentifier(Ljava/lang/String;Ljava/lang/String;)V

    .line 332
    invoke-static {p3}, Lorg/checkerframework/org/objectweb/asmx/util/CheckMethodAdapter;->checkMethodDesc(Ljava/lang/String;)V

    .line 333
    nop

    .line 336
    if-eqz p5, :cond_0

    .line 337
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v1, p5

    if-ge v0, v1, :cond_0

    .line 338
    aget-object v1, p5, v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "exception name at index "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lorg/checkerframework/org/objectweb/asmx/util/CheckMethodAdapter;->checkInternalName(Ljava/lang/String;Ljava/lang/String;)V

    .line 337
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 342
    .end local v0    # "i":I
    :cond_0
    new-instance v0, Lorg/checkerframework/org/objectweb/asmx/util/CheckMethodAdapter;

    iget-object v1, p0, Lorg/checkerframework/org/objectweb/asmx/util/CheckClassAdapter;->cv:Lorg/checkerframework/org/objectweb/asmx/ClassVisitor;

    move v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-interface/range {v1 .. v6}, Lorg/checkerframework/org/objectweb/asmx/ClassVisitor;->visitMethod(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Lorg/checkerframework/org/objectweb/asmx/MethodVisitor;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/checkerframework/org/objectweb/asmx/util/CheckMethodAdapter;-><init>(Lorg/checkerframework/org/objectweb/asmx/MethodVisitor;)V

    return-object v0
.end method

.method public visitOuterClass(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "owner"    # Ljava/lang/String;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "desc"    # Ljava/lang/String;

    .line 256
    invoke-direct {p0}, Lorg/checkerframework/org/objectweb/asmx/util/CheckClassAdapter;->checkState()V

    .line 257
    iget-boolean v0, p0, Lorg/checkerframework/org/objectweb/asmx/util/CheckClassAdapter;->outer:Z

    if-nez v0, :cond_2

    .line 260
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/checkerframework/org/objectweb/asmx/util/CheckClassAdapter;->outer:Z

    .line 261
    if-eqz p1, :cond_1

    .line 264
    if-eqz p3, :cond_0

    .line 265
    invoke-static {p3}, Lorg/checkerframework/org/objectweb/asmx/util/CheckMethodAdapter;->checkMethodDesc(Ljava/lang/String;)V

    .line 267
    :cond_0
    iget-object v0, p0, Lorg/checkerframework/org/objectweb/asmx/util/CheckClassAdapter;->cv:Lorg/checkerframework/org/objectweb/asmx/ClassVisitor;

    invoke-interface {v0, p1, p2, p3}, Lorg/checkerframework/org/objectweb/asmx/ClassVisitor;->visitOuterClass(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 268
    return-void

    .line 262
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Illegal outer class owner"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 258
    :cond_2
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "visitSource can be called only once."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public visitSource(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "file"    # Ljava/lang/String;
    .param p2, "debug"    # Ljava/lang/String;

    .line 243
    invoke-direct {p0}, Lorg/checkerframework/org/objectweb/asmx/util/CheckClassAdapter;->checkState()V

    .line 244
    iget-boolean v0, p0, Lorg/checkerframework/org/objectweb/asmx/util/CheckClassAdapter;->source:Z

    if-nez v0, :cond_0

    .line 247
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/checkerframework/org/objectweb/asmx/util/CheckClassAdapter;->source:Z

    .line 248
    iget-object v0, p0, Lorg/checkerframework/org/objectweb/asmx/util/CheckClassAdapter;->cv:Lorg/checkerframework/org/objectweb/asmx/ClassVisitor;

    invoke-interface {v0, p1, p2}, Lorg/checkerframework/org/objectweb/asmx/ClassVisitor;->visitSource(Ljava/lang/String;Ljava/lang/String;)V

    .line 249
    return-void

    .line 245
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "visitSource can be called only once."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
