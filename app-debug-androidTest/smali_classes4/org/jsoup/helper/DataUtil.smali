.class public final Lorg/jsoup/helper/DataUtil;
.super Ljava/lang/Object;
.source "DataUtil.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/jsoup/helper/DataUtil$BomCharset;
    }
.end annotation


# static fields
.field static final boundaryLength:I = 0x20

.field static final bufferSize:I = 0x8000

.field private static final charsetPattern:Ljava/util/regex/Pattern;

.field static final defaultCharset:Ljava/lang/String; = "UTF-8"

.field private static final firstReadBufferSize:I = 0x1400

.field private static final mimeBoundaryChars:[C


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 35
    const-string v0, "(?i)\\bcharset=\\s*(?:[\"\'])?([^\\s,;\"\']*)"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lorg/jsoup/helper/DataUtil;->charsetPattern:Ljava/util/regex/Pattern;

    .line 39
    nop

    .line 40
    const-string v0, "-_1234567890abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ"

    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    sput-object v0, Lorg/jsoup/helper/DataUtil;->mimeBoundaryChars:[C

    .line 39
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static crossStreams(Ljava/io/InputStream;Ljava/io/OutputStream;)V
    .locals 4
    .param p0, "in"    # Ljava/io/InputStream;
    .param p1, "out"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 89
    const v0, 0x8000

    new-array v0, v0, [B

    .line 91
    .local v0, "buffer":[B
    :goto_0
    invoke-virtual {p0, v0}, Ljava/io/InputStream;->read([B)I

    move-result v1

    move v2, v1

    .local v2, "len":I
    const/4 v3, -0x1

    if-eq v1, v3, :cond_0

    .line 92
    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1, v2}, Ljava/io/OutputStream;->write([BII)V

    goto :goto_0

    .line 94
    :cond_0
    return-void
.end method

.method private static detectCharsetFromBom(Ljava/nio/ByteBuffer;)Lorg/jsoup/helper/DataUtil$BomCharset;
    .locals 9
    .param p0, "byteData"    # Ljava/nio/ByteBuffer;

    .line 247
    move-object v0, p0

    .line 248
    .local v0, "buffer":Ljava/nio/Buffer;
    invoke-virtual {v0}, Ljava/nio/Buffer;->mark()Ljava/nio/Buffer;

    .line 249
    const/4 v1, 0x4

    new-array v1, v1, [B

    .line 250
    .local v1, "bom":[B
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v2

    array-length v3, v1

    if-lt v2, v3, :cond_0

    .line 251
    invoke-virtual {p0, v1}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 252
    invoke-virtual {v0}, Ljava/nio/Buffer;->rewind()Ljava/nio/Buffer;

    .line 254
    :cond_0
    const/4 v2, 0x0

    aget-byte v3, v1, v2

    const/4 v4, 0x3

    const/4 v5, 0x2

    const/4 v6, -0x2

    const/4 v7, -0x1

    const/4 v8, 0x1

    if-nez v3, :cond_1

    aget-byte v3, v1, v8

    if-nez v3, :cond_1

    aget-byte v3, v1, v5

    if-ne v3, v6, :cond_1

    aget-byte v3, v1, v4

    if-eq v3, v7, :cond_2

    :cond_1
    aget-byte v3, v1, v2

    if-ne v3, v7, :cond_3

    aget-byte v3, v1, v8

    if-ne v3, v6, :cond_3

    aget-byte v3, v1, v5

    if-nez v3, :cond_3

    aget-byte v3, v1, v4

    if-nez v3, :cond_3

    .line 256
    :cond_2
    new-instance v3, Lorg/jsoup/helper/DataUtil$BomCharset;

    const-string v4, "UTF-32"

    invoke-direct {v3, v4, v2}, Lorg/jsoup/helper/DataUtil$BomCharset;-><init>(Ljava/lang/String;Z)V

    return-object v3

    .line 257
    :cond_3
    aget-byte v3, v1, v2

    if-ne v3, v6, :cond_4

    aget-byte v3, v1, v8

    if-eq v3, v7, :cond_5

    :cond_4
    aget-byte v3, v1, v2

    if-ne v3, v7, :cond_6

    aget-byte v3, v1, v8

    if-ne v3, v6, :cond_6

    .line 259
    :cond_5
    new-instance v3, Lorg/jsoup/helper/DataUtil$BomCharset;

    const-string v4, "UTF-16"

    invoke-direct {v3, v4, v2}, Lorg/jsoup/helper/DataUtil$BomCharset;-><init>(Ljava/lang/String;Z)V

    return-object v3

    .line 260
    :cond_6
    aget-byte v2, v1, v2

    const/16 v3, -0x11

    if-ne v2, v3, :cond_7

    aget-byte v2, v1, v8

    const/16 v3, -0x45

    if-ne v2, v3, :cond_7

    aget-byte v2, v1, v5

    const/16 v3, -0x41

    if-ne v2, v3, :cond_7

    .line 261
    new-instance v2, Lorg/jsoup/helper/DataUtil$BomCharset;

    const-string v3, "UTF-8"

    invoke-direct {v2, v3, v8}, Lorg/jsoup/helper/DataUtil$BomCharset;-><init>(Ljava/lang/String;Z)V

    return-object v2

    .line 264
    :cond_7
    const/4 v2, 0x0

    return-object v2
.end method

.method static emptyByteBuffer()Ljava/nio/ByteBuffer;
    .locals 1

    .line 201
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    return-object v0
.end method

.method static getCharsetFromContentType(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p0, "contentType"    # Ljava/lang/String;

    .line 211
    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    .line 212
    :cond_0
    sget-object v1, Lorg/jsoup/helper/DataUtil;->charsetPattern:Ljava/util/regex/Pattern;

    invoke-virtual {v1, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    .line 213
    .local v1, "m":Ljava/util/regex/Matcher;
    invoke-virtual {v1}, Ljava/util/regex/Matcher;->find()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 214
    const/4 v0, 0x1

    invoke-virtual {v1, v0}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 215
    .local v0, "charset":Ljava/lang/String;
    const-string v2, "charset="

    const-string v3, ""

    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 216
    invoke-static {v0}, Lorg/jsoup/helper/DataUtil;->validateCharset(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 218
    .end local v0    # "charset":Ljava/lang/String;
    :cond_1
    return-object v0
.end method

.method public static load(Ljava/io/File;Ljava/lang/String;Ljava/lang/String;)Lorg/jsoup/nodes/Document;
    .locals 2
    .param p0, "in"    # Ljava/io/File;
    .param p1, "charsetName"    # Ljava/lang/String;
    .param p2, "baseUri"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 54
    new-instance v0, Ljava/io/FileInputStream;

    invoke-direct {v0, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-static {}, Lorg/jsoup/parser/Parser;->htmlParser()Lorg/jsoup/parser/Parser;

    move-result-object v1

    invoke-static {v0, p1, p2, v1}, Lorg/jsoup/helper/DataUtil;->parseInputStream(Ljava/io/InputStream;Ljava/lang/String;Ljava/lang/String;Lorg/jsoup/parser/Parser;)Lorg/jsoup/nodes/Document;

    move-result-object v0

    return-object v0
.end method

.method public static load(Ljava/io/InputStream;Ljava/lang/String;Ljava/lang/String;)Lorg/jsoup/nodes/Document;
    .locals 1
    .param p0, "in"    # Ljava/io/InputStream;
    .param p1, "charsetName"    # Ljava/lang/String;
    .param p2, "baseUri"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 66
    invoke-static {}, Lorg/jsoup/parser/Parser;->htmlParser()Lorg/jsoup/parser/Parser;

    move-result-object v0

    invoke-static {p0, p1, p2, v0}, Lorg/jsoup/helper/DataUtil;->parseInputStream(Ljava/io/InputStream;Ljava/lang/String;Ljava/lang/String;Lorg/jsoup/parser/Parser;)Lorg/jsoup/nodes/Document;

    move-result-object v0

    return-object v0
.end method

.method public static load(Ljava/io/InputStream;Ljava/lang/String;Ljava/lang/String;Lorg/jsoup/parser/Parser;)Lorg/jsoup/nodes/Document;
    .locals 1
    .param p0, "in"    # Ljava/io/InputStream;
    .param p1, "charsetName"    # Ljava/lang/String;
    .param p2, "baseUri"    # Ljava/lang/String;
    .param p3, "parser"    # Lorg/jsoup/parser/Parser;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 79
    invoke-static {p0, p1, p2, p3}, Lorg/jsoup/helper/DataUtil;->parseInputStream(Ljava/io/InputStream;Ljava/lang/String;Ljava/lang/String;Lorg/jsoup/parser/Parser;)Lorg/jsoup/nodes/Document;

    move-result-object v0

    return-object v0
.end method

.method static mimeBoundary()Ljava/lang/String;
    .locals 5

    .line 238
    invoke-static {}, Lorg/jsoup/internal/StringUtil;->borrowBuilder()Ljava/lang/StringBuilder;

    move-result-object v0

    .line 239
    .local v0, "mime":Ljava/lang/StringBuilder;
    new-instance v1, Ljava/util/Random;

    invoke-direct {v1}, Ljava/util/Random;-><init>()V

    .line 240
    .local v1, "rand":Ljava/util/Random;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    const/16 v3, 0x20

    if-ge v2, v3, :cond_0

    .line 241
    sget-object v3, Lorg/jsoup/helper/DataUtil;->mimeBoundaryChars:[C

    array-length v4, v3

    invoke-virtual {v1, v4}, Ljava/util/Random;->nextInt(I)I

    move-result v4

    aget-char v3, v3, v4

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 240
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 243
    .end local v2    # "i":I
    :cond_0
    invoke-static {v0}, Lorg/jsoup/internal/StringUtil;->releaseBuilder(Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method static parseInputStream(Ljava/io/InputStream;Ljava/lang/String;Ljava/lang/String;Lorg/jsoup/parser/Parser;)Lorg/jsoup/nodes/Document;
    .locals 18
    .param p0, "input"    # Ljava/io/InputStream;
    .param p1, "charsetName"    # Ljava/lang/String;
    .param p2, "baseUri"    # Ljava/lang/String;
    .param p3, "parser"    # Lorg/jsoup/parser/Parser;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 97
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    if-nez v0, :cond_0

    .line 98
    new-instance v3, Lorg/jsoup/nodes/Document;

    invoke-direct {v3, v1}, Lorg/jsoup/nodes/Document;-><init>(Ljava/lang/String;)V

    return-object v3

    .line 99
    :cond_0
    const v3, 0x8000

    const/4 v4, 0x0

    invoke-static {v0, v3, v4}, Lorg/jsoup/internal/ConstrainableInputStream;->wrap(Ljava/io/InputStream;II)Lorg/jsoup/internal/ConstrainableInputStream;

    move-result-object v5

    .line 101
    .end local p0    # "input":Ljava/io/InputStream;
    .local v5, "input":Ljava/io/InputStream;
    const/4 v6, 0x0

    .line 104
    .local v6, "doc":Lorg/jsoup/nodes/Document;
    invoke-virtual {v5, v3}, Ljava/io/InputStream;->mark(I)V

    .line 105
    const/16 v0, 0x13ff

    invoke-static {v5, v0}, Lorg/jsoup/helper/DataUtil;->readToByteBuffer(Ljava/io/InputStream;I)Ljava/nio/ByteBuffer;

    move-result-object v7

    .line 106
    .local v7, "firstBytes":Ljava/nio/ByteBuffer;
    invoke-virtual {v5}, Ljava/io/InputStream;->read()I

    move-result v0

    const/4 v8, -0x1

    if-ne v0, v8, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    move v0, v4

    :goto_0
    move v8, v0

    .line 107
    .local v8, "fullyRead":Z
    invoke-virtual {v5}, Ljava/io/InputStream;->reset()V

    .line 110
    invoke-static {v7}, Lorg/jsoup/helper/DataUtil;->detectCharsetFromBom(Ljava/nio/ByteBuffer;)Lorg/jsoup/helper/DataUtil$BomCharset;

    move-result-object v10

    .line 111
    .local v10, "bomCharset":Lorg/jsoup/helper/DataUtil$BomCharset;
    if-eqz v10, :cond_2

    .line 112
    invoke-static {v10}, Lorg/jsoup/helper/DataUtil$BomCharset;->access$000(Lorg/jsoup/helper/DataUtil$BomCharset;)Ljava/lang/String;

    move-result-object v0

    move-object v11, v0

    .end local p1    # "charsetName":Ljava/lang/String;
    .local v0, "charsetName":Ljava/lang/String;
    goto :goto_1

    .line 111
    .end local v0    # "charsetName":Ljava/lang/String;
    .restart local p1    # "charsetName":Ljava/lang/String;
    :cond_2
    move-object/from16 v11, p1

    .line 114
    .end local p1    # "charsetName":Ljava/lang/String;
    .local v11, "charsetName":Ljava/lang/String;
    :goto_1
    const-string v0, "UTF-8"

    if-nez v11, :cond_c

    .line 115
    invoke-static {v0}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v12

    invoke-virtual {v12, v7}, Ljava/nio/charset/Charset;->decode(Ljava/nio/ByteBuffer;)Ljava/nio/CharBuffer;

    move-result-object v12

    invoke-virtual {v12}, Ljava/nio/CharBuffer;->toString()Ljava/lang/String;

    move-result-object v12

    .line 117
    .local v12, "docData":Ljava/lang/String;
    :try_start_0
    invoke-virtual {v2, v12, v1}, Lorg/jsoup/parser/Parser;->parseInput(Ljava/lang/String;Ljava/lang/String;)Lorg/jsoup/nodes/Document;

    move-result-object v13
    :try_end_0
    .catch Lorg/jsoup/UncheckedIOException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v6, v13

    .line 120
    nop

    .line 123
    const-string v13, "meta[http-equiv=content-type], meta[charset]"

    invoke-virtual {v6, v13}, Lorg/jsoup/nodes/Document;->select(Ljava/lang/String;)Lorg/jsoup/select/Elements;

    move-result-object v13

    .line 124
    .local v13, "metaElements":Lorg/jsoup/select/Elements;
    const/4 v14, 0x0

    .line 125
    .local v14, "foundCharset":Ljava/lang/String;
    invoke-virtual {v13}, Lorg/jsoup/select/Elements;->iterator()Ljava/util/Iterator;

    move-result-object v15

    :goto_2
    invoke-interface {v15}, Ljava/util/Iterator;->hasNext()Z

    move-result v16

    if-eqz v16, :cond_6

    invoke-interface {v15}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v16

    move-object/from16 v9, v16

    check-cast v9, Lorg/jsoup/nodes/Element;

    .line 126
    .local v9, "meta":Lorg/jsoup/nodes/Element;
    const-string v3, "http-equiv"

    invoke-virtual {v9, v3}, Lorg/jsoup/nodes/Element;->hasAttr(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 127
    const-string v3, "content"

    invoke-virtual {v9, v3}, Lorg/jsoup/nodes/Element;->attr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lorg/jsoup/helper/DataUtil;->getCharsetFromContentType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 128
    :cond_3
    if-nez v14, :cond_4

    const-string v3, "charset"

    invoke-virtual {v9, v3}, Lorg/jsoup/nodes/Element;->hasAttr(Ljava/lang/String;)Z

    move-result v17

    if-eqz v17, :cond_4

    .line 129
    invoke-virtual {v9, v3}, Lorg/jsoup/nodes/Element;->attr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    move-object v14, v3

    .line 130
    :cond_4
    if-eqz v14, :cond_5

    .line 131
    goto :goto_3

    .line 132
    .end local v9    # "meta":Lorg/jsoup/nodes/Element;
    :cond_5
    const v3, 0x8000

    goto :goto_2

    .line 135
    :cond_6
    :goto_3
    if-nez v14, :cond_9

    invoke-virtual {v6}, Lorg/jsoup/nodes/Document;->childNodeSize()I

    move-result v3

    if-lez v3, :cond_9

    .line 136
    invoke-virtual {v6, v4}, Lorg/jsoup/nodes/Document;->childNode(I)Lorg/jsoup/nodes/Node;

    move-result-object v3

    .line 137
    .local v3, "first":Lorg/jsoup/nodes/Node;
    const/4 v9, 0x0

    .line 138
    .local v9, "decl":Lorg/jsoup/nodes/XmlDeclaration;
    instance-of v15, v3, Lorg/jsoup/nodes/XmlDeclaration;

    if-eqz v15, :cond_7

    .line 139
    move-object v9, v3

    check-cast v9, Lorg/jsoup/nodes/XmlDeclaration;

    goto :goto_4

    .line 140
    :cond_7
    instance-of v15, v3, Lorg/jsoup/nodes/Comment;

    if-eqz v15, :cond_8

    .line 141
    move-object v15, v3

    check-cast v15, Lorg/jsoup/nodes/Comment;

    .line 142
    .local v15, "comment":Lorg/jsoup/nodes/Comment;
    invoke-virtual {v15}, Lorg/jsoup/nodes/Comment;->isXmlDeclaration()Z

    move-result v17

    if-eqz v17, :cond_8

    .line 143
    invoke-virtual {v15}, Lorg/jsoup/nodes/Comment;->asXmlDeclaration()Lorg/jsoup/nodes/XmlDeclaration;

    move-result-object v9

    .line 145
    .end local v15    # "comment":Lorg/jsoup/nodes/Comment;
    :cond_8
    :goto_4
    if-eqz v9, :cond_9

    .line 146
    invoke-virtual {v9}, Lorg/jsoup/nodes/XmlDeclaration;->name()Ljava/lang/String;

    move-result-object v15

    const-string v4, "xml"

    invoke-virtual {v15, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_9

    .line 147
    const-string v4, "encoding"

    invoke-virtual {v9, v4}, Lorg/jsoup/nodes/XmlDeclaration;->attr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 150
    .end local v3    # "first":Lorg/jsoup/nodes/Node;
    .end local v9    # "decl":Lorg/jsoup/nodes/XmlDeclaration;
    :cond_9
    invoke-static {v14}, Lorg/jsoup/helper/DataUtil;->validateCharset(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 151
    .end local v14    # "foundCharset":Ljava/lang/String;
    .local v3, "foundCharset":Ljava/lang/String;
    if-eqz v3, :cond_a

    invoke-virtual {v3, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_a

    .line 152
    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    const-string v9, "[\"\']"

    const-string v14, ""

    invoke-virtual {v4, v9, v14}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 153
    move-object v4, v3

    .line 154
    .end local v11    # "charsetName":Ljava/lang/String;
    .local v4, "charsetName":Ljava/lang/String;
    const/4 v6, 0x0

    move-object v11, v4

    goto :goto_5

    .line 155
    .end local v4    # "charsetName":Ljava/lang/String;
    .restart local v11    # "charsetName":Ljava/lang/String;
    :cond_a
    if-nez v8, :cond_b

    .line 156
    const/4 v4, 0x0

    move-object v6, v4

    .line 158
    .end local v3    # "foundCharset":Ljava/lang/String;
    .end local v12    # "docData":Ljava/lang/String;
    .end local v13    # "metaElements":Lorg/jsoup/select/Elements;
    :cond_b
    :goto_5
    goto :goto_6

    .line 118
    .restart local v12    # "docData":Ljava/lang/String;
    :catch_0
    move-exception v0

    move-object v3, v0

    move-object v0, v3

    .line 119
    .local v0, "e":Lorg/jsoup/UncheckedIOException;
    invoke-virtual {v0}, Lorg/jsoup/UncheckedIOException;->ioException()Ljava/io/IOException;

    move-result-object v3

    throw v3

    .line 159
    .end local v0    # "e":Lorg/jsoup/UncheckedIOException;
    .end local v12    # "docData":Ljava/lang/String;
    :cond_c
    const-string v3, "Must set charset arg to character set of file to parse. Set to null to attempt to detect from HTML"

    invoke-static {v11, v3}, Lorg/jsoup/helper/Validate;->notEmpty(Ljava/lang/String;Ljava/lang/String;)V

    .line 161
    :goto_6
    if-nez v6, :cond_10

    .line 162
    if-nez v11, :cond_d

    .line 163
    const-string v11, "UTF-8"

    .line 164
    :cond_d
    new-instance v3, Ljava/io/BufferedReader;

    new-instance v4, Ljava/io/InputStreamReader;

    invoke-direct {v4, v5, v11}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    const v9, 0x8000

    invoke-direct {v3, v4, v9}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;I)V

    .line 165
    .local v3, "reader":Ljava/io/BufferedReader;
    if-eqz v10, :cond_f

    invoke-static {v10}, Lorg/jsoup/helper/DataUtil$BomCharset;->access$100(Lorg/jsoup/helper/DataUtil$BomCharset;)Z

    move-result v4

    if-eqz v4, :cond_f

    .line 166
    const-wide/16 v12, 0x1

    invoke-virtual {v3, v12, v13}, Ljava/io/BufferedReader;->skip(J)J

    move-result-wide v14

    .line 167
    .local v14, "skipped":J
    cmp-long v4, v14, v12

    if-nez v4, :cond_e

    const/4 v4, 0x1

    goto :goto_7

    :cond_e
    const/4 v4, 0x0

    :goto_7
    invoke-static {v4}, Lorg/jsoup/helper/Validate;->isTrue(Z)V

    .line 170
    .end local v14    # "skipped":J
    :cond_f
    :try_start_1
    invoke-virtual {v2, v3, v1}, Lorg/jsoup/parser/Parser;->parseInput(Ljava/io/Reader;Ljava/lang/String;)Lorg/jsoup/nodes/Document;

    move-result-object v4
    :try_end_1
    .catch Lorg/jsoup/UncheckedIOException; {:try_start_1 .. :try_end_1} :catch_1

    move-object v6, v4

    .line 174
    nop

    .line 175
    invoke-static {v11}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v4

    .line 176
    .local v4, "charset":Ljava/nio/charset/Charset;
    invoke-virtual {v6}, Lorg/jsoup/nodes/Document;->outputSettings()Lorg/jsoup/nodes/Document$OutputSettings;

    move-result-object v9

    invoke-virtual {v9, v4}, Lorg/jsoup/nodes/Document$OutputSettings;->charset(Ljava/nio/charset/Charset;)Lorg/jsoup/nodes/Document$OutputSettings;

    .line 177
    invoke-virtual {v4}, Ljava/nio/charset/Charset;->canEncode()Z

    move-result v9

    if-nez v9, :cond_10

    .line 179
    invoke-static {v0}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v0

    invoke-virtual {v6, v0}, Lorg/jsoup/nodes/Document;->charset(Ljava/nio/charset/Charset;)V

    goto :goto_8

    .line 171
    .end local v4    # "charset":Ljava/nio/charset/Charset;
    :catch_1
    move-exception v0

    move-object v4, v0

    move-object v0, v4

    .line 173
    .restart local v0    # "e":Lorg/jsoup/UncheckedIOException;
    invoke-virtual {v0}, Lorg/jsoup/UncheckedIOException;->ioException()Ljava/io/IOException;

    move-result-object v4

    throw v4

    .line 182
    .end local v0    # "e":Lorg/jsoup/UncheckedIOException;
    .end local v3    # "reader":Ljava/io/BufferedReader;
    :cond_10
    :goto_8
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V

    .line 183
    return-object v6
.end method

.method public static readToByteBuffer(Ljava/io/InputStream;I)Ljava/nio/ByteBuffer;
    .locals 2
    .param p0, "inStream"    # Ljava/io/InputStream;
    .param p1, "maxSize"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 195
    if-ltz p1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const-string v1, "maxSize must be 0 (unlimited) or larger"

    invoke-static {v0, v1}, Lorg/jsoup/helper/Validate;->isTrue(ZLjava/lang/String;)V

    .line 196
    const v0, 0x8000

    invoke-static {p0, v0, p1}, Lorg/jsoup/internal/ConstrainableInputStream;->wrap(Ljava/io/InputStream;II)Lorg/jsoup/internal/ConstrainableInputStream;

    move-result-object v0

    .line 197
    .local v0, "input":Lorg/jsoup/internal/ConstrainableInputStream;
    invoke-virtual {v0, p1}, Lorg/jsoup/internal/ConstrainableInputStream;->readToByteBuffer(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    return-object v1
.end method

.method private static validateCharset(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p0, "cs"    # Ljava/lang/String;

    .line 222
    const/4 v0, 0x0

    if-eqz p0, :cond_3

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_0

    goto :goto_1

    .line 223
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    const-string v2, "[\"\']"

    const-string v3, ""

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 225
    :try_start_0
    invoke-static {p0}, Ljava/nio/charset/Charset;->isSupported(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    return-object p0

    .line 226
    :cond_1
    sget-object v1, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {p0, v1}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    move-object p0, v1

    .line 227
    invoke-static {p0}, Ljava/nio/charset/Charset;->isSupported(Ljava/lang/String;)Z

    move-result v1
    :try_end_0
    .catch Ljava/nio/charset/IllegalCharsetNameException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v1, :cond_2

    return-object p0

    .line 230
    :cond_2
    goto :goto_0

    .line 228
    :catch_0
    move-exception v1

    .line 231
    :goto_0
    return-object v0

    .line 222
    :cond_3
    :goto_1
    return-object v0
.end method
