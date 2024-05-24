.class public Lorg/checkerframework/org/objectweb/asmx/xml/SAXAnnotationAdapter;
.super Lorg/checkerframework/org/objectweb/asmx/xml/SAXAdapter;
.source "SAXAnnotationAdapter.java"

# interfaces
.implements Lorg/checkerframework/org/objectweb/asmx/AnnotationVisitor;


# instance fields
.field private final elementName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lorg/xml/sax/ContentHandler;Ljava/lang/String;IILjava/lang/String;)V
    .locals 7
    .param p1, "h"    # Lorg/xml/sax/ContentHandler;
    .param p2, "elementName"    # Ljava/lang/String;
    .param p3, "visible"    # I
    .param p4, "parameter"    # I
    .param p5, "desc"    # Ljava/lang/String;

    .line 64
    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v4, p5

    move v6, p4

    invoke-direct/range {v0 .. v6}, Lorg/checkerframework/org/objectweb/asmx/xml/SAXAnnotationAdapter;-><init>(Lorg/xml/sax/ContentHandler;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;I)V

    .line 65
    return-void
.end method

.method public constructor <init>(Lorg/xml/sax/ContentHandler;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V
    .locals 7
    .param p1, "h"    # Lorg/xml/sax/ContentHandler;
    .param p2, "elementName"    # Ljava/lang/String;
    .param p3, "visible"    # I
    .param p4, "name"    # Ljava/lang/String;
    .param p5, "desc"    # Ljava/lang/String;

    .line 54
    const/4 v6, -0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v4, p5

    move-object v5, p4

    invoke-direct/range {v0 .. v6}, Lorg/checkerframework/org/objectweb/asmx/xml/SAXAnnotationAdapter;-><init>(Lorg/xml/sax/ContentHandler;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;I)V

    .line 55
    return-void
.end method

.method private constructor <init>(Lorg/xml/sax/ContentHandler;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;I)V
    .locals 7
    .param p1, "h"    # Lorg/xml/sax/ContentHandler;
    .param p2, "elementName"    # Ljava/lang/String;
    .param p3, "visible"    # I
    .param p4, "desc"    # Ljava/lang/String;
    .param p5, "name"    # Ljava/lang/String;
    .param p6, "parameter"    # I

    .line 75
    invoke-direct {p0, p1}, Lorg/checkerframework/org/objectweb/asmx/xml/SAXAdapter;-><init>(Lorg/xml/sax/ContentHandler;)V

    .line 76
    iput-object p2, p0, Lorg/checkerframework/org/objectweb/asmx/xml/SAXAnnotationAdapter;->elementName:Ljava/lang/String;

    .line 78
    new-instance v0, Lorg/xml/sax/helpers/AttributesImpl;

    invoke-direct {v0}, Lorg/xml/sax/helpers/AttributesImpl;-><init>()V

    .line 79
    .local v0, "att":Lorg/xml/sax/helpers/AttributesImpl;
    if-eqz p5, :cond_0

    .line 80
    const-string v2, ""

    const-string v3, "name"

    const-string v4, "name"

    const-string v5, ""

    move-object v1, v0

    move-object v6, p5

    invoke-virtual/range {v1 .. v6}, Lorg/xml/sax/helpers/AttributesImpl;->addAttribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 81
    :cond_0
    if-eqz p3, :cond_2

    .line 82
    const-string v2, ""

    const-string v3, "visible"

    const-string v4, "visible"

    const-string v5, ""

    if-lez p3, :cond_1

    const-string v1, "true"

    goto :goto_0

    :cond_1
    const-string v1, "false"

    :goto_0
    move-object v6, v1

    move-object v1, v0

    invoke-virtual/range {v1 .. v6}, Lorg/xml/sax/helpers/AttributesImpl;->addAttribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 85
    :cond_2
    const/4 v1, -0x1

    if-eq p6, v1, :cond_3

    .line 86
    const-string v2, ""

    const-string v3, "parameter"

    const-string v4, "parameter"

    const-string v5, ""

    .line 90
    invoke-static {p6}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    .line 86
    move-object v1, v0

    invoke-virtual/range {v1 .. v6}, Lorg/xml/sax/helpers/AttributesImpl;->addAttribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 91
    :cond_3
    if-eqz p4, :cond_4

    .line 92
    const-string v2, ""

    const-string v3, "desc"

    const-string v4, "desc"

    const-string v5, ""

    move-object v1, v0

    move-object v6, p4

    invoke-virtual/range {v1 .. v6}, Lorg/xml/sax/helpers/AttributesImpl;->addAttribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 94
    :cond_4
    invoke-virtual {p0, p2, v0}, Lorg/checkerframework/org/objectweb/asmx/xml/SAXAnnotationAdapter;->addStart(Ljava/lang/String;Lorg/xml/sax/Attributes;)V

    .line 95
    return-void
.end method

.method private addValueElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 7
    .param p1, "element"    # Ljava/lang/String;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "desc"    # Ljava/lang/String;
    .param p4, "value"    # Ljava/lang/String;

    .line 176
    new-instance v0, Lorg/xml/sax/helpers/AttributesImpl;

    invoke-direct {v0}, Lorg/xml/sax/helpers/AttributesImpl;-><init>()V

    .line 177
    .local v0, "att":Lorg/xml/sax/helpers/AttributesImpl;
    if-eqz p2, :cond_0

    .line 178
    const-string v2, ""

    const-string v3, "name"

    const-string v4, "name"

    const-string v5, ""

    move-object v1, v0

    move-object v6, p2

    invoke-virtual/range {v1 .. v6}, Lorg/xml/sax/helpers/AttributesImpl;->addAttribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 179
    :cond_0
    if-eqz p3, :cond_1

    .line 180
    const-string v2, ""

    const-string v3, "desc"

    const-string v4, "desc"

    const-string v5, ""

    move-object v1, v0

    move-object v6, p3

    invoke-virtual/range {v1 .. v6}, Lorg/xml/sax/helpers/AttributesImpl;->addAttribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 181
    :cond_1
    if-eqz p4, :cond_2

    .line 182
    const-string v2, ""

    const-string v3, "value"

    const-string v4, "value"

    const-string v5, ""

    .line 186
    invoke-static {p4}, Lorg/checkerframework/org/objectweb/asmx/xml/SAXClassAdapter;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 182
    move-object v1, v0

    invoke-virtual/range {v1 .. v6}, Lorg/xml/sax/helpers/AttributesImpl;->addAttribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 188
    :cond_2
    invoke-virtual {p0, p1, v0}, Lorg/checkerframework/org/objectweb/asmx/xml/SAXAnnotationAdapter;->addElement(Ljava/lang/String;Lorg/xml/sax/Attributes;)V

    .line 189
    return-void
.end method


# virtual methods
.method public visit(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 8
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/Object;

    .line 98
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    .line 99
    .local v0, "c":Ljava/lang/Class;
    invoke-virtual {v0}, Ljava/lang/Class;->isArray()Z

    move-result v1

    if-eqz v1, :cond_e

    .line 100
    invoke-virtual {p0, p1}, Lorg/checkerframework/org/objectweb/asmx/xml/SAXAnnotationAdapter;->visitArray(Ljava/lang/String;)Lorg/checkerframework/org/objectweb/asmx/AnnotationVisitor;

    move-result-object v1

    .line 101
    .local v1, "av":Lorg/checkerframework/org/objectweb/asmx/AnnotationVisitor;
    instance-of v2, p2, [B

    const/4 v3, 0x0

    if-eqz v2, :cond_1

    .line 102
    move-object v2, p2

    check-cast v2, [B

    check-cast v2, [B

    .line 103
    .local v2, "b":[B
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    array-length v5, v2

    if-ge v4, v5, :cond_0

    .line 104
    new-instance v5, Ljava/lang/Byte;

    aget-byte v6, v2, v4

    invoke-direct {v5, v6}, Ljava/lang/Byte;-><init>(B)V

    invoke-interface {v1, v3, v5}, Lorg/checkerframework/org/objectweb/asmx/AnnotationVisitor;->visit(Ljava/lang/String;Ljava/lang/Object;)V

    .line 103
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 106
    .end local v2    # "b":[B
    .end local v4    # "i":I
    :cond_0
    goto/16 :goto_8

    :cond_1
    instance-of v2, p2, [C

    if-eqz v2, :cond_3

    .line 107
    move-object v2, p2

    check-cast v2, [C

    check-cast v2, [C

    .line 108
    .local v2, "b":[C
    const/4 v4, 0x0

    .restart local v4    # "i":I
    :goto_1
    array-length v5, v2

    if-ge v4, v5, :cond_2

    .line 109
    new-instance v5, Ljava/lang/Character;

    aget-char v6, v2, v4

    invoke-direct {v5, v6}, Ljava/lang/Character;-><init>(C)V

    invoke-interface {v1, v3, v5}, Lorg/checkerframework/org/objectweb/asmx/AnnotationVisitor;->visit(Ljava/lang/String;Ljava/lang/Object;)V

    .line 108
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 111
    .end local v2    # "b":[C
    .end local v4    # "i":I
    :cond_2
    goto/16 :goto_8

    :cond_3
    instance-of v2, p2, [Z

    if-eqz v2, :cond_5

    .line 112
    move-object v2, p2

    check-cast v2, [Z

    check-cast v2, [Z

    .line 113
    .local v2, "b":[Z
    const/4 v4, 0x0

    .restart local v4    # "i":I
    :goto_2
    array-length v5, v2

    if-ge v4, v5, :cond_4

    .line 114
    aget-boolean v5, v2, v4

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-interface {v1, v3, v5}, Lorg/checkerframework/org/objectweb/asmx/AnnotationVisitor;->visit(Ljava/lang/String;Ljava/lang/Object;)V

    .line 113
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 116
    .end local v2    # "b":[Z
    .end local v4    # "i":I
    :cond_4
    goto/16 :goto_8

    :cond_5
    instance-of v2, p2, [I

    if-eqz v2, :cond_7

    .line 117
    move-object v2, p2

    check-cast v2, [I

    check-cast v2, [I

    .line 118
    .local v2, "b":[I
    const/4 v4, 0x0

    .restart local v4    # "i":I
    :goto_3
    array-length v5, v2

    if-ge v4, v5, :cond_6

    .line 119
    new-instance v5, Ljava/lang/Integer;

    aget v6, v2, v4

    invoke-direct {v5, v6}, Ljava/lang/Integer;-><init>(I)V

    invoke-interface {v1, v3, v5}, Lorg/checkerframework/org/objectweb/asmx/AnnotationVisitor;->visit(Ljava/lang/String;Ljava/lang/Object;)V

    .line 118
    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    .line 121
    .end local v2    # "b":[I
    .end local v4    # "i":I
    :cond_6
    goto :goto_8

    :cond_7
    instance-of v2, p2, [J

    if-eqz v2, :cond_9

    .line 122
    move-object v2, p2

    check-cast v2, [J

    check-cast v2, [J

    .line 123
    .local v2, "b":[J
    const/4 v4, 0x0

    .restart local v4    # "i":I
    :goto_4
    array-length v5, v2

    if-ge v4, v5, :cond_8

    .line 124
    new-instance v5, Ljava/lang/Long;

    aget-wide v6, v2, v4

    invoke-direct {v5, v6, v7}, Ljava/lang/Long;-><init>(J)V

    invoke-interface {v1, v3, v5}, Lorg/checkerframework/org/objectweb/asmx/AnnotationVisitor;->visit(Ljava/lang/String;Ljava/lang/Object;)V

    .line 123
    add-int/lit8 v4, v4, 0x1

    goto :goto_4

    .line 126
    .end local v2    # "b":[J
    .end local v4    # "i":I
    :cond_8
    goto :goto_8

    :cond_9
    instance-of v2, p2, [F

    if-eqz v2, :cond_b

    .line 127
    move-object v2, p2

    check-cast v2, [F

    check-cast v2, [F

    .line 128
    .local v2, "b":[F
    const/4 v4, 0x0

    .restart local v4    # "i":I
    :goto_5
    array-length v5, v2

    if-ge v4, v5, :cond_a

    .line 129
    new-instance v5, Ljava/lang/Float;

    aget v6, v2, v4

    invoke-direct {v5, v6}, Ljava/lang/Float;-><init>(F)V

    invoke-interface {v1, v3, v5}, Lorg/checkerframework/org/objectweb/asmx/AnnotationVisitor;->visit(Ljava/lang/String;Ljava/lang/Object;)V

    .line 128
    add-int/lit8 v4, v4, 0x1

    goto :goto_5

    .end local v2    # "b":[F
    .end local v4    # "i":I
    :cond_a
    goto :goto_7

    .line 131
    :cond_b
    instance-of v2, p2, [D

    if-eqz v2, :cond_c

    .line 132
    move-object v2, p2

    check-cast v2, [D

    check-cast v2, [D

    .line 133
    .local v2, "b":[D
    const/4 v4, 0x0

    .restart local v4    # "i":I
    :goto_6
    array-length v5, v2

    if-ge v4, v5, :cond_d

    .line 134
    new-instance v5, Ljava/lang/Double;

    aget-wide v6, v2, v4

    invoke-direct {v5, v6, v7}, Ljava/lang/Double;-><init>(D)V

    invoke-interface {v1, v3, v5}, Lorg/checkerframework/org/objectweb/asmx/AnnotationVisitor;->visit(Ljava/lang/String;Ljava/lang/Object;)V

    .line 133
    add-int/lit8 v4, v4, 0x1

    goto :goto_6

    .line 131
    .end local v2    # "b":[D
    .end local v4    # "i":I
    :cond_c
    :goto_7
    nop

    .line 137
    :cond_d
    :goto_8
    invoke-interface {v1}, Lorg/checkerframework/org/objectweb/asmx/AnnotationVisitor;->visitEnd()V

    .line 138
    .end local v1    # "av":Lorg/checkerframework/org/objectweb/asmx/AnnotationVisitor;
    goto :goto_9

    .line 139
    :cond_e
    nop

    .line 141
    invoke-static {v0}, Lorg/checkerframework/org/objectweb/asmx/Type;->getDescriptor(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v1

    .line 142
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    .line 139
    const-string v3, "annotationValue"

    invoke-direct {p0, v3, p1, v1, v2}, Lorg/checkerframework/org/objectweb/asmx/xml/SAXAnnotationAdapter;->addValueElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 144
    :goto_9
    return-void
.end method

.method public visitAnnotation(Ljava/lang/String;Ljava/lang/String;)Lorg/checkerframework/org/objectweb/asmx/AnnotationVisitor;
    .locals 7
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "desc"    # Ljava/lang/String;

    .line 151
    new-instance v6, Lorg/checkerframework/org/objectweb/asmx/xml/SAXAnnotationAdapter;

    invoke-virtual {p0}, Lorg/checkerframework/org/objectweb/asmx/xml/SAXAnnotationAdapter;->getContentHandler()Lorg/xml/sax/ContentHandler;

    move-result-object v1

    const-string v2, "annotationValueAnnotation"

    const/4 v3, 0x0

    move-object v0, v6

    move-object v4, p1

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lorg/checkerframework/org/objectweb/asmx/xml/SAXAnnotationAdapter;-><init>(Lorg/xml/sax/ContentHandler;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    return-object v6
.end method

.method public visitArray(Ljava/lang/String;)Lorg/checkerframework/org/objectweb/asmx/AnnotationVisitor;
    .locals 7
    .param p1, "name"    # Ljava/lang/String;

    .line 159
    new-instance v6, Lorg/checkerframework/org/objectweb/asmx/xml/SAXAnnotationAdapter;

    invoke-virtual {p0}, Lorg/checkerframework/org/objectweb/asmx/xml/SAXAnnotationAdapter;->getContentHandler()Lorg/xml/sax/ContentHandler;

    move-result-object v1

    const-string v2, "annotationValueArray"

    const/4 v3, 0x0

    const/4 v5, 0x0

    move-object v0, v6

    move-object v4, p1

    invoke-direct/range {v0 .. v5}, Lorg/checkerframework/org/objectweb/asmx/xml/SAXAnnotationAdapter;-><init>(Lorg/xml/sax/ContentHandler;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    return-object v6
.end method

.method public visitEnd()V
    .locals 1

    .line 167
    iget-object v0, p0, Lorg/checkerframework/org/objectweb/asmx/xml/SAXAnnotationAdapter;->elementName:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lorg/checkerframework/org/objectweb/asmx/xml/SAXAnnotationAdapter;->addEnd(Ljava/lang/String;)V

    .line 168
    return-void
.end method

.method public visitEnum(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "desc"    # Ljava/lang/String;
    .param p3, "value"    # Ljava/lang/String;

    .line 147
    const-string v0, "annotationValueEnum"

    invoke-direct {p0, v0, p1, p2, p3}, Lorg/checkerframework/org/objectweb/asmx/xml/SAXAnnotationAdapter;->addValueElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 148
    return-void
.end method
