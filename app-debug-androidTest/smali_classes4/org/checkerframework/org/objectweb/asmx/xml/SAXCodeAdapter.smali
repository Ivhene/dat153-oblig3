.class public final Lorg/checkerframework/org/objectweb/asmx/xml/SAXCodeAdapter;
.super Lorg/checkerframework/org/objectweb/asmx/xml/SAXAdapter;
.source "SAXCodeAdapter.java"

# interfaces
.implements Lorg/checkerframework/org/objectweb/asmx/MethodVisitor;


# instance fields
.field private labelNames:Ljava/util/Map;


# direct methods
.method public constructor <init>(Lorg/xml/sax/ContentHandler;I)V
    .locals 2
    .param p1, "h"    # Lorg/xml/sax/ContentHandler;
    .param p2, "access"    # I

    .line 67
    invoke-direct {p0, p1}, Lorg/checkerframework/org/objectweb/asmx/xml/SAXAdapter;-><init>(Lorg/xml/sax/ContentHandler;)V

    .line 68
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/checkerframework/org/objectweb/asmx/xml/SAXCodeAdapter;->labelNames:Ljava/util/Map;

    .line 70
    and-int/lit16 v0, p2, 0x700

    if-nez v0, :cond_0

    .line 72
    new-instance v0, Lorg/xml/sax/helpers/AttributesImpl;

    invoke-direct {v0}, Lorg/xml/sax/helpers/AttributesImpl;-><init>()V

    const-string v1, "code"

    invoke-virtual {p0, v1, v0}, Lorg/checkerframework/org/objectweb/asmx/xml/SAXCodeAdapter;->addStart(Ljava/lang/String;Lorg/xml/sax/Attributes;)V

    .line 74
    :cond_0
    return-void
.end method

.method private final getLabel(Lorg/checkerframework/org/objectweb/asmx/Label;)Ljava/lang/String;
    .locals 2
    .param p1, "label"    # Lorg/checkerframework/org/objectweb/asmx/Label;

    .line 335
    iget-object v0, p0, Lorg/checkerframework/org/objectweb/asmx/xml/SAXCodeAdapter;->labelNames:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 336
    .local v0, "name":Ljava/lang/String;
    if-nez v0, :cond_0

    .line 337
    iget-object v1, p0, Lorg/checkerframework/org/objectweb/asmx/xml/SAXCodeAdapter;->labelNames:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    .line 338
    iget-object v1, p0, Lorg/checkerframework/org/objectweb/asmx/xml/SAXCodeAdapter;->labelNames:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 340
    :cond_0
    return-object v0
.end method


# virtual methods
.method public visitAnnotation(Ljava/lang/String;Z)Lorg/checkerframework/org/objectweb/asmx/AnnotationVisitor;
    .locals 7
    .param p1, "desc"    # Ljava/lang/String;
    .param p2, "visible"    # Z

    .line 298
    new-instance v6, Lorg/checkerframework/org/objectweb/asmx/xml/SAXAnnotationAdapter;

    invoke-virtual {p0}, Lorg/checkerframework/org/objectweb/asmx/xml/SAXCodeAdapter;->getContentHandler()Lorg/xml/sax/ContentHandler;

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

.method public visitAnnotationDefault()Lorg/checkerframework/org/objectweb/asmx/AnnotationVisitor;
    .locals 7

    .line 290
    new-instance v6, Lorg/checkerframework/org/objectweb/asmx/xml/SAXAnnotationAdapter;

    invoke-virtual {p0}, Lorg/checkerframework/org/objectweb/asmx/xml/SAXCodeAdapter;->getContentHandler()Lorg/xml/sax/ContentHandler;

    move-result-object v1

    const-string v2, "annotationDefault"

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lorg/checkerframework/org/objectweb/asmx/xml/SAXAnnotationAdapter;-><init>(Lorg/xml/sax/ContentHandler;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    return-object v6
.end method

.method public final visitAttribute(Lorg/checkerframework/org/objectweb/asmx/Attribute;)V
    .locals 0
    .param p1, "attr"    # Lorg/checkerframework/org/objectweb/asmx/Attribute;

    .line 332
    return-void
.end method

.method public final visitCode()V
    .locals 0

    .line 77
    return-void
.end method

.method public visitEnd()V
    .locals 1

    .line 327
    const-string v0, "method"

    invoke-virtual {p0, v0}, Lorg/checkerframework/org/objectweb/asmx/xml/SAXCodeAdapter;->addEnd(Ljava/lang/String;)V

    .line 328
    return-void
.end method

.method public final visitFieldInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 7
    .param p1, "opcode"    # I
    .param p2, "owner"    # Ljava/lang/String;
    .param p3, "name"    # Ljava/lang/String;
    .param p4, "desc"    # Ljava/lang/String;

    .line 107
    new-instance v0, Lorg/xml/sax/helpers/AttributesImpl;

    invoke-direct {v0}, Lorg/xml/sax/helpers/AttributesImpl;-><init>()V

    .line 108
    .local v0, "attrs":Lorg/xml/sax/helpers/AttributesImpl;
    const-string v2, ""

    const-string v3, "owner"

    const-string v4, "owner"

    const-string v5, ""

    move-object v1, v0

    move-object v6, p2

    invoke-virtual/range {v1 .. v6}, Lorg/xml/sax/helpers/AttributesImpl;->addAttribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 109
    const-string v2, ""

    const-string v3, "name"

    const-string v4, "name"

    const-string v5, ""

    move-object v6, p3

    invoke-virtual/range {v1 .. v6}, Lorg/xml/sax/helpers/AttributesImpl;->addAttribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 110
    const-string v2, ""

    const-string v3, "desc"

    const-string v4, "desc"

    const-string v5, ""

    move-object v6, p4

    invoke-virtual/range {v1 .. v6}, Lorg/xml/sax/helpers/AttributesImpl;->addAttribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 111
    sget-object v1, Lorg/checkerframework/org/objectweb/asmx/util/AbstractVisitor;->OPCODES:[Ljava/lang/String;

    aget-object v1, v1, p1

    invoke-virtual {p0, v1, v0}, Lorg/checkerframework/org/objectweb/asmx/xml/SAXCodeAdapter;->addElement(Ljava/lang/String;Lorg/xml/sax/Attributes;)V

    .line 112
    return-void
.end method

.method public final visitIincInsn(II)V
    .locals 7
    .param p1, "var"    # I
    .param p2, "increment"    # I

    .line 176
    new-instance v0, Lorg/xml/sax/helpers/AttributesImpl;

    invoke-direct {v0}, Lorg/xml/sax/helpers/AttributesImpl;-><init>()V

    .line 177
    .local v0, "attrs":Lorg/xml/sax/helpers/AttributesImpl;
    const-string v2, ""

    const-string v3, "var"

    const-string v4, "var"

    const-string v5, ""

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    move-object v1, v0

    invoke-virtual/range {v1 .. v6}, Lorg/xml/sax/helpers/AttributesImpl;->addAttribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 178
    const-string v2, ""

    const-string v3, "inc"

    const-string v4, "inc"

    const-string v5, ""

    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual/range {v1 .. v6}, Lorg/xml/sax/helpers/AttributesImpl;->addAttribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 179
    sget-object v1, Lorg/checkerframework/org/objectweb/asmx/util/AbstractVisitor;->OPCODES:[Ljava/lang/String;

    const/16 v2, 0x84

    aget-object v1, v1, v2

    invoke-virtual {p0, v1, v0}, Lorg/checkerframework/org/objectweb/asmx/xml/SAXCodeAdapter;->addElement(Ljava/lang/String;Lorg/xml/sax/Attributes;)V

    .line 180
    return-void
.end method

.method public final visitInsn(I)V
    .locals 2
    .param p1, "opcode"    # I

    .line 80
    sget-object v0, Lorg/checkerframework/org/objectweb/asmx/util/AbstractVisitor;->OPCODES:[Ljava/lang/String;

    aget-object v0, v0, p1

    new-instance v1, Lorg/xml/sax/helpers/AttributesImpl;

    invoke-direct {v1}, Lorg/xml/sax/helpers/AttributesImpl;-><init>()V

    invoke-virtual {p0, v0, v1}, Lorg/checkerframework/org/objectweb/asmx/xml/SAXCodeAdapter;->addElement(Ljava/lang/String;Lorg/xml/sax/Attributes;)V

    .line 81
    return-void
.end method

.method public visitInsnAnnotation(ILorg/checkerframework/org/objectweb/asmx/TypePath;Ljava/lang/String;Z)Lorg/checkerframework/org/objectweb/asmx/AnnotationVisitor;
    .locals 1
    .param p1, "typeRef"    # I
    .param p2, "typePath"    # Lorg/checkerframework/org/objectweb/asmx/TypePath;
    .param p3, "desc"    # Ljava/lang/String;
    .param p4, "visible"    # Z

    .line 350
    const/4 v0, 0x0

    return-object v0
.end method

.method public final visitIntInsn(II)V
    .locals 7
    .param p1, "opcode"    # I
    .param p2, "operand"    # I

    .line 84
    new-instance v0, Lorg/xml/sax/helpers/AttributesImpl;

    invoke-direct {v0}, Lorg/xml/sax/helpers/AttributesImpl;-><init>()V

    .line 85
    .local v0, "attrs":Lorg/xml/sax/helpers/AttributesImpl;
    const-string v2, ""

    const-string v3, "value"

    const-string v4, "value"

    const-string v5, ""

    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    move-object v1, v0

    invoke-virtual/range {v1 .. v6}, Lorg/xml/sax/helpers/AttributesImpl;->addAttribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 86
    sget-object v1, Lorg/checkerframework/org/objectweb/asmx/util/AbstractVisitor;->OPCODES:[Ljava/lang/String;

    aget-object v1, v1, p1

    invoke-virtual {p0, v1, v0}, Lorg/checkerframework/org/objectweb/asmx/xml/SAXCodeAdapter;->addElement(Ljava/lang/String;Lorg/xml/sax/Attributes;)V

    .line 87
    return-void
.end method

.method public varargs visitInvokeDynamicInsn(Ljava/lang/String;Ljava/lang/String;Lorg/checkerframework/org/objectweb/asmx/Handle;[Ljava/lang/Object;)V
    .locals 10
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "desc"    # Ljava/lang/String;
    .param p3, "bsm"    # Lorg/checkerframework/org/objectweb/asmx/Handle;
    .param p4, "bsmArgs"    # [Ljava/lang/Object;

    .line 130
    new-instance v0, Lorg/xml/sax/helpers/AttributesImpl;

    invoke-direct {v0}, Lorg/xml/sax/helpers/AttributesImpl;-><init>()V

    .line 131
    .local v0, "attrs":Lorg/xml/sax/helpers/AttributesImpl;
    const-string v2, ""

    const-string v3, "name"

    const-string v4, "name"

    const-string v5, ""

    move-object v1, v0

    move-object v6, p1

    invoke-virtual/range {v1 .. v6}, Lorg/xml/sax/helpers/AttributesImpl;->addAttribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 132
    const-string v2, ""

    const-string v3, "desc"

    const-string v4, "desc"

    const-string v5, ""

    move-object v6, p2

    invoke-virtual/range {v1 .. v6}, Lorg/xml/sax/helpers/AttributesImpl;->addAttribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 133
    const-string v2, ""

    const-string v3, "bsm"

    const-string v4, "bsm"

    const-string v5, ""

    .line 134
    invoke-virtual {p3}, Lorg/checkerframework/org/objectweb/asmx/Handle;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lorg/checkerframework/org/objectweb/asmx/xml/SAXClassAdapter;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 133
    move-object v1, v0

    invoke-virtual/range {v1 .. v6}, Lorg/xml/sax/helpers/AttributesImpl;->addAttribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 135
    sget-object v1, Lorg/checkerframework/org/objectweb/asmx/util/AbstractVisitor;->OPCODES:[Ljava/lang/String;

    const/16 v2, 0xba

    aget-object v1, v1, v2

    .line 136
    .local v1, "o":Ljava/lang/String;
    invoke-virtual {p0, v1, v0}, Lorg/checkerframework/org/objectweb/asmx/xml/SAXCodeAdapter;->addStart(Ljava/lang/String;Lorg/xml/sax/Attributes;)V

    .line 137
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    array-length v3, p4

    if-ge v2, v3, :cond_0

    .line 138
    new-instance v3, Lorg/xml/sax/helpers/AttributesImpl;

    invoke-direct {v3}, Lorg/xml/sax/helpers/AttributesImpl;-><init>()V

    .line 139
    .local v3, "cattrs":Lorg/xml/sax/helpers/AttributesImpl;
    const-string v5, ""

    const-string v6, "cst"

    const-string v7, "cst"

    const-string v8, ""

    aget-object v4, p4, v2

    .line 140
    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lorg/checkerframework/org/objectweb/asmx/xml/SAXClassAdapter;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 139
    move-object v4, v3

    invoke-virtual/range {v4 .. v9}, Lorg/xml/sax/helpers/AttributesImpl;->addAttribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 141
    const-string v5, ""

    const-string v6, "desc"

    const-string v7, "desc"

    const-string v8, ""

    aget-object v4, p4, v2

    .line 142
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-static {v4}, Lorg/checkerframework/org/objectweb/asmx/Type;->getDescriptor(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v9

    .line 141
    move-object v4, v3

    invoke-virtual/range {v4 .. v9}, Lorg/xml/sax/helpers/AttributesImpl;->addAttribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 143
    const-string v4, "bsmArg"

    invoke-virtual {p0, v4, v3}, Lorg/checkerframework/org/objectweb/asmx/xml/SAXCodeAdapter;->addElement(Ljava/lang/String;Lorg/xml/sax/Attributes;)V

    .line 137
    .end local v3    # "cattrs":Lorg/xml/sax/helpers/AttributesImpl;
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 145
    .end local v2    # "i":I
    :cond_0
    invoke-virtual {p0, v1}, Lorg/checkerframework/org/objectweb/asmx/xml/SAXCodeAdapter;->addEnd(Ljava/lang/String;)V

    .line 146
    return-void
.end method

.method public final visitJumpInsn(ILorg/checkerframework/org/objectweb/asmx/Label;)V
    .locals 7
    .param p1, "opcode"    # I
    .param p2, "label"    # Lorg/checkerframework/org/objectweb/asmx/Label;

    .line 149
    new-instance v0, Lorg/xml/sax/helpers/AttributesImpl;

    invoke-direct {v0}, Lorg/xml/sax/helpers/AttributesImpl;-><init>()V

    .line 150
    .local v0, "attrs":Lorg/xml/sax/helpers/AttributesImpl;
    const-string v2, ""

    const-string v3, "label"

    const-string v4, "label"

    const-string v5, ""

    invoke-direct {p0, p2}, Lorg/checkerframework/org/objectweb/asmx/xml/SAXCodeAdapter;->getLabel(Lorg/checkerframework/org/objectweb/asmx/Label;)Ljava/lang/String;

    move-result-object v6

    move-object v1, v0

    invoke-virtual/range {v1 .. v6}, Lorg/xml/sax/helpers/AttributesImpl;->addAttribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 151
    sget-object v1, Lorg/checkerframework/org/objectweb/asmx/util/AbstractVisitor;->OPCODES:[Ljava/lang/String;

    aget-object v1, v1, p1

    invoke-virtual {p0, v1, v0}, Lorg/checkerframework/org/objectweb/asmx/xml/SAXCodeAdapter;->addElement(Ljava/lang/String;Lorg/xml/sax/Attributes;)V

    .line 152
    return-void
.end method

.method public final visitLabel(Lorg/checkerframework/org/objectweb/asmx/Label;)V
    .locals 7
    .param p1, "label"    # Lorg/checkerframework/org/objectweb/asmx/Label;

    .line 155
    new-instance v0, Lorg/xml/sax/helpers/AttributesImpl;

    invoke-direct {v0}, Lorg/xml/sax/helpers/AttributesImpl;-><init>()V

    .line 156
    .local v0, "attrs":Lorg/xml/sax/helpers/AttributesImpl;
    const-string v2, ""

    const-string v3, "name"

    const-string v4, "name"

    const-string v5, ""

    invoke-direct {p0, p1}, Lorg/checkerframework/org/objectweb/asmx/xml/SAXCodeAdapter;->getLabel(Lorg/checkerframework/org/objectweb/asmx/Label;)Ljava/lang/String;

    move-result-object v6

    move-object v1, v0

    invoke-virtual/range {v1 .. v6}, Lorg/xml/sax/helpers/AttributesImpl;->addAttribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 157
    const-string v1, "Label"

    invoke-virtual {p0, v1, v0}, Lorg/checkerframework/org/objectweb/asmx/xml/SAXCodeAdapter;->addElement(Ljava/lang/String;Lorg/xml/sax/Attributes;)V

    .line 158
    return-void
.end method

.method public final visitLdcInsn(Ljava/lang/Object;)V
    .locals 7
    .param p1, "cst"    # Ljava/lang/Object;

    .line 161
    new-instance v0, Lorg/xml/sax/helpers/AttributesImpl;

    invoke-direct {v0}, Lorg/xml/sax/helpers/AttributesImpl;-><init>()V

    .line 162
    .local v0, "attrs":Lorg/xml/sax/helpers/AttributesImpl;
    const-string v2, ""

    const-string v3, "cst"

    const-string v4, "cst"

    const-string v5, ""

    .line 166
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lorg/checkerframework/org/objectweb/asmx/xml/SAXClassAdapter;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 162
    move-object v1, v0

    invoke-virtual/range {v1 .. v6}, Lorg/xml/sax/helpers/AttributesImpl;->addAttribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 167
    const-string v2, ""

    const-string v3, "desc"

    const-string v4, "desc"

    const-string v5, ""

    .line 171
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-static {v1}, Lorg/checkerframework/org/objectweb/asmx/Type;->getDescriptor(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v6

    .line 167
    move-object v1, v0

    invoke-virtual/range {v1 .. v6}, Lorg/xml/sax/helpers/AttributesImpl;->addAttribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 172
    sget-object v1, Lorg/checkerframework/org/objectweb/asmx/util/AbstractVisitor;->OPCODES:[Ljava/lang/String;

    const/16 v2, 0x12

    aget-object v1, v1, v2

    invoke-virtual {p0, v1, v0}, Lorg/checkerframework/org/objectweb/asmx/xml/SAXCodeAdapter;->addElement(Ljava/lang/String;Lorg/xml/sax/Attributes;)V

    .line 173
    return-void
.end method

.method public final visitLineNumber(ILorg/checkerframework/org/objectweb/asmx/Label;)V
    .locals 7
    .param p1, "line"    # I
    .param p2, "start"    # Lorg/checkerframework/org/objectweb/asmx/Label;

    .line 283
    new-instance v0, Lorg/xml/sax/helpers/AttributesImpl;

    invoke-direct {v0}, Lorg/xml/sax/helpers/AttributesImpl;-><init>()V

    .line 284
    .local v0, "attrs":Lorg/xml/sax/helpers/AttributesImpl;
    const-string v2, ""

    const-string v3, "line"

    const-string v4, "line"

    const-string v5, ""

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    move-object v1, v0

    invoke-virtual/range {v1 .. v6}, Lorg/xml/sax/helpers/AttributesImpl;->addAttribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 285
    const-string v2, ""

    const-string v3, "start"

    const-string v4, "start"

    const-string v5, ""

    invoke-direct {p0, p2}, Lorg/checkerframework/org/objectweb/asmx/xml/SAXCodeAdapter;->getLabel(Lorg/checkerframework/org/objectweb/asmx/Label;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual/range {v1 .. v6}, Lorg/xml/sax/helpers/AttributesImpl;->addAttribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 286
    const-string v1, "LineNumber"

    invoke-virtual {p0, v1, v0}, Lorg/checkerframework/org/objectweb/asmx/xml/SAXCodeAdapter;->addElement(Ljava/lang/String;Lorg/xml/sax/Attributes;)V

    .line 287
    return-void
.end method

.method public visitLocalVariable(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/checkerframework/org/objectweb/asmx/Label;Lorg/checkerframework/org/objectweb/asmx/Label;I)V
    .locals 7
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "desc"    # Ljava/lang/String;
    .param p3, "signature"    # Ljava/lang/String;
    .param p4, "start"    # Lorg/checkerframework/org/objectweb/asmx/Label;
    .param p5, "end"    # Lorg/checkerframework/org/objectweb/asmx/Label;
    .param p6, "index"    # I

    .line 267
    new-instance v0, Lorg/xml/sax/helpers/AttributesImpl;

    invoke-direct {v0}, Lorg/xml/sax/helpers/AttributesImpl;-><init>()V

    .line 268
    .local v0, "attrs":Lorg/xml/sax/helpers/AttributesImpl;
    const-string v2, ""

    const-string v3, "name"

    const-string v4, "name"

    const-string v5, ""

    move-object v1, v0

    move-object v6, p1

    invoke-virtual/range {v1 .. v6}, Lorg/xml/sax/helpers/AttributesImpl;->addAttribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 269
    const-string v2, ""

    const-string v3, "desc"

    const-string v4, "desc"

    const-string v5, ""

    move-object v6, p2

    invoke-virtual/range {v1 .. v6}, Lorg/xml/sax/helpers/AttributesImpl;->addAttribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 270
    if-eqz p3, :cond_0

    .line 271
    const-string v2, ""

    const-string v3, "signature"

    const-string v4, "signature"

    const-string v5, ""

    .line 275
    invoke-static {p3}, Lorg/checkerframework/org/objectweb/asmx/xml/SAXClassAdapter;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 271
    move-object v1, v0

    invoke-virtual/range {v1 .. v6}, Lorg/xml/sax/helpers/AttributesImpl;->addAttribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 276
    :cond_0
    const-string v2, ""

    const-string v3, "start"

    const-string v4, "start"

    const-string v5, ""

    invoke-direct {p0, p4}, Lorg/checkerframework/org/objectweb/asmx/xml/SAXCodeAdapter;->getLabel(Lorg/checkerframework/org/objectweb/asmx/Label;)Ljava/lang/String;

    move-result-object v6

    move-object v1, v0

    invoke-virtual/range {v1 .. v6}, Lorg/xml/sax/helpers/AttributesImpl;->addAttribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 277
    const-string v2, ""

    const-string v3, "end"

    const-string v4, "end"

    const-string v5, ""

    invoke-direct {p0, p5}, Lorg/checkerframework/org/objectweb/asmx/xml/SAXCodeAdapter;->getLabel(Lorg/checkerframework/org/objectweb/asmx/Label;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual/range {v1 .. v6}, Lorg/xml/sax/helpers/AttributesImpl;->addAttribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 278
    const-string v2, ""

    const-string v3, "var"

    const-string v4, "var"

    const-string v5, ""

    invoke-static {p6}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual/range {v1 .. v6}, Lorg/xml/sax/helpers/AttributesImpl;->addAttribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 279
    const-string v1, "LocalVar"

    invoke-virtual {p0, v1, v0}, Lorg/checkerframework/org/objectweb/asmx/xml/SAXCodeAdapter;->addElement(Ljava/lang/String;Lorg/xml/sax/Attributes;)V

    .line 280
    return-void
.end method

.method public final visitLookupSwitchInsn(Lorg/checkerframework/org/objectweb/asmx/Label;[I[Lorg/checkerframework/org/objectweb/asmx/Label;)V
    .locals 10
    .param p1, "dflt"    # Lorg/checkerframework/org/objectweb/asmx/Label;
    .param p2, "keys"    # [I
    .param p3, "labels"    # [Lorg/checkerframework/org/objectweb/asmx/Label;

    .line 207
    new-instance v0, Lorg/xml/sax/helpers/AttributesImpl;

    invoke-direct {v0}, Lorg/xml/sax/helpers/AttributesImpl;-><init>()V

    .line 208
    .local v0, "att":Lorg/xml/sax/helpers/AttributesImpl;
    const-string v2, ""

    const-string v3, "dflt"

    const-string v4, "dflt"

    const-string v5, ""

    invoke-direct {p0, p1}, Lorg/checkerframework/org/objectweb/asmx/xml/SAXCodeAdapter;->getLabel(Lorg/checkerframework/org/objectweb/asmx/Label;)Ljava/lang/String;

    move-result-object v6

    move-object v1, v0

    invoke-virtual/range {v1 .. v6}, Lorg/xml/sax/helpers/AttributesImpl;->addAttribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 209
    sget-object v1, Lorg/checkerframework/org/objectweb/asmx/util/AbstractVisitor;->OPCODES:[Ljava/lang/String;

    const/16 v2, 0xab

    aget-object v1, v1, v2

    .line 210
    .local v1, "o":Ljava/lang/String;
    invoke-virtual {p0, v1, v0}, Lorg/checkerframework/org/objectweb/asmx/xml/SAXCodeAdapter;->addStart(Ljava/lang/String;Lorg/xml/sax/Attributes;)V

    .line 211
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    array-length v3, p3

    if-ge v2, v3, :cond_0

    .line 212
    new-instance v3, Lorg/xml/sax/helpers/AttributesImpl;

    invoke-direct {v3}, Lorg/xml/sax/helpers/AttributesImpl;-><init>()V

    .line 213
    .local v3, "att2":Lorg/xml/sax/helpers/AttributesImpl;
    const-string v5, ""

    const-string v6, "name"

    const-string v7, "name"

    const-string v8, ""

    aget-object v4, p3, v2

    invoke-direct {p0, v4}, Lorg/checkerframework/org/objectweb/asmx/xml/SAXCodeAdapter;->getLabel(Lorg/checkerframework/org/objectweb/asmx/Label;)Ljava/lang/String;

    move-result-object v9

    move-object v4, v3

    invoke-virtual/range {v4 .. v9}, Lorg/xml/sax/helpers/AttributesImpl;->addAttribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 214
    const-string v5, ""

    const-string v6, "key"

    const-string v7, "key"

    const-string v8, ""

    aget v4, p2, v2

    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v9

    move-object v4, v3

    invoke-virtual/range {v4 .. v9}, Lorg/xml/sax/helpers/AttributesImpl;->addAttribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 215
    const-string v4, "label"

    invoke-virtual {p0, v4, v3}, Lorg/checkerframework/org/objectweb/asmx/xml/SAXCodeAdapter;->addElement(Ljava/lang/String;Lorg/xml/sax/Attributes;)V

    .line 211
    .end local v3    # "att2":Lorg/xml/sax/helpers/AttributesImpl;
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 217
    .end local v2    # "i":I
    :cond_0
    invoke-virtual {p0, v1}, Lorg/checkerframework/org/objectweb/asmx/xml/SAXCodeAdapter;->addEnd(Ljava/lang/String;)V

    .line 218
    return-void
.end method

.method public final visitMaxs(II)V
    .locals 7
    .param p1, "maxStack"    # I
    .param p2, "maxLocals"    # I

    .line 243
    new-instance v0, Lorg/xml/sax/helpers/AttributesImpl;

    invoke-direct {v0}, Lorg/xml/sax/helpers/AttributesImpl;-><init>()V

    .line 244
    .local v0, "attrs":Lorg/xml/sax/helpers/AttributesImpl;
    const-string v2, ""

    const-string v3, "maxStack"

    const-string v4, "maxStack"

    const-string v5, ""

    .line 248
    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    .line 244
    move-object v1, v0

    invoke-virtual/range {v1 .. v6}, Lorg/xml/sax/helpers/AttributesImpl;->addAttribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 249
    const-string v2, ""

    const-string v3, "maxLocals"

    const-string v4, "maxLocals"

    const-string v5, ""

    .line 253
    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    .line 249
    invoke-virtual/range {v1 .. v6}, Lorg/xml/sax/helpers/AttributesImpl;->addAttribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 254
    const-string v1, "Max"

    invoke-virtual {p0, v1, v0}, Lorg/checkerframework/org/objectweb/asmx/xml/SAXCodeAdapter;->addElement(Ljava/lang/String;Lorg/xml/sax/Attributes;)V

    .line 256
    const-string v1, "code"

    invoke-virtual {p0, v1}, Lorg/checkerframework/org/objectweb/asmx/xml/SAXCodeAdapter;->addEnd(Ljava/lang/String;)V

    .line 257
    return-void
.end method

.method public final visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 7
    .param p1, "opcode"    # I
    .param p2, "owner"    # Ljava/lang/String;
    .param p3, "name"    # Ljava/lang/String;
    .param p4, "desc"    # Ljava/lang/String;

    .line 120
    new-instance v0, Lorg/xml/sax/helpers/AttributesImpl;

    invoke-direct {v0}, Lorg/xml/sax/helpers/AttributesImpl;-><init>()V

    .line 121
    .local v0, "attrs":Lorg/xml/sax/helpers/AttributesImpl;
    const-string v2, ""

    const-string v3, "owner"

    const-string v4, "owner"

    const-string v5, ""

    move-object v1, v0

    move-object v6, p2

    invoke-virtual/range {v1 .. v6}, Lorg/xml/sax/helpers/AttributesImpl;->addAttribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 122
    const-string v2, ""

    const-string v3, "name"

    const-string v4, "name"

    const-string v5, ""

    move-object v6, p3

    invoke-virtual/range {v1 .. v6}, Lorg/xml/sax/helpers/AttributesImpl;->addAttribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 123
    const-string v2, ""

    const-string v3, "desc"

    const-string v4, "desc"

    const-string v5, ""

    move-object v6, p4

    invoke-virtual/range {v1 .. v6}, Lorg/xml/sax/helpers/AttributesImpl;->addAttribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 124
    sget-object v1, Lorg/checkerframework/org/objectweb/asmx/util/AbstractVisitor;->OPCODES:[Ljava/lang/String;

    aget-object v1, v1, p1

    invoke-virtual {p0, v1, v0}, Lorg/checkerframework/org/objectweb/asmx/xml/SAXCodeAdapter;->addElement(Ljava/lang/String;Lorg/xml/sax/Attributes;)V

    .line 125
    return-void
.end method

.method public final visitMultiANewArrayInsn(Ljava/lang/String;I)V
    .locals 7
    .param p1, "desc"    # Ljava/lang/String;
    .param p2, "dims"    # I

    .line 221
    new-instance v0, Lorg/xml/sax/helpers/AttributesImpl;

    invoke-direct {v0}, Lorg/xml/sax/helpers/AttributesImpl;-><init>()V

    .line 222
    .local v0, "attrs":Lorg/xml/sax/helpers/AttributesImpl;
    const-string v2, ""

    const-string v3, "desc"

    const-string v4, "desc"

    const-string v5, ""

    move-object v1, v0

    move-object v6, p1

    invoke-virtual/range {v1 .. v6}, Lorg/xml/sax/helpers/AttributesImpl;->addAttribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 223
    const-string v2, ""

    const-string v3, "dims"

    const-string v4, "dims"

    const-string v5, ""

    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual/range {v1 .. v6}, Lorg/xml/sax/helpers/AttributesImpl;->addAttribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 224
    sget-object v1, Lorg/checkerframework/org/objectweb/asmx/util/AbstractVisitor;->OPCODES:[Ljava/lang/String;

    const/16 v2, 0xc5

    aget-object v1, v1, v2

    invoke-virtual {p0, v1, v0}, Lorg/checkerframework/org/objectweb/asmx/xml/SAXCodeAdapter;->addElement(Ljava/lang/String;Lorg/xml/sax/Attributes;)V

    .line 225
    return-void
.end method

.method public visitParameterAnnotation(ILjava/lang/String;Z)Lorg/checkerframework/org/objectweb/asmx/AnnotationVisitor;
    .locals 7
    .param p1, "parameter"    # I
    .param p2, "desc"    # Ljava/lang/String;
    .param p3, "visible"    # Z

    .line 319
    new-instance v6, Lorg/checkerframework/org/objectweb/asmx/xml/SAXAnnotationAdapter;

    invoke-virtual {p0}, Lorg/checkerframework/org/objectweb/asmx/xml/SAXCodeAdapter;->getContentHandler()Lorg/xml/sax/ContentHandler;

    move-result-object v1

    const-string v2, "parameterAnnotation"

    if-eqz p3, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, -0x1

    :goto_0
    move v3, v0

    move-object v0, v6

    move v4, p1

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lorg/checkerframework/org/objectweb/asmx/xml/SAXAnnotationAdapter;-><init>(Lorg/xml/sax/ContentHandler;Ljava/lang/String;IILjava/lang/String;)V

    return-object v6
.end method

.method public final visitTableSwitchInsn(IILorg/checkerframework/org/objectweb/asmx/Label;[Lorg/checkerframework/org/objectweb/asmx/Label;)V
    .locals 10
    .param p1, "min"    # I
    .param p2, "max"    # I
    .param p3, "dflt"    # Lorg/checkerframework/org/objectweb/asmx/Label;
    .param p4, "labels"    # [Lorg/checkerframework/org/objectweb/asmx/Label;

    .line 188
    new-instance v0, Lorg/xml/sax/helpers/AttributesImpl;

    invoke-direct {v0}, Lorg/xml/sax/helpers/AttributesImpl;-><init>()V

    .line 189
    .local v0, "attrs":Lorg/xml/sax/helpers/AttributesImpl;
    const-string v2, ""

    const-string v3, "min"

    const-string v4, "min"

    const-string v5, ""

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    move-object v1, v0

    invoke-virtual/range {v1 .. v6}, Lorg/xml/sax/helpers/AttributesImpl;->addAttribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 190
    const-string v2, ""

    const-string v3, "max"

    const-string v4, "max"

    const-string v5, ""

    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual/range {v1 .. v6}, Lorg/xml/sax/helpers/AttributesImpl;->addAttribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 191
    const-string v2, ""

    const-string v3, "dflt"

    const-string v4, "dflt"

    const-string v5, ""

    invoke-direct {p0, p3}, Lorg/checkerframework/org/objectweb/asmx/xml/SAXCodeAdapter;->getLabel(Lorg/checkerframework/org/objectweb/asmx/Label;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual/range {v1 .. v6}, Lorg/xml/sax/helpers/AttributesImpl;->addAttribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 192
    sget-object v1, Lorg/checkerframework/org/objectweb/asmx/util/AbstractVisitor;->OPCODES:[Ljava/lang/String;

    const/16 v2, 0xaa

    aget-object v1, v1, v2

    .line 193
    .local v1, "o":Ljava/lang/String;
    invoke-virtual {p0, v1, v0}, Lorg/checkerframework/org/objectweb/asmx/xml/SAXCodeAdapter;->addStart(Ljava/lang/String;Lorg/xml/sax/Attributes;)V

    .line 194
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    array-length v3, p4

    if-ge v2, v3, :cond_0

    .line 195
    new-instance v3, Lorg/xml/sax/helpers/AttributesImpl;

    invoke-direct {v3}, Lorg/xml/sax/helpers/AttributesImpl;-><init>()V

    .line 196
    .local v3, "att2":Lorg/xml/sax/helpers/AttributesImpl;
    const-string v5, ""

    const-string v6, "name"

    const-string v7, "name"

    const-string v8, ""

    aget-object v4, p4, v2

    invoke-direct {p0, v4}, Lorg/checkerframework/org/objectweb/asmx/xml/SAXCodeAdapter;->getLabel(Lorg/checkerframework/org/objectweb/asmx/Label;)Ljava/lang/String;

    move-result-object v9

    move-object v4, v3

    invoke-virtual/range {v4 .. v9}, Lorg/xml/sax/helpers/AttributesImpl;->addAttribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 197
    const-string v4, "label"

    invoke-virtual {p0, v4, v3}, Lorg/checkerframework/org/objectweb/asmx/xml/SAXCodeAdapter;->addElement(Ljava/lang/String;Lorg/xml/sax/Attributes;)V

    .line 194
    .end local v3    # "att2":Lorg/xml/sax/helpers/AttributesImpl;
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 199
    .end local v2    # "i":I
    :cond_0
    invoke-virtual {p0, v1}, Lorg/checkerframework/org/objectweb/asmx/xml/SAXCodeAdapter;->addEnd(Ljava/lang/String;)V

    .line 200
    return-void
.end method

.method public final visitTryCatchBlock(Lorg/checkerframework/org/objectweb/asmx/Label;Lorg/checkerframework/org/objectweb/asmx/Label;Lorg/checkerframework/org/objectweb/asmx/Label;Ljava/lang/String;)V
    .locals 7
    .param p1, "start"    # Lorg/checkerframework/org/objectweb/asmx/Label;
    .param p2, "end"    # Lorg/checkerframework/org/objectweb/asmx/Label;
    .param p3, "handler"    # Lorg/checkerframework/org/objectweb/asmx/Label;
    .param p4, "type"    # Ljava/lang/String;

    .line 233
    new-instance v0, Lorg/xml/sax/helpers/AttributesImpl;

    invoke-direct {v0}, Lorg/xml/sax/helpers/AttributesImpl;-><init>()V

    .line 234
    .local v0, "attrs":Lorg/xml/sax/helpers/AttributesImpl;
    const-string v2, ""

    const-string v3, "start"

    const-string v4, "start"

    const-string v5, ""

    invoke-direct {p0, p1}, Lorg/checkerframework/org/objectweb/asmx/xml/SAXCodeAdapter;->getLabel(Lorg/checkerframework/org/objectweb/asmx/Label;)Ljava/lang/String;

    move-result-object v6

    move-object v1, v0

    invoke-virtual/range {v1 .. v6}, Lorg/xml/sax/helpers/AttributesImpl;->addAttribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 235
    const-string v2, ""

    const-string v3, "end"

    const-string v4, "end"

    const-string v5, ""

    invoke-direct {p0, p2}, Lorg/checkerframework/org/objectweb/asmx/xml/SAXCodeAdapter;->getLabel(Lorg/checkerframework/org/objectweb/asmx/Label;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual/range {v1 .. v6}, Lorg/xml/sax/helpers/AttributesImpl;->addAttribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 236
    const-string v2, ""

    const-string v3, "handler"

    const-string v4, "handler"

    const-string v5, ""

    invoke-direct {p0, p3}, Lorg/checkerframework/org/objectweb/asmx/xml/SAXCodeAdapter;->getLabel(Lorg/checkerframework/org/objectweb/asmx/Label;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual/range {v1 .. v6}, Lorg/xml/sax/helpers/AttributesImpl;->addAttribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 237
    if-eqz p4, :cond_0

    .line 238
    const-string v2, ""

    const-string v3, "type"

    const-string v4, "type"

    const-string v5, ""

    move-object v1, v0

    move-object v6, p4

    invoke-virtual/range {v1 .. v6}, Lorg/xml/sax/helpers/AttributesImpl;->addAttribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 239
    :cond_0
    const-string v1, "TryCatch"

    invoke-virtual {p0, v1, v0}, Lorg/checkerframework/org/objectweb/asmx/xml/SAXCodeAdapter;->addElement(Ljava/lang/String;Lorg/xml/sax/Attributes;)V

    .line 240
    return-void
.end method

.method public visitTypeAnnotation(Ljava/lang/String;ZZ)Lorg/checkerframework/org/objectweb/asmx/TypeAnnotationVisitor;
    .locals 1
    .param p1, "desc"    # Ljava/lang/String;
    .param p2, "visible"    # Z
    .param p3, "inCode"    # Z

    .line 310
    const/4 v0, 0x0

    return-object v0
.end method

.method public final visitTypeInsn(ILjava/lang/String;)V
    .locals 7
    .param p1, "opcode"    # I
    .param p2, "desc"    # Ljava/lang/String;

    .line 96
    new-instance v0, Lorg/xml/sax/helpers/AttributesImpl;

    invoke-direct {v0}, Lorg/xml/sax/helpers/AttributesImpl;-><init>()V

    .line 97
    .local v0, "attrs":Lorg/xml/sax/helpers/AttributesImpl;
    const-string v2, ""

    const-string v3, "desc"

    const-string v4, "desc"

    const-string v5, ""

    move-object v1, v0

    move-object v6, p2

    invoke-virtual/range {v1 .. v6}, Lorg/xml/sax/helpers/AttributesImpl;->addAttribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 98
    sget-object v1, Lorg/checkerframework/org/objectweb/asmx/util/AbstractVisitor;->OPCODES:[Ljava/lang/String;

    aget-object v1, v1, p1

    invoke-virtual {p0, v1, v0}, Lorg/checkerframework/org/objectweb/asmx/xml/SAXCodeAdapter;->addElement(Ljava/lang/String;Lorg/xml/sax/Attributes;)V

    .line 99
    return-void
.end method

.method public final visitVarInsn(II)V
    .locals 7
    .param p1, "opcode"    # I
    .param p2, "var"    # I

    .line 90
    new-instance v0, Lorg/xml/sax/helpers/AttributesImpl;

    invoke-direct {v0}, Lorg/xml/sax/helpers/AttributesImpl;-><init>()V

    .line 91
    .local v0, "attrs":Lorg/xml/sax/helpers/AttributesImpl;
    const-string v2, ""

    const-string v3, "var"

    const-string v4, "var"

    const-string v5, ""

    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    move-object v1, v0

    invoke-virtual/range {v1 .. v6}, Lorg/xml/sax/helpers/AttributesImpl;->addAttribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 92
    sget-object v1, Lorg/checkerframework/org/objectweb/asmx/util/AbstractVisitor;->OPCODES:[Ljava/lang/String;

    aget-object v1, v1, p1

    invoke-virtual {p0, v1, v0}, Lorg/checkerframework/org/objectweb/asmx/xml/SAXCodeAdapter;->addElement(Ljava/lang/String;Lorg/xml/sax/Attributes;)V

    .line 93
    return-void
.end method
