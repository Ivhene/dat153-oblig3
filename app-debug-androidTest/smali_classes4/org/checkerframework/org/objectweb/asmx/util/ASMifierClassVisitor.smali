.class public Lorg/checkerframework/org/objectweb/asmx/util/ASMifierClassVisitor;
.super Lorg/checkerframework/org/objectweb/asmx/util/ASMifierAbstractVisitor;
.source "ASMifierClassVisitor.java"

# interfaces
.implements Lorg/checkerframework/org/objectweb/asmx/ClassVisitor;


# static fields
.field private static final ACCESS_CLASS:I = 0x40000

.field private static final ACCESS_FIELD:I = 0x80000

.field private static final ACCESS_INNER:I = 0x100000


# instance fields
.field protected final pw:Ljava/io/PrintWriter;


# direct methods
.method public constructor <init>(Ljava/io/PrintWriter;)V
    .locals 1
    .param p1, "pw"    # Ljava/io/PrintWriter;

    .line 201
    const-string v0, "cw"

    invoke-direct {p0, v0}, Lorg/checkerframework/org/objectweb/asmx/util/ASMifierAbstractVisitor;-><init>(Ljava/lang/String;)V

    .line 202
    iput-object p1, p0, Lorg/checkerframework/org/objectweb/asmx/util/ASMifierClassVisitor;->pw:Ljava/io/PrintWriter;

    .line 203
    return-void
.end method

.method static appendConstant(Ljava/lang/StringBuffer;Ljava/lang/Object;)V
    .locals 3
    .param p0, "buf"    # Ljava/lang/StringBuffer;
    .param p1, "cst"    # Ljava/lang/Object;

    .line 612
    if-nez p1, :cond_0

    .line 613
    const-string v0, "null"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto/16 :goto_0

    .line 614
    :cond_0
    instance-of v0, p1, Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 615
    move-object v0, p1

    check-cast v0, Ljava/lang/String;

    invoke-static {p0, v0}, Lorg/checkerframework/org/objectweb/asmx/util/AbstractVisitor;->appendString(Ljava/lang/StringBuffer;Ljava/lang/String;)V

    goto :goto_0

    .line 616
    :cond_1
    instance-of v0, p1, Lorg/checkerframework/org/objectweb/asmx/Type;

    const-string v1, "\")"

    if-eqz v0, :cond_2

    .line 617
    const-string v0, "Type.getType(\""

    invoke-virtual {p0, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    move-object v2, p1

    check-cast v2, Lorg/checkerframework/org/objectweb/asmx/Type;

    .line 618
    invoke-virtual {v2}, Lorg/checkerframework/org/objectweb/asmx/Type;->getDescriptor()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    .line 619
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0

    .line 620
    :cond_2
    instance-of v0, p1, Ljava/lang/Integer;

    if-eqz v0, :cond_3

    .line 621
    const-string v0, "new Integer("

    invoke-virtual {p0, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0

    .line 622
    :cond_3
    instance-of v0, p1, Ljava/lang/Float;

    if-eqz v0, :cond_4

    .line 623
    const-string v0, "new Float(\""

    invoke-virtual {p0, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0

    .line 624
    :cond_4
    instance-of v0, p1, Ljava/lang/Long;

    if-eqz v0, :cond_5

    .line 625
    const-string v0, "new Long("

    invoke-virtual {p0, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, "L)"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0

    .line 626
    :cond_5
    instance-of v0, p1, Ljava/lang/Double;

    if-eqz v0, :cond_6

    .line 627
    const-string v0, "new Double(\""

    invoke-virtual {p0, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 629
    :cond_6
    :goto_0
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

    .line 163
    const/4 v0, 0x0

    .line 164
    .local v0, "i":I
    const/4 v1, 0x1

    .line 166
    .local v1, "skipDebug":Z
    const/4 v2, 0x1

    .line 167
    .local v2, "ok":Z
    array-length v3, p0

    const/4 v4, 0x1

    const/4 v5, 0x2

    if-lt v3, v4, :cond_0

    array-length v3, p0

    if-le v3, v5, :cond_1

    .line 168
    :cond_0
    const/4 v2, 0x0

    .line 170
    :cond_1
    if-eqz v2, :cond_2

    const/4 v3, 0x0

    aget-object v3, p0, v3

    const-string v4, "-debug"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 171
    const/4 v0, 0x1

    .line 172
    const/4 v1, 0x0

    .line 173
    array-length v3, p0

    if-eq v3, v5, :cond_2

    .line 174
    const/4 v2, 0x0

    .line 177
    :cond_2
    if-nez v2, :cond_3

    .line 178
    sget-object v3, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v4, "Prints the ASM code to generate the given class."

    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 179
    sget-object v3, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v4, "Usage: ASMifierClassVisitor [-debug] <fully qualified class name or class file name>"

    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 181
    return-void

    .line 184
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

    .line 185
    const/16 v5, 0x2f

    invoke-virtual {v3, v5}, Ljava/lang/String;->indexOf(I)I

    move-result v3

    if-le v3, v4, :cond_4

    goto :goto_0

    .line 188
    :cond_4
    new-instance v3, Lorg/checkerframework/org/objectweb/asmx/ClassReader;

    aget-object v4, p0, v0

    invoke-direct {v3, v4}, Lorg/checkerframework/org/objectweb/asmx/ClassReader;-><init>(Ljava/lang/String;)V

    .local v3, "cr":Lorg/checkerframework/org/objectweb/asmx/ClassReader;
    goto :goto_1

    .line 186
    .end local v3    # "cr":Lorg/checkerframework/org/objectweb/asmx/ClassReader;
    :cond_5
    :goto_0
    new-instance v3, Lorg/checkerframework/org/objectweb/asmx/ClassReader;

    new-instance v4, Ljava/io/FileInputStream;

    aget-object v5, p0, v0

    invoke-direct {v4, v5}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    invoke-direct {v3, v4}, Lorg/checkerframework/org/objectweb/asmx/ClassReader;-><init>(Ljava/io/InputStream;)V

    .line 190
    .restart local v3    # "cr":Lorg/checkerframework/org/objectweb/asmx/ClassReader;
    :goto_1
    new-instance v4, Lorg/checkerframework/org/objectweb/asmx/util/ASMifierClassVisitor;

    new-instance v5, Ljava/io/PrintWriter;

    sget-object v6, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-direct {v5, v6}, Ljava/io/PrintWriter;-><init>(Ljava/io/OutputStream;)V

    invoke-direct {v4, v5}, Lorg/checkerframework/org/objectweb/asmx/util/ASMifierClassVisitor;-><init>(Ljava/io/PrintWriter;)V

    .line 191
    invoke-static {}, Lorg/checkerframework/org/objectweb/asmx/util/ASMifierClassVisitor;->getDefaultAttributes()[Lorg/checkerframework/org/objectweb/asmx/Attribute;

    move-result-object v5

    .line 190
    invoke-virtual {v3, v4, v5, v1}, Lorg/checkerframework/org/objectweb/asmx/ClassReader;->accept(Lorg/checkerframework/org/objectweb/asmx/ClassVisitor;[Lorg/checkerframework/org/objectweb/asmx/Attribute;Z)V

    .line 193
    return-void
.end method


# virtual methods
.method appendAccess(I)V
    .locals 6
    .param p1, "access"    # I

    .line 453
    const/4 v0, 0x1

    .line 454
    .local v0, "first":Z
    and-int/lit8 v1, p1, 0x1

    if-eqz v1, :cond_0

    .line 455
    iget-object v1, p0, Lorg/checkerframework/org/objectweb/asmx/util/ASMifierClassVisitor;->buf:Ljava/lang/StringBuffer;

    const-string v2, "ACC_PUBLIC"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 456
    const/4 v0, 0x0

    .line 458
    :cond_0
    and-int/lit8 v1, p1, 0x2

    const-string v2, " + "

    if-eqz v1, :cond_2

    .line 459
    if-nez v0, :cond_1

    .line 460
    iget-object v1, p0, Lorg/checkerframework/org/objectweb/asmx/util/ASMifierClassVisitor;->buf:Ljava/lang/StringBuffer;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 462
    :cond_1
    iget-object v1, p0, Lorg/checkerframework/org/objectweb/asmx/util/ASMifierClassVisitor;->buf:Ljava/lang/StringBuffer;

    const-string v3, "ACC_PRIVATE"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 463
    const/4 v0, 0x0

    .line 465
    :cond_2
    and-int/lit8 v1, p1, 0x4

    if-eqz v1, :cond_4

    .line 466
    if-nez v0, :cond_3

    .line 467
    iget-object v1, p0, Lorg/checkerframework/org/objectweb/asmx/util/ASMifierClassVisitor;->buf:Ljava/lang/StringBuffer;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 469
    :cond_3
    iget-object v1, p0, Lorg/checkerframework/org/objectweb/asmx/util/ASMifierClassVisitor;->buf:Ljava/lang/StringBuffer;

    const-string v3, "ACC_PROTECTED"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 470
    const/4 v0, 0x0

    .line 472
    :cond_4
    and-int/lit8 v1, p1, 0x10

    if-eqz v1, :cond_6

    .line 473
    if-nez v0, :cond_5

    .line 474
    iget-object v1, p0, Lorg/checkerframework/org/objectweb/asmx/util/ASMifierClassVisitor;->buf:Ljava/lang/StringBuffer;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 476
    :cond_5
    iget-object v1, p0, Lorg/checkerframework/org/objectweb/asmx/util/ASMifierClassVisitor;->buf:Ljava/lang/StringBuffer;

    const-string v3, "ACC_FINAL"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 477
    const/4 v0, 0x0

    .line 479
    :cond_6
    and-int/lit8 v1, p1, 0x8

    if-eqz v1, :cond_8

    .line 480
    if-nez v0, :cond_7

    .line 481
    iget-object v1, p0, Lorg/checkerframework/org/objectweb/asmx/util/ASMifierClassVisitor;->buf:Ljava/lang/StringBuffer;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 483
    :cond_7
    iget-object v1, p0, Lorg/checkerframework/org/objectweb/asmx/util/ASMifierClassVisitor;->buf:Ljava/lang/StringBuffer;

    const-string v3, "ACC_STATIC"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 484
    const/4 v0, 0x0

    .line 486
    :cond_8
    and-int/lit8 v1, p1, 0x20

    const/high16 v3, 0x40000

    if-eqz v1, :cond_b

    .line 487
    if-nez v0, :cond_9

    .line 488
    iget-object v1, p0, Lorg/checkerframework/org/objectweb/asmx/util/ASMifierClassVisitor;->buf:Ljava/lang/StringBuffer;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 490
    :cond_9
    and-int v1, p1, v3

    if-eqz v1, :cond_a

    .line 491
    iget-object v1, p0, Lorg/checkerframework/org/objectweb/asmx/util/ASMifierClassVisitor;->buf:Ljava/lang/StringBuffer;

    const-string v4, "ACC_SUPER"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0

    .line 493
    :cond_a
    iget-object v1, p0, Lorg/checkerframework/org/objectweb/asmx/util/ASMifierClassVisitor;->buf:Ljava/lang/StringBuffer;

    const-string v4, "ACC_SYNCHRONIZED"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 495
    :goto_0
    const/4 v0, 0x0

    .line 497
    :cond_b
    and-int/lit8 v1, p1, 0x40

    const/high16 v4, 0x80000

    if-eqz v1, :cond_d

    and-int v1, p1, v4

    if-eqz v1, :cond_d

    .line 500
    if-nez v0, :cond_c

    .line 501
    iget-object v1, p0, Lorg/checkerframework/org/objectweb/asmx/util/ASMifierClassVisitor;->buf:Ljava/lang/StringBuffer;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 503
    :cond_c
    iget-object v1, p0, Lorg/checkerframework/org/objectweb/asmx/util/ASMifierClassVisitor;->buf:Ljava/lang/StringBuffer;

    const-string v5, "ACC_VOLATILE"

    invoke-virtual {v1, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 504
    const/4 v0, 0x0

    .line 506
    :cond_d
    and-int/lit8 v1, p1, 0x40

    if-eqz v1, :cond_f

    and-int v1, p1, v3

    if-nez v1, :cond_f

    and-int v1, p1, v4

    if-nez v1, :cond_f

    .line 509
    if-nez v0, :cond_e

    .line 510
    iget-object v1, p0, Lorg/checkerframework/org/objectweb/asmx/util/ASMifierClassVisitor;->buf:Ljava/lang/StringBuffer;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 512
    :cond_e
    iget-object v1, p0, Lorg/checkerframework/org/objectweb/asmx/util/ASMifierClassVisitor;->buf:Ljava/lang/StringBuffer;

    const-string v5, "ACC_BRIDGE"

    invoke-virtual {v1, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 513
    const/4 v0, 0x0

    .line 515
    :cond_f
    and-int/lit16 v1, p1, 0x80

    if-eqz v1, :cond_11

    and-int v1, p1, v3

    if-nez v1, :cond_11

    and-int v1, p1, v4

    if-nez v1, :cond_11

    .line 518
    if-nez v0, :cond_10

    .line 519
    iget-object v1, p0, Lorg/checkerframework/org/objectweb/asmx/util/ASMifierClassVisitor;->buf:Ljava/lang/StringBuffer;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 521
    :cond_10
    iget-object v1, p0, Lorg/checkerframework/org/objectweb/asmx/util/ASMifierClassVisitor;->buf:Ljava/lang/StringBuffer;

    const-string v5, "ACC_VARARGS"

    invoke-virtual {v1, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 522
    const/4 v0, 0x0

    .line 524
    :cond_11
    and-int/lit16 v1, p1, 0x80

    if-eqz v1, :cond_13

    and-int v1, p1, v4

    if-eqz v1, :cond_13

    .line 527
    if-nez v0, :cond_12

    .line 528
    iget-object v1, p0, Lorg/checkerframework/org/objectweb/asmx/util/ASMifierClassVisitor;->buf:Ljava/lang/StringBuffer;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 530
    :cond_12
    iget-object v1, p0, Lorg/checkerframework/org/objectweb/asmx/util/ASMifierClassVisitor;->buf:Ljava/lang/StringBuffer;

    const-string v5, "ACC_TRANSIENT"

    invoke-virtual {v1, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 531
    const/4 v0, 0x0

    .line 533
    :cond_13
    and-int/lit16 v1, p1, 0x100

    if-eqz v1, :cond_15

    and-int v1, p1, v3

    if-nez v1, :cond_15

    and-int v1, p1, v4

    if-nez v1, :cond_15

    .line 536
    if-nez v0, :cond_14

    .line 537
    iget-object v1, p0, Lorg/checkerframework/org/objectweb/asmx/util/ASMifierClassVisitor;->buf:Ljava/lang/StringBuffer;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 539
    :cond_14
    iget-object v1, p0, Lorg/checkerframework/org/objectweb/asmx/util/ASMifierClassVisitor;->buf:Ljava/lang/StringBuffer;

    const-string v5, "ACC_NATIVE"

    invoke-virtual {v1, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 540
    const/4 v0, 0x0

    .line 542
    :cond_15
    and-int/lit16 v1, p1, 0x4000

    if-eqz v1, :cond_18

    and-int v1, p1, v3

    if-nez v1, :cond_16

    and-int v1, p1, v4

    if-nez v1, :cond_16

    const/high16 v1, 0x100000

    and-int/2addr v1, p1

    if-eqz v1, :cond_18

    .line 546
    :cond_16
    if-nez v0, :cond_17

    .line 547
    iget-object v1, p0, Lorg/checkerframework/org/objectweb/asmx/util/ASMifierClassVisitor;->buf:Ljava/lang/StringBuffer;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 549
    :cond_17
    iget-object v1, p0, Lorg/checkerframework/org/objectweb/asmx/util/ASMifierClassVisitor;->buf:Ljava/lang/StringBuffer;

    const-string v4, "ACC_ENUM"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 550
    const/4 v0, 0x0

    .line 552
    :cond_18
    and-int/lit16 v1, p1, 0x2000

    if-eqz v1, :cond_1a

    and-int v1, p1, v3

    if-eqz v1, :cond_1a

    .line 555
    if-nez v0, :cond_19

    .line 556
    iget-object v1, p0, Lorg/checkerframework/org/objectweb/asmx/util/ASMifierClassVisitor;->buf:Ljava/lang/StringBuffer;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 558
    :cond_19
    iget-object v1, p0, Lorg/checkerframework/org/objectweb/asmx/util/ASMifierClassVisitor;->buf:Ljava/lang/StringBuffer;

    const-string v3, "ACC_ANNOTATION"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 559
    const/4 v0, 0x0

    .line 561
    :cond_1a
    and-int/lit16 v1, p1, 0x400

    if-eqz v1, :cond_1c

    .line 562
    if-nez v0, :cond_1b

    .line 563
    iget-object v1, p0, Lorg/checkerframework/org/objectweb/asmx/util/ASMifierClassVisitor;->buf:Ljava/lang/StringBuffer;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 565
    :cond_1b
    iget-object v1, p0, Lorg/checkerframework/org/objectweb/asmx/util/ASMifierClassVisitor;->buf:Ljava/lang/StringBuffer;

    const-string v3, "ACC_ABSTRACT"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 566
    const/4 v0, 0x0

    .line 568
    :cond_1c
    and-int/lit16 v1, p1, 0x200

    if-eqz v1, :cond_1e

    .line 569
    if-nez v0, :cond_1d

    .line 570
    iget-object v1, p0, Lorg/checkerframework/org/objectweb/asmx/util/ASMifierClassVisitor;->buf:Ljava/lang/StringBuffer;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 572
    :cond_1d
    iget-object v1, p0, Lorg/checkerframework/org/objectweb/asmx/util/ASMifierClassVisitor;->buf:Ljava/lang/StringBuffer;

    const-string v3, "ACC_INTERFACE"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 573
    const/4 v0, 0x0

    .line 575
    :cond_1e
    and-int/lit16 v1, p1, 0x800

    if-eqz v1, :cond_20

    .line 576
    if-nez v0, :cond_1f

    .line 577
    iget-object v1, p0, Lorg/checkerframework/org/objectweb/asmx/util/ASMifierClassVisitor;->buf:Ljava/lang/StringBuffer;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 579
    :cond_1f
    iget-object v1, p0, Lorg/checkerframework/org/objectweb/asmx/util/ASMifierClassVisitor;->buf:Ljava/lang/StringBuffer;

    const-string v3, "ACC_STRICT"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 580
    const/4 v0, 0x0

    .line 582
    :cond_20
    and-int/lit16 v1, p1, 0x1000

    if-eqz v1, :cond_22

    .line 583
    if-nez v0, :cond_21

    .line 584
    iget-object v1, p0, Lorg/checkerframework/org/objectweb/asmx/util/ASMifierClassVisitor;->buf:Ljava/lang/StringBuffer;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 586
    :cond_21
    iget-object v1, p0, Lorg/checkerframework/org/objectweb/asmx/util/ASMifierClassVisitor;->buf:Ljava/lang/StringBuffer;

    const-string v3, "ACC_SYNTHETIC"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 587
    const/4 v0, 0x0

    .line 589
    :cond_22
    const/high16 v1, 0x20000

    and-int/2addr v1, p1

    if-eqz v1, :cond_24

    .line 590
    if-nez v0, :cond_23

    .line 591
    iget-object v1, p0, Lorg/checkerframework/org/objectweb/asmx/util/ASMifierClassVisitor;->buf:Ljava/lang/StringBuffer;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 593
    :cond_23
    iget-object v1, p0, Lorg/checkerframework/org/objectweb/asmx/util/ASMifierClassVisitor;->buf:Ljava/lang/StringBuffer;

    const-string v2, "ACC_DEPRECATED"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 594
    const/4 v0, 0x0

    .line 596
    :cond_24
    if-eqz v0, :cond_25

    .line 597
    iget-object v1, p0, Lorg/checkerframework/org/objectweb/asmx/util/ASMifierClassVisitor;->buf:Ljava/lang/StringBuffer;

    const-string v2, "0"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 599
    :cond_25
    return-void
.end method

.method public visit(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V
    .locals 7
    .param p1, "version"    # I
    .param p2, "access"    # I
    .param p3, "name"    # Ljava/lang/String;
    .param p4, "signature"    # Ljava/lang/String;
    .param p5, "superName"    # Ljava/lang/String;
    .param p6, "interfaces"    # [Ljava/lang/String;

    .line 218
    const/16 v0, 0x2f

    invoke-virtual {p3, v0}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v1

    .line 219
    .local v1, "n":I
    const/4 v2, -0x1

    const/4 v3, 0x0

    if-eq v1, v2, :cond_0

    .line 220
    iget-object v2, p0, Lorg/checkerframework/org/objectweb/asmx/util/ASMifierClassVisitor;->text:Ljava/util/List;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "package asm."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p3, v3, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    const/16 v6, 0x2e

    invoke-virtual {v5, v0, v6}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, ";\n"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 222
    add-int/lit8 v0, v1, 0x1

    invoke-virtual {p3, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .local v0, "simpleName":Ljava/lang/String;
    goto :goto_0

    .line 224
    .end local v0    # "simpleName":Ljava/lang/String;
    :cond_0
    move-object v0, p3

    .line 226
    .restart local v0    # "simpleName":Ljava/lang/String;
    :goto_0
    iget-object v2, p0, Lorg/checkerframework/org/objectweb/asmx/util/ASMifierClassVisitor;->text:Ljava/util/List;

    const-string v4, "import java.util.*;\n"

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 227
    iget-object v2, p0, Lorg/checkerframework/org/objectweb/asmx/util/ASMifierClassVisitor;->text:Ljava/util/List;

    const-string v4, "import org.objectweb.asmx.*;\n"

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 228
    iget-object v2, p0, Lorg/checkerframework/org/objectweb/asmx/util/ASMifierClassVisitor;->text:Ljava/util/List;

    const-string v4, "import org.objectweb.asmx.attrs.*;\n"

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 229
    iget-object v2, p0, Lorg/checkerframework/org/objectweb/asmx/util/ASMifierClassVisitor;->text:Ljava/util/List;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "public class "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "Dump implements Opcodes {\n\n"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 230
    iget-object v2, p0, Lorg/checkerframework/org/objectweb/asmx/util/ASMifierClassVisitor;->text:Ljava/util/List;

    const-string v4, "public static byte[] dump () throws Exception {\n\n"

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 231
    iget-object v2, p0, Lorg/checkerframework/org/objectweb/asmx/util/ASMifierClassVisitor;->text:Ljava/util/List;

    const-string v4, "ClassWriter cw = new ClassWriter(false);\n"

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 232
    iget-object v2, p0, Lorg/checkerframework/org/objectweb/asmx/util/ASMifierClassVisitor;->text:Ljava/util/List;

    const-string v4, "FieldVisitor fv;\n"

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 233
    iget-object v2, p0, Lorg/checkerframework/org/objectweb/asmx/util/ASMifierClassVisitor;->text:Ljava/util/List;

    const-string v4, "MethodVisitor mv;\n"

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 234
    iget-object v2, p0, Lorg/checkerframework/org/objectweb/asmx/util/ASMifierClassVisitor;->text:Ljava/util/List;

    const-string v4, "AnnotationVisitor av0;\n"

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 235
    iget-object v2, p0, Lorg/checkerframework/org/objectweb/asmx/util/ASMifierClassVisitor;->text:Ljava/util/List;

    const-string v4, "TypeAnnotationVisitor xav0;\n\n"

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 237
    iget-object v2, p0, Lorg/checkerframework/org/objectweb/asmx/util/ASMifierClassVisitor;->buf:Ljava/lang/StringBuffer;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->setLength(I)V

    .line 238
    iget-object v2, p0, Lorg/checkerframework/org/objectweb/asmx/util/ASMifierClassVisitor;->buf:Ljava/lang/StringBuffer;

    const-string v3, "cw.visit("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 239
    sparse-switch p1, :sswitch_data_0

    .line 259
    iget-object v2, p0, Lorg/checkerframework/org/objectweb/asmx/util/ASMifierClassVisitor;->buf:Ljava/lang/StringBuffer;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    goto :goto_1

    .line 241
    :sswitch_0
    iget-object v2, p0, Lorg/checkerframework/org/objectweb/asmx/util/ASMifierClassVisitor;->buf:Ljava/lang/StringBuffer;

    const-string v3, "V1_1"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 242
    goto :goto_1

    .line 256
    :sswitch_1
    iget-object v2, p0, Lorg/checkerframework/org/objectweb/asmx/util/ASMifierClassVisitor;->buf:Ljava/lang/StringBuffer;

    const-string v3, "V1_6"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 257
    goto :goto_1

    .line 253
    :sswitch_2
    iget-object v2, p0, Lorg/checkerframework/org/objectweb/asmx/util/ASMifierClassVisitor;->buf:Ljava/lang/StringBuffer;

    const-string v3, "V1_5"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 254
    goto :goto_1

    .line 250
    :sswitch_3
    iget-object v2, p0, Lorg/checkerframework/org/objectweb/asmx/util/ASMifierClassVisitor;->buf:Ljava/lang/StringBuffer;

    const-string v3, "V1_4"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 251
    goto :goto_1

    .line 247
    :sswitch_4
    iget-object v2, p0, Lorg/checkerframework/org/objectweb/asmx/util/ASMifierClassVisitor;->buf:Ljava/lang/StringBuffer;

    const-string v3, "V1_3"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 248
    goto :goto_1

    .line 244
    :sswitch_5
    iget-object v2, p0, Lorg/checkerframework/org/objectweb/asmx/util/ASMifierClassVisitor;->buf:Ljava/lang/StringBuffer;

    const-string v3, "V1_2"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 245
    nop

    .line 262
    :goto_1
    iget-object v2, p0, Lorg/checkerframework/org/objectweb/asmx/util/ASMifierClassVisitor;->buf:Ljava/lang/StringBuffer;

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 263
    const/high16 v2, 0x40000

    or-int/2addr v2, p2

    invoke-virtual {p0, v2}, Lorg/checkerframework/org/objectweb/asmx/util/ASMifierClassVisitor;->appendAccess(I)V

    .line 264
    iget-object v2, p0, Lorg/checkerframework/org/objectweb/asmx/util/ASMifierClassVisitor;->buf:Ljava/lang/StringBuffer;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 265
    invoke-virtual {p0, p3}, Lorg/checkerframework/org/objectweb/asmx/util/ASMifierClassVisitor;->appendConstant(Ljava/lang/Object;)V

    .line 266
    iget-object v2, p0, Lorg/checkerframework/org/objectweb/asmx/util/ASMifierClassVisitor;->buf:Ljava/lang/StringBuffer;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 267
    invoke-virtual {p0, p4}, Lorg/checkerframework/org/objectweb/asmx/util/ASMifierClassVisitor;->appendConstant(Ljava/lang/Object;)V

    .line 268
    iget-object v2, p0, Lorg/checkerframework/org/objectweb/asmx/util/ASMifierClassVisitor;->buf:Ljava/lang/StringBuffer;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 269
    invoke-virtual {p0, p5}, Lorg/checkerframework/org/objectweb/asmx/util/ASMifierClassVisitor;->appendConstant(Ljava/lang/Object;)V

    .line 270
    iget-object v2, p0, Lorg/checkerframework/org/objectweb/asmx/util/ASMifierClassVisitor;->buf:Ljava/lang/StringBuffer;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 271
    if-eqz p6, :cond_3

    array-length v2, p6

    if-lez v2, :cond_3

    .line 272
    iget-object v2, p0, Lorg/checkerframework/org/objectweb/asmx/util/ASMifierClassVisitor;->buf:Ljava/lang/StringBuffer;

    const-string v4, "new String[] {"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 273
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_2
    array-length v4, p6

    if-ge v2, v4, :cond_2

    .line 274
    iget-object v4, p0, Lorg/checkerframework/org/objectweb/asmx/util/ASMifierClassVisitor;->buf:Ljava/lang/StringBuffer;

    if-nez v2, :cond_1

    const-string v5, " "

    goto :goto_3

    :cond_1
    move-object v5, v3

    :goto_3
    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 275
    aget-object v4, p6, v2

    invoke-virtual {p0, v4}, Lorg/checkerframework/org/objectweb/asmx/util/ASMifierClassVisitor;->appendConstant(Ljava/lang/Object;)V

    .line 273
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 277
    .end local v2    # "i":I
    :cond_2
    iget-object v2, p0, Lorg/checkerframework/org/objectweb/asmx/util/ASMifierClassVisitor;->buf:Ljava/lang/StringBuffer;

    const-string v3, " }"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_4

    .line 279
    :cond_3
    iget-object v2, p0, Lorg/checkerframework/org/objectweb/asmx/util/ASMifierClassVisitor;->buf:Ljava/lang/StringBuffer;

    const-string v3, "null"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 281
    :goto_4
    iget-object v2, p0, Lorg/checkerframework/org/objectweb/asmx/util/ASMifierClassVisitor;->buf:Ljava/lang/StringBuffer;

    const-string v3, ");\n\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 282
    iget-object v2, p0, Lorg/checkerframework/org/objectweb/asmx/util/ASMifierClassVisitor;->text:Ljava/util/List;

    iget-object v3, p0, Lorg/checkerframework/org/objectweb/asmx/util/ASMifierClassVisitor;->buf:Ljava/lang/StringBuffer;

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 283
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        0x2e -> :sswitch_5
        0x2f -> :sswitch_4
        0x30 -> :sswitch_3
        0x31 -> :sswitch_2
        0x32 -> :sswitch_1
        0x3002d -> :sswitch_0
    .end sparse-switch
.end method

.method public visitAnnotation(Ljava/lang/String;Z)Lorg/checkerframework/org/objectweb/asmx/AnnotationVisitor;
    .locals 3
    .param p1, "desc"    # Ljava/lang/String;
    .param p2, "visible"    # Z

    .line 397
    iget-object v0, p0, Lorg/checkerframework/org/objectweb/asmx/util/ASMifierClassVisitor;->buf:Ljava/lang/StringBuffer;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->setLength(I)V

    .line 398
    iget-object v0, p0, Lorg/checkerframework/org/objectweb/asmx/util/ASMifierClassVisitor;->buf:Ljava/lang/StringBuffer;

    const-string v2, "{\n"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 399
    iget-object v0, p0, Lorg/checkerframework/org/objectweb/asmx/util/ASMifierClassVisitor;->buf:Ljava/lang/StringBuffer;

    const-string v2, "av0 = cw.visitAnnotation("

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 400
    invoke-virtual {p0, p1}, Lorg/checkerframework/org/objectweb/asmx/util/ASMifierClassVisitor;->appendConstant(Ljava/lang/Object;)V

    .line 401
    iget-object v0, p0, Lorg/checkerframework/org/objectweb/asmx/util/ASMifierClassVisitor;->buf:Ljava/lang/StringBuffer;

    const-string v2, ", "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 402
    iget-object v0, p0, Lorg/checkerframework/org/objectweb/asmx/util/ASMifierClassVisitor;->buf:Ljava/lang/StringBuffer;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuffer;->append(Z)Ljava/lang/StringBuffer;

    .line 403
    iget-object v0, p0, Lorg/checkerframework/org/objectweb/asmx/util/ASMifierClassVisitor;->buf:Ljava/lang/StringBuffer;

    const-string v2, ");\n"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 404
    iget-object v0, p0, Lorg/checkerframework/org/objectweb/asmx/util/ASMifierClassVisitor;->text:Ljava/util/List;

    iget-object v2, p0, Lorg/checkerframework/org/objectweb/asmx/util/ASMifierClassVisitor;->buf:Ljava/lang/StringBuffer;

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 405
    new-instance v0, Lorg/checkerframework/org/objectweb/asmx/util/ASMifierAnnotationVisitor;

    invoke-direct {v0, v1}, Lorg/checkerframework/org/objectweb/asmx/util/ASMifierAnnotationVisitor;-><init>(I)V

    .line 406
    .local v0, "av":Lorg/checkerframework/org/objectweb/asmx/util/ASMifierAnnotationVisitor;
    iget-object v1, p0, Lorg/checkerframework/org/objectweb/asmx/util/ASMifierClassVisitor;->text:Ljava/util/List;

    invoke-virtual {v0}, Lorg/checkerframework/org/objectweb/asmx/util/ASMifierAnnotationVisitor;->getText()Ljava/util/List;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 407
    iget-object v1, p0, Lorg/checkerframework/org/objectweb/asmx/util/ASMifierClassVisitor;->text:Ljava/util/List;

    const-string v2, "}\n"

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 408
    return-object v0
.end method

.method public visitEnd()V
    .locals 2

    .line 434
    iget-object v0, p0, Lorg/checkerframework/org/objectweb/asmx/util/ASMifierClassVisitor;->text:Ljava/util/List;

    const-string v1, "cw.visitEnd();\n\n"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 435
    iget-object v0, p0, Lorg/checkerframework/org/objectweb/asmx/util/ASMifierClassVisitor;->text:Ljava/util/List;

    const-string v1, "return cw.toByteArray();\n"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 436
    iget-object v0, p0, Lorg/checkerframework/org/objectweb/asmx/util/ASMifierClassVisitor;->text:Ljava/util/List;

    const-string v1, "}\n"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 437
    iget-object v0, p0, Lorg/checkerframework/org/objectweb/asmx/util/ASMifierClassVisitor;->text:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 438
    iget-object v0, p0, Lorg/checkerframework/org/objectweb/asmx/util/ASMifierClassVisitor;->pw:Ljava/io/PrintWriter;

    iget-object v1, p0, Lorg/checkerframework/org/objectweb/asmx/util/ASMifierClassVisitor;->text:Ljava/util/List;

    invoke-virtual {p0, v0, v1}, Lorg/checkerframework/org/objectweb/asmx/util/ASMifierClassVisitor;->printList(Ljava/io/PrintWriter;Ljava/util/List;)V

    .line 439
    iget-object v0, p0, Lorg/checkerframework/org/objectweb/asmx/util/ASMifierClassVisitor;->pw:Ljava/io/PrintWriter;

    invoke-virtual {v0}, Ljava/io/PrintWriter;->flush()V

    .line 440
    return-void
.end method

.method public visitField(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)Lorg/checkerframework/org/objectweb/asmx/FieldVisitor;
    .locals 3
    .param p1, "access"    # I
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "desc"    # Ljava/lang/String;
    .param p4, "signature"    # Ljava/lang/String;
    .param p5, "value"    # Ljava/lang/Object;

    .line 337
    iget-object v0, p0, Lorg/checkerframework/org/objectweb/asmx/util/ASMifierClassVisitor;->buf:Ljava/lang/StringBuffer;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->setLength(I)V

    .line 338
    iget-object v0, p0, Lorg/checkerframework/org/objectweb/asmx/util/ASMifierClassVisitor;->buf:Ljava/lang/StringBuffer;

    const-string v1, "{\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 339
    iget-object v0, p0, Lorg/checkerframework/org/objectweb/asmx/util/ASMifierClassVisitor;->buf:Ljava/lang/StringBuffer;

    const-string v1, "fv = cw.visitField("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 340
    const/high16 v0, 0x80000

    or-int/2addr v0, p1

    invoke-virtual {p0, v0}, Lorg/checkerframework/org/objectweb/asmx/util/ASMifierClassVisitor;->appendAccess(I)V

    .line 341
    iget-object v0, p0, Lorg/checkerframework/org/objectweb/asmx/util/ASMifierClassVisitor;->buf:Ljava/lang/StringBuffer;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 342
    invoke-virtual {p0, p2}, Lorg/checkerframework/org/objectweb/asmx/util/ASMifierClassVisitor;->appendConstant(Ljava/lang/Object;)V

    .line 343
    iget-object v0, p0, Lorg/checkerframework/org/objectweb/asmx/util/ASMifierClassVisitor;->buf:Ljava/lang/StringBuffer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 344
    invoke-virtual {p0, p3}, Lorg/checkerframework/org/objectweb/asmx/util/ASMifierClassVisitor;->appendConstant(Ljava/lang/Object;)V

    .line 345
    iget-object v0, p0, Lorg/checkerframework/org/objectweb/asmx/util/ASMifierClassVisitor;->buf:Ljava/lang/StringBuffer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 346
    invoke-virtual {p0, p4}, Lorg/checkerframework/org/objectweb/asmx/util/ASMifierClassVisitor;->appendConstant(Ljava/lang/Object;)V

    .line 347
    iget-object v0, p0, Lorg/checkerframework/org/objectweb/asmx/util/ASMifierClassVisitor;->buf:Ljava/lang/StringBuffer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 348
    invoke-virtual {p0, p5}, Lorg/checkerframework/org/objectweb/asmx/util/ASMifierClassVisitor;->appendConstant(Ljava/lang/Object;)V

    .line 349
    iget-object v0, p0, Lorg/checkerframework/org/objectweb/asmx/util/ASMifierClassVisitor;->buf:Ljava/lang/StringBuffer;

    const-string v1, ");\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 350
    iget-object v0, p0, Lorg/checkerframework/org/objectweb/asmx/util/ASMifierClassVisitor;->text:Ljava/util/List;

    iget-object v1, p0, Lorg/checkerframework/org/objectweb/asmx/util/ASMifierClassVisitor;->buf:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 351
    new-instance v0, Lorg/checkerframework/org/objectweb/asmx/util/ASMifierFieldVisitor;

    invoke-direct {v0}, Lorg/checkerframework/org/objectweb/asmx/util/ASMifierFieldVisitor;-><init>()V

    .line 352
    .local v0, "aav":Lorg/checkerframework/org/objectweb/asmx/util/ASMifierFieldVisitor;
    iget-object v1, p0, Lorg/checkerframework/org/objectweb/asmx/util/ASMifierClassVisitor;->text:Ljava/util/List;

    invoke-virtual {v0}, Lorg/checkerframework/org/objectweb/asmx/util/ASMifierFieldVisitor;->getText()Ljava/util/List;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 353
    iget-object v1, p0, Lorg/checkerframework/org/objectweb/asmx/util/ASMifierClassVisitor;->text:Ljava/util/List;

    const-string v2, "}\n"

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 354
    return-object v0
.end method

.method public visitInnerClass(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "outerName"    # Ljava/lang/String;
    .param p3, "innerName"    # Ljava/lang/String;
    .param p4, "access"    # I

    .line 317
    iget-object v0, p0, Lorg/checkerframework/org/objectweb/asmx/util/ASMifierClassVisitor;->buf:Ljava/lang/StringBuffer;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->setLength(I)V

    .line 318
    iget-object v0, p0, Lorg/checkerframework/org/objectweb/asmx/util/ASMifierClassVisitor;->buf:Ljava/lang/StringBuffer;

    const-string v1, "cw.visitInnerClass("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 319
    invoke-virtual {p0, p1}, Lorg/checkerframework/org/objectweb/asmx/util/ASMifierClassVisitor;->appendConstant(Ljava/lang/Object;)V

    .line 320
    iget-object v0, p0, Lorg/checkerframework/org/objectweb/asmx/util/ASMifierClassVisitor;->buf:Ljava/lang/StringBuffer;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 321
    invoke-virtual {p0, p2}, Lorg/checkerframework/org/objectweb/asmx/util/ASMifierClassVisitor;->appendConstant(Ljava/lang/Object;)V

    .line 322
    iget-object v0, p0, Lorg/checkerframework/org/objectweb/asmx/util/ASMifierClassVisitor;->buf:Ljava/lang/StringBuffer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 323
    invoke-virtual {p0, p3}, Lorg/checkerframework/org/objectweb/asmx/util/ASMifierClassVisitor;->appendConstant(Ljava/lang/Object;)V

    .line 324
    iget-object v0, p0, Lorg/checkerframework/org/objectweb/asmx/util/ASMifierClassVisitor;->buf:Ljava/lang/StringBuffer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 325
    const/high16 v0, 0x100000

    or-int/2addr v0, p4

    invoke-virtual {p0, v0}, Lorg/checkerframework/org/objectweb/asmx/util/ASMifierClassVisitor;->appendAccess(I)V

    .line 326
    iget-object v0, p0, Lorg/checkerframework/org/objectweb/asmx/util/ASMifierClassVisitor;->buf:Ljava/lang/StringBuffer;

    const-string v1, ");\n\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 327
    iget-object v0, p0, Lorg/checkerframework/org/objectweb/asmx/util/ASMifierClassVisitor;->text:Ljava/util/List;

    iget-object v1, p0, Lorg/checkerframework/org/objectweb/asmx/util/ASMifierClassVisitor;->buf:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 328
    return-void
.end method

.method public visitMethod(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Lorg/checkerframework/org/objectweb/asmx/MethodVisitor;
    .locals 4
    .param p1, "access"    # I
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "desc"    # Ljava/lang/String;
    .param p4, "signature"    # Ljava/lang/String;
    .param p5, "exceptions"    # [Ljava/lang/String;

    .line 364
    iget-object v0, p0, Lorg/checkerframework/org/objectweb/asmx/util/ASMifierClassVisitor;->buf:Ljava/lang/StringBuffer;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->setLength(I)V

    .line 365
    iget-object v0, p0, Lorg/checkerframework/org/objectweb/asmx/util/ASMifierClassVisitor;->buf:Ljava/lang/StringBuffer;

    const-string v1, "{\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 366
    iget-object v0, p0, Lorg/checkerframework/org/objectweb/asmx/util/ASMifierClassVisitor;->buf:Ljava/lang/StringBuffer;

    const-string v1, "mv = cw.visitMethod("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 367
    invoke-virtual {p0, p1}, Lorg/checkerframework/org/objectweb/asmx/util/ASMifierClassVisitor;->appendAccess(I)V

    .line 368
    iget-object v0, p0, Lorg/checkerframework/org/objectweb/asmx/util/ASMifierClassVisitor;->buf:Ljava/lang/StringBuffer;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 369
    invoke-virtual {p0, p2}, Lorg/checkerframework/org/objectweb/asmx/util/ASMifierClassVisitor;->appendConstant(Ljava/lang/Object;)V

    .line 370
    iget-object v0, p0, Lorg/checkerframework/org/objectweb/asmx/util/ASMifierClassVisitor;->buf:Ljava/lang/StringBuffer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 371
    invoke-virtual {p0, p3}, Lorg/checkerframework/org/objectweb/asmx/util/ASMifierClassVisitor;->appendConstant(Ljava/lang/Object;)V

    .line 372
    iget-object v0, p0, Lorg/checkerframework/org/objectweb/asmx/util/ASMifierClassVisitor;->buf:Ljava/lang/StringBuffer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 373
    invoke-virtual {p0, p4}, Lorg/checkerframework/org/objectweb/asmx/util/ASMifierClassVisitor;->appendConstant(Ljava/lang/Object;)V

    .line 374
    iget-object v0, p0, Lorg/checkerframework/org/objectweb/asmx/util/ASMifierClassVisitor;->buf:Ljava/lang/StringBuffer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 375
    if-eqz p5, :cond_2

    array-length v0, p5

    if-lez v0, :cond_2

    .line 376
    iget-object v0, p0, Lorg/checkerframework/org/objectweb/asmx/util/ASMifierClassVisitor;->buf:Ljava/lang/StringBuffer;

    const-string v2, "new String[] {"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 377
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v2, p5

    if-ge v0, v2, :cond_1

    .line 378
    iget-object v2, p0, Lorg/checkerframework/org/objectweb/asmx/util/ASMifierClassVisitor;->buf:Ljava/lang/StringBuffer;

    if-nez v0, :cond_0

    const-string v3, " "

    goto :goto_1

    :cond_0
    move-object v3, v1

    :goto_1
    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 379
    aget-object v2, p5, v0

    invoke-virtual {p0, v2}, Lorg/checkerframework/org/objectweb/asmx/util/ASMifierClassVisitor;->appendConstant(Ljava/lang/Object;)V

    .line 377
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 381
    .end local v0    # "i":I
    :cond_1
    iget-object v0, p0, Lorg/checkerframework/org/objectweb/asmx/util/ASMifierClassVisitor;->buf:Ljava/lang/StringBuffer;

    const-string v1, " }"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_2

    .line 383
    :cond_2
    iget-object v0, p0, Lorg/checkerframework/org/objectweb/asmx/util/ASMifierClassVisitor;->buf:Ljava/lang/StringBuffer;

    const-string v1, "null"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 385
    :goto_2
    iget-object v0, p0, Lorg/checkerframework/org/objectweb/asmx/util/ASMifierClassVisitor;->buf:Ljava/lang/StringBuffer;

    const-string v1, ");\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 386
    iget-object v0, p0, Lorg/checkerframework/org/objectweb/asmx/util/ASMifierClassVisitor;->text:Ljava/util/List;

    iget-object v1, p0, Lorg/checkerframework/org/objectweb/asmx/util/ASMifierClassVisitor;->buf:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 387
    new-instance v0, Lorg/checkerframework/org/objectweb/asmx/util/ASMifierMethodVisitor;

    invoke-direct {v0}, Lorg/checkerframework/org/objectweb/asmx/util/ASMifierMethodVisitor;-><init>()V

    .line 388
    .local v0, "acv":Lorg/checkerframework/org/objectweb/asmx/util/ASMifierMethodVisitor;
    iget-object v1, p0, Lorg/checkerframework/org/objectweb/asmx/util/ASMifierClassVisitor;->text:Ljava/util/List;

    invoke-virtual {v0}, Lorg/checkerframework/org/objectweb/asmx/util/ASMifierMethodVisitor;->getText()Ljava/util/List;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 389
    iget-object v1, p0, Lorg/checkerframework/org/objectweb/asmx/util/ASMifierClassVisitor;->text:Ljava/util/List;

    const-string v2, "}\n"

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 390
    return-object v0
.end method

.method public visitOuterClass(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "owner"    # Ljava/lang/String;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "desc"    # Ljava/lang/String;

    .line 300
    iget-object v0, p0, Lorg/checkerframework/org/objectweb/asmx/util/ASMifierClassVisitor;->buf:Ljava/lang/StringBuffer;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->setLength(I)V

    .line 301
    iget-object v0, p0, Lorg/checkerframework/org/objectweb/asmx/util/ASMifierClassVisitor;->buf:Ljava/lang/StringBuffer;

    const-string v1, "cw.visitOuterClass("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 302
    invoke-virtual {p0, p1}, Lorg/checkerframework/org/objectweb/asmx/util/ASMifierClassVisitor;->appendConstant(Ljava/lang/Object;)V

    .line 303
    iget-object v0, p0, Lorg/checkerframework/org/objectweb/asmx/util/ASMifierClassVisitor;->buf:Ljava/lang/StringBuffer;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 304
    invoke-virtual {p0, p2}, Lorg/checkerframework/org/objectweb/asmx/util/ASMifierClassVisitor;->appendConstant(Ljava/lang/Object;)V

    .line 305
    iget-object v0, p0, Lorg/checkerframework/org/objectweb/asmx/util/ASMifierClassVisitor;->buf:Ljava/lang/StringBuffer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 306
    invoke-virtual {p0, p3}, Lorg/checkerframework/org/objectweb/asmx/util/ASMifierClassVisitor;->appendConstant(Ljava/lang/Object;)V

    .line 307
    iget-object v0, p0, Lorg/checkerframework/org/objectweb/asmx/util/ASMifierClassVisitor;->buf:Ljava/lang/StringBuffer;

    const-string v1, ");\n\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 308
    iget-object v0, p0, Lorg/checkerframework/org/objectweb/asmx/util/ASMifierClassVisitor;->text:Ljava/util/List;

    iget-object v1, p0, Lorg/checkerframework/org/objectweb/asmx/util/ASMifierClassVisitor;->buf:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 309
    return-void
.end method

.method public visitSource(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "file"    # Ljava/lang/String;
    .param p2, "debug"    # Ljava/lang/String;

    .line 286
    iget-object v0, p0, Lorg/checkerframework/org/objectweb/asmx/util/ASMifierClassVisitor;->buf:Ljava/lang/StringBuffer;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->setLength(I)V

    .line 287
    iget-object v0, p0, Lorg/checkerframework/org/objectweb/asmx/util/ASMifierClassVisitor;->buf:Ljava/lang/StringBuffer;

    const-string v1, "cw.visitSource("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 288
    invoke-virtual {p0, p1}, Lorg/checkerframework/org/objectweb/asmx/util/ASMifierClassVisitor;->appendConstant(Ljava/lang/Object;)V

    .line 289
    iget-object v0, p0, Lorg/checkerframework/org/objectweb/asmx/util/ASMifierClassVisitor;->buf:Ljava/lang/StringBuffer;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 290
    invoke-virtual {p0, p2}, Lorg/checkerframework/org/objectweb/asmx/util/ASMifierClassVisitor;->appendConstant(Ljava/lang/Object;)V

    .line 291
    iget-object v0, p0, Lorg/checkerframework/org/objectweb/asmx/util/ASMifierClassVisitor;->buf:Ljava/lang/StringBuffer;

    const-string v1, ");\n\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 292
    iget-object v0, p0, Lorg/checkerframework/org/objectweb/asmx/util/ASMifierClassVisitor;->text:Ljava/util/List;

    iget-object v1, p0, Lorg/checkerframework/org/objectweb/asmx/util/ASMifierClassVisitor;->buf:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 293
    return-void
.end method

.method public visitTypeAnnotation(Ljava/lang/String;ZZ)Lorg/checkerframework/org/objectweb/asmx/TypeAnnotationVisitor;
    .locals 3
    .param p1, "desc"    # Ljava/lang/String;
    .param p2, "visible"    # Z
    .param p3, "inCode"    # Z

    .line 416
    iget-object v0, p0, Lorg/checkerframework/org/objectweb/asmx/util/ASMifierClassVisitor;->buf:Ljava/lang/StringBuffer;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->setLength(I)V

    .line 417
    iget-object v0, p0, Lorg/checkerframework/org/objectweb/asmx/util/ASMifierClassVisitor;->buf:Ljava/lang/StringBuffer;

    const-string v2, "{\n"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 418
    iget-object v0, p0, Lorg/checkerframework/org/objectweb/asmx/util/ASMifierClassVisitor;->buf:Ljava/lang/StringBuffer;

    const-string v2, "xav0 = cw.visitTypeAnnotation("

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 419
    invoke-virtual {p0, p1}, Lorg/checkerframework/org/objectweb/asmx/util/ASMifierClassVisitor;->appendConstant(Ljava/lang/Object;)V

    .line 420
    iget-object v0, p0, Lorg/checkerframework/org/objectweb/asmx/util/ASMifierClassVisitor;->buf:Ljava/lang/StringBuffer;

    const-string v2, ", "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 421
    iget-object v0, p0, Lorg/checkerframework/org/objectweb/asmx/util/ASMifierClassVisitor;->buf:Ljava/lang/StringBuffer;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuffer;->append(Z)Ljava/lang/StringBuffer;

    .line 422
    iget-object v0, p0, Lorg/checkerframework/org/objectweb/asmx/util/ASMifierClassVisitor;->buf:Ljava/lang/StringBuffer;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 423
    iget-object v0, p0, Lorg/checkerframework/org/objectweb/asmx/util/ASMifierClassVisitor;->buf:Ljava/lang/StringBuffer;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuffer;->append(Z)Ljava/lang/StringBuffer;

    .line 424
    iget-object v0, p0, Lorg/checkerframework/org/objectweb/asmx/util/ASMifierClassVisitor;->buf:Ljava/lang/StringBuffer;

    const-string v2, ");\n"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 425
    iget-object v0, p0, Lorg/checkerframework/org/objectweb/asmx/util/ASMifierClassVisitor;->text:Ljava/util/List;

    iget-object v2, p0, Lorg/checkerframework/org/objectweb/asmx/util/ASMifierClassVisitor;->buf:Ljava/lang/StringBuffer;

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 426
    new-instance v0, Lorg/checkerframework/org/objectweb/asmx/util/ASMifierTypeAnnotationVisitor;

    invoke-direct {v0, v1}, Lorg/checkerframework/org/objectweb/asmx/util/ASMifierTypeAnnotationVisitor;-><init>(I)V

    .line 428
    .local v0, "xav":Lorg/checkerframework/org/objectweb/asmx/util/ASMifierTypeAnnotationVisitor;
    iget-object v1, p0, Lorg/checkerframework/org/objectweb/asmx/util/ASMifierClassVisitor;->text:Ljava/util/List;

    invoke-virtual {v0}, Lorg/checkerframework/org/objectweb/asmx/util/ASMifierTypeAnnotationVisitor;->getText()Ljava/util/List;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 429
    iget-object v1, p0, Lorg/checkerframework/org/objectweb/asmx/util/ASMifierClassVisitor;->text:Ljava/util/List;

    const-string v2, "}\n"

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 430
    return-object v0
.end method
