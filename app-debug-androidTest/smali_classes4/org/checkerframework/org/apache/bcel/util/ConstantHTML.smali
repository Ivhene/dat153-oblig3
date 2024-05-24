.class final Lorg/checkerframework/org/apache/bcel/util/ConstantHTML;
.super Ljava/lang/Object;
.source "ConstantHTML.java"


# instance fields
.field private final class_name:Ljava/lang/String;

.field private final class_package:Ljava/lang/String;

.field private final constant_pool:Lorg/checkerframework/org/apache/bcel/classfile/ConstantPool;

.field private final constant_ref:[Ljava/lang/String;

.field private final constants:[Lorg/checkerframework/org/apache/bcel/classfile/Constant;

.field private final file:Ljava/io/PrintWriter;

.field private final methods:[Lorg/checkerframework/org/apache/bcel/classfile/Method;


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Lorg/checkerframework/org/apache/bcel/classfile/Method;Lorg/checkerframework/org/apache/bcel/classfile/ConstantPool;)V
    .locals 5
    .param p1, "dir"    # Ljava/lang/String;
    .param p2, "class_name"    # Ljava/lang/String;
    .param p3, "class_package"    # Ljava/lang/String;
    .param p4, "methods"    # [Lorg/checkerframework/org/apache/bcel/classfile/Method;
    .param p5, "constant_pool"    # Lorg/checkerframework/org/apache/bcel/classfile/ConstantPool;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    iput-object p2, p0, Lorg/checkerframework/org/apache/bcel/util/ConstantHTML;->class_name:Ljava/lang/String;

    .line 56
    iput-object p3, p0, Lorg/checkerframework/org/apache/bcel/util/ConstantHTML;->class_package:Ljava/lang/String;

    .line 57
    iput-object p5, p0, Lorg/checkerframework/org/apache/bcel/util/ConstantHTML;->constant_pool:Lorg/checkerframework/org/apache/bcel/classfile/ConstantPool;

    .line 58
    iput-object p4, p0, Lorg/checkerframework/org/apache/bcel/util/ConstantHTML;->methods:[Lorg/checkerframework/org/apache/bcel/classfile/Method;

    .line 59
    invoke-virtual {p5}, Lorg/checkerframework/org/apache/bcel/classfile/ConstantPool;->getConstantPool()[Lorg/checkerframework/org/apache/bcel/classfile/Constant;

    move-result-object v0

    iput-object v0, p0, Lorg/checkerframework/org/apache/bcel/util/ConstantHTML;->constants:[Lorg/checkerframework/org/apache/bcel/classfile/Constant;

    .line 60
    new-instance v1, Ljava/io/PrintWriter;

    new-instance v2, Ljava/io/FileOutputStream;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "_cp.html"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    invoke-direct {v1, v2}, Ljava/io/PrintWriter;-><init>(Ljava/io/OutputStream;)V

    iput-object v1, p0, Lorg/checkerframework/org/apache/bcel/util/ConstantHTML;->file:Ljava/io/PrintWriter;

    .line 61
    array-length v0, v0

    new-array v0, v0, [Ljava/lang/String;

    iput-object v0, p0, Lorg/checkerframework/org/apache/bcel/util/ConstantHTML;->constant_ref:[Ljava/lang/String;

    .line 62
    const/4 v2, 0x0

    const-string v3, "&lt;unknown&gt;"

    aput-object v3, v0, v2

    .line 63
    const-string v0, "<HTML><BODY BGCOLOR=\"#C0C0C0\"><TABLE BORDER=0>"

    invoke-virtual {v1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 65
    const/4 v0, 0x1

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lorg/checkerframework/org/apache/bcel/util/ConstantHTML;->constants:[Lorg/checkerframework/org/apache/bcel/classfile/Constant;

    array-length v1, v1

    if-ge v0, v1, :cond_2

    .line 66
    rem-int/lit8 v1, v0, 0x2

    if-nez v1, :cond_0

    .line 67
    iget-object v1, p0, Lorg/checkerframework/org/apache/bcel/util/ConstantHTML;->file:Ljava/io/PrintWriter;

    const-string v2, "<TR BGCOLOR=\"#C0C0C0\"><TD>"

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    goto :goto_1

    .line 69
    :cond_0
    iget-object v1, p0, Lorg/checkerframework/org/apache/bcel/util/ConstantHTML;->file:Ljava/io/PrintWriter;

    const-string v2, "<TR BGCOLOR=\"#A0A0A0\"><TD>"

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 71
    :goto_1
    iget-object v1, p0, Lorg/checkerframework/org/apache/bcel/util/ConstantHTML;->constants:[Lorg/checkerframework/org/apache/bcel/classfile/Constant;

    aget-object v1, v1, v0

    if-eqz v1, :cond_1

    .line 72
    invoke-direct {p0, v0}, Lorg/checkerframework/org/apache/bcel/util/ConstantHTML;->writeConstant(I)V

    .line 74
    :cond_1
    iget-object v1, p0, Lorg/checkerframework/org/apache/bcel/util/ConstantHTML;->file:Ljava/io/PrintWriter;

    const-string v2, "</TD></TR>\n"

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 65
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 76
    .end local v0    # "i":I
    :cond_2
    iget-object v0, p0, Lorg/checkerframework/org/apache/bcel/util/ConstantHTML;->file:Ljava/io/PrintWriter;

    const-string v1, "</TABLE></BODY></HTML>"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 77
    iget-object v0, p0, Lorg/checkerframework/org/apache/bcel/util/ConstantHTML;->file:Ljava/io/PrintWriter;

    invoke-virtual {v0}, Ljava/io/PrintWriter;->close()V

    .line 78
    return-void
.end method

.method private getMethodNumber(Ljava/lang/String;)I
    .locals 3
    .param p1, "str"    # Ljava/lang/String;

    .line 225
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lorg/checkerframework/org/apache/bcel/util/ConstantHTML;->methods:[Lorg/checkerframework/org/apache/bcel/classfile/Method;

    array-length v1, v1

    if-ge v0, v1, :cond_1

    .line 226
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lorg/checkerframework/org/apache/bcel/util/ConstantHTML;->methods:[Lorg/checkerframework/org/apache/bcel/classfile/Method;

    aget-object v2, v2, v0

    invoke-virtual {v2}, Lorg/checkerframework/org/apache/bcel/classfile/Method;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lorg/checkerframework/org/apache/bcel/util/ConstantHTML;->methods:[Lorg/checkerframework/org/apache/bcel/classfile/Method;

    aget-object v2, v2, v0

    invoke-virtual {v2}, Lorg/checkerframework/org/apache/bcel/classfile/Method;->getSignature()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 227
    .local v1, "cmp":Ljava/lang/String;
    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 228
    return v0

    .line 225
    .end local v1    # "cmp":Ljava/lang/String;
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 231
    .end local v0    # "i":I
    :cond_1
    const/4 v0, -0x1

    return v0
.end method

.method private writeConstant(I)V
    .locals 28
    .param p1, "index"    # I

    .line 87
    move-object/from16 v0, p0

    move/from16 v1, p1

    iget-object v2, v0, Lorg/checkerframework/org/apache/bcel/util/ConstantHTML;->constants:[Lorg/checkerframework/org/apache/bcel/classfile/Constant;

    aget-object v2, v2, v1

    invoke-virtual {v2}, Lorg/checkerframework/org/apache/bcel/classfile/Constant;->getTag()B

    move-result v2

    .line 92
    .local v2, "tag":B
    iget-object v3, v0, Lorg/checkerframework/org/apache/bcel/util/ConstantHTML;->file:Ljava/io/PrintWriter;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "<H4> <A NAME=cp"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ">"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "</A> "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {v2}, Lorg/checkerframework/org/apache/bcel/Const;->getConstantName(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "</H4>"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 96
    const-string v3, ")</A></UL>"

    const-string v4, "</A>.<A HREF=\""

    const-string v5, "\" TARGET=Constants>"

    const-string v6, "</A>."

    const-string v7, ")</A>\n<LI><A HREF=\"#cp"

    const-string v8, ")</A></UL>\n"

    const-string v9, "\">Name index("

    const-string v10, "</TT><UL><LI><A HREF=\"#cp"

    const-string v11, "\" TARGET=ConstantPool>"

    const-string v12, ".html\" TARGET=_top>"

    const-string v13, "."

    const-string v14, "_cp.html#cp"

    const-string v15, "</A>"

    move-object/from16 v18, v3

    const-string v3, "<P><TT>"

    move-object/from16 v19, v11

    const-string v11, "<A HREF=\""

    packed-switch v2, :pswitch_data_0

    .line 219
    move/from16 v21, v2

    move-object v2, v3

    .end local v2    # "tag":B
    .local v21, "tag":B
    iget-object v3, v0, Lorg/checkerframework/org/apache/bcel/util/ConstantHTML;->file:Ljava/io/PrintWriter;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v4, v0, Lorg/checkerframework/org/apache/bcel/util/ConstantHTML;->constant_pool:Lorg/checkerframework/org/apache/bcel/classfile/ConstantPool;

    move/from16 v5, v21

    .end local v21    # "tag":B
    .local v5, "tag":B
    invoke-virtual {v4, v1, v5}, Lorg/checkerframework/org/apache/bcel/classfile/ConstantPool;->constantToString(IB)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lorg/checkerframework/org/apache/bcel/util/Class2HTML;->toHTML(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "</TT>\n"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto/16 :goto_4

    .line 208
    .end local v5    # "tag":B
    .restart local v2    # "tag":B
    :pswitch_0
    iget-object v4, v0, Lorg/checkerframework/org/apache/bcel/util/ConstantHTML;->constant_pool:Lorg/checkerframework/org/apache/bcel/classfile/ConstantPool;

    const/16 v5, 0xc

    invoke-virtual {v4, v1, v5}, Lorg/checkerframework/org/apache/bcel/classfile/ConstantPool;->getConstant(IB)Lorg/checkerframework/org/apache/bcel/classfile/Constant;

    move-result-object v4

    check-cast v4, Lorg/checkerframework/org/apache/bcel/classfile/ConstantNameAndType;

    .line 210
    .local v4, "c6":Lorg/checkerframework/org/apache/bcel/classfile/ConstantNameAndType;
    invoke-virtual {v4}, Lorg/checkerframework/org/apache/bcel/classfile/ConstantNameAndType;->getNameIndex()I

    move-result v5

    .line 211
    .local v5, "name_index":I
    invoke-virtual {v4}, Lorg/checkerframework/org/apache/bcel/classfile/ConstantNameAndType;->getSignatureIndex()I

    move-result v6

    .line 212
    .local v6, "signature_index":I
    iget-object v11, v0, Lorg/checkerframework/org/apache/bcel/util/ConstantHTML;->file:Ljava/io/PrintWriter;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v12, v0, Lorg/checkerframework/org/apache/bcel/util/ConstantHTML;->constant_pool:Lorg/checkerframework/org/apache/bcel/classfile/ConstantPool;

    .line 213
    invoke-virtual {v12, v1, v2}, Lorg/checkerframework/org/apache/bcel/classfile/ConstantPool;->constantToString(IB)Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Lorg/checkerframework/org/apache/bcel/util/Class2HTML;->toHTML(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v7, "\">Signature index("

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 212
    invoke-virtual {v11, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 217
    move v5, v2

    goto/16 :goto_4

    .line 100
    .end local v4    # "c6":Lorg/checkerframework/org/apache/bcel/classfile/ConstantNameAndType;
    .end local v5    # "name_index":I
    .end local v6    # "signature_index":I
    :pswitch_1
    const/16 v8, 0xa

    if-ne v2, v8, :cond_0

    .line 101
    iget-object v9, v0, Lorg/checkerframework/org/apache/bcel/util/ConstantHTML;->constant_pool:Lorg/checkerframework/org/apache/bcel/classfile/ConstantPool;

    invoke-virtual {v9, v1, v8}, Lorg/checkerframework/org/apache/bcel/classfile/ConstantPool;->getConstant(IB)Lorg/checkerframework/org/apache/bcel/classfile/Constant;

    move-result-object v8

    check-cast v8, Lorg/checkerframework/org/apache/bcel/classfile/ConstantMethodref;

    .line 103
    .local v8, "c":Lorg/checkerframework/org/apache/bcel/classfile/ConstantMethodref;
    invoke-virtual {v8}, Lorg/checkerframework/org/apache/bcel/classfile/ConstantMethodref;->getClassIndex()I

    move-result v9

    .line 104
    .local v9, "class_index":I
    invoke-virtual {v8}, Lorg/checkerframework/org/apache/bcel/classfile/ConstantMethodref;->getNameAndTypeIndex()I

    move-result v8

    .line 105
    .local v8, "name_index":I
    goto :goto_0

    .line 106
    .end local v8    # "name_index":I
    .end local v9    # "class_index":I
    :cond_0
    iget-object v8, v0, Lorg/checkerframework/org/apache/bcel/util/ConstantHTML;->constant_pool:Lorg/checkerframework/org/apache/bcel/classfile/ConstantPool;

    .line 107
    const/16 v9, 0xb

    invoke-virtual {v8, v1, v9}, Lorg/checkerframework/org/apache/bcel/classfile/ConstantPool;->getConstant(IB)Lorg/checkerframework/org/apache/bcel/classfile/Constant;

    move-result-object v8

    check-cast v8, Lorg/checkerframework/org/apache/bcel/classfile/ConstantInterfaceMethodref;

    .line 108
    .local v8, "c1":Lorg/checkerframework/org/apache/bcel/classfile/ConstantInterfaceMethodref;
    invoke-virtual {v8}, Lorg/checkerframework/org/apache/bcel/classfile/ConstantInterfaceMethodref;->getClassIndex()I

    move-result v9

    .line 109
    .restart local v9    # "class_index":I
    invoke-virtual {v8}, Lorg/checkerframework/org/apache/bcel/classfile/ConstantInterfaceMethodref;->getNameAndTypeIndex()I

    move-result v10

    move v8, v10

    .line 112
    .local v8, "name_index":I
    :goto_0
    iget-object v10, v0, Lorg/checkerframework/org/apache/bcel/util/ConstantHTML;->constant_pool:Lorg/checkerframework/org/apache/bcel/classfile/ConstantPool;

    move/from16 v21, v2

    const/16 v2, 0xc

    .end local v2    # "tag":B
    .restart local v21    # "tag":B
    invoke-virtual {v10, v8, v2}, Lorg/checkerframework/org/apache/bcel/classfile/ConstantPool;->constantToString(IB)Ljava/lang/String;

    move-result-object v10

    .line 114
    .local v10, "method_name":Ljava/lang/String;
    invoke-static {v10}, Lorg/checkerframework/org/apache/bcel/util/Class2HTML;->toHTML(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 116
    .local v2, "html_method_name":Ljava/lang/String;
    move-object/from16 v22, v7

    iget-object v7, v0, Lorg/checkerframework/org/apache/bcel/util/ConstantHTML;->constant_pool:Lorg/checkerframework/org/apache/bcel/classfile/ConstantPool;

    move-object/from16 v23, v3

    const/4 v3, 0x7

    invoke-virtual {v7, v9, v3}, Lorg/checkerframework/org/apache/bcel/classfile/ConstantPool;->constantToString(IB)Ljava/lang/String;

    move-result-object v3

    .line 117
    .local v3, "method_class":Ljava/lang/String;
    invoke-static {v3}, Lorg/checkerframework/org/apache/bcel/classfile/Utility;->compactClassName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 118
    .local v7, "short_method_class":Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v24, v4

    iget-object v4, v0, Lorg/checkerframework/org/apache/bcel/util/ConstantHTML;->class_package:Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v4, 0x1

    invoke-static {v7, v1, v4}, Lorg/checkerframework/org/apache/bcel/classfile/Utility;->compactClassName(Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v1

    .line 121
    .end local v7    # "short_method_class":Ljava/lang/String;
    .local v1, "short_method_class":Ljava/lang/String;
    iget-object v7, v0, Lorg/checkerframework/org/apache/bcel/util/ConstantHTML;->constant_pool:Lorg/checkerframework/org/apache/bcel/classfile/ConstantPool;

    const/16 v13, 0xc

    invoke-virtual {v7, v8, v13}, Lorg/checkerframework/org/apache/bcel/classfile/ConstantPool;->getConstant(IB)Lorg/checkerframework/org/apache/bcel/classfile/Constant;

    move-result-object v7

    check-cast v7, Lorg/checkerframework/org/apache/bcel/classfile/ConstantNameAndType;

    .line 123
    .local v7, "c2":Lorg/checkerframework/org/apache/bcel/classfile/ConstantNameAndType;
    iget-object v13, v0, Lorg/checkerframework/org/apache/bcel/util/ConstantHTML;->constant_pool:Lorg/checkerframework/org/apache/bcel/classfile/ConstantPool;

    move/from16 v16, v8

    .end local v8    # "name_index":I
    .local v16, "name_index":I
    invoke-virtual {v7}, Lorg/checkerframework/org/apache/bcel/classfile/ConstantNameAndType;->getSignatureIndex()I

    move-result v8

    invoke-virtual {v13, v8, v4}, Lorg/checkerframework/org/apache/bcel/classfile/ConstantPool;->constantToString(IB)Ljava/lang/String;

    move-result-object v8

    .line 126
    .local v8, "signature":Ljava/lang/String;
    const/4 v4, 0x0

    invoke-static {v8, v4}, Lorg/checkerframework/org/apache/bcel/classfile/Utility;->methodSignatureArgumentTypes(Ljava/lang/String;Z)[Ljava/lang/String;

    move-result-object v13

    .line 128
    .local v13, "args":[Ljava/lang/String;
    invoke-static {v8, v4}, Lorg/checkerframework/org/apache/bcel/classfile/Utility;->methodSignatureReturnType(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v4

    .line 129
    .local v4, "type":Ljava/lang/String;
    move-object/from16 v17, v7

    .end local v7    # "c2":Lorg/checkerframework/org/apache/bcel/classfile/ConstantNameAndType;
    .local v17, "c2":Lorg/checkerframework/org/apache/bcel/classfile/ConstantNameAndType;
    invoke-static {v4}, Lorg/checkerframework/org/apache/bcel/util/Class2HTML;->referenceType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 130
    .local v7, "ret_type":Ljava/lang/String;
    move-object/from16 v25, v4

    .end local v4    # "type":Ljava/lang/String;
    .local v25, "type":Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    move-object/from16 v26, v5

    const-string v5, "("

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 131
    .local v4, "buf":Ljava/lang/StringBuilder;
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_1
    move/from16 v27, v9

    .end local v9    # "class_index":I
    .local v27, "class_index":I
    array-length v9, v13

    if-ge v5, v9, :cond_2

    .line 132
    aget-object v9, v13, v5

    invoke-static {v9}, Lorg/checkerframework/org/apache/bcel/util/Class2HTML;->referenceType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 133
    array-length v9, v13

    const/16 v20, 0x1

    add-int/lit8 v9, v9, -0x1

    if-ge v5, v9, :cond_1

    .line 134
    const-string v9, ",&nbsp;"

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 131
    :cond_1
    add-int/lit8 v5, v5, 0x1

    move/from16 v9, v27

    goto :goto_1

    .line 137
    .end local v5    # "i":I
    :cond_2
    const-string v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 138
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 139
    .local v5, "arg_types":Ljava/lang/String;
    iget-object v9, v0, Lorg/checkerframework/org/apache/bcel/util/ConstantHTML;->class_name:Ljava/lang/String;

    invoke-virtual {v3, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_3

    .line 140
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v9, v0, Lorg/checkerframework/org/apache/bcel/util/ConstantHTML;->class_name:Ljava/lang/String;

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v9, "_code.html#method"

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 141
    invoke-direct {v0, v9}, Lorg/checkerframework/org/apache/bcel/util/ConstantHTML;->getMethodNumber(Ljava/lang/String;)I

    move-result v9

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v9, "\" TARGET=Code>"

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .local v6, "ref":Ljava/lang/String;
    goto :goto_2

    .line 144
    .end local v6    # "ref":Ljava/lang/String;
    :cond_3
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 147
    .restart local v6    # "ref":Ljava/lang/String;
    :goto_2
    iget-object v9, v0, Lorg/checkerframework/org/apache/bcel/util/ConstantHTML;->constant_ref:[Ljava/lang/String;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "&nbsp;<A HREF=\""

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v12, v0, Lorg/checkerframework/org/apache/bcel/util/ConstantHTML;->class_name:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    move/from16 v12, v27

    .end local v27    # "class_index":I
    .local v12, "class_index":I
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    move-object/from16 v15, v26

    invoke-virtual {v11, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    move-object/from16 v15, v24

    invoke-virtual {v11, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v15, v0, Lorg/checkerframework/org/apache/bcel/util/ConstantHTML;->class_name:Ljava/lang/String;

    invoke-virtual {v11, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    move/from16 v14, p1

    invoke-virtual {v11, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    move-object/from16 v15, v19

    invoke-virtual {v11, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v15, "</A>&nbsp;"

    invoke-virtual {v11, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    aput-object v11, v9, v14

    .line 151
    iget-object v9, v0, Lorg/checkerframework/org/apache/bcel/util/ConstantHTML;->file:Ljava/io/PrintWriter;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v15, v23

    invoke-virtual {v11, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v15, "&nbsp;"

    invoke-virtual {v11, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v15, "&nbsp;</TT>\n<UL><LI><A HREF=\"#cp"

    invoke-virtual {v11, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v15, "\">Class index("

    invoke-virtual {v11, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    move-object/from16 v15, v22

    invoke-virtual {v11, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    move/from16 v15, v16

    .end local v16    # "name_index":I
    .local v15, "name_index":I
    invoke-virtual {v11, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    move-object/from16 v16, v1

    .end local v1    # "short_method_class":Ljava/lang/String;
    .local v16, "short_method_class":Ljava/lang/String;
    const-string v1, "\">NameAndType index("

    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object/from16 v11, v18

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v9, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 155
    move v1, v14

    move/from16 v5, v21

    goto/16 :goto_4

    .line 158
    .end local v3    # "method_class":Ljava/lang/String;
    .end local v4    # "buf":Ljava/lang/StringBuilder;
    .end local v5    # "arg_types":Ljava/lang/String;
    .end local v6    # "ref":Ljava/lang/String;
    .end local v7    # "ret_type":Ljava/lang/String;
    .end local v8    # "signature":Ljava/lang/String;
    .end local v10    # "method_name":Ljava/lang/String;
    .end local v12    # "class_index":I
    .end local v13    # "args":[Ljava/lang/String;
    .end local v15    # "name_index":I
    .end local v16    # "short_method_class":Ljava/lang/String;
    .end local v17    # "c2":Lorg/checkerframework/org/apache/bcel/classfile/ConstantNameAndType;
    .end local v21    # "tag":B
    .end local v25    # "type":Ljava/lang/String;
    .local v2, "tag":B
    :pswitch_2
    move/from16 v21, v2

    move-object v7, v3

    move-object v3, v4

    move-object v4, v5

    move-object/from16 v2, v18

    move-object/from16 v5, v19

    .end local v2    # "tag":B
    .restart local v21    # "tag":B
    iget-object v8, v0, Lorg/checkerframework/org/apache/bcel/util/ConstantHTML;->constant_pool:Lorg/checkerframework/org/apache/bcel/classfile/ConstantPool;

    const/16 v9, 0x9

    invoke-virtual {v8, v1, v9}, Lorg/checkerframework/org/apache/bcel/classfile/ConstantPool;->getConstant(IB)Lorg/checkerframework/org/apache/bcel/classfile/Constant;

    move-result-object v8

    check-cast v8, Lorg/checkerframework/org/apache/bcel/classfile/ConstantFieldref;

    .line 160
    .local v8, "c3":Lorg/checkerframework/org/apache/bcel/classfile/ConstantFieldref;
    invoke-virtual {v8}, Lorg/checkerframework/org/apache/bcel/classfile/ConstantFieldref;->getClassIndex()I

    move-result v9

    .line 161
    .restart local v9    # "class_index":I
    invoke-virtual {v8}, Lorg/checkerframework/org/apache/bcel/classfile/ConstantFieldref;->getNameAndTypeIndex()I

    move-result v10

    .line 163
    .local v10, "name_index":I
    move-object/from16 v18, v8

    .end local v8    # "c3":Lorg/checkerframework/org/apache/bcel/classfile/ConstantFieldref;
    .local v18, "c3":Lorg/checkerframework/org/apache/bcel/classfile/ConstantFieldref;
    iget-object v8, v0, Lorg/checkerframework/org/apache/bcel/util/ConstantHTML;->constant_pool:Lorg/checkerframework/org/apache/bcel/classfile/ConstantPool;

    move-object/from16 v19, v2

    const/4 v2, 0x7

    invoke-virtual {v8, v9, v2}, Lorg/checkerframework/org/apache/bcel/classfile/ConstantPool;->constantToString(IB)Ljava/lang/String;

    move-result-object v2

    .line 164
    .local v2, "field_class":Ljava/lang/String;
    invoke-static {v2}, Lorg/checkerframework/org/apache/bcel/classfile/Utility;->compactClassName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 165
    .local v8, "short_field_class":Ljava/lang/String;
    move-object/from16 v23, v7

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v22, v5

    iget-object v5, v0, Lorg/checkerframework/org/apache/bcel/util/ConstantHTML;->class_package:Ljava/lang/String;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v7, 0x1

    invoke-static {v8, v5, v7}, Lorg/checkerframework/org/apache/bcel/classfile/Utility;->compactClassName(Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v5

    .line 167
    .end local v8    # "short_field_class":Ljava/lang/String;
    .local v5, "short_field_class":Ljava/lang/String;
    iget-object v7, v0, Lorg/checkerframework/org/apache/bcel/util/ConstantHTML;->constant_pool:Lorg/checkerframework/org/apache/bcel/classfile/ConstantPool;

    .line 168
    const/16 v8, 0xc

    invoke-virtual {v7, v10, v8}, Lorg/checkerframework/org/apache/bcel/classfile/ConstantPool;->constantToString(IB)Ljava/lang/String;

    move-result-object v7

    .line 169
    .local v7, "field_name":Ljava/lang/String;
    iget-object v8, v0, Lorg/checkerframework/org/apache/bcel/util/ConstantHTML;->class_name:Ljava/lang/String;

    invoke-virtual {v2, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_4

    .line 170
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v8, "_methods.html#field"

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v8, "\" TARGET=Methods>"

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .restart local v6    # "ref":Ljava/lang/String;
    goto :goto_3

    .line 173
    .end local v6    # "ref":Ljava/lang/String;
    :cond_4
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v8, "\n"

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 176
    .restart local v6    # "ref":Ljava/lang/String;
    :goto_3
    iget-object v8, v0, Lorg/checkerframework/org/apache/bcel/util/ConstantHTML;->constant_ref:[Ljava/lang/String;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v12, v0, Lorg/checkerframework/org/apache/bcel/util/ConstantHTML;->class_name:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v0, Lorg/checkerframework/org/apache/bcel/util/ConstantHTML;->class_name:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v4, v22

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v8, v1

    .line 180
    iget-object v3, v0, Lorg/checkerframework/org/apache/bcel/util/ConstantHTML;->file:Ljava/io/PrintWriter;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v11, v23

    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v8, "</TT><BR>\n<UL><LI><A HREF=\"#cp"

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v8, "\">Class("

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v8, ")</A><BR>\n<LI><A HREF=\"#cp"

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v8, "\">NameAndType("

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v8, v19

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 184
    move/from16 v5, v21

    goto/16 :goto_4

    .line 200
    .end local v5    # "short_field_class":Ljava/lang/String;
    .end local v6    # "ref":Ljava/lang/String;
    .end local v7    # "field_name":Ljava/lang/String;
    .end local v9    # "class_index":I
    .end local v10    # "name_index":I
    .end local v18    # "c3":Lorg/checkerframework/org/apache/bcel/classfile/ConstantFieldref;
    .end local v21    # "tag":B
    .local v2, "tag":B
    :pswitch_3
    move/from16 v21, v2

    move-object v11, v3

    .end local v2    # "tag":B
    .restart local v21    # "tag":B
    iget-object v2, v0, Lorg/checkerframework/org/apache/bcel/util/ConstantHTML;->constant_pool:Lorg/checkerframework/org/apache/bcel/classfile/ConstantPool;

    const/16 v3, 0x8

    invoke-virtual {v2, v1, v3}, Lorg/checkerframework/org/apache/bcel/classfile/ConstantPool;->getConstant(IB)Lorg/checkerframework/org/apache/bcel/classfile/Constant;

    move-result-object v2

    check-cast v2, Lorg/checkerframework/org/apache/bcel/classfile/ConstantString;

    .line 202
    .local v2, "c5":Lorg/checkerframework/org/apache/bcel/classfile/ConstantString;
    invoke-virtual {v2}, Lorg/checkerframework/org/apache/bcel/classfile/ConstantString;->getStringIndex()I

    move-result v3

    .line 203
    .local v3, "name_index":I
    iget-object v4, v0, Lorg/checkerframework/org/apache/bcel/util/ConstantHTML;->constant_pool:Lorg/checkerframework/org/apache/bcel/classfile/ConstantPool;

    move/from16 v5, v21

    .end local v21    # "tag":B
    .local v5, "tag":B
    invoke-virtual {v4, v1, v5}, Lorg/checkerframework/org/apache/bcel/classfile/ConstantPool;->constantToString(IB)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lorg/checkerframework/org/apache/bcel/util/Class2HTML;->toHTML(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 204
    .local v4, "str":Ljava/lang/String;
    iget-object v6, v0, Lorg/checkerframework/org/apache/bcel/util/ConstantHTML;->file:Ljava/io/PrintWriter;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 206
    goto/16 :goto_4

    .line 186
    .end local v3    # "name_index":I
    .end local v4    # "str":Ljava/lang/String;
    .end local v5    # "tag":B
    .local v2, "tag":B
    :pswitch_4
    move v5, v2

    move-object v2, v3

    move-object/from16 v4, v19

    .end local v2    # "tag":B
    .restart local v5    # "tag":B
    iget-object v3, v0, Lorg/checkerframework/org/apache/bcel/util/ConstantHTML;->constant_pool:Lorg/checkerframework/org/apache/bcel/classfile/ConstantPool;

    const/4 v6, 0x7

    invoke-virtual {v3, v1, v6}, Lorg/checkerframework/org/apache/bcel/classfile/ConstantPool;->getConstant(IB)Lorg/checkerframework/org/apache/bcel/classfile/Constant;

    move-result-object v3

    check-cast v3, Lorg/checkerframework/org/apache/bcel/classfile/ConstantClass;

    .line 187
    .local v3, "c4":Lorg/checkerframework/org/apache/bcel/classfile/ConstantClass;
    invoke-virtual {v3}, Lorg/checkerframework/org/apache/bcel/classfile/ConstantClass;->getNameIndex()I

    move-result v6

    .line 188
    .local v6, "name_index":I
    iget-object v7, v0, Lorg/checkerframework/org/apache/bcel/util/ConstantHTML;->constant_pool:Lorg/checkerframework/org/apache/bcel/classfile/ConstantPool;

    invoke-virtual {v7, v1, v5}, Lorg/checkerframework/org/apache/bcel/classfile/ConstantPool;->constantToString(IB)Ljava/lang/String;

    move-result-object v7

    .line 189
    .local v7, "class_name2":Ljava/lang/String;
    move-object/from16 v16, v3

    .end local v3    # "c4":Lorg/checkerframework/org/apache/bcel/classfile/ConstantClass;
    .local v16, "c4":Lorg/checkerframework/org/apache/bcel/classfile/ConstantClass;
    invoke-static {v7}, Lorg/checkerframework/org/apache/bcel/classfile/Utility;->compactClassName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 190
    .local v3, "short_class_name":Ljava/lang/String;
    move/from16 v21, v5

    .end local v5    # "tag":B
    .restart local v21    # "tag":B
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v17, v8

    iget-object v8, v0, Lorg/checkerframework/org/apache/bcel/util/ConstantHTML;->class_package:Ljava/lang/String;

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v8, 0x1

    invoke-static {v3, v5, v8}, Lorg/checkerframework/org/apache/bcel/classfile/Utility;->compactClassName(Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v3

    .line 192
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 194
    .local v5, "ref":Ljava/lang/String;
    iget-object v8, v0, Lorg/checkerframework/org/apache/bcel/util/ConstantHTML;->constant_ref:[Ljava/lang/String;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v12, v0, Lorg/checkerframework/org/apache/bcel/util/ConstantHTML;->class_name:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v8, v1

    .line 196
    iget-object v4, v0, Lorg/checkerframework/org/apache/bcel/util/ConstantHTML;->file:Ljava/io/PrintWriter;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v8, v17

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 198
    move/from16 v5, v21

    .line 221
    .end local v3    # "short_class_name":Ljava/lang/String;
    .end local v6    # "name_index":I
    .end local v7    # "class_name2":Ljava/lang/String;
    .end local v16    # "c4":Lorg/checkerframework/org/apache/bcel/classfile/ConstantClass;
    .end local v21    # "tag":B
    .local v5, "tag":B
    :goto_4
    return-void

    :pswitch_data_0
    .packed-switch 0x7
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method referenceConstant(I)Ljava/lang/String;
    .locals 1
    .param p1, "index"    # I

    .line 82
    iget-object v0, p0, Lorg/checkerframework/org/apache/bcel/util/ConstantHTML;->constant_ref:[Ljava/lang/String;

    aget-object v0, v0, p1

    return-object v0
.end method
