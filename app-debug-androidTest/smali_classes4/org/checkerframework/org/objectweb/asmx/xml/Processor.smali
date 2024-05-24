.class public Lorg/checkerframework/org/objectweb/asmx/xml/Processor;
.super Ljava/lang/Object;
.source "Processor.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/checkerframework/org/objectweb/asmx/xml/Processor$ZipEntryElement;,
        Lorg/checkerframework/org/objectweb/asmx/xml/Processor$SingleDocElement;,
        Lorg/checkerframework/org/objectweb/asmx/xml/Processor$EntryElement;,
        Lorg/checkerframework/org/objectweb/asmx/xml/Processor$OutputSlicingHandler;,
        Lorg/checkerframework/org/objectweb/asmx/xml/Processor$InputSlicingHandler;,
        Lorg/checkerframework/org/objectweb/asmx/xml/Processor$SAXWriter;,
        Lorg/checkerframework/org/objectweb/asmx/xml/Processor$SubdocumentHandlerFactory;,
        Lorg/checkerframework/org/objectweb/asmx/xml/Processor$TransformerHandlerFactory;,
        Lorg/checkerframework/org/objectweb/asmx/xml/Processor$ASMContentHandlerFactory;,
        Lorg/checkerframework/org/objectweb/asmx/xml/Processor$SAXWriterFactory;,
        Lorg/checkerframework/org/objectweb/asmx/xml/Processor$ContentHandlerFactory;,
        Lorg/checkerframework/org/objectweb/asmx/xml/Processor$ProtectedInputStream;
    }
.end annotation


# static fields
.field public static final BYTECODE:I = 0x1

.field public static final MULTI_XML:I = 0x2

.field public static final SINGLE_XML:I = 0x3

.field private static final SINGLE_XML_NAME:Ljava/lang/String; = "classes.xml"


# instance fields
.field private computeMax:Z

.field private inRepresentation:I

.field private input:Ljava/io/InputStream;

.field private n:I

.field private outRepresentation:I

.field private output:Ljava/io/OutputStream;

.field private xslt:Ljavax/xml/transform/Source;


# direct methods
.method public constructor <init>(IILjava/io/InputStream;Ljava/io/OutputStream;Ljavax/xml/transform/Source;)V
    .locals 1
    .param p1, "inRepresenation"    # I
    .param p2, "outRepresentation"    # I
    .param p3, "input"    # Ljava/io/InputStream;
    .param p4, "output"    # Ljava/io/OutputStream;
    .param p5, "xslt"    # Ljavax/xml/transform/Source;

    .line 120
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 104
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/checkerframework/org/objectweb/asmx/xml/Processor;->input:Ljava/io/InputStream;

    .line 106
    iput-object v0, p0, Lorg/checkerframework/org/objectweb/asmx/xml/Processor;->output:Ljava/io/OutputStream;

    .line 108
    iput-object v0, p0, Lorg/checkerframework/org/objectweb/asmx/xml/Processor;->xslt:Ljavax/xml/transform/Source;

    .line 112
    const/4 v0, 0x0

    iput v0, p0, Lorg/checkerframework/org/objectweb/asmx/xml/Processor;->n:I

    .line 121
    iput p1, p0, Lorg/checkerframework/org/objectweb/asmx/xml/Processor;->inRepresentation:I

    .line 122
    iput p2, p0, Lorg/checkerframework/org/objectweb/asmx/xml/Processor;->outRepresentation:I

    .line 123
    iput-object p3, p0, Lorg/checkerframework/org/objectweb/asmx/xml/Processor;->input:Ljava/io/InputStream;

    .line 124
    iput-object p4, p0, Lorg/checkerframework/org/objectweb/asmx/xml/Processor;->output:Ljava/io/OutputStream;

    .line 125
    iput-object p5, p0, Lorg/checkerframework/org/objectweb/asmx/xml/Processor;->xslt:Ljavax/xml/transform/Source;

    .line 126
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/checkerframework/org/objectweb/asmx/xml/Processor;->computeMax:Z

    .line 127
    return-void
.end method

.method private copyEntry(Ljava/io/InputStream;Ljava/io/OutputStream;)V
    .locals 4
    .param p1, "is"    # Ljava/io/InputStream;
    .param p2, "os"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 230
    iget v0, p0, Lorg/checkerframework/org/objectweb/asmx/xml/Processor;->outRepresentation:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    .line 231
    return-void

    .line 233
    :cond_0
    const/16 v0, 0x800

    new-array v0, v0, [B

    .line 235
    .local v0, "buff":[B
    :goto_0
    invoke-virtual {p1, v0}, Ljava/io/InputStream;->read([B)I

    move-result v1

    move v2, v1

    .local v2, "i":I
    const/4 v3, -0x1

    if-eq v1, v3, :cond_1

    .line 236
    const/4 v1, 0x0

    invoke-virtual {p2, v0, v1, v2}, Ljava/io/OutputStream;->write([BII)V

    goto :goto_0

    .line 238
    :cond_1
    return-void
.end method

.method private getEntryElement(Ljava/util/zip/ZipOutputStream;)Lorg/checkerframework/org/objectweb/asmx/xml/Processor$EntryElement;
    .locals 2
    .param p1, "zos"    # Ljava/util/zip/ZipOutputStream;

    .line 283
    iget v0, p0, Lorg/checkerframework/org/objectweb/asmx/xml/Processor;->outRepresentation:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    .line 284
    new-instance v0, Lorg/checkerframework/org/objectweb/asmx/xml/Processor$SingleDocElement;

    invoke-direct {v0, p1}, Lorg/checkerframework/org/objectweb/asmx/xml/Processor$SingleDocElement;-><init>(Ljava/io/OutputStream;)V

    return-object v0

    .line 286
    :cond_0
    new-instance v0, Lorg/checkerframework/org/objectweb/asmx/xml/Processor$ZipEntryElement;

    invoke-direct {v0, p1}, Lorg/checkerframework/org/objectweb/asmx/xml/Processor$ZipEntryElement;-><init>(Ljava/util/zip/ZipOutputStream;)V

    return-object v0
.end method

.method private getName(Ljava/util/zip/ZipEntry;)Ljava/lang/String;
    .locals 4
    .param p1, "ze"    # Ljava/util/zip/ZipEntry;

    .line 320
    invoke-virtual {p1}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v0

    .line 321
    .local v0, "name":Ljava/lang/String;
    invoke-direct {p0, p1}, Lorg/checkerframework/org/objectweb/asmx/xml/Processor;->isClassEntry(Ljava/util/zip/ZipEntry;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 322
    iget v1, p0, Lorg/checkerframework/org/objectweb/asmx/xml/Processor;->inRepresentation:I

    const/4 v2, 0x1

    if-eq v1, v2, :cond_0

    iget v3, p0, Lorg/checkerframework/org/objectweb/asmx/xml/Processor;->outRepresentation:I

    if-ne v3, v2, :cond_0

    .line 323
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x4

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 325
    :cond_0
    if-ne v1, v2, :cond_1

    iget v1, p0, Lorg/checkerframework/org/objectweb/asmx/xml/Processor;->outRepresentation:I

    if-eq v1, v2, :cond_1

    .line 328
    const-string v1, ".xml"

    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 333
    :cond_1
    :goto_0
    return-object v0
.end method

.method private static getRepresentation(Ljava/lang/String;)I
    .locals 1
    .param p0, "s"    # Ljava/lang/String;

    .line 429
    const-string v0, "code"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 430
    const/4 v0, 0x1

    return v0

    .line 431
    :cond_0
    const-string v0, "xml"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 432
    const/4 v0, 0x2

    return v0

    .line 433
    :cond_1
    const-string v0, "singlexml"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 434
    const/4 v0, 0x3

    return v0

    .line 436
    :cond_2
    const/4 v0, 0x0

    return v0
.end method

.method private isClassEntry(Ljava/util/zip/ZipEntry;)Z
    .locals 3
    .param p1, "ze"    # Ljava/util/zip/ZipEntry;

    .line 241
    invoke-virtual {p1}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v0

    .line 242
    .local v0, "name":Ljava/lang/String;
    iget v1, p0, Lorg/checkerframework/org/objectweb/asmx/xml/Processor;->inRepresentation:I

    const/4 v2, 0x3

    if-ne v1, v2, :cond_0

    const-string v1, "classes.xml"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 243
    :cond_0
    const-string v1, ".class"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, ".class.xml"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    goto :goto_1

    :cond_2
    :goto_0
    const/4 v1, 0x1

    .line 242
    :goto_1
    return v1
.end method

.method public static main([Ljava/lang/String;)V
    .locals 16
    .param p0, "args"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 375
    move-object/from16 v0, p0

    array-length v1, v0

    const/4 v2, 0x2

    if-ge v1, v2, :cond_0

    .line 376
    invoke-static {}, Lorg/checkerframework/org/objectweb/asmx/xml/Processor;->showUsage()V

    .line 377
    return-void

    .line 380
    :cond_0
    const/4 v1, 0x0

    aget-object v1, v0, v1

    invoke-static {v1}, Lorg/checkerframework/org/objectweb/asmx/xml/Processor;->getRepresentation(Ljava/lang/String;)I

    move-result v1

    .line 381
    .local v1, "inRepresentation":I
    const/4 v2, 0x1

    aget-object v3, v0, v2

    invoke-static {v3}, Lorg/checkerframework/org/objectweb/asmx/xml/Processor;->getRepresentation(Ljava/lang/String;)I

    move-result v8

    .line 383
    .local v8, "outRepresentation":I
    sget-object v3, Ljava/lang/System;->in:Ljava/io/InputStream;

    .line 384
    .local v3, "is":Ljava/io/InputStream;
    new-instance v4, Ljava/io/BufferedOutputStream;

    sget-object v5, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-direct {v4, v5}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 386
    .local v4, "os":Ljava/io/OutputStream;
    const/4 v5, 0x0

    .line 389
    .local v5, "xslt":Ljavax/xml/transform/Source;
    const/4 v6, 0x2

    move-object v9, v3

    move-object v10, v4

    move-object v11, v5

    .end local v3    # "is":Ljava/io/InputStream;
    .end local v4    # "os":Ljava/io/OutputStream;
    .end local v5    # "xslt":Ljavax/xml/transform/Source;
    .local v6, "i":I
    .local v9, "is":Ljava/io/InputStream;
    .local v10, "os":Ljava/io/OutputStream;
    .local v11, "xslt":Ljavax/xml/transform/Source;
    :goto_0
    array-length v3, v0

    if-ge v6, v3, :cond_4

    .line 390
    const-string v3, "-in"

    aget-object v4, v0, v6

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 391
    new-instance v3, Ljava/io/FileInputStream;

    add-int/lit8 v6, v6, 0x1

    aget-object v4, v0, v6

    invoke-direct {v3, v4}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    move-object v9, v3

    .end local v9    # "is":Ljava/io/InputStream;
    .restart local v3    # "is":Ljava/io/InputStream;
    goto :goto_1

    .line 393
    .end local v3    # "is":Ljava/io/InputStream;
    .restart local v9    # "is":Ljava/io/InputStream;
    :cond_1
    const-string v3, "-out"

    aget-object v4, v0, v6

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 394
    new-instance v3, Ljava/io/BufferedOutputStream;

    new-instance v4, Ljava/io/FileOutputStream;

    add-int/lit8 v6, v6, 0x1

    aget-object v5, v0, v6

    invoke-direct {v4, v5}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    invoke-direct {v3, v4}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    move-object v10, v3

    .end local v10    # "os":Ljava/io/OutputStream;
    .local v3, "os":Ljava/io/OutputStream;
    goto :goto_1

    .line 396
    .end local v3    # "os":Ljava/io/OutputStream;
    .restart local v10    # "os":Ljava/io/OutputStream;
    :cond_2
    const-string v3, "-xslt"

    aget-object v4, v0, v6

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 397
    new-instance v3, Ljavax/xml/transform/stream/StreamSource;

    new-instance v4, Ljava/io/FileInputStream;

    add-int/lit8 v6, v6, 0x1

    aget-object v5, v0, v6

    invoke-direct {v4, v5}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    invoke-direct {v3, v4}, Ljavax/xml/transform/stream/StreamSource;-><init>(Ljava/io/InputStream;)V

    move-object v11, v3

    .line 389
    :goto_1
    add-int/2addr v6, v2

    goto :goto_0

    .line 403
    :cond_3
    invoke-static {}, Lorg/checkerframework/org/objectweb/asmx/xml/Processor;->showUsage()V

    .line 404
    return-void

    .line 409
    .end local v6    # "i":I
    :cond_4
    if-eqz v1, :cond_6

    if-nez v8, :cond_5

    move v14, v1

    goto :goto_2

    .line 414
    :cond_5
    new-instance v12, Lorg/checkerframework/org/objectweb/asmx/xml/Processor;

    move-object v2, v12

    move v3, v1

    move v4, v8

    move-object v5, v9

    move-object v6, v10

    move-object v7, v11

    invoke-direct/range {v2 .. v7}, Lorg/checkerframework/org/objectweb/asmx/xml/Processor;-><init>(IILjava/io/InputStream;Ljava/io/OutputStream;Ljavax/xml/transform/Source;)V

    .line 420
    .local v2, "m":Lorg/checkerframework/org/objectweb/asmx/xml/Processor;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    .line 421
    .local v3, "l1":J
    invoke-virtual {v2}, Lorg/checkerframework/org/objectweb/asmx/xml/Processor;->process()I

    move-result v5

    .line 422
    .local v5, "n":I
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    .line 423
    .local v6, "l2":J
    sget-object v12, Ljava/lang/System;->err:Ljava/io/PrintStream;

    invoke-virtual {v12, v5}, Ljava/io/PrintStream;->println(I)V

    .line 424
    sget-object v12, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, ""

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    sub-long v14, v6, v3

    invoke-virtual {v13, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, "ms  "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const/high16 v14, 0x447a0000    # 1000.0f

    int-to-float v15, v5

    mul-float/2addr v15, v14

    move v14, v1

    .end local v1    # "inRepresentation":I
    .local v14, "inRepresentation":I
    sub-long v0, v6, v3

    long-to-float v0, v0

    div-float/2addr v15, v0

    invoke-virtual {v13, v15}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " resources/sec"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v12, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 426
    return-void

    .line 409
    .end local v2    # "m":Lorg/checkerframework/org/objectweb/asmx/xml/Processor;
    .end local v3    # "l1":J
    .end local v5    # "n":I
    .end local v6    # "l2":J
    .end local v14    # "inRepresentation":I
    .restart local v1    # "inRepresentation":I
    :cond_6
    move v14, v1

    .line 410
    .end local v1    # "inRepresentation":I
    .restart local v14    # "inRepresentation":I
    :goto_2
    invoke-static {}, Lorg/checkerframework/org/objectweb/asmx/xml/Processor;->showUsage()V

    .line 411
    return-void
.end method

.method private processEntry(Ljava/util/zip/ZipInputStream;Ljava/util/zip/ZipEntry;Lorg/checkerframework/org/objectweb/asmx/xml/Processor$ContentHandlerFactory;)V
    .locals 7
    .param p1, "zis"    # Ljava/util/zip/ZipInputStream;
    .param p2, "ze"    # Ljava/util/zip/ZipEntry;
    .param p3, "handlerFactory"    # Lorg/checkerframework/org/objectweb/asmx/xml/Processor$ContentHandlerFactory;

    .line 251
    invoke-interface {p3}, Lorg/checkerframework/org/objectweb/asmx/xml/Processor$ContentHandlerFactory;->createContentHandler()Lorg/xml/sax/ContentHandler;

    move-result-object v0

    .line 261
    .local v0, "handler":Lorg/xml/sax/ContentHandler;
    const/4 v1, 0x0

    :try_start_0
    iget v2, p0, Lorg/checkerframework/org/objectweb/asmx/xml/Processor;->inRepresentation:I

    const/4 v3, 0x3

    const/4 v4, 0x1

    if-ne v2, v3, :cond_0

    move v3, v4

    goto :goto_0

    :cond_0
    move v3, v1

    .line 262
    .local v3, "singleInputDocument":Z
    :goto_0
    if-ne v2, v4, :cond_1

    .line 264
    new-instance v2, Lorg/checkerframework/org/objectweb/asmx/ClassReader;

    invoke-direct {p0, p1, p2}, Lorg/checkerframework/org/objectweb/asmx/xml/Processor;->readEntry(Ljava/util/zip/ZipInputStream;Ljava/util/zip/ZipEntry;)[B

    move-result-object v4

    invoke-direct {v2, v4}, Lorg/checkerframework/org/objectweb/asmx/ClassReader;-><init>([B)V

    .line 265
    .local v2, "cr":Lorg/checkerframework/org/objectweb/asmx/ClassReader;
    new-instance v4, Lorg/checkerframework/org/objectweb/asmx/xml/SAXClassAdapter;

    invoke-direct {v4, v0, v3}, Lorg/checkerframework/org/objectweb/asmx/xml/SAXClassAdapter;-><init>(Lorg/xml/sax/ContentHandler;Z)V

    invoke-virtual {v2, v4, v1}, Lorg/checkerframework/org/objectweb/asmx/ClassReader;->accept(Lorg/checkerframework/org/objectweb/asmx/ClassVisitor;Z)V

    .line 268
    .end local v2    # "cr":Lorg/checkerframework/org/objectweb/asmx/ClassReader;
    goto :goto_2

    .line 269
    :cond_1
    invoke-static {}, Lorg/xml/sax/helpers/XMLReaderFactory;->createXMLReader()Lorg/xml/sax/XMLReader;

    move-result-object v2

    .line 270
    .local v2, "reader":Lorg/xml/sax/XMLReader;
    invoke-interface {v2, v0}, Lorg/xml/sax/XMLReader;->setContentHandler(Lorg/xml/sax/ContentHandler;)V

    .line 271
    new-instance v4, Lorg/xml/sax/InputSource;

    if-eqz v3, :cond_2

    new-instance v5, Lorg/checkerframework/org/objectweb/asmx/xml/Processor$ProtectedInputStream;

    const/4 v6, 0x0

    invoke-direct {v5, p1, v6}, Lorg/checkerframework/org/objectweb/asmx/xml/Processor$ProtectedInputStream;-><init>(Ljava/io/InputStream;Lorg/checkerframework/org/objectweb/asmx/xml/Processor$1;)V

    goto :goto_1

    :cond_2
    new-instance v5, Ljava/io/ByteArrayInputStream;

    .line 273
    invoke-direct {p0, p1, p2}, Lorg/checkerframework/org/objectweb/asmx/xml/Processor;->readEntry(Ljava/util/zip/ZipInputStream;Ljava/util/zip/ZipEntry;)[B

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    :goto_1
    invoke-direct {v4, v5}, Lorg/xml/sax/InputSource;-><init>(Ljava/io/InputStream;)V

    .line 271
    invoke-interface {v2, v4}, Lorg/xml/sax/XMLReader;->parse(Lorg/xml/sax/InputSource;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 279
    .end local v2    # "reader":Lorg/xml/sax/XMLReader;
    .end local v3    # "singleInputDocument":Z
    :goto_2
    goto :goto_3

    .line 276
    :catch_0
    move-exception v2

    .line 277
    .local v2, "ex":Ljava/lang/Exception;
    invoke-virtual {p2}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3, v1}, Lorg/checkerframework/org/objectweb/asmx/xml/Processor;->update(Ljava/lang/Object;I)V

    .line 278
    invoke-virtual {p0, v2, v1}, Lorg/checkerframework/org/objectweb/asmx/xml/Processor;->update(Ljava/lang/Object;I)V

    .line 280
    .end local v2    # "ex":Ljava/lang/Exception;
    :goto_3
    return-void
.end method

.method private readEntry(Ljava/util/zip/ZipInputStream;Ljava/util/zip/ZipEntry;)[B
    .locals 7
    .param p1, "zis"    # Ljava/util/zip/ZipInputStream;
    .param p2, "ze"    # Ljava/util/zip/ZipEntry;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 339
    invoke-virtual {p2}, Ljava/util/zip/ZipEntry;->getSize()J

    move-result-wide v0

    .line 340
    .local v0, "size":J
    const-wide/16 v2, -0x1

    cmp-long v2, v0, v2

    if-lez v2, :cond_1

    .line 341
    long-to-int v2, v0

    new-array v2, v2, [B

    .line 342
    .local v2, "buff":[B
    const/4 v3, 0x0

    .line 344
    .local v3, "k":I
    :goto_0
    array-length v4, v2

    sub-int/2addr v4, v3

    invoke-virtual {p1, v2, v3, v4}, Ljava/util/zip/ZipInputStream;->read([BII)I

    move-result v4

    move v5, v4

    .local v5, "n":I
    if-lez v4, :cond_0

    .line 345
    add-int/2addr v3, v5

    goto :goto_0

    .line 347
    :cond_0
    return-object v2

    .line 350
    .end local v2    # "buff":[B
    .end local v3    # "k":I
    .end local v5    # "n":I
    :cond_1
    new-instance v2, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v2}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 351
    .local v2, "bos":Ljava/io/ByteArrayOutputStream;
    const/16 v3, 0x1000

    new-array v3, v3, [B

    .line 353
    .local v3, "buff":[B
    :goto_1
    invoke-virtual {p1, v3}, Ljava/util/zip/ZipInputStream;->read([B)I

    move-result v4

    move v5, v4

    .local v5, "i":I
    const/4 v6, -0x1

    if-eq v4, v6, :cond_2

    .line 354
    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4, v5}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    goto :goto_1

    .line 356
    :cond_2
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v4

    return-object v4
.end method

.method private static showUsage()V
    .locals 2

    .line 440
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v1, "Usage: Main <in format> <out format> [-in <input jar>] [-out <output jar>] [-xslt <xslt file>]"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 441
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v1, "  when -in or -out is omitted sysin and sysout would be used"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 442
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v1, "  <in format> and <out format> - code | xml | singlexml"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 443
    return-void
.end method


# virtual methods
.method public process()I
    .locals 19
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;,
            Ljava/io/IOException;,
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .line 131
    move-object/from16 v0, p0

    new-instance v1, Ljava/util/zip/ZipInputStream;

    iget-object v2, v0, Lorg/checkerframework/org/objectweb/asmx/xml/Processor;->input:Ljava/io/InputStream;

    invoke-direct {v1, v2}, Ljava/util/zip/ZipInputStream;-><init>(Ljava/io/InputStream;)V

    .line 132
    .local v1, "zis":Ljava/util/zip/ZipInputStream;
    new-instance v2, Ljava/util/zip/ZipOutputStream;

    iget-object v3, v0, Lorg/checkerframework/org/objectweb/asmx/xml/Processor;->output:Ljava/io/OutputStream;

    invoke-direct {v2, v3}, Ljava/util/zip/ZipOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 133
    .local v2, "zos":Ljava/util/zip/ZipOutputStream;
    new-instance v3, Ljava/io/OutputStreamWriter;

    invoke-direct {v3, v2}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;)V

    .line 135
    .local v3, "osw":Ljava/io/OutputStreamWriter;
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v4

    .line 136
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/Thread;->setContextClassLoader(Ljava/lang/ClassLoader;)V

    .line 138
    invoke-static {}, Ljavax/xml/transform/TransformerFactory;->newInstance()Ljavax/xml/transform/TransformerFactory;

    move-result-object v4

    .line 139
    .local v4, "tf":Ljavax/xml/transform/TransformerFactory;
    const-string v5, "http://javax.xml.transform.sax.SAXSource/feature"

    invoke-virtual {v4, v5}, Ljavax/xml/transform/TransformerFactory;->getFeature(Ljava/lang/String;)Z

    move-result v5

    const/4 v6, 0x0

    if-eqz v5, :cond_8

    .line 140
    const-string v5, "http://javax.xml.transform.sax.SAXResult/feature"

    invoke-virtual {v4, v5}, Ljavax/xml/transform/TransformerFactory;->getFeature(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_0

    move-object/from16 v17, v3

    move-object/from16 v18, v4

    goto/16 :goto_4

    .line 143
    :cond_0
    move-object v5, v4

    check-cast v5, Ljavax/xml/transform/sax/SAXTransformerFactory;

    .line 144
    .local v5, "saxtf":Ljavax/xml/transform/sax/SAXTransformerFactory;
    const/4 v7, 0x0

    .line 145
    .local v7, "templates":Ljavax/xml/transform/Templates;
    iget-object v8, v0, Lorg/checkerframework/org/objectweb/asmx/xml/Processor;->xslt:Ljavax/xml/transform/Source;

    if-eqz v8, :cond_1

    .line 146
    invoke-virtual {v5, v8}, Ljavax/xml/transform/sax/SAXTransformerFactory;->newTemplates(Ljavax/xml/transform/Source;)Ljavax/xml/transform/Templates;

    move-result-object v7

    .line 152
    :cond_1
    invoke-direct {v0, v2}, Lorg/checkerframework/org/objectweb/asmx/xml/Processor;->getEntryElement(Ljava/util/zip/ZipOutputStream;)Lorg/checkerframework/org/objectweb/asmx/xml/Processor$EntryElement;

    move-result-object v8

    .line 154
    .local v8, "entryElement":Lorg/checkerframework/org/objectweb/asmx/xml/Processor$EntryElement;
    const/4 v9, 0x0

    .line 155
    .local v9, "outDocHandler":Lorg/xml/sax/ContentHandler;
    iget v10, v0, Lorg/checkerframework/org/objectweb/asmx/xml/Processor;->outRepresentation:I

    packed-switch v10, :pswitch_data_0

    goto :goto_0

    .line 171
    :pswitch_0
    new-instance v10, Ljava/util/zip/ZipEntry;

    const-string v11, "classes.xml"

    invoke-direct {v10, v11}, Ljava/util/zip/ZipEntry;-><init>(Ljava/lang/String;)V

    .line 172
    .local v10, "outputEntry":Ljava/util/zip/ZipEntry;
    invoke-virtual {v2, v10}, Ljava/util/zip/ZipOutputStream;->putNextEntry(Ljava/util/zip/ZipEntry;)V

    .line 173
    new-instance v11, Lorg/checkerframework/org/objectweb/asmx/xml/Processor$SAXWriter;

    invoke-direct {v11, v3, v6}, Lorg/checkerframework/org/objectweb/asmx/xml/Processor$SAXWriter;-><init>(Ljava/io/Writer;Z)V

    move-object v9, v11

    goto :goto_0

    .line 164
    .end local v10    # "outputEntry":Ljava/util/zip/ZipEntry;
    :pswitch_1
    new-instance v6, Lorg/checkerframework/org/objectweb/asmx/xml/Processor$OutputSlicingHandler;

    new-instance v10, Lorg/checkerframework/org/objectweb/asmx/xml/Processor$SAXWriterFactory;

    const/4 v11, 0x1

    invoke-direct {v10, v3, v11}, Lorg/checkerframework/org/objectweb/asmx/xml/Processor$SAXWriterFactory;-><init>(Ljava/io/Writer;Z)V

    invoke-direct {v6, v10, v8, v11}, Lorg/checkerframework/org/objectweb/asmx/xml/Processor$OutputSlicingHandler;-><init>(Lorg/checkerframework/org/objectweb/asmx/xml/Processor$ContentHandlerFactory;Lorg/checkerframework/org/objectweb/asmx/xml/Processor$EntryElement;Z)V

    move-object v9, v6

    .line 168
    goto :goto_0

    .line 157
    :pswitch_2
    new-instance v10, Lorg/checkerframework/org/objectweb/asmx/xml/Processor$OutputSlicingHandler;

    new-instance v11, Lorg/checkerframework/org/objectweb/asmx/xml/Processor$ASMContentHandlerFactory;

    iget-boolean v12, v0, Lorg/checkerframework/org/objectweb/asmx/xml/Processor;->computeMax:Z

    invoke-direct {v11, v2, v12}, Lorg/checkerframework/org/objectweb/asmx/xml/Processor$ASMContentHandlerFactory;-><init>(Ljava/io/OutputStream;Z)V

    invoke-direct {v10, v11, v8, v6}, Lorg/checkerframework/org/objectweb/asmx/xml/Processor$OutputSlicingHandler;-><init>(Lorg/checkerframework/org/objectweb/asmx/xml/Processor$ContentHandlerFactory;Lorg/checkerframework/org/objectweb/asmx/xml/Processor$EntryElement;Z)V

    move-object v9, v10

    .line 161
    nop

    .line 180
    :goto_0
    const/4 v6, 0x0

    .line 181
    .local v6, "inDocHandler":Lorg/xml/sax/ContentHandler;
    if-nez v7, :cond_2

    .line 182
    move-object v6, v9

    goto :goto_1

    .line 184
    :cond_2
    new-instance v10, Lorg/checkerframework/org/objectweb/asmx/xml/Processor$InputSlicingHandler;

    new-instance v11, Lorg/checkerframework/org/objectweb/asmx/xml/Processor$TransformerHandlerFactory;

    invoke-direct {v11, v5, v7, v9}, Lorg/checkerframework/org/objectweb/asmx/xml/Processor$TransformerHandlerFactory;-><init>(Ljavax/xml/transform/sax/SAXTransformerFactory;Ljavax/xml/transform/Templates;Lorg/xml/sax/ContentHandler;)V

    const-string v12, "class"

    invoke-direct {v10, v12, v9, v11}, Lorg/checkerframework/org/objectweb/asmx/xml/Processor$InputSlicingHandler;-><init>(Ljava/lang/String;Lorg/xml/sax/ContentHandler;Lorg/checkerframework/org/objectweb/asmx/xml/Processor$ContentHandlerFactory;)V

    move-object v6, v10

    .line 190
    :goto_1
    new-instance v10, Lorg/checkerframework/org/objectweb/asmx/xml/Processor$SubdocumentHandlerFactory;

    invoke-direct {v10, v6}, Lorg/checkerframework/org/objectweb/asmx/xml/Processor$SubdocumentHandlerFactory;-><init>(Lorg/xml/sax/ContentHandler;)V

    .line 192
    .local v10, "inDocHandlerFactory":Lorg/checkerframework/org/objectweb/asmx/xml/Processor$ContentHandlerFactory;
    const-string v11, ""

    const/4 v12, 0x3

    const-string v13, "classes"

    if-eqz v6, :cond_3

    iget v14, v0, Lorg/checkerframework/org/objectweb/asmx/xml/Processor;->inRepresentation:I

    if-eq v14, v12, :cond_3

    .line 193
    invoke-interface {v6}, Lorg/xml/sax/ContentHandler;->startDocument()V

    .line 194
    new-instance v14, Lorg/xml/sax/helpers/AttributesImpl;

    invoke-direct {v14}, Lorg/xml/sax/helpers/AttributesImpl;-><init>()V

    invoke-interface {v6, v11, v13, v13, v14}, Lorg/xml/sax/ContentHandler;->startElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)V

    .line 200
    :cond_3
    const/4 v14, 0x0

    .line 201
    .local v14, "i":I
    const/4 v15, 0x0

    .line 202
    .local v15, "ze":Ljava/util/zip/ZipEntry;
    :goto_2
    invoke-virtual {v1}, Ljava/util/zip/ZipInputStream;->getNextEntry()Ljava/util/zip/ZipEntry;

    move-result-object v16

    move-object/from16 v15, v16

    if-eqz v16, :cond_5

    .line 203
    invoke-virtual {v15}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v12

    move-object/from16 v17, v3

    .end local v3    # "osw":Ljava/io/OutputStreamWriter;
    .local v17, "osw":Ljava/io/OutputStreamWriter;
    iget v3, v0, Lorg/checkerframework/org/objectweb/asmx/xml/Processor;->n:I

    move-object/from16 v18, v4

    .end local v4    # "tf":Ljavax/xml/transform/TransformerFactory;
    .local v18, "tf":Ljavax/xml/transform/TransformerFactory;
    add-int/lit8 v4, v3, 0x1

    iput v4, v0, Lorg/checkerframework/org/objectweb/asmx/xml/Processor;->n:I

    invoke-virtual {v0, v12, v3}, Lorg/checkerframework/org/objectweb/asmx/xml/Processor;->update(Ljava/lang/Object;I)V

    .line 204
    invoke-direct {v0, v15}, Lorg/checkerframework/org/objectweb/asmx/xml/Processor;->isClassEntry(Ljava/util/zip/ZipEntry;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 205
    invoke-direct {v0, v1, v15, v10}, Lorg/checkerframework/org/objectweb/asmx/xml/Processor;->processEntry(Ljava/util/zip/ZipInputStream;Ljava/util/zip/ZipEntry;Lorg/checkerframework/org/objectweb/asmx/xml/Processor$ContentHandlerFactory;)V

    goto :goto_3

    .line 207
    :cond_4
    invoke-direct {v0, v15}, Lorg/checkerframework/org/objectweb/asmx/xml/Processor;->getName(Ljava/util/zip/ZipEntry;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v8, v3}, Lorg/checkerframework/org/objectweb/asmx/xml/Processor$EntryElement;->openEntry(Ljava/lang/String;)Ljava/io/OutputStream;

    move-result-object v3

    .line 208
    .local v3, "os":Ljava/io/OutputStream;
    invoke-direct {v0, v1, v3}, Lorg/checkerframework/org/objectweb/asmx/xml/Processor;->copyEntry(Ljava/io/InputStream;Ljava/io/OutputStream;)V

    .line 209
    invoke-interface {v8}, Lorg/checkerframework/org/objectweb/asmx/xml/Processor$EntryElement;->closeEntry()V

    .line 212
    .end local v3    # "os":Ljava/io/OutputStream;
    :goto_3
    add-int/lit8 v14, v14, 0x1

    move-object/from16 v3, v17

    move-object/from16 v4, v18

    const/4 v12, 0x3

    goto :goto_2

    .line 215
    .end local v17    # "osw":Ljava/io/OutputStreamWriter;
    .end local v18    # "tf":Ljavax/xml/transform/TransformerFactory;
    .local v3, "osw":Ljava/io/OutputStreamWriter;
    .restart local v4    # "tf":Ljavax/xml/transform/TransformerFactory;
    :cond_5
    move-object/from16 v17, v3

    move-object/from16 v18, v4

    .end local v3    # "osw":Ljava/io/OutputStreamWriter;
    .end local v4    # "tf":Ljavax/xml/transform/TransformerFactory;
    .restart local v17    # "osw":Ljava/io/OutputStreamWriter;
    .restart local v18    # "tf":Ljavax/xml/transform/TransformerFactory;
    if-eqz v6, :cond_6

    iget v3, v0, Lorg/checkerframework/org/objectweb/asmx/xml/Processor;->inRepresentation:I

    const/4 v4, 0x3

    if-eq v3, v4, :cond_6

    .line 216
    invoke-interface {v6, v11, v13, v13}, Lorg/xml/sax/ContentHandler;->endElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 217
    invoke-interface {v6}, Lorg/xml/sax/ContentHandler;->endDocument()V

    .line 220
    :cond_6
    iget v3, v0, Lorg/checkerframework/org/objectweb/asmx/xml/Processor;->outRepresentation:I

    const/4 v4, 0x3

    if-ne v3, v4, :cond_7

    .line 221
    invoke-virtual {v2}, Ljava/util/zip/ZipOutputStream;->closeEntry()V

    .line 223
    :cond_7
    invoke-virtual {v2}, Ljava/util/zip/ZipOutputStream;->flush()V

    .line 224
    invoke-virtual {v2}, Ljava/util/zip/ZipOutputStream;->close()V

    .line 226
    return v14

    .line 139
    .end local v5    # "saxtf":Ljavax/xml/transform/sax/SAXTransformerFactory;
    .end local v6    # "inDocHandler":Lorg/xml/sax/ContentHandler;
    .end local v7    # "templates":Ljavax/xml/transform/Templates;
    .end local v8    # "entryElement":Lorg/checkerframework/org/objectweb/asmx/xml/Processor$EntryElement;
    .end local v9    # "outDocHandler":Lorg/xml/sax/ContentHandler;
    .end local v10    # "inDocHandlerFactory":Lorg/checkerframework/org/objectweb/asmx/xml/Processor$ContentHandlerFactory;
    .end local v14    # "i":I
    .end local v15    # "ze":Ljava/util/zip/ZipEntry;
    .end local v17    # "osw":Ljava/io/OutputStreamWriter;
    .end local v18    # "tf":Ljavax/xml/transform/TransformerFactory;
    .restart local v3    # "osw":Ljava/io/OutputStreamWriter;
    .restart local v4    # "tf":Ljavax/xml/transform/TransformerFactory;
    :cond_8
    move-object/from16 v17, v3

    move-object/from16 v18, v4

    .line 141
    .end local v3    # "osw":Ljava/io/OutputStreamWriter;
    .end local v4    # "tf":Ljavax/xml/transform/TransformerFactory;
    .restart local v17    # "osw":Ljava/io/OutputStreamWriter;
    .restart local v18    # "tf":Ljavax/xml/transform/TransformerFactory;
    :goto_4
    return v6

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method protected update(Ljava/lang/Object;I)V
    .locals 3
    .param p1, "arg"    # Ljava/lang/Object;
    .param p2, "n"    # I

    .line 365
    instance-of v0, p1, Ljava/lang/Throwable;

    if-eqz v0, :cond_0

    .line 366
    move-object v0, p1

    check-cast v0, Ljava/lang/Throwable;

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0

    .line 368
    :cond_0
    rem-int/lit8 v0, p2, 0x64

    if-nez v0, :cond_1

    .line 369
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 372
    :cond_1
    :goto_0
    return-void
.end method
