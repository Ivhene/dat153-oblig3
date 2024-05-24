.class public final Lorg/checkerframework/org/objectweb/asmx/xml/SAXClassAdapter;
.super Lorg/checkerframework/org/objectweb/asmx/xml/SAXAdapter;
.source "SAXClassAdapter.java"

# interfaces
.implements Lorg/checkerframework/org/objectweb/asmx/ClassVisitor;


# instance fields
.field private singleDocument:Z


# direct methods
.method public constructor <init>(Lorg/xml/sax/ContentHandler;Z)V
    .locals 0
    .param p1, "h"    # Lorg/xml/sax/ContentHandler;
    .param p2, "singleDocument"    # Z

    .line 65
    invoke-direct {p0, p1}, Lorg/checkerframework/org/objectweb/asmx/xml/SAXAdapter;-><init>(Lorg/xml/sax/ContentHandler;)V

    .line 66
    iput-boolean p2, p0, Lorg/checkerframework/org/objectweb/asmx/xml/SAXClassAdapter;->singleDocument:Z

    .line 67
    if-nez p2, :cond_0

    .line 68
    invoke-virtual {p0}, Lorg/checkerframework/org/objectweb/asmx/xml/SAXClassAdapter;->addDocumentStart()V

    .line 70
    :cond_0
    return-void
.end method

.method static final encode(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p0, "s"    # Ljava/lang/String;

    .line 335
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 336
    .local v0, "sb":Ljava/lang/StringBuffer;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v1, v2, :cond_6

    .line 337
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    .line 338
    .local v2, "c":C
    const/16 v3, 0x5c

    if-ne v2, v3, :cond_0

    .line 339
    const-string v3, "\\\\"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_3

    .line 340
    :cond_0
    const/16 v3, 0x20

    if-lt v2, v3, :cond_2

    const/16 v3, 0x7f

    if-le v2, v3, :cond_1

    goto :goto_1

    .line 351
    :cond_1
    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_3

    .line 341
    :cond_2
    :goto_1
    const-string v3, "\\u"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 342
    const/16 v3, 0x10

    if-ge v2, v3, :cond_3

    .line 343
    const-string v4, "000"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_2

    .line 344
    :cond_3
    const/16 v4, 0x100

    if-ge v2, v4, :cond_4

    .line 345
    const-string v4, "00"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_2

    .line 346
    :cond_4
    const/16 v4, 0x1000

    if-ge v2, v4, :cond_5

    .line 347
    const-string v4, "0"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 349
    :cond_5
    :goto_2
    invoke-static {v2, v3}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 336
    .end local v2    # "c":C
    :goto_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 354
    .end local v1    # "i":I
    :cond_6
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method


# virtual methods
.method public visit(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V
    .locals 14
    .param p1, "version"    # I
    .param p2, "access"    # I
    .param p3, "name"    # Ljava/lang/String;
    .param p4, "signature"    # Ljava/lang/String;
    .param p5, "superName"    # Ljava/lang/String;
    .param p6, "interfaces"    # [Ljava/lang/String;

    .line 122
    move-object v0, p0

    move/from16 v1, p2

    move-object/from16 v2, p6

    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    .line 123
    .local v3, "sb":Ljava/lang/StringBuffer;
    and-int/lit8 v4, v1, 0x1

    if-eqz v4, :cond_0

    .line 124
    const-string v4, "public "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 125
    :cond_0
    and-int/lit8 v4, v1, 0x2

    if-eqz v4, :cond_1

    .line 126
    const-string v4, "private "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 127
    :cond_1
    and-int/lit8 v4, v1, 0x4

    if-eqz v4, :cond_2

    .line 128
    const-string v4, "protected "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 129
    :cond_2
    and-int/lit8 v4, v1, 0x10

    if-eqz v4, :cond_3

    .line 130
    const-string v4, "final "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 131
    :cond_3
    and-int/lit8 v4, v1, 0x20

    if-eqz v4, :cond_4

    .line 132
    const-string v4, "super "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 133
    :cond_4
    and-int/lit16 v4, v1, 0x200

    if-eqz v4, :cond_5

    .line 134
    const-string v4, "interface "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 135
    :cond_5
    and-int/lit16 v4, v1, 0x400

    if-eqz v4, :cond_6

    .line 136
    const-string v4, "abstract "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 137
    :cond_6
    and-int/lit16 v4, v1, 0x1000

    if-eqz v4, :cond_7

    .line 138
    const-string v4, "synthetic "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 139
    :cond_7
    and-int/lit16 v4, v1, 0x2000

    if-eqz v4, :cond_8

    .line 140
    const-string v4, "annotation "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 141
    :cond_8
    and-int/lit16 v4, v1, 0x4000

    if-eqz v4, :cond_9

    .line 142
    const-string v4, "enum "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 143
    :cond_9
    const/high16 v4, 0x20000

    and-int/2addr v4, v1

    if-eqz v4, :cond_a

    .line 144
    const-string v4, "deprecated "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 146
    :cond_a
    new-instance v4, Lorg/xml/sax/helpers/AttributesImpl;

    invoke-direct {v4}, Lorg/xml/sax/helpers/AttributesImpl;-><init>()V

    .line 147
    .local v4, "att":Lorg/xml/sax/helpers/AttributesImpl;
    const-string v6, ""

    const-string v7, "access"

    const-string v8, "access"

    const-string v9, ""

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v10

    move-object v5, v4

    invoke-virtual/range {v5 .. v10}, Lorg/xml/sax/helpers/AttributesImpl;->addAttribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 148
    if-eqz p3, :cond_b

    .line 149
    const-string v6, ""

    const-string v7, "name"

    const-string v8, "name"

    const-string v9, ""

    move-object v5, v4

    move-object/from16 v10, p3

    invoke-virtual/range {v5 .. v10}, Lorg/xml/sax/helpers/AttributesImpl;->addAttribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 150
    :cond_b
    if-eqz p4, :cond_c

    .line 151
    const-string v6, ""

    const-string v7, "signature"

    const-string v8, "signature"

    const-string v9, ""

    .line 155
    invoke-static/range {p4 .. p4}, Lorg/checkerframework/org/objectweb/asmx/xml/SAXClassAdapter;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 151
    move-object v5, v4

    invoke-virtual/range {v5 .. v10}, Lorg/xml/sax/helpers/AttributesImpl;->addAttribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 156
    :cond_c
    if-eqz p5, :cond_d

    .line 157
    const-string v6, ""

    const-string v7, "parent"

    const-string v8, "parent"

    const-string v9, ""

    move-object v5, v4

    move-object/from16 v10, p5

    invoke-virtual/range {v5 .. v10}, Lorg/xml/sax/helpers/AttributesImpl;->addAttribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 158
    :cond_d
    const-string v6, ""

    const-string v7, "major"

    const-string v8, "major"

    const-string v9, ""

    const v5, 0xffff

    and-int/2addr v5, p1

    .line 162
    invoke-static {v5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v10

    .line 158
    move-object v5, v4

    invoke-virtual/range {v5 .. v10}, Lorg/xml/sax/helpers/AttributesImpl;->addAttribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 163
    const-string v6, ""

    const-string v7, "minor"

    const-string v8, "minor"

    const-string v9, ""

    ushr-int/lit8 v5, p1, 0x10

    .line 167
    invoke-static {v5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v10

    .line 163
    move-object v5, v4

    invoke-virtual/range {v5 .. v10}, Lorg/xml/sax/helpers/AttributesImpl;->addAttribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 168
    const-string v5, "class"

    invoke-virtual {p0, v5, v4}, Lorg/checkerframework/org/objectweb/asmx/xml/SAXClassAdapter;->addStart(Ljava/lang/String;Lorg/xml/sax/Attributes;)V

    .line 170
    new-instance v5, Lorg/xml/sax/helpers/AttributesImpl;

    invoke-direct {v5}, Lorg/xml/sax/helpers/AttributesImpl;-><init>()V

    const-string v6, "interfaces"

    invoke-virtual {p0, v6, v5}, Lorg/checkerframework/org/objectweb/asmx/xml/SAXClassAdapter;->addStart(Ljava/lang/String;Lorg/xml/sax/Attributes;)V

    .line 171
    if-eqz v2, :cond_e

    array-length v5, v2

    if-lez v5, :cond_e

    .line 172
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_0
    array-length v7, v2

    if-ge v5, v7, :cond_e

    .line 173
    new-instance v7, Lorg/xml/sax/helpers/AttributesImpl;

    invoke-direct {v7}, Lorg/xml/sax/helpers/AttributesImpl;-><init>()V

    .line 174
    .local v7, "att2":Lorg/xml/sax/helpers/AttributesImpl;
    const-string v9, ""

    const-string v10, "name"

    const-string v11, "name"

    const-string v12, ""

    aget-object v13, v2, v5

    move-object v8, v7

    invoke-virtual/range {v8 .. v13}, Lorg/xml/sax/helpers/AttributesImpl;->addAttribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 175
    const-string v8, "interface"

    invoke-virtual {p0, v8, v7}, Lorg/checkerframework/org/objectweb/asmx/xml/SAXClassAdapter;->addElement(Ljava/lang/String;Lorg/xml/sax/Attributes;)V

    .line 172
    .end local v7    # "att2":Lorg/xml/sax/helpers/AttributesImpl;
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 178
    .end local v5    # "i":I
    :cond_e
    invoke-virtual {p0, v6}, Lorg/checkerframework/org/objectweb/asmx/xml/SAXClassAdapter;->addEnd(Ljava/lang/String;)V

    .line 179
    return-void
.end method

.method public visitAnnotation(Ljava/lang/String;Z)Lorg/checkerframework/org/objectweb/asmx/AnnotationVisitor;
    .locals 7
    .param p1, "desc"    # Ljava/lang/String;
    .param p2, "visible"    # Z

    .line 102
    new-instance v6, Lorg/checkerframework/org/objectweb/asmx/xml/SAXAnnotationAdapter;

    invoke-virtual {p0}, Lorg/checkerframework/org/objectweb/asmx/xml/SAXClassAdapter;->getContentHandler()Lorg/xml/sax/ContentHandler;

    move-result-object v1

    const-string v2, "annotation"

    if-eqz p2, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, -0x1

    :goto_0
    move v3, v0

    const/4 v4, 0x0

    move-object v0, v6

    move-object v5, p1

    invoke-direct/range {v0 .. v5}, Lorg/checkerframework/org/objectweb/asmx/xml/SAXAnnotationAdapter;-><init>(Lorg/xml/sax/ContentHandler;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    return-object v6
.end method

.method public final visitAttribute(Lorg/checkerframework/org/objectweb/asmx/Attribute;)V
    .locals 0
    .param p1, "attr"    # Lorg/checkerframework/org/objectweb/asmx/Attribute;

    .line 99
    return-void
.end method

.method public final visitEnd()V
    .locals 1

    .line 328
    const-string v0, "class"

    invoke-virtual {p0, v0}, Lorg/checkerframework/org/objectweb/asmx/xml/SAXClassAdapter;->addEnd(Ljava/lang/String;)V

    .line 329
    iget-boolean v0, p0, Lorg/checkerframework/org/objectweb/asmx/xml/SAXClassAdapter;->singleDocument:Z

    if-nez v0, :cond_0

    .line 330
    invoke-virtual {p0}, Lorg/checkerframework/org/objectweb/asmx/xml/SAXClassAdapter;->addDocumentEnd()V

    .line 332
    :cond_0
    return-void
.end method

.method public visitField(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)Lorg/checkerframework/org/objectweb/asmx/FieldVisitor;
    .locals 8
    .param p1, "access"    # I
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "desc"    # Ljava/lang/String;
    .param p4, "signature"    # Ljava/lang/String;
    .param p5, "value"    # Ljava/lang/Object;

    .line 188
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 189
    .local v0, "sb":Ljava/lang/StringBuffer;
    and-int/lit8 v1, p1, 0x1

    if-eqz v1, :cond_0

    .line 190
    const-string v1, "public "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 191
    :cond_0
    and-int/lit8 v1, p1, 0x2

    if-eqz v1, :cond_1

    .line 192
    const-string v1, "private "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 193
    :cond_1
    and-int/lit8 v1, p1, 0x4

    if-eqz v1, :cond_2

    .line 194
    const-string v1, "protected "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 195
    :cond_2
    and-int/lit8 v1, p1, 0x8

    if-eqz v1, :cond_3

    .line 196
    const-string v1, "static "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 197
    :cond_3
    and-int/lit8 v1, p1, 0x10

    if-eqz v1, :cond_4

    .line 198
    const-string v1, "final "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 199
    :cond_4
    and-int/lit8 v1, p1, 0x40

    if-eqz v1, :cond_5

    .line 200
    const-string v1, "volatile "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 201
    :cond_5
    and-int/lit16 v1, p1, 0x80

    if-eqz v1, :cond_6

    .line 202
    const-string v1, "transient "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 203
    :cond_6
    and-int/lit16 v1, p1, 0x1000

    if-eqz v1, :cond_7

    .line 204
    const-string v1, "synthetic "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 205
    :cond_7
    and-int/lit16 v1, p1, 0x4000

    if-eqz v1, :cond_8

    .line 206
    const-string v1, "enum "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 207
    :cond_8
    const/high16 v1, 0x20000

    and-int/2addr v1, p1

    if-eqz v1, :cond_9

    .line 208
    const-string v1, "deprecated "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 210
    :cond_9
    new-instance v1, Lorg/xml/sax/helpers/AttributesImpl;

    invoke-direct {v1}, Lorg/xml/sax/helpers/AttributesImpl;-><init>()V

    .line 211
    .local v1, "att":Lorg/xml/sax/helpers/AttributesImpl;
    const-string v3, ""

    const-string v4, "access"

    const-string v5, "access"

    const-string v6, ""

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v7

    move-object v2, v1

    invoke-virtual/range {v2 .. v7}, Lorg/xml/sax/helpers/AttributesImpl;->addAttribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 212
    const-string v3, ""

    const-string v4, "name"

    const-string v5, "name"

    const-string v6, ""

    move-object v7, p2

    invoke-virtual/range {v2 .. v7}, Lorg/xml/sax/helpers/AttributesImpl;->addAttribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 213
    const-string v3, ""

    const-string v4, "desc"

    const-string v5, "desc"

    const-string v6, ""

    move-object v7, p3

    invoke-virtual/range {v2 .. v7}, Lorg/xml/sax/helpers/AttributesImpl;->addAttribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 214
    if-eqz p4, :cond_a

    .line 215
    const-string v3, ""

    const-string v4, "signature"

    const-string v5, "signature"

    const-string v6, ""

    .line 219
    invoke-static {p4}, Lorg/checkerframework/org/objectweb/asmx/xml/SAXClassAdapter;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 215
    move-object v2, v1

    invoke-virtual/range {v2 .. v7}, Lorg/xml/sax/helpers/AttributesImpl;->addAttribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 220
    :cond_a
    if-eqz p5, :cond_b

    .line 221
    const-string v3, ""

    const-string v4, "value"

    const-string v5, "value"

    const-string v6, ""

    invoke-virtual {p5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lorg/checkerframework/org/objectweb/asmx/xml/SAXClassAdapter;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    move-object v2, v1

    invoke-virtual/range {v2 .. v7}, Lorg/xml/sax/helpers/AttributesImpl;->addAttribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 224
    :cond_b
    new-instance v2, Lorg/checkerframework/org/objectweb/asmx/xml/SAXFieldAdapter;

    invoke-virtual {p0}, Lorg/checkerframework/org/objectweb/asmx/xml/SAXClassAdapter;->getContentHandler()Lorg/xml/sax/ContentHandler;

    move-result-object v3

    invoke-direct {v2, v3, v1}, Lorg/checkerframework/org/objectweb/asmx/xml/SAXFieldAdapter;-><init>(Lorg/xml/sax/ContentHandler;Lorg/xml/sax/helpers/AttributesImpl;)V

    return-object v2
.end method

.method public final visitInnerClass(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 8
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "outerName"    # Ljava/lang/String;
    .param p3, "innerName"    # Ljava/lang/String;
    .param p4, "access"    # I

    .line 290
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 291
    .local v0, "sb":Ljava/lang/StringBuffer;
    and-int/lit8 v1, p4, 0x1

    if-eqz v1, :cond_0

    .line 292
    const-string v1, "public "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 293
    :cond_0
    and-int/lit8 v1, p4, 0x2

    if-eqz v1, :cond_1

    .line 294
    const-string v1, "private "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 295
    :cond_1
    and-int/lit8 v1, p4, 0x4

    if-eqz v1, :cond_2

    .line 296
    const-string v1, "protected "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 297
    :cond_2
    and-int/lit8 v1, p4, 0x8

    if-eqz v1, :cond_3

    .line 298
    const-string v1, "static "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 299
    :cond_3
    and-int/lit8 v1, p4, 0x10

    if-eqz v1, :cond_4

    .line 300
    const-string v1, "final "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 301
    :cond_4
    and-int/lit8 v1, p4, 0x20

    if-eqz v1, :cond_5

    .line 302
    const-string v1, "super "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 303
    :cond_5
    and-int/lit16 v1, p4, 0x200

    if-eqz v1, :cond_6

    .line 304
    const-string v1, "interface "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 305
    :cond_6
    and-int/lit16 v1, p4, 0x400

    if-eqz v1, :cond_7

    .line 306
    const-string v1, "abstract "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 307
    :cond_7
    and-int/lit16 v1, p4, 0x1000

    if-eqz v1, :cond_8

    .line 308
    const-string v1, "synthetic "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 309
    :cond_8
    and-int/lit16 v1, p4, 0x2000

    if-eqz v1, :cond_9

    .line 310
    const-string v1, "annotation "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 311
    :cond_9
    and-int/lit16 v1, p4, 0x4000

    if-eqz v1, :cond_a

    .line 312
    const-string v1, "enum "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 313
    :cond_a
    const/high16 v1, 0x20000

    and-int/2addr v1, p4

    if-eqz v1, :cond_b

    .line 314
    const-string v1, "deprecated "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 316
    :cond_b
    new-instance v1, Lorg/xml/sax/helpers/AttributesImpl;

    invoke-direct {v1}, Lorg/xml/sax/helpers/AttributesImpl;-><init>()V

    .line 317
    .local v1, "att":Lorg/xml/sax/helpers/AttributesImpl;
    const-string v3, ""

    const-string v4, "access"

    const-string v5, "access"

    const-string v6, ""

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v7

    move-object v2, v1

    invoke-virtual/range {v2 .. v7}, Lorg/xml/sax/helpers/AttributesImpl;->addAttribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 318
    if-eqz p1, :cond_c

    .line 319
    const-string v3, ""

    const-string v4, "name"

    const-string v5, "name"

    const-string v6, ""

    move-object v2, v1

    move-object v7, p1

    invoke-virtual/range {v2 .. v7}, Lorg/xml/sax/helpers/AttributesImpl;->addAttribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 320
    :cond_c
    if-eqz p2, :cond_d

    .line 321
    const-string v3, ""

    const-string v4, "outerName"

    const-string v5, "outerName"

    const-string v6, ""

    move-object v2, v1

    move-object v7, p2

    invoke-virtual/range {v2 .. v7}, Lorg/xml/sax/helpers/AttributesImpl;->addAttribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 322
    :cond_d
    if-eqz p3, :cond_e

    .line 323
    const-string v3, ""

    const-string v4, "innerName"

    const-string v5, "innerName"

    const-string v6, ""

    move-object v2, v1

    move-object v7, p3

    invoke-virtual/range {v2 .. v7}, Lorg/xml/sax/helpers/AttributesImpl;->addAttribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 324
    :cond_e
    const-string v2, "innerclass"

    invoke-virtual {p0, v2, v1}, Lorg/checkerframework/org/objectweb/asmx/xml/SAXClassAdapter;->addElement(Ljava/lang/String;Lorg/xml/sax/Attributes;)V

    .line 325
    return-void
.end method

.method public visitMethod(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Lorg/checkerframework/org/objectweb/asmx/MethodVisitor;
    .locals 14
    .param p1, "access"    # I
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "desc"    # Ljava/lang/String;
    .param p4, "signature"    # Ljava/lang/String;
    .param p5, "exceptions"    # [Ljava/lang/String;

    .line 234
    move-object v0, p0

    move v1, p1

    move-object/from16 v2, p5

    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    .line 235
    .local v3, "sb":Ljava/lang/StringBuffer;
    and-int/lit8 v4, v1, 0x1

    if-eqz v4, :cond_0

    .line 236
    const-string v4, "public "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 237
    :cond_0
    and-int/lit8 v4, v1, 0x2

    if-eqz v4, :cond_1

    .line 238
    const-string v4, "private "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 239
    :cond_1
    and-int/lit8 v4, v1, 0x4

    if-eqz v4, :cond_2

    .line 240
    const-string v4, "protected "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 241
    :cond_2
    and-int/lit8 v4, v1, 0x8

    if-eqz v4, :cond_3

    .line 242
    const-string v4, "static "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 243
    :cond_3
    and-int/lit8 v4, v1, 0x10

    if-eqz v4, :cond_4

    .line 244
    const-string v4, "final "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 245
    :cond_4
    and-int/lit8 v4, v1, 0x20

    if-eqz v4, :cond_5

    .line 246
    const-string v4, "synchronized "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 247
    :cond_5
    and-int/lit8 v4, v1, 0x40

    if-eqz v4, :cond_6

    .line 248
    const-string v4, "bridge "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 249
    :cond_6
    and-int/lit16 v4, v1, 0x80

    if-eqz v4, :cond_7

    .line 250
    const-string v4, "varargs "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 251
    :cond_7
    and-int/lit16 v4, v1, 0x100

    if-eqz v4, :cond_8

    .line 252
    const-string v4, "native "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 253
    :cond_8
    and-int/lit16 v4, v1, 0x400

    if-eqz v4, :cond_9

    .line 254
    const-string v4, "abstract "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 255
    :cond_9
    and-int/lit16 v4, v1, 0x800

    if-eqz v4, :cond_a

    .line 256
    const-string v4, "strict "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 257
    :cond_a
    and-int/lit16 v4, v1, 0x1000

    if-eqz v4, :cond_b

    .line 258
    const-string v4, "synthetic "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 259
    :cond_b
    const/high16 v4, 0x20000

    and-int/2addr v4, v1

    if-eqz v4, :cond_c

    .line 260
    const-string v4, "deprecated "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 262
    :cond_c
    new-instance v4, Lorg/xml/sax/helpers/AttributesImpl;

    invoke-direct {v4}, Lorg/xml/sax/helpers/AttributesImpl;-><init>()V

    .line 263
    .local v4, "att":Lorg/xml/sax/helpers/AttributesImpl;
    const-string v6, ""

    const-string v7, "access"

    const-string v8, "access"

    const-string v9, ""

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v10

    move-object v5, v4

    invoke-virtual/range {v5 .. v10}, Lorg/xml/sax/helpers/AttributesImpl;->addAttribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 264
    const-string v6, ""

    const-string v7, "name"

    const-string v8, "name"

    const-string v9, ""

    move-object/from16 v10, p2

    invoke-virtual/range {v5 .. v10}, Lorg/xml/sax/helpers/AttributesImpl;->addAttribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 265
    const-string v6, ""

    const-string v7, "desc"

    const-string v8, "desc"

    const-string v9, ""

    move-object/from16 v10, p3

    invoke-virtual/range {v5 .. v10}, Lorg/xml/sax/helpers/AttributesImpl;->addAttribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 266
    if-eqz p4, :cond_d

    .line 267
    const-string v6, ""

    const-string v7, "signature"

    const-string v8, "signature"

    const-string v9, ""

    move-object v5, v4

    move-object/from16 v10, p4

    invoke-virtual/range {v5 .. v10}, Lorg/xml/sax/helpers/AttributesImpl;->addAttribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 269
    :cond_d
    const-string v5, "method"

    invoke-virtual {p0, v5, v4}, Lorg/checkerframework/org/objectweb/asmx/xml/SAXClassAdapter;->addStart(Ljava/lang/String;Lorg/xml/sax/Attributes;)V

    .line 271
    new-instance v5, Lorg/xml/sax/helpers/AttributesImpl;

    invoke-direct {v5}, Lorg/xml/sax/helpers/AttributesImpl;-><init>()V

    const-string v6, "exceptions"

    invoke-virtual {p0, v6, v5}, Lorg/checkerframework/org/objectweb/asmx/xml/SAXClassAdapter;->addStart(Ljava/lang/String;Lorg/xml/sax/Attributes;)V

    .line 272
    if-eqz v2, :cond_e

    array-length v5, v2

    if-lez v5, :cond_e

    .line 273
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_0
    array-length v7, v2

    if-ge v5, v7, :cond_e

    .line 274
    new-instance v7, Lorg/xml/sax/helpers/AttributesImpl;

    invoke-direct {v7}, Lorg/xml/sax/helpers/AttributesImpl;-><init>()V

    .line 275
    .local v7, "att2":Lorg/xml/sax/helpers/AttributesImpl;
    const-string v9, ""

    const-string v10, "name"

    const-string v11, "name"

    const-string v12, ""

    aget-object v13, v2, v5

    move-object v8, v7

    invoke-virtual/range {v8 .. v13}, Lorg/xml/sax/helpers/AttributesImpl;->addAttribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 276
    const-string v8, "exception"

    invoke-virtual {p0, v8, v7}, Lorg/checkerframework/org/objectweb/asmx/xml/SAXClassAdapter;->addElement(Ljava/lang/String;Lorg/xml/sax/Attributes;)V

    .line 273
    .end local v7    # "att2":Lorg/xml/sax/helpers/AttributesImpl;
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 279
    .end local v5    # "i":I
    :cond_e
    invoke-virtual {p0, v6}, Lorg/checkerframework/org/objectweb/asmx/xml/SAXClassAdapter;->addEnd(Ljava/lang/String;)V

    .line 281
    new-instance v5, Lorg/checkerframework/org/objectweb/asmx/xml/SAXCodeAdapter;

    invoke-virtual {p0}, Lorg/checkerframework/org/objectweb/asmx/xml/SAXClassAdapter;->getContentHandler()Lorg/xml/sax/ContentHandler;

    move-result-object v6

    invoke-direct {v5, v6, p1}, Lorg/checkerframework/org/objectweb/asmx/xml/SAXCodeAdapter;-><init>(Lorg/xml/sax/ContentHandler;I)V

    return-object v5
.end method

.method public visitOuterClass(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 7
    .param p1, "owner"    # Ljava/lang/String;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "desc"    # Ljava/lang/String;

    .line 87
    new-instance v0, Lorg/xml/sax/helpers/AttributesImpl;

    invoke-direct {v0}, Lorg/xml/sax/helpers/AttributesImpl;-><init>()V

    .line 88
    .local v0, "att":Lorg/xml/sax/helpers/AttributesImpl;
    const-string v2, ""

    const-string v3, "owner"

    const-string v4, "owner"

    const-string v5, ""

    move-object v1, v0

    move-object v6, p1

    invoke-virtual/range {v1 .. v6}, Lorg/xml/sax/helpers/AttributesImpl;->addAttribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 89
    if-eqz p2, :cond_0

    .line 90
    const-string v2, ""

    const-string v3, "name"

    const-string v4, "name"

    const-string v5, ""

    move-object v1, v0

    move-object v6, p2

    invoke-virtual/range {v1 .. v6}, Lorg/xml/sax/helpers/AttributesImpl;->addAttribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 91
    :cond_0
    if-eqz p3, :cond_1

    .line 92
    const-string v2, ""

    const-string v3, "desc"

    const-string v4, "desc"

    const-string v5, ""

    move-object v1, v0

    move-object v6, p3

    invoke-virtual/range {v1 .. v6}, Lorg/xml/sax/helpers/AttributesImpl;->addAttribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 94
    :cond_1
    const-string v1, "outerclass"

    invoke-virtual {p0, v1, v0}, Lorg/checkerframework/org/objectweb/asmx/xml/SAXClassAdapter;->addElement(Ljava/lang/String;Lorg/xml/sax/Attributes;)V

    .line 95
    return-void
.end method

.method public visitSource(Ljava/lang/String;Ljava/lang/String;)V
    .locals 7
    .param p1, "source"    # Ljava/lang/String;
    .param p2, "debug"    # Ljava/lang/String;

    .line 73
    if-nez p1, :cond_0

    if-nez p2, :cond_0

    .line 74
    return-void

    .line 77
    :cond_0
    new-instance v0, Lorg/xml/sax/helpers/AttributesImpl;

    invoke-direct {v0}, Lorg/xml/sax/helpers/AttributesImpl;-><init>()V

    .line 78
    .local v0, "att":Lorg/xml/sax/helpers/AttributesImpl;
    if-eqz p1, :cond_1

    .line 79
    const-string v2, ""

    const-string v3, "file"

    const-string v4, "file"

    const-string v5, ""

    invoke-static {p1}, Lorg/checkerframework/org/objectweb/asmx/xml/SAXClassAdapter;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    move-object v1, v0

    invoke-virtual/range {v1 .. v6}, Lorg/xml/sax/helpers/AttributesImpl;->addAttribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 80
    :cond_1
    if-eqz p2, :cond_2

    .line 81
    const-string v2, ""

    const-string v3, "debug"

    const-string v4, "debug"

    const-string v5, ""

    invoke-static {p2}, Lorg/checkerframework/org/objectweb/asmx/xml/SAXClassAdapter;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    move-object v1, v0

    invoke-virtual/range {v1 .. v6}, Lorg/xml/sax/helpers/AttributesImpl;->addAttribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 83
    :cond_2
    const-string v1, "source"

    invoke-virtual {p0, v1, v0}, Lorg/checkerframework/org/objectweb/asmx/xml/SAXClassAdapter;->addElement(Ljava/lang/String;Lorg/xml/sax/Attributes;)V

    .line 84
    return-void
.end method

.method public visitTypeAnnotation(Ljava/lang/String;ZZ)Lorg/checkerframework/org/objectweb/asmx/TypeAnnotationVisitor;
    .locals 2
    .param p1, "desc"    # Ljava/lang/String;
    .param p2, "visible"    # Z
    .param p3, "inCode"    # Z

    .line 111
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Jaime did not implement yet"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
