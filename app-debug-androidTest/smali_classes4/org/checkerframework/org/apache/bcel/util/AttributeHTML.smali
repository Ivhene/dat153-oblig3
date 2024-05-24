.class final Lorg/checkerframework/org/apache/bcel/util/AttributeHTML;
.super Ljava/lang/Object;
.source "AttributeHTML.java"


# instance fields
.field private attr_count:I

.field private final class_name:Ljava/lang/String;

.field private final constant_html:Lorg/checkerframework/org/apache/bcel/util/ConstantHTML;

.field private final constant_pool:Lorg/checkerframework/org/apache/bcel/classfile/ConstantPool;

.field private final file:Ljava/io/PrintWriter;


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/String;Lorg/checkerframework/org/apache/bcel/classfile/ConstantPool;Lorg/checkerframework/org/apache/bcel/util/ConstantHTML;)V
    .locals 4
    .param p1, "dir"    # Ljava/lang/String;
    .param p2, "class_name"    # Ljava/lang/String;
    .param p3, "constant_pool"    # Lorg/checkerframework/org/apache/bcel/classfile/ConstantPool;
    .param p4, "constant_html"    # Lorg/checkerframework/org/apache/bcel/util/ConstantHTML;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    const/4 v0, 0x0

    iput v0, p0, Lorg/checkerframework/org/apache/bcel/util/AttributeHTML;->attr_count:I

    .line 58
    iput-object p2, p0, Lorg/checkerframework/org/apache/bcel/util/AttributeHTML;->class_name:Ljava/lang/String;

    .line 59
    iput-object p3, p0, Lorg/checkerframework/org/apache/bcel/util/AttributeHTML;->constant_pool:Lorg/checkerframework/org/apache/bcel/classfile/ConstantPool;

    .line 60
    iput-object p4, p0, Lorg/checkerframework/org/apache/bcel/util/AttributeHTML;->constant_html:Lorg/checkerframework/org/apache/bcel/util/ConstantHTML;

    .line 61
    new-instance v0, Ljava/io/PrintWriter;

    new-instance v1, Ljava/io/FileOutputStream;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "_attributes.html"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v1}, Ljava/io/PrintWriter;-><init>(Ljava/io/OutputStream;)V

    iput-object v0, p0, Lorg/checkerframework/org/apache/bcel/util/AttributeHTML;->file:Ljava/io/PrintWriter;

    .line 62
    const-string v1, "<HTML><BODY BGCOLOR=\"#C0C0C0\"><TABLE BORDER=0>"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 63
    return-void
.end method

.method private codeLink(II)Ljava/lang/String;
    .locals 2
    .param p1, "link"    # I
    .param p2, "method_number"    # I

    .line 67
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "<A HREF=\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/checkerframework/org/apache/bcel/util/AttributeHTML;->class_name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "_code.html#code"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "@"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\" TARGET=Code>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "</A>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method final close()V
    .locals 2

    .line 73
    iget-object v0, p0, Lorg/checkerframework/org/apache/bcel/util/AttributeHTML;->file:Ljava/io/PrintWriter;

    const-string v1, "</TABLE></BODY></HTML>"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 74
    iget-object v0, p0, Lorg/checkerframework/org/apache/bcel/util/AttributeHTML;->file:Ljava/io/PrintWriter;

    invoke-virtual {v0}, Ljava/io/PrintWriter;->close()V

    .line 75
    return-void
.end method

.method final writeAttribute(Lorg/checkerframework/org/apache/bcel/classfile/Attribute;Ljava/lang/String;)V
    .locals 1
    .param p1, "attribute"    # Lorg/checkerframework/org/apache/bcel/classfile/Attribute;
    .param p2, "anchor"    # Ljava/lang/String;

    .line 79
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lorg/checkerframework/org/apache/bcel/util/AttributeHTML;->writeAttribute(Lorg/checkerframework/org/apache/bcel/classfile/Attribute;Ljava/lang/String;I)V

    .line 80
    return-void
.end method

.method final writeAttribute(Lorg/checkerframework/org/apache/bcel/classfile/Attribute;Ljava/lang/String;I)V
    .locals 20
    .param p1, "attribute"    # Lorg/checkerframework/org/apache/bcel/classfile/Attribute;
    .param p2, "anchor"    # Ljava/lang/String;
    .param p3, "method_number"    # I

    .line 84
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p3

    invoke-virtual/range {p1 .. p1}, Lorg/checkerframework/org/apache/bcel/classfile/Attribute;->getTag()B

    move-result v3

    .line 86
    .local v3, "tag":B
    const/4 v4, -0x1

    if-ne v3, v4, :cond_0

    .line 87
    return-void

    .line 89
    :cond_0
    iget v4, v0, Lorg/checkerframework/org/apache/bcel/util/AttributeHTML;->attr_count:I

    const/4 v5, 0x1

    add-int/2addr v4, v5

    iput v4, v0, Lorg/checkerframework/org/apache/bcel/util/AttributeHTML;->attr_count:I

    .line 90
    rem-int/lit8 v4, v4, 0x2

    if-nez v4, :cond_1

    .line 91
    iget-object v4, v0, Lorg/checkerframework/org/apache/bcel/util/AttributeHTML;->file:Ljava/io/PrintWriter;

    const-string v6, "<TR BGCOLOR=\"#C0C0C0\"><TD>"

    invoke-virtual {v4, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    goto :goto_0

    .line 93
    :cond_1
    iget-object v4, v0, Lorg/checkerframework/org/apache/bcel/util/AttributeHTML;->file:Ljava/io/PrintWriter;

    const-string v6, "<TR BGCOLOR=\"#A0A0A0\"><TD>"

    invoke-virtual {v4, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 95
    :goto_0
    iget-object v4, v0, Lorg/checkerframework/org/apache/bcel/util/AttributeHTML;->file:Ljava/io/PrintWriter;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "<H4><A NAME=\""

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v7, p2

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v8, "\">"

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v8, v0, Lorg/checkerframework/org/apache/bcel/util/AttributeHTML;->attr_count:I

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v8, " "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {v3}, Lorg/checkerframework/org/apache/bcel/Const;->getAttributeName(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v8, "</A></H4>"

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 99
    const-string v4, "<LI>"

    const-string v6, "<P>"

    const-string v8, ")</A></UL>\n"

    const-string v9, "<UL><LI><A HREF=\""

    const-string v10, "</UL>\n"

    const-string v11, "<UL>"

    const-string v12, "_cp.html#cp"

    const/4 v13, 0x0

    packed-switch v3, :pswitch_data_0

    .line 208
    move/from16 v16, v3

    .end local v3    # "tag":B
    .local v16, "tag":B
    iget-object v3, v0, Lorg/checkerframework/org/apache/bcel/util/AttributeHTML;->file:Ljava/io/PrintWriter;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    goto/16 :goto_8

    .line 185
    .end local v16    # "tag":B
    .restart local v3    # "tag":B
    :pswitch_0
    move-object v4, v1

    check-cast v4, Lorg/checkerframework/org/apache/bcel/classfile/InnerClasses;

    invoke-virtual {v4}, Lorg/checkerframework/org/apache/bcel/classfile/InnerClasses;->getInnerClasses()[Lorg/checkerframework/org/apache/bcel/classfile/InnerClass;

    move-result-object v4

    .line 187
    .local v4, "classes":[Lorg/checkerframework/org/apache/bcel/classfile/InnerClass;
    iget-object v6, v0, Lorg/checkerframework/org/apache/bcel/util/AttributeHTML;->file:Ljava/io/PrintWriter;

    invoke-virtual {v6, v11}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 188
    array-length v6, v4

    :goto_1
    if-ge v13, v6, :cond_3

    aget-object v8, v4, v13

    .line 191
    .local v8, "classe":Lorg/checkerframework/org/apache/bcel/classfile/InnerClass;
    invoke-virtual {v8}, Lorg/checkerframework/org/apache/bcel/classfile/InnerClass;->getInnerNameIndex()I

    move-result v9

    .line 192
    .local v9, "index":I
    if-lez v9, :cond_2

    .line 193
    iget-object v11, v0, Lorg/checkerframework/org/apache/bcel/util/AttributeHTML;->constant_pool:Lorg/checkerframework/org/apache/bcel/classfile/ConstantPool;

    invoke-virtual {v11, v9, v5}, Lorg/checkerframework/org/apache/bcel/classfile/ConstantPool;->getConstant(IB)Lorg/checkerframework/org/apache/bcel/classfile/Constant;

    move-result-object v11

    check-cast v11, Lorg/checkerframework/org/apache/bcel/classfile/ConstantUtf8;

    .line 194
    invoke-virtual {v11}, Lorg/checkerframework/org/apache/bcel/classfile/ConstantUtf8;->getBytes()Ljava/lang/String;

    move-result-object v11

    .local v11, "name":Ljava/lang/String;
    goto :goto_2

    .line 196
    .end local v11    # "name":Ljava/lang/String;
    :cond_2
    const-string v11, "&lt;anonymous&gt;"

    .line 198
    .restart local v11    # "name":Ljava/lang/String;
    :goto_2
    invoke-virtual {v8}, Lorg/checkerframework/org/apache/bcel/classfile/InnerClass;->getInnerAccessFlags()I

    move-result v12

    invoke-static {v12}, Lorg/checkerframework/org/apache/bcel/classfile/Utility;->accessToString(I)Ljava/lang/String;

    move-result-object v12

    .line 199
    .local v12, "access":Ljava/lang/String;
    iget-object v14, v0, Lorg/checkerframework/org/apache/bcel/util/AttributeHTML;->file:Ljava/io/PrintWriter;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "<LI><FONT COLOR=\"#FF0000\">"

    invoke-virtual {v15, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v15, "</FONT> "

    invoke-virtual {v5, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v15, v0, Lorg/checkerframework/org/apache/bcel/util/AttributeHTML;->constant_html:Lorg/checkerframework/org/apache/bcel/util/ConstantHTML;

    .line 200
    move/from16 v16, v3

    .end local v3    # "tag":B
    .restart local v16    # "tag":B
    invoke-virtual {v8}, Lorg/checkerframework/org/apache/bcel/classfile/InnerClass;->getInnerClassIndex()I

    move-result v3

    invoke-virtual {v15, v3}, Lorg/checkerframework/org/apache/bcel/util/ConstantHTML;->referenceConstant(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, " in&nbsp;class "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v5, v0, Lorg/checkerframework/org/apache/bcel/util/AttributeHTML;->constant_html:Lorg/checkerframework/org/apache/bcel/util/ConstantHTML;

    .line 202
    invoke-virtual {v8}, Lorg/checkerframework/org/apache/bcel/classfile/InnerClass;->getOuterClassIndex()I

    move-result v15

    invoke-virtual {v5, v15}, Lorg/checkerframework/org/apache/bcel/util/ConstantHTML;->referenceConstant(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, " named "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, "</LI>\n"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 199
    invoke-virtual {v14, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 188
    .end local v8    # "classe":Lorg/checkerframework/org/apache/bcel/classfile/InnerClass;
    .end local v11    # "name":Ljava/lang/String;
    .end local v12    # "access":Ljava/lang/String;
    add-int/lit8 v13, v13, 0x1

    move/from16 v3, v16

    const/4 v5, 0x1

    goto :goto_1

    .line 205
    .end local v9    # "index":I
    .end local v16    # "tag":B
    .restart local v3    # "tag":B
    :cond_3
    move/from16 v16, v3

    .end local v3    # "tag":B
    .restart local v16    # "tag":B
    iget-object v3, v0, Lorg/checkerframework/org/apache/bcel/util/AttributeHTML;->file:Ljava/io/PrintWriter;

    invoke-virtual {v3, v10}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 206
    goto/16 :goto_8

    .line 165
    .end local v4    # "classes":[Lorg/checkerframework/org/apache/bcel/classfile/InnerClass;
    .end local v16    # "tag":B
    .restart local v3    # "tag":B
    :pswitch_1
    move/from16 v16, v3

    .end local v3    # "tag":B
    .restart local v16    # "tag":B
    move-object v3, v1

    check-cast v3, Lorg/checkerframework/org/apache/bcel/classfile/LocalVariableTable;

    invoke-virtual {v3}, Lorg/checkerframework/org/apache/bcel/classfile/LocalVariableTable;->getLocalVariableTable()[Lorg/checkerframework/org/apache/bcel/classfile/LocalVariable;

    move-result-object v3

    .line 167
    .local v3, "vars":[Lorg/checkerframework/org/apache/bcel/classfile/LocalVariable;
    iget-object v5, v0, Lorg/checkerframework/org/apache/bcel/util/AttributeHTML;->file:Ljava/io/PrintWriter;

    invoke-virtual {v5, v11}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 168
    array-length v5, v3

    move v6, v13

    :goto_3
    if-ge v6, v5, :cond_4

    aget-object v8, v3, v6

    .line 169
    .local v8, "var":Lorg/checkerframework/org/apache/bcel/classfile/LocalVariable;
    invoke-virtual {v8}, Lorg/checkerframework/org/apache/bcel/classfile/LocalVariable;->getSignatureIndex()I

    move-result v9

    .line 170
    .restart local v9    # "index":I
    iget-object v11, v0, Lorg/checkerframework/org/apache/bcel/util/AttributeHTML;->constant_pool:Lorg/checkerframework/org/apache/bcel/classfile/ConstantPool;

    const/4 v12, 0x1

    invoke-virtual {v11, v9, v12}, Lorg/checkerframework/org/apache/bcel/classfile/ConstantPool;->getConstant(IB)Lorg/checkerframework/org/apache/bcel/classfile/Constant;

    move-result-object v11

    check-cast v11, Lorg/checkerframework/org/apache/bcel/classfile/ConstantUtf8;

    .line 171
    invoke-virtual {v11}, Lorg/checkerframework/org/apache/bcel/classfile/ConstantUtf8;->getBytes()Ljava/lang/String;

    move-result-object v11

    .line 172
    .local v11, "signature":Ljava/lang/String;
    invoke-static {v11, v13}, Lorg/checkerframework/org/apache/bcel/classfile/Utility;->signatureToString(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v11

    .line 173
    invoke-virtual {v8}, Lorg/checkerframework/org/apache/bcel/classfile/LocalVariable;->getStartPC()I

    move-result v12

    .line 174
    .local v12, "start":I
    invoke-virtual {v8}, Lorg/checkerframework/org/apache/bcel/classfile/LocalVariable;->getLength()I

    move-result v14

    add-int/2addr v14, v12

    .line 175
    .local v14, "end":I
    iget-object v15, v0, Lorg/checkerframework/org/apache/bcel/util/AttributeHTML;->file:Ljava/io/PrintWriter;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v13, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object/from16 v17, v3

    .end local v3    # "vars":[Lorg/checkerframework/org/apache/bcel/classfile/LocalVariable;
    .local v17, "vars":[Lorg/checkerframework/org/apache/bcel/classfile/LocalVariable;
    invoke-static {v11}, Lorg/checkerframework/org/apache/bcel/util/Class2HTML;->referenceType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v13, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v13, "&nbsp;<B>"

    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 176
    invoke-virtual {v8}, Lorg/checkerframework/org/apache/bcel/classfile/LocalVariable;->getName()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v13, "</B> in slot %"

    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v8}, Lorg/checkerframework/org/apache/bcel/classfile/LocalVariable;->getIndex()I

    move-result v13

    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v13, "<BR>Valid from lines <A HREF=\""

    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v13, v0, Lorg/checkerframework/org/apache/bcel/util/AttributeHTML;->class_name:Ljava/lang/String;

    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v13, "_code.html#code"

    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v18, v5

    const-string v5, "@"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v7, "\" TARGET=Code>"

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v19, v8

    .end local v8    # "var":Lorg/checkerframework/org/apache/bcel/classfile/LocalVariable;
    .local v19, "var":Lorg/checkerframework/org/apache/bcel/classfile/LocalVariable;
    const-string v8, "</A> to <A HREF=\""

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v8, v0, Lorg/checkerframework/org/apache/bcel/util/AttributeHTML;->class_name:Ljava/lang/String;

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, "</A></LI>"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 175
    invoke-virtual {v15, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 168
    .end local v11    # "signature":Ljava/lang/String;
    .end local v12    # "start":I
    .end local v14    # "end":I
    .end local v19    # "var":Lorg/checkerframework/org/apache/bcel/classfile/LocalVariable;
    add-int/lit8 v6, v6, 0x1

    move-object/from16 v7, p2

    move-object/from16 v3, v17

    move/from16 v5, v18

    const/4 v13, 0x0

    goto/16 :goto_3

    .line 182
    .end local v9    # "index":I
    .end local v17    # "vars":[Lorg/checkerframework/org/apache/bcel/classfile/LocalVariable;
    .restart local v3    # "vars":[Lorg/checkerframework/org/apache/bcel/classfile/LocalVariable;
    :cond_4
    move-object/from16 v17, v3

    .end local v3    # "vars":[Lorg/checkerframework/org/apache/bcel/classfile/LocalVariable;
    .restart local v17    # "vars":[Lorg/checkerframework/org/apache/bcel/classfile/LocalVariable;
    iget-object v3, v0, Lorg/checkerframework/org/apache/bcel/util/AttributeHTML;->file:Ljava/io/PrintWriter;

    invoke-virtual {v3, v10}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 183
    goto/16 :goto_8

    .line 153
    .end local v16    # "tag":B
    .end local v17    # "vars":[Lorg/checkerframework/org/apache/bcel/classfile/LocalVariable;
    .local v3, "tag":B
    :pswitch_2
    move/from16 v16, v3

    .end local v3    # "tag":B
    .restart local v16    # "tag":B
    move-object v3, v1

    check-cast v3, Lorg/checkerframework/org/apache/bcel/classfile/LineNumberTable;

    invoke-virtual {v3}, Lorg/checkerframework/org/apache/bcel/classfile/LineNumberTable;->getLineNumberTable()[Lorg/checkerframework/org/apache/bcel/classfile/LineNumber;

    move-result-object v3

    .line 155
    .local v3, "line_numbers":[Lorg/checkerframework/org/apache/bcel/classfile/LineNumber;
    iget-object v4, v0, Lorg/checkerframework/org/apache/bcel/util/AttributeHTML;->file:Ljava/io/PrintWriter;

    invoke-virtual {v4, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 156
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_4
    array-length v5, v3

    if-ge v4, v5, :cond_6

    .line 157
    iget-object v5, v0, Lorg/checkerframework/org/apache/bcel/util/AttributeHTML;->file:Ljava/io/PrintWriter;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "("

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    aget-object v7, v3, v4

    invoke-virtual {v7}, Lorg/checkerframework/org/apache/bcel/classfile/LineNumber;->getStartPC()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ",&nbsp;"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    aget-object v7, v3, v4

    .line 158
    invoke-virtual {v7}, Lorg/checkerframework/org/apache/bcel/classfile/LineNumber;->getLineNumber()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ")"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 157
    invoke-virtual {v5, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 159
    array-length v5, v3

    const/4 v6, 0x1

    sub-int/2addr v5, v6

    if-ge v4, v5, :cond_5

    .line 160
    iget-object v5, v0, Lorg/checkerframework/org/apache/bcel/util/AttributeHTML;->file:Ljava/io/PrintWriter;

    const-string v7, ", "

    invoke-virtual {v5, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 156
    :cond_5
    add-int/lit8 v4, v4, 0x1

    goto :goto_4

    .line 163
    .end local v4    # "i":I
    :cond_6
    goto/16 :goto_8

    .line 143
    .end local v16    # "tag":B
    .local v3, "tag":B
    :pswitch_3
    move/from16 v16, v3

    .end local v3    # "tag":B
    .restart local v16    # "tag":B
    move-object v3, v1

    check-cast v3, Lorg/checkerframework/org/apache/bcel/classfile/ExceptionTable;

    invoke-virtual {v3}, Lorg/checkerframework/org/apache/bcel/classfile/ExceptionTable;->getExceptionIndexTable()[I

    move-result-object v3

    .line 144
    .local v3, "indices":[I
    iget-object v4, v0, Lorg/checkerframework/org/apache/bcel/util/AttributeHTML;->file:Ljava/io/PrintWriter;

    invoke-virtual {v4, v11}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 145
    array-length v4, v3

    const/4 v13, 0x0

    :goto_5
    if-ge v13, v4, :cond_7

    aget v5, v3, v13

    .line 146
    .local v5, "indice":I
    iget-object v6, v0, Lorg/checkerframework/org/apache/bcel/util/AttributeHTML;->file:Ljava/io/PrintWriter;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "<LI><A HREF=\""

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, v0, Lorg/checkerframework/org/apache/bcel/util/AttributeHTML;->class_name:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "\" TARGET=\"ConstantPool\">Exception class index("

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ")</A>\n"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 145
    .end local v5    # "indice":I
    add-int/lit8 v13, v13, 0x1

    goto :goto_5

    .line 150
    :cond_7
    iget-object v4, v0, Lorg/checkerframework/org/apache/bcel/util/AttributeHTML;->file:Ljava/io/PrintWriter;

    invoke-virtual {v4, v10}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 151
    goto/16 :goto_8

    .line 101
    .end local v16    # "tag":B
    .local v3, "tag":B
    :pswitch_4
    move/from16 v16, v3

    .end local v3    # "tag":B
    .restart local v16    # "tag":B
    move-object v3, v1

    check-cast v3, Lorg/checkerframework/org/apache/bcel/classfile/Code;

    .line 103
    .local v3, "c":Lorg/checkerframework/org/apache/bcel/classfile/Code;
    iget-object v5, v0, Lorg/checkerframework/org/apache/bcel/util/AttributeHTML;->file:Ljava/io/PrintWriter;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "<UL><LI>Maximum stack size = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v3}, Lorg/checkerframework/org/apache/bcel/classfile/Code;->getMaxStack()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "</LI>\n<LI>Number of local variables = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 104
    invoke-virtual {v3}, Lorg/checkerframework/org/apache/bcel/classfile/Code;->getMaxLocals()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "</LI>\n<LI><A HREF=\""

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, v0, Lorg/checkerframework/org/apache/bcel/util/AttributeHTML;->class_name:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "_code.html#method"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "\" TARGET=Code>Byte code</A></LI></UL>\n"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 103
    invoke-virtual {v5, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 108
    invoke-virtual {v3}, Lorg/checkerframework/org/apache/bcel/classfile/Code;->getExceptionTable()[Lorg/checkerframework/org/apache/bcel/classfile/CodeException;

    move-result-object v5

    .line 109
    .local v5, "ce":[Lorg/checkerframework/org/apache/bcel/classfile/CodeException;
    array-length v6, v5

    .line 110
    .local v6, "len":I
    if-lez v6, :cond_a

    .line 111
    iget-object v7, v0, Lorg/checkerframework/org/apache/bcel/util/AttributeHTML;->file:Ljava/io/PrintWriter;

    const-string v8, "<P><B>Exceptions handled</B><UL>"

    invoke-virtual {v7, v8}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 112
    array-length v7, v5

    const/4 v13, 0x0

    :goto_6
    if-ge v13, v7, :cond_9

    aget-object v8, v5, v13

    .line 113
    .local v8, "cex":Lorg/checkerframework/org/apache/bcel/classfile/CodeException;
    invoke-virtual {v8}, Lorg/checkerframework/org/apache/bcel/classfile/CodeException;->getCatchType()I

    move-result v9

    .line 114
    .local v9, "catch_type":I
    iget-object v10, v0, Lorg/checkerframework/org/apache/bcel/util/AttributeHTML;->file:Ljava/io/PrintWriter;

    invoke-virtual {v10, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 115
    if-eqz v9, :cond_8

    .line 116
    iget-object v10, v0, Lorg/checkerframework/org/apache/bcel/util/AttributeHTML;->file:Ljava/io/PrintWriter;

    iget-object v11, v0, Lorg/checkerframework/org/apache/bcel/util/AttributeHTML;->constant_html:Lorg/checkerframework/org/apache/bcel/util/ConstantHTML;

    invoke-virtual {v11, v9}, Lorg/checkerframework/org/apache/bcel/util/ConstantHTML;->referenceConstant(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    goto :goto_7

    .line 118
    :cond_8
    iget-object v10, v0, Lorg/checkerframework/org/apache/bcel/util/AttributeHTML;->file:Ljava/io/PrintWriter;

    const-string v11, "Any Exception"

    invoke-virtual {v10, v11}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 120
    :goto_7
    iget-object v10, v0, Lorg/checkerframework/org/apache/bcel/util/AttributeHTML;->file:Ljava/io/PrintWriter;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "<BR>(Ranging from lines "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    .line 121
    invoke-virtual {v8}, Lorg/checkerframework/org/apache/bcel/classfile/CodeException;->getStartPC()I

    move-result v12

    invoke-direct {v0, v12, v2}, Lorg/checkerframework/org/apache/bcel/util/AttributeHTML;->codeLink(II)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " to "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    .line 122
    invoke-virtual {v8}, Lorg/checkerframework/org/apache/bcel/classfile/CodeException;->getEndPC()I

    move-result v12

    invoke-direct {v0, v12, v2}, Lorg/checkerframework/org/apache/bcel/util/AttributeHTML;->codeLink(II)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ", handled at line "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    .line 123
    invoke-virtual {v8}, Lorg/checkerframework/org/apache/bcel/classfile/CodeException;->getHandlerPC()I

    move-result v12

    invoke-direct {v0, v12, v2}, Lorg/checkerframework/org/apache/bcel/util/AttributeHTML;->codeLink(II)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ")</LI>"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    .line 120
    invoke-virtual {v10, v11}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 112
    .end local v8    # "cex":Lorg/checkerframework/org/apache/bcel/classfile/CodeException;
    .end local v9    # "catch_type":I
    add-int/lit8 v13, v13, 0x1

    goto :goto_6

    .line 125
    :cond_9
    iget-object v4, v0, Lorg/checkerframework/org/apache/bcel/util/AttributeHTML;->file:Ljava/io/PrintWriter;

    const-string v7, "</UL>"

    invoke-virtual {v4, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    goto :goto_8

    .line 129
    .end local v5    # "ce":[Lorg/checkerframework/org/apache/bcel/classfile/CodeException;
    .end local v6    # "len":I
    .end local v16    # "tag":B
    .local v3, "tag":B
    :pswitch_5
    move/from16 v16, v3

    .end local v3    # "tag":B
    .restart local v16    # "tag":B
    move-object v3, v1

    check-cast v3, Lorg/checkerframework/org/apache/bcel/classfile/ConstantValue;

    invoke-virtual {v3}, Lorg/checkerframework/org/apache/bcel/classfile/ConstantValue;->getConstantValueIndex()I

    move-result v3

    .line 131
    .local v3, "index":I
    iget-object v4, v0, Lorg/checkerframework/org/apache/bcel/util/AttributeHTML;->file:Ljava/io/PrintWriter;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, v0, Lorg/checkerframework/org/apache/bcel/util/AttributeHTML;->class_name:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\" TARGET=\"ConstantPool\">Constant value index("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 134
    goto :goto_8

    .line 136
    .end local v16    # "tag":B
    .local v3, "tag":B
    :pswitch_6
    move/from16 v16, v3

    .end local v3    # "tag":B
    .restart local v16    # "tag":B
    move-object v3, v1

    check-cast v3, Lorg/checkerframework/org/apache/bcel/classfile/SourceFile;

    invoke-virtual {v3}, Lorg/checkerframework/org/apache/bcel/classfile/SourceFile;->getSourceFileIndex()I

    move-result v3

    .line 138
    .local v3, "index":I
    iget-object v4, v0, Lorg/checkerframework/org/apache/bcel/util/AttributeHTML;->file:Ljava/io/PrintWriter;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, v0, Lorg/checkerframework/org/apache/bcel/util/AttributeHTML;->class_name:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\" TARGET=\"ConstantPool\">Source file index("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 140
    nop

    .line 210
    .end local v3    # "index":I
    :cond_a
    :goto_8
    iget-object v3, v0, Lorg/checkerframework/org/apache/bcel/util/AttributeHTML;->file:Ljava/io/PrintWriter;

    const-string v4, "</TD></TR>"

    invoke-virtual {v3, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 211
    iget-object v3, v0, Lorg/checkerframework/org/apache/bcel/util/AttributeHTML;->file:Ljava/io/PrintWriter;

    invoke-virtual {v3}, Ljava/io/PrintWriter;->flush()V

    .line 212
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
