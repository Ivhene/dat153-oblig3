.class final Lorg/checkerframework/org/apache/bcel/util/MethodHTML;
.super Ljava/lang/Object;
.source "MethodHTML.java"


# instance fields
.field private final attribute_html:Lorg/checkerframework/org/apache/bcel/util/AttributeHTML;

.field private final class_name:Ljava/lang/String;

.field private final constant_html:Lorg/checkerframework/org/apache/bcel/util/ConstantHTML;

.field private final file:Ljava/io/PrintWriter;


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/String;[Lorg/checkerframework/org/apache/bcel/classfile/Method;[Lorg/checkerframework/org/apache/bcel/classfile/Field;Lorg/checkerframework/org/apache/bcel/util/ConstantHTML;Lorg/checkerframework/org/apache/bcel/util/AttributeHTML;)V
    .locals 4
    .param p1, "dir"    # Ljava/lang/String;
    .param p2, "class_name"    # Ljava/lang/String;
    .param p3, "methods"    # [Lorg/checkerframework/org/apache/bcel/classfile/Method;
    .param p4, "fields"    # [Lorg/checkerframework/org/apache/bcel/classfile/Field;
    .param p5, "constant_html"    # Lorg/checkerframework/org/apache/bcel/util/ConstantHTML;
    .param p6, "attribute_html"    # Lorg/checkerframework/org/apache/bcel/util/AttributeHTML;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    iput-object p2, p0, Lorg/checkerframework/org/apache/bcel/util/MethodHTML;->class_name:Ljava/lang/String;

    .line 50
    iput-object p6, p0, Lorg/checkerframework/org/apache/bcel/util/MethodHTML;->attribute_html:Lorg/checkerframework/org/apache/bcel/util/AttributeHTML;

    .line 51
    iput-object p5, p0, Lorg/checkerframework/org/apache/bcel/util/MethodHTML;->constant_html:Lorg/checkerframework/org/apache/bcel/util/ConstantHTML;

    .line 52
    new-instance v0, Ljava/io/PrintWriter;

    new-instance v1, Ljava/io/FileOutputStream;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "_methods.html"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v1}, Ljava/io/PrintWriter;-><init>(Ljava/io/OutputStream;)V

    iput-object v0, p0, Lorg/checkerframework/org/apache/bcel/util/MethodHTML;->file:Ljava/io/PrintWriter;

    .line 53
    const-string v1, "<HTML><BODY BGCOLOR=\"#C0C0C0\"><TABLE BORDER=0>"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 54
    const-string v1, "<TR><TH ALIGN=LEFT>Access&nbsp;flags</TH><TH ALIGN=LEFT>Type</TH><TH ALIGN=LEFT>Field&nbsp;name</TH></TR>"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 56
    array-length v0, p4

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    aget-object v2, p4, v1

    .line 57
    .local v2, "field":Lorg/checkerframework/org/apache/bcel/classfile/Field;
    invoke-direct {p0, v2}, Lorg/checkerframework/org/apache/bcel/util/MethodHTML;->writeField(Lorg/checkerframework/org/apache/bcel/classfile/Field;)V

    .line 56
    .end local v2    # "field":Lorg/checkerframework/org/apache/bcel/classfile/Field;
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 59
    :cond_0
    iget-object v0, p0, Lorg/checkerframework/org/apache/bcel/util/MethodHTML;->file:Ljava/io/PrintWriter;

    const-string v1, "</TABLE>"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 60
    iget-object v0, p0, Lorg/checkerframework/org/apache/bcel/util/MethodHTML;->file:Ljava/io/PrintWriter;

    const-string v1, "<TABLE BORDER=0><TR><TH ALIGN=LEFT>Access&nbsp;flags</TH><TH ALIGN=LEFT>Return&nbsp;type</TH><TH ALIGN=LEFT>Method&nbsp;name</TH><TH ALIGN=LEFT>Arguments</TH></TR>"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 63
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    array-length v1, p3

    if-ge v0, v1, :cond_1

    .line 64
    aget-object v1, p3, v0

    invoke-direct {p0, v1, v0}, Lorg/checkerframework/org/apache/bcel/util/MethodHTML;->writeMethod(Lorg/checkerframework/org/apache/bcel/classfile/Method;I)V

    .line 63
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 66
    .end local v0    # "i":I
    :cond_1
    iget-object v0, p0, Lorg/checkerframework/org/apache/bcel/util/MethodHTML;->file:Ljava/io/PrintWriter;

    const-string v1, "</TABLE></BODY></HTML>"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 67
    iget-object v0, p0, Lorg/checkerframework/org/apache/bcel/util/MethodHTML;->file:Ljava/io/PrintWriter;

    invoke-virtual {v0}, Ljava/io/PrintWriter;->close()V

    .line 68
    return-void
.end method

.method private writeField(Lorg/checkerframework/org/apache/bcel/classfile/Field;)V
    .locals 10
    .param p1, "field"    # Lorg/checkerframework/org/apache/bcel/classfile/Field;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 78
    invoke-virtual {p1}, Lorg/checkerframework/org/apache/bcel/classfile/Field;->getSignature()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/checkerframework/org/apache/bcel/classfile/Utility;->signatureToString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 79
    .local v0, "type":Ljava/lang/String;
    invoke-virtual {p1}, Lorg/checkerframework/org/apache/bcel/classfile/Field;->getName()Ljava/lang/String;

    move-result-object v1

    .line 80
    .local v1, "name":Ljava/lang/String;
    invoke-virtual {p1}, Lorg/checkerframework/org/apache/bcel/classfile/Field;->getAccessFlags()I

    move-result v2

    invoke-static {v2}, Lorg/checkerframework/org/apache/bcel/classfile/Utility;->accessToString(I)Ljava/lang/String;

    move-result-object v2

    .line 82
    .local v2, "access":Ljava/lang/String;
    const-string v3, " "

    const-string v4, "&nbsp;"

    invoke-static {v2, v3, v4}, Lorg/checkerframework/org/apache/bcel/classfile/Utility;->replace(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 83
    iget-object v3, p0, Lorg/checkerframework/org/apache/bcel/util/MethodHTML;->file:Ljava/io/PrintWriter;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "<TR><TD><FONT COLOR=\"#FF0000\">"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "</FONT></TD>\n<TD>"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 84
    invoke-static {v0}, Lorg/checkerframework/org/apache/bcel/util/Class2HTML;->referenceType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "</TD><TD><A NAME=\"field"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\">"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "</A></TD>"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 83
    invoke-virtual {v3, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 86
    invoke-virtual {p1}, Lorg/checkerframework/org/apache/bcel/classfile/Field;->getAttributes()[Lorg/checkerframework/org/apache/bcel/classfile/Attribute;

    move-result-object v3

    .line 88
    .local v3, "attributes":[Lorg/checkerframework/org/apache/bcel/classfile/Attribute;
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    array-length v5, v3

    const-string v6, "@"

    if-ge v4, v5, :cond_0

    .line 89
    iget-object v5, p0, Lorg/checkerframework/org/apache/bcel/util/MethodHTML;->attribute_html:Lorg/checkerframework/org/apache/bcel/util/AttributeHTML;

    aget-object v7, v3, v4

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v7, v6}, Lorg/checkerframework/org/apache/bcel/util/AttributeHTML;->writeAttribute(Lorg/checkerframework/org/apache/bcel/classfile/Attribute;Ljava/lang/String;)V

    .line 88
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 91
    .end local v4    # "i":I
    :cond_0
    const/4 v4, 0x0

    .restart local v4    # "i":I
    :goto_1
    array-length v5, v3

    if-ge v4, v5, :cond_2

    .line 92
    aget-object v5, v3, v4

    invoke-virtual {v5}, Lorg/checkerframework/org/apache/bcel/classfile/Attribute;->getTag()B

    move-result v5

    const/4 v7, 0x1

    if-ne v5, v7, :cond_1

    .line 93
    aget-object v5, v3, v4

    check-cast v5, Lorg/checkerframework/org/apache/bcel/classfile/ConstantValue;

    invoke-virtual {v5}, Lorg/checkerframework/org/apache/bcel/classfile/ConstantValue;->toString()Ljava/lang/String;

    move-result-object v5

    .line 95
    .local v5, "str":Ljava/lang/String;
    iget-object v7, p0, Lorg/checkerframework/org/apache/bcel/util/MethodHTML;->file:Ljava/io/PrintWriter;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "<TD>= <A HREF=\""

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lorg/checkerframework/org/apache/bcel/util/MethodHTML;->class_name:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "_attributes.html#"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v8, "\" TARGET=\"Attributes\">"

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v8, "</TD>\n"

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v7, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 97
    goto :goto_2

    .line 91
    .end local v5    # "str":Ljava/lang/String;
    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 100
    .end local v4    # "i":I
    :cond_2
    :goto_2
    iget-object v4, p0, Lorg/checkerframework/org/apache/bcel/util/MethodHTML;->file:Ljava/io/PrintWriter;

    const-string v5, "</TR>"

    invoke-virtual {v4, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 101
    return-void
.end method

.method private writeMethod(Lorg/checkerframework/org/apache/bcel/classfile/Method;I)V
    .locals 18
    .param p1, "method"    # Lorg/checkerframework/org/apache/bcel/classfile/Method;
    .param p2, "method_number"    # I

    .line 106
    move-object/from16 v0, p0

    move/from16 v1, p2

    invoke-virtual/range {p1 .. p1}, Lorg/checkerframework/org/apache/bcel/classfile/Method;->getSignature()Ljava/lang/String;

    move-result-object v2

    .line 108
    .local v2, "signature":Ljava/lang/String;
    const/4 v3, 0x0

    invoke-static {v2, v3}, Lorg/checkerframework/org/apache/bcel/classfile/Utility;->methodSignatureArgumentTypes(Ljava/lang/String;Z)[Ljava/lang/String;

    move-result-object v4

    .line 110
    .local v4, "args":[Ljava/lang/String;
    invoke-static {v2, v3}, Lorg/checkerframework/org/apache/bcel/classfile/Utility;->methodSignatureReturnType(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v3

    .line 112
    .local v3, "type":Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Lorg/checkerframework/org/apache/bcel/classfile/Method;->getName()Ljava/lang/String;

    move-result-object v5

    .line 115
    .local v5, "name":Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Lorg/checkerframework/org/apache/bcel/classfile/Method;->getAccessFlags()I

    move-result v6

    invoke-static {v6}, Lorg/checkerframework/org/apache/bcel/classfile/Utility;->accessToString(I)Ljava/lang/String;

    move-result-object v6

    .line 117
    .local v6, "access":Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Lorg/checkerframework/org/apache/bcel/classfile/Method;->getAttributes()[Lorg/checkerframework/org/apache/bcel/classfile/Attribute;

    move-result-object v7

    .line 121
    .local v7, "attributes":[Lorg/checkerframework/org/apache/bcel/classfile/Attribute;
    const-string v8, " "

    const-string v9, "&nbsp;"

    invoke-static {v6, v8, v9}, Lorg/checkerframework/org/apache/bcel/classfile/Utility;->replace(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 122
    invoke-static {v5}, Lorg/checkerframework/org/apache/bcel/util/Class2HTML;->toHTML(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 123
    .local v8, "html_name":Ljava/lang/String;
    iget-object v9, v0, Lorg/checkerframework/org/apache/bcel/util/MethodHTML;->file:Ljava/io/PrintWriter;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "<TR VALIGN=TOP><TD><FONT COLOR=\"#FF0000\"><A NAME=method"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ">"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "</A></FONT></TD>"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 125
    iget-object v9, v0, Lorg/checkerframework/org/apache/bcel/util/MethodHTML;->file:Ljava/io/PrintWriter;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "<TD>"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-static {v3}, Lorg/checkerframework/org/apache/bcel/util/Class2HTML;->referenceType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "</TD><TD><A HREF="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, v0, Lorg/checkerframework/org/apache/bcel/util/MethodHTML;->class_name:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "_code.html#method"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " TARGET=Code>"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "</A></TD>\n<TD>("

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 128
    const/4 v9, 0x0

    .local v9, "i":I
    :goto_0
    array-length v10, v4

    const-string v11, ", "

    if-ge v9, v10, :cond_1

    .line 129
    iget-object v10, v0, Lorg/checkerframework/org/apache/bcel/util/MethodHTML;->file:Ljava/io/PrintWriter;

    aget-object v12, v4, v9

    invoke-static {v12}, Lorg/checkerframework/org/apache/bcel/util/Class2HTML;->referenceType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v10, v12}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 130
    array-length v10, v4

    add-int/lit8 v10, v10, -0x1

    if-ge v9, v10, :cond_0

    .line 131
    iget-object v10, v0, Lorg/checkerframework/org/apache/bcel/util/MethodHTML;->file:Ljava/io/PrintWriter;

    invoke-virtual {v10, v11}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 128
    :cond_0
    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    .line 134
    .end local v9    # "i":I
    :cond_1
    iget-object v9, v0, Lorg/checkerframework/org/apache/bcel/util/MethodHTML;->file:Ljava/io/PrintWriter;

    const-string v10, ")</TD></TR>"

    invoke-virtual {v9, v10}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 136
    const/4 v9, 0x0

    .restart local v9    # "i":I
    :goto_1
    array-length v10, v7

    if-ge v9, v10, :cond_7

    .line 137
    iget-object v10, v0, Lorg/checkerframework/org/apache/bcel/util/MethodHTML;->attribute_html:Lorg/checkerframework/org/apache/bcel/util/AttributeHTML;

    aget-object v12, v7, v9

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "method"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v15, "@"

    invoke-virtual {v13, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v10, v12, v13, v1}, Lorg/checkerframework/org/apache/bcel/util/AttributeHTML;->writeAttribute(Lorg/checkerframework/org/apache/bcel/classfile/Attribute;Ljava/lang/String;I)V

    .line 139
    aget-object v10, v7, v9

    invoke-virtual {v10}, Lorg/checkerframework/org/apache/bcel/classfile/Attribute;->getTag()B

    move-result v10

    .line 140
    .local v10, "tag":B
    const/4 v12, 0x3

    if-ne v10, v12, :cond_4

    .line 141
    iget-object v12, v0, Lorg/checkerframework/org/apache/bcel/util/MethodHTML;->file:Ljava/io/PrintWriter;

    const-string v13, "<TR VALIGN=TOP><TD COLSPAN=2></TD><TH ALIGN=LEFT>throws</TH><TD>"

    invoke-virtual {v12, v13}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 142
    aget-object v12, v7, v9

    check-cast v12, Lorg/checkerframework/org/apache/bcel/classfile/ExceptionTable;

    invoke-virtual {v12}, Lorg/checkerframework/org/apache/bcel/classfile/ExceptionTable;->getExceptionIndexTable()[I

    move-result-object v12

    .line 143
    .local v12, "exceptions":[I
    const/4 v13, 0x0

    .local v13, "j":I
    :goto_2
    array-length v14, v12

    if-ge v13, v14, :cond_3

    .line 144
    iget-object v14, v0, Lorg/checkerframework/org/apache/bcel/util/MethodHTML;->file:Ljava/io/PrintWriter;

    iget-object v15, v0, Lorg/checkerframework/org/apache/bcel/util/MethodHTML;->constant_html:Lorg/checkerframework/org/apache/bcel/util/ConstantHTML;

    move-object/from16 v16, v2

    .end local v2    # "signature":Ljava/lang/String;
    .local v16, "signature":Ljava/lang/String;
    aget v2, v12, v13

    invoke-virtual {v15, v2}, Lorg/checkerframework/org/apache/bcel/util/ConstantHTML;->referenceConstant(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v14, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 145
    array-length v2, v12

    add-int/lit8 v2, v2, -0x1

    if-ge v13, v2, :cond_2

    .line 146
    iget-object v2, v0, Lorg/checkerframework/org/apache/bcel/util/MethodHTML;->file:Ljava/io/PrintWriter;

    invoke-virtual {v2, v11}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 143
    :cond_2
    add-int/lit8 v13, v13, 0x1

    move-object/from16 v2, v16

    goto :goto_2

    .end local v16    # "signature":Ljava/lang/String;
    .restart local v2    # "signature":Ljava/lang/String;
    :cond_3
    move-object/from16 v16, v2

    .line 149
    .end local v2    # "signature":Ljava/lang/String;
    .end local v13    # "j":I
    .restart local v16    # "signature":Ljava/lang/String;
    iget-object v2, v0, Lorg/checkerframework/org/apache/bcel/util/MethodHTML;->file:Ljava/io/PrintWriter;

    const-string v13, "</TD></TR>"

    invoke-virtual {v2, v13}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .end local v12    # "exceptions":[I
    goto :goto_4

    .line 150
    .end local v16    # "signature":Ljava/lang/String;
    .restart local v2    # "signature":Ljava/lang/String;
    :cond_4
    move-object/from16 v16, v2

    .end local v2    # "signature":Ljava/lang/String;
    .restart local v16    # "signature":Ljava/lang/String;
    const/4 v2, 0x2

    if-ne v10, v2, :cond_6

    .line 151
    aget-object v2, v7, v9

    check-cast v2, Lorg/checkerframework/org/apache/bcel/classfile/Code;

    invoke-virtual {v2}, Lorg/checkerframework/org/apache/bcel/classfile/Code;->getAttributes()[Lorg/checkerframework/org/apache/bcel/classfile/Attribute;

    move-result-object v2

    .line 152
    .local v2, "c_a":[Lorg/checkerframework/org/apache/bcel/classfile/Attribute;
    const/4 v12, 0x0

    .local v12, "j":I
    :goto_3
    array-length v13, v2

    if-ge v12, v13, :cond_5

    .line 153
    iget-object v13, v0, Lorg/checkerframework/org/apache/bcel/util/MethodHTML;->attribute_html:Lorg/checkerframework/org/apache/bcel/util/AttributeHTML;

    aget-object v0, v2, v12

    move-object/from16 v17, v2

    .end local v2    # "c_a":[Lorg/checkerframework/org/apache/bcel/classfile/Attribute;
    .local v17, "c_a":[Lorg/checkerframework/org/apache/bcel/classfile/Attribute;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v13, v0, v2, v1}, Lorg/checkerframework/org/apache/bcel/util/AttributeHTML;->writeAttribute(Lorg/checkerframework/org/apache/bcel/classfile/Attribute;Ljava/lang/String;I)V

    .line 152
    add-int/lit8 v12, v12, 0x1

    move-object/from16 v0, p0

    move-object/from16 v2, v17

    goto :goto_3

    .end local v17    # "c_a":[Lorg/checkerframework/org/apache/bcel/classfile/Attribute;
    .restart local v2    # "c_a":[Lorg/checkerframework/org/apache/bcel/classfile/Attribute;
    :cond_5
    move-object/from16 v17, v2

    .end local v2    # "c_a":[Lorg/checkerframework/org/apache/bcel/classfile/Attribute;
    .restart local v17    # "c_a":[Lorg/checkerframework/org/apache/bcel/classfile/Attribute;
    goto :goto_5

    .line 150
    .end local v12    # "j":I
    .end local v17    # "c_a":[Lorg/checkerframework/org/apache/bcel/classfile/Attribute;
    :cond_6
    :goto_4
    nop

    .line 136
    .end local v10    # "tag":B
    :goto_5
    add-int/lit8 v9, v9, 0x1

    move-object/from16 v0, p0

    move-object/from16 v2, v16

    goto/16 :goto_1

    .line 158
    .end local v9    # "i":I
    .end local v16    # "signature":Ljava/lang/String;
    .local v2, "signature":Ljava/lang/String;
    :cond_7
    return-void
.end method
