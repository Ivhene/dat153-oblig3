.class public Lorg/checkerframework/org/objectweb/asmx/util/TraceClassVisitor;
.super Lorg/checkerframework/org/objectweb/asmx/util/TraceAbstractVisitor;
.source "TraceClassVisitor.java"

# interfaces
.implements Lorg/checkerframework/org/objectweb/asmx/ClassVisitor;


# instance fields
.field protected final cv:Lorg/checkerframework/org/objectweb/asmx/ClassVisitor;

.field protected final pw:Ljava/io/PrintWriter;


# direct methods
.method public constructor <init>(Ljava/io/PrintWriter;)V
    .locals 1
    .param p1, "pw"    # Ljava/io/PrintWriter;

    .line 160
    const/4 v0, 0x0

    invoke-direct {p0, v0, p1}, Lorg/checkerframework/org/objectweb/asmx/util/TraceClassVisitor;-><init>(Lorg/checkerframework/org/objectweb/asmx/ClassVisitor;Ljava/io/PrintWriter;)V

    .line 161
    return-void
.end method

.method public constructor <init>(Lorg/checkerframework/org/objectweb/asmx/ClassVisitor;Ljava/io/PrintWriter;)V
    .locals 0
    .param p1, "cv"    # Lorg/checkerframework/org/objectweb/asmx/ClassVisitor;
    .param p2, "pw"    # Ljava/io/PrintWriter;

    .line 170
    invoke-direct {p0}, Lorg/checkerframework/org/objectweb/asmx/util/TraceAbstractVisitor;-><init>()V

    .line 171
    iput-object p1, p0, Lorg/checkerframework/org/objectweb/asmx/util/TraceClassVisitor;->cv:Lorg/checkerframework/org/objectweb/asmx/ClassVisitor;

    .line 172
    iput-object p2, p0, Lorg/checkerframework/org/objectweb/asmx/util/TraceClassVisitor;->pw:Ljava/io/PrintWriter;

    .line 173
    return-void
.end method

.method private appendAccess(I)V
    .locals 2
    .param p1, "access"    # I

    .line 513
    and-int/lit8 v0, p1, 0x1

    if-eqz v0, :cond_0

    .line 514
    iget-object v0, p0, Lorg/checkerframework/org/objectweb/asmx/util/TraceClassVisitor;->buf:Ljava/lang/StringBuffer;

    const-string v1, "public "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 516
    :cond_0
    and-int/lit8 v0, p1, 0x2

    if-eqz v0, :cond_1

    .line 517
    iget-object v0, p0, Lorg/checkerframework/org/objectweb/asmx/util/TraceClassVisitor;->buf:Ljava/lang/StringBuffer;

    const-string v1, "private "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 519
    :cond_1
    and-int/lit8 v0, p1, 0x4

    if-eqz v0, :cond_2

    .line 520
    iget-object v0, p0, Lorg/checkerframework/org/objectweb/asmx/util/TraceClassVisitor;->buf:Ljava/lang/StringBuffer;

    const-string v1, "protected "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 522
    :cond_2
    and-int/lit8 v0, p1, 0x10

    if-eqz v0, :cond_3

    .line 523
    iget-object v0, p0, Lorg/checkerframework/org/objectweb/asmx/util/TraceClassVisitor;->buf:Ljava/lang/StringBuffer;

    const-string v1, "final "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 525
    :cond_3
    and-int/lit8 v0, p1, 0x8

    if-eqz v0, :cond_4

    .line 526
    iget-object v0, p0, Lorg/checkerframework/org/objectweb/asmx/util/TraceClassVisitor;->buf:Ljava/lang/StringBuffer;

    const-string v1, "static "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 528
    :cond_4
    and-int/lit8 v0, p1, 0x20

    if-eqz v0, :cond_5

    .line 529
    iget-object v0, p0, Lorg/checkerframework/org/objectweb/asmx/util/TraceClassVisitor;->buf:Ljava/lang/StringBuffer;

    const-string v1, "synchronized "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 531
    :cond_5
    and-int/lit8 v0, p1, 0x40

    if-eqz v0, :cond_6

    .line 532
    iget-object v0, p0, Lorg/checkerframework/org/objectweb/asmx/util/TraceClassVisitor;->buf:Ljava/lang/StringBuffer;

    const-string v1, "volatile "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 534
    :cond_6
    and-int/lit16 v0, p1, 0x80

    if-eqz v0, :cond_7

    .line 535
    iget-object v0, p0, Lorg/checkerframework/org/objectweb/asmx/util/TraceClassVisitor;->buf:Ljava/lang/StringBuffer;

    const-string v1, "transient "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 540
    :cond_7
    and-int/lit16 v0, p1, 0x400

    if-eqz v0, :cond_8

    .line 541
    iget-object v0, p0, Lorg/checkerframework/org/objectweb/asmx/util/TraceClassVisitor;->buf:Ljava/lang/StringBuffer;

    const-string v1, "abstract "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 543
    :cond_8
    and-int/lit16 v0, p1, 0x800

    if-eqz v0, :cond_9

    .line 544
    iget-object v0, p0, Lorg/checkerframework/org/objectweb/asmx/util/TraceClassVisitor;->buf:Ljava/lang/StringBuffer;

    const-string v1, "strictfp "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 546
    :cond_9
    and-int/lit16 v0, p1, 0x1000

    if-eqz v0, :cond_a

    .line 547
    iget-object v0, p0, Lorg/checkerframework/org/objectweb/asmx/util/TraceClassVisitor;->buf:Ljava/lang/StringBuffer;

    const-string v1, "synthetic "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 549
    :cond_a
    return-void
.end method

.method public static main([Ljava/lang/String;)V
    .locals 7
    .param p0, "args"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 121
    const/4 v0, 0x0

    .line 122
    .local v0, "i":I
    const/4 v1, 0x1

    .line 124
    .local v1, "skipDebug":Z
    const/4 v2, 0x1

    .line 125
    .local v2, "ok":Z
    array-length v3, p0

    const/4 v4, 0x1

    const/4 v5, 0x2

    if-lt v3, v4, :cond_0

    array-length v3, p0

    if-le v3, v5, :cond_1

    .line 126
    :cond_0
    const/4 v2, 0x0

    .line 128
    :cond_1
    if-eqz v2, :cond_2

    const/4 v3, 0x0

    aget-object v3, p0, v3

    const-string v4, "-debug"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 129
    const/4 v0, 0x1

    .line 130
    const/4 v1, 0x0

    .line 131
    array-length v3, p0

    if-eq v3, v5, :cond_2

    .line 132
    const/4 v2, 0x0

    .line 135
    :cond_2
    if-nez v2, :cond_3

    .line 136
    sget-object v3, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v4, "Prints a disassembled view of the given class."

    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 137
    sget-object v3, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v4, "Usage: TraceClassVisitor [-debug] <fully qualified class name or class file name>"

    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 139
    return-void

    .line 142
    :cond_3
    aget-object v3, p0, v0

    const-string v4, ".class"

    invoke-virtual {v3, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_5

    aget-object v3, p0, v0

    const/16 v4, 0x5c

    invoke-virtual {v3, v4}, Ljava/lang/String;->indexOf(I)I

    move-result v3

    const/4 v4, -0x1

    if-gt v3, v4, :cond_5

    aget-object v3, p0, v0

    .line 143
    const/16 v5, 0x2f

    invoke-virtual {v3, v5}, Ljava/lang/String;->indexOf(I)I

    move-result v3

    if-le v3, v4, :cond_4

    goto :goto_0

    .line 147
    :cond_4
    new-instance v3, Lorg/checkerframework/org/objectweb/asmx/ClassReader;

    aget-object v4, p0, v0

    invoke-direct {v3, v4}, Lorg/checkerframework/org/objectweb/asmx/ClassReader;-><init>(Ljava/lang/String;)V

    .local v3, "cr":Lorg/checkerframework/org/objectweb/asmx/ClassReader;
    goto :goto_1

    .line 145
    .end local v3    # "cr":Lorg/checkerframework/org/objectweb/asmx/ClassReader;
    :cond_5
    :goto_0
    new-instance v3, Lorg/checkerframework/org/objectweb/asmx/ClassReader;

    new-instance v4, Ljava/io/FileInputStream;

    aget-object v5, p0, v0

    invoke-direct {v4, v5}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    invoke-direct {v3, v4}, Lorg/checkerframework/org/objectweb/asmx/ClassReader;-><init>(Ljava/io/InputStream;)V

    .line 149
    .restart local v3    # "cr":Lorg/checkerframework/org/objectweb/asmx/ClassReader;
    :goto_1
    new-instance v4, Lorg/checkerframework/org/objectweb/asmx/util/TraceClassVisitor;

    new-instance v5, Ljava/io/PrintWriter;

    sget-object v6, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-direct {v5, v6}, Ljava/io/PrintWriter;-><init>(Ljava/io/OutputStream;)V

    invoke-direct {v4, v5}, Lorg/checkerframework/org/objectweb/asmx/util/TraceClassVisitor;-><init>(Ljava/io/PrintWriter;)V

    .line 150
    invoke-static {}, Lorg/checkerframework/org/objectweb/asmx/util/TraceClassVisitor;->getDefaultAttributes()[Lorg/checkerframework/org/objectweb/asmx/Attribute;

    move-result-object v5

    .line 149
    invoke-virtual {v3, v4, v5, v1}, Lorg/checkerframework/org/objectweb/asmx/ClassReader;->accept(Lorg/checkerframework/org/objectweb/asmx/ClassVisitor;[Lorg/checkerframework/org/objectweb/asmx/Attribute;Z)V

    .line 152
    return-void
.end method


# virtual methods
.method protected createTraceFieldVisitor()Lorg/checkerframework/org/objectweb/asmx/util/TraceFieldVisitor;
    .locals 1

    .line 499
    new-instance v0, Lorg/checkerframework/org/objectweb/asmx/util/TraceFieldVisitor;

    invoke-direct {v0}, Lorg/checkerframework/org/objectweb/asmx/util/TraceFieldVisitor;-><init>()V

    return-object v0
.end method

.method protected createTraceMethodVisitor()Lorg/checkerframework/org/objectweb/asmx/util/TraceMethodVisitor;
    .locals 1

    .line 503
    new-instance v0, Lorg/checkerframework/org/objectweb/asmx/util/TraceMethodVisitor;

    invoke-direct {v0}, Lorg/checkerframework/org/objectweb/asmx/util/TraceMethodVisitor;-><init>()V

    return-object v0
.end method

.method public visit(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V
    .locals 16
    .param p1, "version"    # I
    .param p2, "access"    # I
    .param p3, "name"    # Ljava/lang/String;
    .param p4, "signature"    # Ljava/lang/String;
    .param p5, "superName"    # Ljava/lang/String;
    .param p6, "interfaces"    # [Ljava/lang/String;

    .line 187
    move-object/from16 v0, p0

    move/from16 v8, p1

    move/from16 v9, p2

    move-object/from16 v10, p3

    move-object/from16 v11, p4

    move-object/from16 v12, p5

    move-object/from16 v13, p6

    const v1, 0xffff

    and-int v14, v8, v1

    .line 188
    .local v14, "major":I
    ushr-int/lit8 v15, v8, 0x10

    .line 189
    .local v15, "minor":I
    iget-object v1, v0, Lorg/checkerframework/org/objectweb/asmx/util/TraceClassVisitor;->buf:Ljava/lang/StringBuffer;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->setLength(I)V

    .line 190
    iget-object v1, v0, Lorg/checkerframework/org/objectweb/asmx/util/TraceClassVisitor;->buf:Ljava/lang/StringBuffer;

    const-string v3, "// class version "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    .line 191
    invoke-virtual {v1, v14}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v1

    .line 192
    const/16 v3, 0x2e

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v1

    .line 193
    invoke-virtual {v1, v15}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v1

    .line 194
    const-string v3, " ("

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    .line 195
    invoke-virtual {v1, v8}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v1

    .line 196
    const-string v3, ")\n"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 197
    const/high16 v1, 0x20000

    and-int/2addr v1, v9

    if-eqz v1, :cond_0

    .line 198
    iget-object v1, v0, Lorg/checkerframework/org/objectweb/asmx/util/TraceClassVisitor;->buf:Ljava/lang/StringBuffer;

    const-string v3, "// DEPRECATED\n"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 200
    :cond_0
    iget-object v1, v0, Lorg/checkerframework/org/objectweb/asmx/util/TraceClassVisitor;->buf:Ljava/lang/StringBuffer;

    const-string v3, "// access flags "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1, v9}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v1

    const/16 v3, 0xa

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 202
    const/4 v1, 0x5

    invoke-virtual {v0, v1, v11}, Lorg/checkerframework/org/objectweb/asmx/util/TraceClassVisitor;->appendDescriptor(ILjava/lang/String;)V

    .line 203
    if-eqz v11, :cond_1

    .line 204
    new-instance v1, Lorg/checkerframework/org/objectweb/asmx/util/TraceSignatureVisitor;

    invoke-direct {v1, v9}, Lorg/checkerframework/org/objectweb/asmx/util/TraceSignatureVisitor;-><init>(I)V

    .line 205
    .local v1, "sv":Lorg/checkerframework/org/objectweb/asmx/util/TraceSignatureVisitor;
    new-instance v4, Lorg/checkerframework/org/objectweb/asmx/signature/SignatureReader;

    invoke-direct {v4, v11}, Lorg/checkerframework/org/objectweb/asmx/signature/SignatureReader;-><init>(Ljava/lang/String;)V

    .line 206
    .local v4, "r":Lorg/checkerframework/org/objectweb/asmx/signature/SignatureReader;
    invoke-virtual {v4, v1}, Lorg/checkerframework/org/objectweb/asmx/signature/SignatureReader;->accept(Lorg/checkerframework/org/objectweb/asmx/signature/SignatureVisitor;)V

    .line 207
    iget-object v5, v0, Lorg/checkerframework/org/objectweb/asmx/util/TraceClassVisitor;->buf:Ljava/lang/StringBuffer;

    const-string v6, "// declaration: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    .line 208
    invoke-virtual {v5, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    .line 209
    invoke-virtual {v1}, Lorg/checkerframework/org/objectweb/asmx/util/TraceSignatureVisitor;->getDeclaration()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    .line 210
    invoke-virtual {v5, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 213
    .end local v1    # "sv":Lorg/checkerframework/org/objectweb/asmx/util/TraceSignatureVisitor;
    .end local v4    # "r":Lorg/checkerframework/org/objectweb/asmx/signature/SignatureReader;
    :cond_1
    and-int/lit8 v1, v9, -0x21

    invoke-direct {v0, v1}, Lorg/checkerframework/org/objectweb/asmx/util/TraceClassVisitor;->appendAccess(I)V

    .line 214
    and-int/lit16 v1, v9, 0x2000

    if-eqz v1, :cond_2

    .line 215
    iget-object v1, v0, Lorg/checkerframework/org/objectweb/asmx/util/TraceClassVisitor;->buf:Ljava/lang/StringBuffer;

    const-string v3, "@interface "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0

    .line 216
    :cond_2
    and-int/lit16 v1, v9, 0x200

    if-eqz v1, :cond_3

    .line 217
    iget-object v1, v0, Lorg/checkerframework/org/objectweb/asmx/util/TraceClassVisitor;->buf:Ljava/lang/StringBuffer;

    const-string v3, "interface "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0

    .line 218
    :cond_3
    and-int/lit16 v1, v9, 0x4000

    if-eqz v1, :cond_4

    .line 219
    iget-object v1, v0, Lorg/checkerframework/org/objectweb/asmx/util/TraceClassVisitor;->buf:Ljava/lang/StringBuffer;

    const-string v3, "enum "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0

    .line 221
    :cond_4
    iget-object v1, v0, Lorg/checkerframework/org/objectweb/asmx/util/TraceClassVisitor;->buf:Ljava/lang/StringBuffer;

    const-string v3, "class "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 223
    :goto_0
    invoke-virtual {v0, v2, v10}, Lorg/checkerframework/org/objectweb/asmx/util/TraceClassVisitor;->appendDescriptor(ILjava/lang/String;)V

    .line 225
    const/16 v1, 0x20

    if-eqz v12, :cond_5

    const-string v3, "java/lang/Object"

    invoke-virtual {v12, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_5

    .line 226
    iget-object v3, v0, Lorg/checkerframework/org/objectweb/asmx/util/TraceClassVisitor;->buf:Ljava/lang/StringBuffer;

    const-string v4, " extends "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 227
    invoke-virtual {v0, v2, v12}, Lorg/checkerframework/org/objectweb/asmx/util/TraceClassVisitor;->appendDescriptor(ILjava/lang/String;)V

    .line 228
    iget-object v3, v0, Lorg/checkerframework/org/objectweb/asmx/util/TraceClassVisitor;->buf:Ljava/lang/StringBuffer;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 230
    :cond_5
    if-eqz v13, :cond_6

    array-length v3, v13

    if-lez v3, :cond_6

    .line 231
    iget-object v3, v0, Lorg/checkerframework/org/objectweb/asmx/util/TraceClassVisitor;->buf:Ljava/lang/StringBuffer;

    const-string v4, " implements "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 232
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1
    array-length v4, v13

    if-ge v3, v4, :cond_6

    .line 233
    aget-object v4, v13, v3

    invoke-virtual {v0, v2, v4}, Lorg/checkerframework/org/objectweb/asmx/util/TraceClassVisitor;->appendDescriptor(ILjava/lang/String;)V

    .line 234
    iget-object v4, v0, Lorg/checkerframework/org/objectweb/asmx/util/TraceClassVisitor;->buf:Ljava/lang/StringBuffer;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 232
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 237
    .end local v3    # "i":I
    :cond_6
    iget-object v1, v0, Lorg/checkerframework/org/objectweb/asmx/util/TraceClassVisitor;->buf:Ljava/lang/StringBuffer;

    const-string v2, " {\n\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 239
    iget-object v1, v0, Lorg/checkerframework/org/objectweb/asmx/util/TraceClassVisitor;->text:Ljava/util/List;

    iget-object v2, v0, Lorg/checkerframework/org/objectweb/asmx/util/TraceClassVisitor;->buf:Ljava/lang/StringBuffer;

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 241
    iget-object v1, v0, Lorg/checkerframework/org/objectweb/asmx/util/TraceClassVisitor;->cv:Lorg/checkerframework/org/objectweb/asmx/ClassVisitor;

    if-eqz v1, :cond_7

    .line 242
    move/from16 v2, p1

    move/from16 v3, p2

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    invoke-interface/range {v1 .. v7}, Lorg/checkerframework/org/objectweb/asmx/ClassVisitor;->visit(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    .line 244
    :cond_7
    return-void
.end method

.method public visitAnnotation(Ljava/lang/String;Z)Lorg/checkerframework/org/objectweb/asmx/AnnotationVisitor;
    .locals 3
    .param p1, "desc"    # Ljava/lang/String;
    .param p2, "visible"    # Z

    .line 296
    iget-object v0, p0, Lorg/checkerframework/org/objectweb/asmx/util/TraceClassVisitor;->text:Ljava/util/List;

    const-string v1, "\n"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 297
    invoke-super {p0, p1, p2}, Lorg/checkerframework/org/objectweb/asmx/util/TraceAbstractVisitor;->visitAnnotation(Ljava/lang/String;Z)Lorg/checkerframework/org/objectweb/asmx/AnnotationVisitor;

    move-result-object v0

    .line 298
    .local v0, "tav":Lorg/checkerframework/org/objectweb/asmx/AnnotationVisitor;
    iget-object v1, p0, Lorg/checkerframework/org/objectweb/asmx/util/TraceClassVisitor;->cv:Lorg/checkerframework/org/objectweb/asmx/ClassVisitor;

    if-eqz v1, :cond_0

    .line 299
    move-object v2, v0

    check-cast v2, Lorg/checkerframework/org/objectweb/asmx/util/TraceAnnotationVisitor;

    invoke-interface {v1, p1, p2}, Lorg/checkerframework/org/objectweb/asmx/ClassVisitor;->visitAnnotation(Ljava/lang/String;Z)Lorg/checkerframework/org/objectweb/asmx/AnnotationVisitor;

    move-result-object v1

    iput-object v1, v2, Lorg/checkerframework/org/objectweb/asmx/util/TraceAnnotationVisitor;->av:Lorg/checkerframework/org/objectweb/asmx/AnnotationVisitor;

    .line 302
    :cond_0
    return-object v0
.end method

.method public visitAttribute(Lorg/checkerframework/org/objectweb/asmx/Attribute;)V
    .locals 2
    .param p1, "attr"    # Lorg/checkerframework/org/objectweb/asmx/Attribute;

    .line 321
    iget-object v0, p0, Lorg/checkerframework/org/objectweb/asmx/util/TraceClassVisitor;->text:Ljava/util/List;

    const-string v1, "\n"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 322
    invoke-super {p0, p1}, Lorg/checkerframework/org/objectweb/asmx/util/TraceAbstractVisitor;->visitAttribute(Lorg/checkerframework/org/objectweb/asmx/Attribute;)V

    .line 324
    iget-object v0, p0, Lorg/checkerframework/org/objectweb/asmx/util/TraceClassVisitor;->cv:Lorg/checkerframework/org/objectweb/asmx/ClassVisitor;

    if-eqz v0, :cond_0

    .line 325
    invoke-interface {v0, p1}, Lorg/checkerframework/org/objectweb/asmx/ClassVisitor;->visitAttribute(Lorg/checkerframework/org/objectweb/asmx/Attribute;)V

    .line 327
    :cond_0
    return-void
.end method

.method public visitEnd()V
    .locals 2

    .line 484
    iget-object v0, p0, Lorg/checkerframework/org/objectweb/asmx/util/TraceClassVisitor;->text:Ljava/util/List;

    const-string v1, "}\n"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 486
    iget-object v0, p0, Lorg/checkerframework/org/objectweb/asmx/util/TraceClassVisitor;->pw:Ljava/io/PrintWriter;

    iget-object v1, p0, Lorg/checkerframework/org/objectweb/asmx/util/TraceClassVisitor;->text:Ljava/util/List;

    invoke-virtual {p0, v0, v1}, Lorg/checkerframework/org/objectweb/asmx/util/TraceClassVisitor;->printList(Ljava/io/PrintWriter;Ljava/util/List;)V

    .line 487
    iget-object v0, p0, Lorg/checkerframework/org/objectweb/asmx/util/TraceClassVisitor;->pw:Ljava/io/PrintWriter;

    invoke-virtual {v0}, Ljava/io/PrintWriter;->flush()V

    .line 489
    iget-object v0, p0, Lorg/checkerframework/org/objectweb/asmx/util/TraceClassVisitor;->cv:Lorg/checkerframework/org/objectweb/asmx/ClassVisitor;

    if-eqz v0, :cond_0

    .line 490
    invoke-interface {v0}, Lorg/checkerframework/org/objectweb/asmx/ClassVisitor;->visitEnd()V

    .line 492
    :cond_0
    return-void
.end method

.method public visitField(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)Lorg/checkerframework/org/objectweb/asmx/FieldVisitor;
    .locals 9
    .param p1, "access"    # I
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "desc"    # Ljava/lang/String;
    .param p4, "signature"    # Ljava/lang/String;
    .param p5, "value"    # Ljava/lang/Object;

    .line 364
    iget-object v0, p0, Lorg/checkerframework/org/objectweb/asmx/util/TraceClassVisitor;->buf:Ljava/lang/StringBuffer;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->setLength(I)V

    .line 365
    iget-object v0, p0, Lorg/checkerframework/org/objectweb/asmx/util/TraceClassVisitor;->buf:Ljava/lang/StringBuffer;

    const/16 v2, 0xa

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 366
    const/high16 v0, 0x20000

    and-int/2addr v0, p1

    if-eqz v0, :cond_0

    .line 367
    iget-object v0, p0, Lorg/checkerframework/org/objectweb/asmx/util/TraceClassVisitor;->buf:Ljava/lang/StringBuffer;

    iget-object v3, p0, Lorg/checkerframework/org/objectweb/asmx/util/TraceClassVisitor;->tab:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v3, "// DEPRECATED\n"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 369
    :cond_0
    iget-object v0, p0, Lorg/checkerframework/org/objectweb/asmx/util/TraceClassVisitor;->buf:Ljava/lang/StringBuffer;

    iget-object v3, p0, Lorg/checkerframework/org/objectweb/asmx/util/TraceClassVisitor;->tab:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v3, "// access flags "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 370
    if-eqz p4, :cond_1

    .line 371
    iget-object v0, p0, Lorg/checkerframework/org/objectweb/asmx/util/TraceClassVisitor;->buf:Ljava/lang/StringBuffer;

    iget-object v3, p0, Lorg/checkerframework/org/objectweb/asmx/util/TraceClassVisitor;->tab:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 372
    const/4 v0, 0x2

    invoke-virtual {p0, v0, p4}, Lorg/checkerframework/org/objectweb/asmx/util/TraceClassVisitor;->appendDescriptor(ILjava/lang/String;)V

    .line 374
    new-instance v0, Lorg/checkerframework/org/objectweb/asmx/util/TraceSignatureVisitor;

    invoke-direct {v0, v1}, Lorg/checkerframework/org/objectweb/asmx/util/TraceSignatureVisitor;-><init>(I)V

    .line 375
    .local v0, "sv":Lorg/checkerframework/org/objectweb/asmx/util/TraceSignatureVisitor;
    new-instance v1, Lorg/checkerframework/org/objectweb/asmx/signature/SignatureReader;

    invoke-direct {v1, p4}, Lorg/checkerframework/org/objectweb/asmx/signature/SignatureReader;-><init>(Ljava/lang/String;)V

    .line 376
    .local v1, "r":Lorg/checkerframework/org/objectweb/asmx/signature/SignatureReader;
    invoke-virtual {v1, v0}, Lorg/checkerframework/org/objectweb/asmx/signature/SignatureReader;->acceptType(Lorg/checkerframework/org/objectweb/asmx/signature/SignatureVisitor;)V

    .line 377
    iget-object v3, p0, Lorg/checkerframework/org/objectweb/asmx/util/TraceClassVisitor;->buf:Ljava/lang/StringBuffer;

    iget-object v4, p0, Lorg/checkerframework/org/objectweb/asmx/util/TraceClassVisitor;->tab:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    .line 378
    const-string v4, "// declaration: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    .line 379
    invoke-virtual {v0}, Lorg/checkerframework/org/objectweb/asmx/util/TraceSignatureVisitor;->getDeclaration()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    .line 380
    invoke-virtual {v3, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 383
    .end local v0    # "sv":Lorg/checkerframework/org/objectweb/asmx/util/TraceSignatureVisitor;
    .end local v1    # "r":Lorg/checkerframework/org/objectweb/asmx/signature/SignatureReader;
    :cond_1
    iget-object v0, p0, Lorg/checkerframework/org/objectweb/asmx/util/TraceClassVisitor;->buf:Ljava/lang/StringBuffer;

    iget-object v1, p0, Lorg/checkerframework/org/objectweb/asmx/util/TraceClassVisitor;->tab:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 384
    invoke-direct {p0, p1}, Lorg/checkerframework/org/objectweb/asmx/util/TraceClassVisitor;->appendAccess(I)V

    .line 385
    and-int/lit16 v0, p1, 0x4000

    if-eqz v0, :cond_2

    .line 386
    iget-object v0, p0, Lorg/checkerframework/org/objectweb/asmx/util/TraceClassVisitor;->buf:Ljava/lang/StringBuffer;

    const-string v1, "enum "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 389
    :cond_2
    const/4 v0, 0x1

    invoke-virtual {p0, v0, p3}, Lorg/checkerframework/org/objectweb/asmx/util/TraceClassVisitor;->appendDescriptor(ILjava/lang/String;)V

    .line 390
    iget-object v0, p0, Lorg/checkerframework/org/objectweb/asmx/util/TraceClassVisitor;->buf:Ljava/lang/StringBuffer;

    const/16 v1, 0x20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 391
    if-eqz p5, :cond_4

    .line 392
    iget-object v0, p0, Lorg/checkerframework/org/objectweb/asmx/util/TraceClassVisitor;->buf:Ljava/lang/StringBuffer;

    const-string v1, " = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 393
    instance-of v0, p5, Ljava/lang/String;

    if-eqz v0, :cond_3

    .line 394
    iget-object v0, p0, Lorg/checkerframework/org/objectweb/asmx/util/TraceClassVisitor;->buf:Ljava/lang/StringBuffer;

    const-string v1, "\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0, p5}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0

    .line 396
    :cond_3
    iget-object v0, p0, Lorg/checkerframework/org/objectweb/asmx/util/TraceClassVisitor;->buf:Ljava/lang/StringBuffer;

    invoke-virtual {v0, p5}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    .line 400
    :cond_4
    :goto_0
    iget-object v0, p0, Lorg/checkerframework/org/objectweb/asmx/util/TraceClassVisitor;->buf:Ljava/lang/StringBuffer;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 401
    iget-object v0, p0, Lorg/checkerframework/org/objectweb/asmx/util/TraceClassVisitor;->text:Ljava/util/List;

    iget-object v1, p0, Lorg/checkerframework/org/objectweb/asmx/util/TraceClassVisitor;->buf:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 403
    invoke-virtual {p0}, Lorg/checkerframework/org/objectweb/asmx/util/TraceClassVisitor;->createTraceFieldVisitor()Lorg/checkerframework/org/objectweb/asmx/util/TraceFieldVisitor;

    move-result-object v0

    .line 404
    .local v0, "tav":Lorg/checkerframework/org/objectweb/asmx/util/TraceFieldVisitor;
    iget-object v1, p0, Lorg/checkerframework/org/objectweb/asmx/util/TraceClassVisitor;->text:Ljava/util/List;

    invoke-virtual {v0}, Lorg/checkerframework/org/objectweb/asmx/util/TraceFieldVisitor;->getText()Ljava/util/List;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 406
    iget-object v3, p0, Lorg/checkerframework/org/objectweb/asmx/util/TraceClassVisitor;->cv:Lorg/checkerframework/org/objectweb/asmx/ClassVisitor;

    if-eqz v3, :cond_5

    .line 407
    move v4, p1

    move-object v5, p2

    move-object v6, p3

    move-object v7, p4

    move-object v8, p5

    invoke-interface/range {v3 .. v8}, Lorg/checkerframework/org/objectweb/asmx/ClassVisitor;->visitField(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)Lorg/checkerframework/org/objectweb/asmx/FieldVisitor;

    move-result-object v1

    iput-object v1, v0, Lorg/checkerframework/org/objectweb/asmx/util/TraceFieldVisitor;->fv:Lorg/checkerframework/org/objectweb/asmx/FieldVisitor;

    .line 410
    :cond_5
    return-object v0
.end method

.method public visitInnerClass(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 4
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "outerName"    # Ljava/lang/String;
    .param p3, "innerName"    # Ljava/lang/String;
    .param p4, "access"    # I

    .line 335
    iget-object v0, p0, Lorg/checkerframework/org/objectweb/asmx/util/TraceClassVisitor;->buf:Ljava/lang/StringBuffer;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->setLength(I)V

    .line 336
    iget-object v0, p0, Lorg/checkerframework/org/objectweb/asmx/util/TraceClassVisitor;->buf:Ljava/lang/StringBuffer;

    iget-object v2, p0, Lorg/checkerframework/org/objectweb/asmx/util/TraceClassVisitor;->tab:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v2, "// access flags "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    and-int/lit8 v2, p4, -0x21

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v0

    .line 337
    const/16 v2, 0xa

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 338
    iget-object v0, p0, Lorg/checkerframework/org/objectweb/asmx/util/TraceClassVisitor;->buf:Ljava/lang/StringBuffer;

    iget-object v3, p0, Lorg/checkerframework/org/objectweb/asmx/util/TraceClassVisitor;->tab:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 339
    invoke-direct {p0, p4}, Lorg/checkerframework/org/objectweb/asmx/util/TraceClassVisitor;->appendAccess(I)V

    .line 340
    iget-object v0, p0, Lorg/checkerframework/org/objectweb/asmx/util/TraceClassVisitor;->buf:Ljava/lang/StringBuffer;

    const-string v3, "INNERCLASS "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 341
    and-int/lit16 v0, p4, 0x4000

    if-eqz v0, :cond_0

    .line 342
    iget-object v0, p0, Lorg/checkerframework/org/objectweb/asmx/util/TraceClassVisitor;->buf:Ljava/lang/StringBuffer;

    const-string v3, "enum "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 344
    :cond_0
    invoke-virtual {p0, v1, p1}, Lorg/checkerframework/org/objectweb/asmx/util/TraceClassVisitor;->appendDescriptor(ILjava/lang/String;)V

    .line 345
    iget-object v0, p0, Lorg/checkerframework/org/objectweb/asmx/util/TraceClassVisitor;->buf:Ljava/lang/StringBuffer;

    const/16 v3, 0x20

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 346
    invoke-virtual {p0, v1, p2}, Lorg/checkerframework/org/objectweb/asmx/util/TraceClassVisitor;->appendDescriptor(ILjava/lang/String;)V

    .line 347
    iget-object v0, p0, Lorg/checkerframework/org/objectweb/asmx/util/TraceClassVisitor;->buf:Ljava/lang/StringBuffer;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 348
    invoke-virtual {p0, v1, p3}, Lorg/checkerframework/org/objectweb/asmx/util/TraceClassVisitor;->appendDescriptor(ILjava/lang/String;)V

    .line 349
    iget-object v0, p0, Lorg/checkerframework/org/objectweb/asmx/util/TraceClassVisitor;->buf:Ljava/lang/StringBuffer;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 350
    iget-object v0, p0, Lorg/checkerframework/org/objectweb/asmx/util/TraceClassVisitor;->text:Ljava/util/List;

    iget-object v1, p0, Lorg/checkerframework/org/objectweb/asmx/util/TraceClassVisitor;->buf:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 352
    iget-object v0, p0, Lorg/checkerframework/org/objectweb/asmx/util/TraceClassVisitor;->cv:Lorg/checkerframework/org/objectweb/asmx/ClassVisitor;

    if-eqz v0, :cond_1

    .line 353
    invoke-interface {v0, p1, p2, p3, p4}, Lorg/checkerframework/org/objectweb/asmx/ClassVisitor;->visitInnerClass(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    .line 355
    :cond_1
    return-void
.end method

.method public visitMethod(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Lorg/checkerframework/org/objectweb/asmx/MethodVisitor;
    .locals 16
    .param p1, "access"    # I
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "desc"    # Ljava/lang/String;
    .param p4, "signature"    # Ljava/lang/String;
    .param p5, "exceptions"    # [Ljava/lang/String;

    .line 420
    move-object/from16 v0, p0

    move/from16 v7, p1

    move-object/from16 v8, p2

    move-object/from16 v9, p4

    move-object/from16 v10, p5

    iget-object v1, v0, Lorg/checkerframework/org/objectweb/asmx/util/TraceClassVisitor;->buf:Ljava/lang/StringBuffer;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->setLength(I)V

    .line 421
    iget-object v1, v0, Lorg/checkerframework/org/objectweb/asmx/util/TraceClassVisitor;->buf:Ljava/lang/StringBuffer;

    const/16 v3, 0xa

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 422
    const/high16 v1, 0x20000

    and-int/2addr v1, v7

    if-eqz v1, :cond_0

    .line 423
    iget-object v1, v0, Lorg/checkerframework/org/objectweb/asmx/util/TraceClassVisitor;->buf:Ljava/lang/StringBuffer;

    iget-object v4, v0, Lorg/checkerframework/org/objectweb/asmx/util/TraceClassVisitor;->tab:Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v4, "// DEPRECATED\n"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 425
    :cond_0
    iget-object v1, v0, Lorg/checkerframework/org/objectweb/asmx/util/TraceClassVisitor;->buf:Ljava/lang/StringBuffer;

    iget-object v4, v0, Lorg/checkerframework/org/objectweb/asmx/util/TraceClassVisitor;->tab:Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v4, "// access flags "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1, v7}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 426
    iget-object v1, v0, Lorg/checkerframework/org/objectweb/asmx/util/TraceClassVisitor;->buf:Ljava/lang/StringBuffer;

    iget-object v4, v0, Lorg/checkerframework/org/objectweb/asmx/util/TraceClassVisitor;->tab:Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 427
    const/4 v1, 0x4

    invoke-virtual {v0, v1, v9}, Lorg/checkerframework/org/objectweb/asmx/util/TraceClassVisitor;->appendDescriptor(ILjava/lang/String;)V

    .line 429
    const-string v1, " throws "

    const/16 v4, 0x20

    if-eqz v9, :cond_2

    .line 430
    new-instance v5, Lorg/checkerframework/org/objectweb/asmx/util/TraceSignatureVisitor;

    invoke-direct {v5, v2}, Lorg/checkerframework/org/objectweb/asmx/util/TraceSignatureVisitor;-><init>(I)V

    .line 431
    .local v5, "v":Lorg/checkerframework/org/objectweb/asmx/util/TraceSignatureVisitor;
    new-instance v6, Lorg/checkerframework/org/objectweb/asmx/signature/SignatureReader;

    invoke-direct {v6, v9}, Lorg/checkerframework/org/objectweb/asmx/signature/SignatureReader;-><init>(Ljava/lang/String;)V

    .line 432
    .local v6, "r":Lorg/checkerframework/org/objectweb/asmx/signature/SignatureReader;
    invoke-virtual {v6, v5}, Lorg/checkerframework/org/objectweb/asmx/signature/SignatureReader;->accept(Lorg/checkerframework/org/objectweb/asmx/signature/SignatureVisitor;)V

    .line 433
    invoke-virtual {v5}, Lorg/checkerframework/org/objectweb/asmx/util/TraceSignatureVisitor;->getDeclaration()Ljava/lang/String;

    move-result-object v11

    .line 434
    .local v11, "genericDecl":Ljava/lang/String;
    invoke-virtual {v5}, Lorg/checkerframework/org/objectweb/asmx/util/TraceSignatureVisitor;->getReturnType()Ljava/lang/String;

    move-result-object v12

    .line 435
    .local v12, "genericReturn":Ljava/lang/String;
    invoke-virtual {v5}, Lorg/checkerframework/org/objectweb/asmx/util/TraceSignatureVisitor;->getExceptions()Ljava/lang/String;

    move-result-object v13

    .line 437
    .local v13, "genericExceptions":Ljava/lang/String;
    iget-object v14, v0, Lorg/checkerframework/org/objectweb/asmx/util/TraceClassVisitor;->buf:Ljava/lang/StringBuffer;

    iget-object v15, v0, Lorg/checkerframework/org/objectweb/asmx/util/TraceClassVisitor;->tab:Ljava/lang/String;

    invoke-virtual {v14, v15}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v14

    .line 438
    const-string v15, "// declaration: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v14

    .line 439
    invoke-virtual {v14, v12}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v14

    .line 440
    invoke-virtual {v14, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v14

    .line 441
    invoke-virtual {v14, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v14

    .line 442
    invoke-virtual {v14, v11}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 443
    if-eqz v13, :cond_1

    .line 444
    iget-object v14, v0, Lorg/checkerframework/org/objectweb/asmx/util/TraceClassVisitor;->buf:Ljava/lang/StringBuffer;

    invoke-virtual {v14, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v14

    invoke-virtual {v14, v13}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 446
    :cond_1
    iget-object v14, v0, Lorg/checkerframework/org/objectweb/asmx/util/TraceClassVisitor;->buf:Ljava/lang/StringBuffer;

    invoke-virtual {v14, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 449
    .end local v5    # "v":Lorg/checkerframework/org/objectweb/asmx/util/TraceSignatureVisitor;
    .end local v6    # "r":Lorg/checkerframework/org/objectweb/asmx/signature/SignatureReader;
    .end local v11    # "genericDecl":Ljava/lang/String;
    .end local v12    # "genericReturn":Ljava/lang/String;
    .end local v13    # "genericExceptions":Ljava/lang/String;
    :cond_2
    invoke-direct/range {p0 .. p1}, Lorg/checkerframework/org/objectweb/asmx/util/TraceClassVisitor;->appendAccess(I)V

    .line 450
    and-int/lit16 v5, v7, 0x100

    if-eqz v5, :cond_3

    .line 451
    iget-object v5, v0, Lorg/checkerframework/org/objectweb/asmx/util/TraceClassVisitor;->buf:Ljava/lang/StringBuffer;

    const-string v6, "native "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 453
    :cond_3
    and-int/lit16 v5, v7, 0x80

    if-eqz v5, :cond_4

    .line 454
    iget-object v5, v0, Lorg/checkerframework/org/objectweb/asmx/util/TraceClassVisitor;->buf:Ljava/lang/StringBuffer;

    const-string v6, "varargs "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 456
    :cond_4
    and-int/lit8 v5, v7, 0x40

    if-eqz v5, :cond_5

    .line 457
    iget-object v5, v0, Lorg/checkerframework/org/objectweb/asmx/util/TraceClassVisitor;->buf:Ljava/lang/StringBuffer;

    const-string v6, "bridge "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 460
    :cond_5
    iget-object v5, v0, Lorg/checkerframework/org/objectweb/asmx/util/TraceClassVisitor;->buf:Ljava/lang/StringBuffer;

    invoke-virtual {v5, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 461
    const/4 v5, 0x3

    move-object/from16 v11, p3

    invoke-virtual {v0, v5, v11}, Lorg/checkerframework/org/objectweb/asmx/util/TraceClassVisitor;->appendDescriptor(ILjava/lang/String;)V

    .line 462
    if-eqz v10, :cond_6

    array-length v5, v10

    if-lez v5, :cond_6

    .line 463
    iget-object v5, v0, Lorg/checkerframework/org/objectweb/asmx/util/TraceClassVisitor;->buf:Ljava/lang/StringBuffer;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 464
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v5, v10

    if-ge v1, v5, :cond_6

    .line 465
    aget-object v5, v10, v1

    invoke-virtual {v0, v2, v5}, Lorg/checkerframework/org/objectweb/asmx/util/TraceClassVisitor;->appendDescriptor(ILjava/lang/String;)V

    .line 466
    iget-object v5, v0, Lorg/checkerframework/org/objectweb/asmx/util/TraceClassVisitor;->buf:Ljava/lang/StringBuffer;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 464
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 470
    .end local v1    # "i":I
    :cond_6
    iget-object v1, v0, Lorg/checkerframework/org/objectweb/asmx/util/TraceClassVisitor;->buf:Ljava/lang/StringBuffer;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 471
    iget-object v1, v0, Lorg/checkerframework/org/objectweb/asmx/util/TraceClassVisitor;->text:Ljava/util/List;

    iget-object v2, v0, Lorg/checkerframework/org/objectweb/asmx/util/TraceClassVisitor;->buf:Ljava/lang/StringBuffer;

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 473
    invoke-virtual/range {p0 .. p0}, Lorg/checkerframework/org/objectweb/asmx/util/TraceClassVisitor;->createTraceMethodVisitor()Lorg/checkerframework/org/objectweb/asmx/util/TraceMethodVisitor;

    move-result-object v12

    .line 474
    .local v12, "tcv":Lorg/checkerframework/org/objectweb/asmx/util/TraceMethodVisitor;
    iget-object v1, v0, Lorg/checkerframework/org/objectweb/asmx/util/TraceClassVisitor;->text:Ljava/util/List;

    invoke-virtual {v12}, Lorg/checkerframework/org/objectweb/asmx/util/TraceMethodVisitor;->getText()Ljava/util/List;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 476
    iget-object v1, v0, Lorg/checkerframework/org/objectweb/asmx/util/TraceClassVisitor;->cv:Lorg/checkerframework/org/objectweb/asmx/ClassVisitor;

    if-eqz v1, :cond_7

    .line 477
    move/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    invoke-interface/range {v1 .. v6}, Lorg/checkerframework/org/objectweb/asmx/ClassVisitor;->visitMethod(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Lorg/checkerframework/org/objectweb/asmx/MethodVisitor;

    move-result-object v1

    iput-object v1, v12, Lorg/checkerframework/org/objectweb/asmx/util/TraceMethodVisitor;->mv:Lorg/checkerframework/org/objectweb/asmx/MethodVisitor;

    .line 480
    :cond_7
    return-object v12
.end method

.method public visitOuterClass(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "owner"    # Ljava/lang/String;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "desc"    # Ljava/lang/String;

    .line 274
    iget-object v0, p0, Lorg/checkerframework/org/objectweb/asmx/util/TraceClassVisitor;->buf:Ljava/lang/StringBuffer;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->setLength(I)V

    .line 275
    iget-object v0, p0, Lorg/checkerframework/org/objectweb/asmx/util/TraceClassVisitor;->buf:Ljava/lang/StringBuffer;

    iget-object v2, p0, Lorg/checkerframework/org/objectweb/asmx/util/TraceClassVisitor;->tab:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v2, "OUTERCLASS "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 276
    invoke-virtual {p0, v1, p1}, Lorg/checkerframework/org/objectweb/asmx/util/TraceClassVisitor;->appendDescriptor(ILjava/lang/String;)V

    .line 278
    const/16 v0, 0x20

    if-eqz p2, :cond_0

    .line 279
    iget-object v1, p0, Lorg/checkerframework/org/objectweb/asmx/util/TraceClassVisitor;->buf:Ljava/lang/StringBuffer;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_0

    .line 281
    :cond_0
    iget-object v1, p0, Lorg/checkerframework/org/objectweb/asmx/util/TraceClassVisitor;->buf:Ljava/lang/StringBuffer;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 283
    :goto_0
    const/4 v0, 0x3

    invoke-virtual {p0, v0, p3}, Lorg/checkerframework/org/objectweb/asmx/util/TraceClassVisitor;->appendDescriptor(ILjava/lang/String;)V

    .line 284
    iget-object v0, p0, Lorg/checkerframework/org/objectweb/asmx/util/TraceClassVisitor;->buf:Ljava/lang/StringBuffer;

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 285
    iget-object v0, p0, Lorg/checkerframework/org/objectweb/asmx/util/TraceClassVisitor;->text:Ljava/util/List;

    iget-object v1, p0, Lorg/checkerframework/org/objectweb/asmx/util/TraceClassVisitor;->buf:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 287
    iget-object v0, p0, Lorg/checkerframework/org/objectweb/asmx/util/TraceClassVisitor;->cv:Lorg/checkerframework/org/objectweb/asmx/ClassVisitor;

    if-eqz v0, :cond_1

    .line 288
    invoke-interface {v0, p1, p2, p3}, Lorg/checkerframework/org/objectweb/asmx/ClassVisitor;->visitOuterClass(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 290
    :cond_1
    return-void
.end method

.method public visitSource(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "file"    # Ljava/lang/String;
    .param p2, "debug"    # Ljava/lang/String;

    .line 247
    iget-object v0, p0, Lorg/checkerframework/org/objectweb/asmx/util/TraceClassVisitor;->buf:Ljava/lang/StringBuffer;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->setLength(I)V

    .line 248
    const/16 v0, 0xa

    if-eqz p1, :cond_0

    .line 249
    iget-object v1, p0, Lorg/checkerframework/org/objectweb/asmx/util/TraceClassVisitor;->buf:Ljava/lang/StringBuffer;

    iget-object v2, p0, Lorg/checkerframework/org/objectweb/asmx/util/TraceClassVisitor;->tab:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    .line 250
    const-string v2, "// compiled from: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    .line 251
    invoke-virtual {v1, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    .line 252
    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 254
    :cond_0
    if-eqz p2, :cond_1

    .line 255
    iget-object v1, p0, Lorg/checkerframework/org/objectweb/asmx/util/TraceClassVisitor;->buf:Ljava/lang/StringBuffer;

    iget-object v2, p0, Lorg/checkerframework/org/objectweb/asmx/util/TraceClassVisitor;->tab:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    .line 256
    const-string v2, "// debug info: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    .line 257
    invoke-virtual {v1, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    .line 258
    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 260
    :cond_1
    iget-object v0, p0, Lorg/checkerframework/org/objectweb/asmx/util/TraceClassVisitor;->buf:Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->length()I

    move-result v0

    if-lez v0, :cond_2

    .line 261
    iget-object v0, p0, Lorg/checkerframework/org/objectweb/asmx/util/TraceClassVisitor;->text:Ljava/util/List;

    iget-object v1, p0, Lorg/checkerframework/org/objectweb/asmx/util/TraceClassVisitor;->buf:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 264
    :cond_2
    iget-object v0, p0, Lorg/checkerframework/org/objectweb/asmx/util/TraceClassVisitor;->cv:Lorg/checkerframework/org/objectweb/asmx/ClassVisitor;

    if-eqz v0, :cond_3

    .line 265
    invoke-interface {v0, p1, p2}, Lorg/checkerframework/org/objectweb/asmx/ClassVisitor;->visitSource(Ljava/lang/String;Ljava/lang/String;)V

    .line 267
    :cond_3
    return-void
.end method

.method public visitTypeAnnotation(Ljava/lang/String;ZZ)Lorg/checkerframework/org/objectweb/asmx/TypeAnnotationVisitor;
    .locals 3
    .param p1, "desc"    # Ljava/lang/String;
    .param p2, "visible"    # Z
    .param p3, "inCode"    # Z

    .line 310
    iget-object v0, p0, Lorg/checkerframework/org/objectweb/asmx/util/TraceClassVisitor;->text:Ljava/util/List;

    const-string v1, "\n"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 311
    nop

    .line 312
    invoke-super {p0, p1, p2}, Lorg/checkerframework/org/objectweb/asmx/util/TraceAbstractVisitor;->visitTypeAnnotation(Ljava/lang/String;Z)Lorg/checkerframework/org/objectweb/asmx/TypeAnnotationVisitor;

    move-result-object v0

    .line 313
    .local v0, "txav":Lorg/checkerframework/org/objectweb/asmx/TypeAnnotationVisitor;
    iget-object v1, p0, Lorg/checkerframework/org/objectweb/asmx/util/TraceClassVisitor;->cv:Lorg/checkerframework/org/objectweb/asmx/ClassVisitor;

    if-eqz v1, :cond_0

    .line 314
    move-object v2, v0

    check-cast v2, Lorg/checkerframework/org/objectweb/asmx/util/TraceTypeAnnotationVisitor;

    .line 315
    invoke-interface {v1, p1, p2, p3}, Lorg/checkerframework/org/objectweb/asmx/ClassVisitor;->visitTypeAnnotation(Ljava/lang/String;ZZ)Lorg/checkerframework/org/objectweb/asmx/TypeAnnotationVisitor;

    move-result-object v1

    iput-object v1, v2, Lorg/checkerframework/org/objectweb/asmx/util/TraceTypeAnnotationVisitor;->xav:Lorg/checkerframework/org/objectweb/asmx/TypeAnnotationVisitor;

    .line 317
    :cond_0
    return-object v0
.end method
