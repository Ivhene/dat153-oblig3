.class public Lorg/checkerframework/org/apache/bcel/util/Class2HTML;
.super Ljava/lang/Object;
.source "Class2HTML.java"

# interfaces
.implements Lorg/checkerframework/org/apache/bcel/Constants;


# static fields
.field private static final basic_types:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static class_name:Ljava/lang/String;

.field private static class_package:Ljava/lang/String;

.field private static constant_pool:Lorg/checkerframework/org/apache/bcel/classfile/ConstantPool;


# instance fields
.field private final dir:Ljava/lang/String;

.field private final java_class:Lorg/checkerframework/org/apache/bcel/classfile/JavaClass;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 64
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Lorg/checkerframework/org/apache/bcel/util/Class2HTML;->basic_types:Ljava/util/Set;

    .line 67
    const-string v1, "int"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 68
    const-string v1, "short"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 69
    const-string v1, "boolean"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 70
    const-string v1, "void"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 71
    const-string v1, "char"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 72
    const-string v1, "byte"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 73
    const-string v1, "long"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 74
    const-string v1, "double"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 75
    const-string v1, "float"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 76
    return-void
.end method

.method public constructor <init>(Lorg/checkerframework/org/apache/bcel/classfile/JavaClass;Ljava/lang/String;)V
    .locals 11
    .param p1, "java_class"    # Lorg/checkerframework/org/apache/bcel/classfile/JavaClass;
    .param p2, "dir"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 84
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 85
    invoke-virtual {p1}, Lorg/checkerframework/org/apache/bcel/classfile/JavaClass;->getMethods()[Lorg/checkerframework/org/apache/bcel/classfile/Method;

    move-result-object v7

    .line 86
    .local v7, "methods":[Lorg/checkerframework/org/apache/bcel/classfile/Method;
    iput-object p1, p0, Lorg/checkerframework/org/apache/bcel/util/Class2HTML;->java_class:Lorg/checkerframework/org/apache/bcel/classfile/JavaClass;

    .line 87
    iput-object p2, p0, Lorg/checkerframework/org/apache/bcel/util/Class2HTML;->dir:Ljava/lang/String;

    .line 88
    invoke-virtual {p1}, Lorg/checkerframework/org/apache/bcel/classfile/JavaClass;->getClassName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/checkerframework/org/apache/bcel/util/Class2HTML;->class_name:Ljava/lang/String;

    .line 89
    invoke-virtual {p1}, Lorg/checkerframework/org/apache/bcel/classfile/JavaClass;->getConstantPool()Lorg/checkerframework/org/apache/bcel/classfile/ConstantPool;

    move-result-object v0

    sput-object v0, Lorg/checkerframework/org/apache/bcel/util/Class2HTML;->constant_pool:Lorg/checkerframework/org/apache/bcel/classfile/ConstantPool;

    .line 91
    sget-object v0, Lorg/checkerframework/org/apache/bcel/util/Class2HTML;->class_name:Ljava/lang/String;

    const/16 v1, 0x2e

    invoke-virtual {v0, v1}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v8

    .line 92
    .local v8, "index":I
    const/4 v0, -0x1

    if-le v8, v0, :cond_0

    .line 93
    sget-object v0, Lorg/checkerframework/org/apache/bcel/util/Class2HTML;->class_name:Ljava/lang/String;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/checkerframework/org/apache/bcel/util/Class2HTML;->class_package:Ljava/lang/String;

    goto :goto_0

    .line 95
    :cond_0
    const-string v0, ""

    sput-object v0, Lorg/checkerframework/org/apache/bcel/util/Class2HTML;->class_package:Ljava/lang/String;

    .line 97
    :goto_0
    new-instance v6, Lorg/checkerframework/org/apache/bcel/util/ConstantHTML;

    sget-object v2, Lorg/checkerframework/org/apache/bcel/util/Class2HTML;->class_name:Ljava/lang/String;

    sget-object v3, Lorg/checkerframework/org/apache/bcel/util/Class2HTML;->class_package:Ljava/lang/String;

    sget-object v5, Lorg/checkerframework/org/apache/bcel/util/Class2HTML;->constant_pool:Lorg/checkerframework/org/apache/bcel/classfile/ConstantPool;

    move-object v0, v6

    move-object v1, p2

    move-object v4, v7

    invoke-direct/range {v0 .. v5}, Lorg/checkerframework/org/apache/bcel/util/ConstantHTML;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Lorg/checkerframework/org/apache/bcel/classfile/Method;Lorg/checkerframework/org/apache/bcel/classfile/ConstantPool;)V

    move-object v9, v6

    .line 102
    .local v9, "constant_html":Lorg/checkerframework/org/apache/bcel/util/ConstantHTML;
    new-instance v0, Lorg/checkerframework/org/apache/bcel/util/AttributeHTML;

    sget-object v1, Lorg/checkerframework/org/apache/bcel/util/Class2HTML;->class_name:Ljava/lang/String;

    sget-object v2, Lorg/checkerframework/org/apache/bcel/util/Class2HTML;->constant_pool:Lorg/checkerframework/org/apache/bcel/classfile/ConstantPool;

    invoke-direct {v0, p2, v1, v2, v9}, Lorg/checkerframework/org/apache/bcel/util/AttributeHTML;-><init>(Ljava/lang/String;Ljava/lang/String;Lorg/checkerframework/org/apache/bcel/classfile/ConstantPool;Lorg/checkerframework/org/apache/bcel/util/ConstantHTML;)V

    move-object v10, v0

    .line 104
    .local v10, "attribute_html":Lorg/checkerframework/org/apache/bcel/util/AttributeHTML;
    new-instance v0, Lorg/checkerframework/org/apache/bcel/util/MethodHTML;

    sget-object v2, Lorg/checkerframework/org/apache/bcel/util/Class2HTML;->class_name:Ljava/lang/String;

    invoke-virtual {p1}, Lorg/checkerframework/org/apache/bcel/classfile/JavaClass;->getFields()[Lorg/checkerframework/org/apache/bcel/classfile/Field;

    move-result-object v4

    move-object v1, p2

    move-object v3, v7

    move-object v5, v9

    move-object v6, v10

    invoke-direct/range {v0 .. v6}, Lorg/checkerframework/org/apache/bcel/util/MethodHTML;-><init>(Ljava/lang/String;Ljava/lang/String;[Lorg/checkerframework/org/apache/bcel/classfile/Method;[Lorg/checkerframework/org/apache/bcel/classfile/Field;Lorg/checkerframework/org/apache/bcel/util/ConstantHTML;Lorg/checkerframework/org/apache/bcel/util/AttributeHTML;)V

    .line 107
    invoke-direct {p0, v10}, Lorg/checkerframework/org/apache/bcel/util/Class2HTML;->writeMainHTML(Lorg/checkerframework/org/apache/bcel/util/AttributeHTML;)V

    .line 108
    new-instance v0, Lorg/checkerframework/org/apache/bcel/util/CodeHTML;

    sget-object v2, Lorg/checkerframework/org/apache/bcel/util/Class2HTML;->class_name:Ljava/lang/String;

    sget-object v4, Lorg/checkerframework/org/apache/bcel/util/Class2HTML;->constant_pool:Lorg/checkerframework/org/apache/bcel/classfile/ConstantPool;

    invoke-direct/range {v0 .. v5}, Lorg/checkerframework/org/apache/bcel/util/CodeHTML;-><init>(Ljava/lang/String;Ljava/lang/String;[Lorg/checkerframework/org/apache/bcel/classfile/Method;Lorg/checkerframework/org/apache/bcel/classfile/ConstantPool;Lorg/checkerframework/org/apache/bcel/util/ConstantHTML;)V

    .line 109
    invoke-virtual {v10}, Lorg/checkerframework/org/apache/bcel/util/AttributeHTML;->close()V

    .line 110
    return-void
.end method

.method public static main([Ljava/lang/String;)V
    .locals 13
    .param p0, "argv"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 114
    array-length v0, p0

    new-array v0, v0, [Ljava/lang/String;

    .line 115
    .local v0, "file_name":[Ljava/lang/String;
    const/4 v1, 0x0

    .line 116
    .local v1, "files":I
    const/4 v2, 0x0

    .line 117
    .local v2, "parser":Lorg/checkerframework/org/apache/bcel/classfile/ClassParser;
    const/4 v3, 0x0

    .line 118
    .local v3, "java_class":Lorg/checkerframework/org/apache/bcel/classfile/JavaClass;
    const/4 v4, 0x0

    .line 119
    .local v4, "zip_file":Ljava/lang/String;
    sget-char v5, Ljava/io/File;->separatorChar:C

    .line 120
    .local v5, "sep":C
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "."

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 123
    .local v6, "dir":Ljava/lang/String;
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_0
    array-length v8, p0

    if-ge v7, v8, :cond_5

    .line 124
    aget-object v8, p0, v7

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Ljava/lang/String;->charAt(I)C

    move-result v8

    const/16 v9, 0x2d

    if-ne v8, v9, :cond_4

    .line 125
    aget-object v8, p0, v7

    const-string v9, "-d"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 126
    add-int/lit8 v7, v7, 0x1

    aget-object v6, p0, v7

    .line 127
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, ""

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_0

    .line 128
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 130
    :cond_0
    new-instance v8, Ljava/io/File;

    invoke-direct {v8, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 131
    .local v8, "store":Ljava/io/File;
    invoke-virtual {v8}, Ljava/io/File;->isDirectory()Z

    move-result v9

    if-nez v9, :cond_1

    .line 132
    invoke-virtual {v8}, Ljava/io/File;->mkdirs()Z

    move-result v9

    .line 133
    .local v9, "created":Z
    if-nez v9, :cond_1

    .line 134
    invoke-virtual {v8}, Ljava/io/File;->isDirectory()Z

    move-result v10

    if-nez v10, :cond_1

    .line 135
    sget-object v10, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Tried to create the directory "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " but failed"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 139
    .end local v8    # "store":Ljava/io/File;
    .end local v9    # "created":Z
    :cond_1
    goto :goto_1

    :cond_2
    aget-object v8, p0, v7

    const-string v9, "-zip"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 140
    add-int/lit8 v7, v7, 0x1

    aget-object v4, p0, v7

    goto :goto_1

    .line 142
    :cond_3
    sget-object v8, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Unknown option "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    aget-object v10, p0, v7

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_1

    .line 145
    :cond_4
    add-int/lit8 v8, v1, 0x1

    .end local v1    # "files":I
    .local v8, "files":I
    aget-object v9, p0, v7

    aput-object v9, v0, v1

    move v1, v8

    .line 123
    .end local v8    # "files":I
    .restart local v1    # "files":I
    :goto_1
    add-int/lit8 v7, v7, 0x1

    goto/16 :goto_0

    .line 148
    .end local v7    # "i":I
    :cond_5
    if-nez v1, :cond_6

    .line 149
    sget-object v7, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v8, "Class2HTML: No input files specified."

    invoke-virtual {v7, v8}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_4

    .line 151
    :cond_6
    const/4 v7, 0x0

    .restart local v7    # "i":I
    :goto_2
    if-ge v7, v1, :cond_8

    .line 152
    sget-object v8, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Processing "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    aget-object v10, v0, v7

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "..."

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 153
    if-nez v4, :cond_7

    .line 154
    new-instance v8, Lorg/checkerframework/org/apache/bcel/classfile/ClassParser;

    aget-object v9, v0, v7

    invoke-direct {v8, v9}, Lorg/checkerframework/org/apache/bcel/classfile/ClassParser;-><init>(Ljava/lang/String;)V

    move-object v2, v8

    goto :goto_3

    .line 156
    :cond_7
    new-instance v8, Lorg/checkerframework/org/apache/bcel/classfile/ClassParser;

    aget-object v9, v0, v7

    invoke-direct {v8, v4, v9}, Lorg/checkerframework/org/apache/bcel/classfile/ClassParser;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object v2, v8

    .line 158
    :goto_3
    invoke-virtual {v2}, Lorg/checkerframework/org/apache/bcel/classfile/ClassParser;->parse()Lorg/checkerframework/org/apache/bcel/classfile/JavaClass;

    move-result-object v3

    .line 159
    new-instance v8, Lorg/checkerframework/org/apache/bcel/util/Class2HTML;

    invoke-direct {v8, v3, v6}, Lorg/checkerframework/org/apache/bcel/util/Class2HTML;-><init>(Lorg/checkerframework/org/apache/bcel/classfile/JavaClass;Ljava/lang/String;)V

    .line 160
    sget-object v8, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v9, "Done."

    invoke-virtual {v8, v9}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 151
    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    .line 163
    .end local v7    # "i":I
    :cond_8
    :goto_4
    return-void
.end method

.method static referenceClass(I)Ljava/lang/String;
    .locals 3
    .param p0, "index"    # I

    .line 171
    sget-object v0, Lorg/checkerframework/org/apache/bcel/util/Class2HTML;->constant_pool:Lorg/checkerframework/org/apache/bcel/classfile/ConstantPool;

    const/4 v1, 0x7

    invoke-virtual {v0, p0, v1}, Lorg/checkerframework/org/apache/bcel/classfile/ConstantPool;->getConstantString(IB)Ljava/lang/String;

    move-result-object v0

    .line 172
    .local v0, "str":Ljava/lang/String;
    invoke-static {v0}, Lorg/checkerframework/org/apache/bcel/classfile/Utility;->compactClassName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 173
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lorg/checkerframework/org/apache/bcel/util/Class2HTML;->class_package:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lorg/checkerframework/org/apache/bcel/classfile/Utility;->compactClassName(Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    .line 174
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "<A HREF=\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lorg/checkerframework/org/apache/bcel/util/Class2HTML;->class_name:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "_cp.html#cp"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\" TARGET=ConstantPool>"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "</A>"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method static referenceType(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p0, "type"    # Ljava/lang/String;

    .line 180
    invoke-static {p0}, Lorg/checkerframework/org/apache/bcel/classfile/Utility;->compactClassName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 181
    .local v0, "short_type":Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lorg/checkerframework/org/apache/bcel/util/Class2HTML;->class_package:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lorg/checkerframework/org/apache/bcel/classfile/Utility;->compactClassName(Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    .line 182
    const/16 v1, 0x5b

    invoke-virtual {p0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    .line 183
    .local v1, "index":I
    move-object v2, p0

    .line 184
    .local v2, "base_type":Ljava/lang/String;
    const/4 v3, -0x1

    if-le v1, v3, :cond_0

    .line 185
    const/4 v3, 0x0

    invoke-virtual {p0, v3, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 188
    :cond_0
    sget-object v3, Lorg/checkerframework/org/apache/bcel/util/Class2HTML;->basic_types:Ljava/util/Set;

    invoke-interface {v3, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 189
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "<FONT COLOR=\"#00FF00\">"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "</FONT>"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3

    .line 191
    :cond_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "<A HREF=\""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ".html\" TARGET=_top>"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "</A>"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method static toHTML(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p0, "str"    # Ljava/lang/String;

    .line 196
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 197
    .local v0, "buf":Ljava/lang/StringBuilder;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 199
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    move v3, v2

    .local v3, "ch":C
    sparse-switch v2, :sswitch_data_0

    .line 213
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 204
    :sswitch_0
    const-string v2, "&gt;"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 205
    goto :goto_1

    .line 201
    :sswitch_1
    const-string v2, "&lt;"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 202
    goto :goto_1

    .line 210
    :sswitch_2
    const-string v2, "\\r"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 211
    goto :goto_1

    .line 207
    :sswitch_3
    const-string v2, "\\n"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 208
    nop

    .line 197
    .end local v3    # "ch":C
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 216
    .end local v1    # "i":I
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    :sswitch_data_0
    .sparse-switch
        0xa -> :sswitch_3
        0xd -> :sswitch_2
        0x3c -> :sswitch_1
        0x3e -> :sswitch_0
    .end sparse-switch
.end method

.method private writeMainHTML(Lorg/checkerframework/org/apache/bcel/util/AttributeHTML;)V
    .locals 5
    .param p1, "attribute_html"    # Lorg/checkerframework/org/apache/bcel/util/AttributeHTML;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 221
    new-instance v0, Ljava/io/PrintWriter;

    new-instance v1, Ljava/io/FileOutputStream;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lorg/checkerframework/org/apache/bcel/util/Class2HTML;->dir:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lorg/checkerframework/org/apache/bcel/util/Class2HTML;->class_name:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ".html"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v1}, Ljava/io/PrintWriter;-><init>(Ljava/io/OutputStream;)V

    .line 222
    .local v0, "file":Ljava/io/PrintWriter;
    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "<HTML>\n<HEAD><TITLE>Documentation for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lorg/checkerframework/org/apache/bcel/util/Class2HTML;->class_name:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "</TITLE></HEAD>\n<FRAMESET BORDER=1 cols=\"30%,*\">\n<FRAMESET BORDER=1 rows=\"80%,*\">\n<FRAME NAME=\"ConstantPool\" SRC=\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lorg/checkerframework/org/apache/bcel/util/Class2HTML;->class_name:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "_cp.html\"\n MARGINWIDTH=\"0\" MARGINHEIGHT=\"0\" FRAMEBORDER=\"1\" SCROLLING=\"AUTO\">\n<FRAME NAME=\"Attributes\" SRC=\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lorg/checkerframework/org/apache/bcel/util/Class2HTML;->class_name:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "_attributes.html\"\n MARGINWIDTH=\"0\" MARGINHEIGHT=\"0\" FRAMEBORDER=\"1\" SCROLLING=\"AUTO\">\n</FRAMESET>\n<FRAMESET BORDER=1 rows=\"80%,*\">\n<FRAME NAME=\"Code\" SRC=\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lorg/checkerframework/org/apache/bcel/util/Class2HTML;->class_name:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "_code.html\"\n MARGINWIDTH=0 MARGINHEIGHT=0 FRAMEBORDER=1 SCROLLING=\"AUTO\">\n<FRAME NAME=\"Methods\" SRC=\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lorg/checkerframework/org/apache/bcel/util/Class2HTML;->class_name:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "_methods.html\"\n MARGINWIDTH=0 MARGINHEIGHT=0 FRAMEBORDER=1 SCROLLING=\"AUTO\">\n</FRAMESET></FRAMESET></HTML>"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 232
    invoke-virtual {v0}, Ljava/io/PrintWriter;->close()V

    .line 233
    .end local v0    # "file":Ljava/io/PrintWriter;
    iget-object v0, p0, Lorg/checkerframework/org/apache/bcel/util/Class2HTML;->java_class:Lorg/checkerframework/org/apache/bcel/classfile/JavaClass;

    invoke-virtual {v0}, Lorg/checkerframework/org/apache/bcel/classfile/JavaClass;->getAttributes()[Lorg/checkerframework/org/apache/bcel/classfile/Attribute;

    move-result-object v0

    .line 234
    .local v0, "attributes":[Lorg/checkerframework/org/apache/bcel/classfile/Attribute;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_0

    .line 235
    aget-object v2, v0, v1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "class"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Lorg/checkerframework/org/apache/bcel/util/AttributeHTML;->writeAttribute(Lorg/checkerframework/org/apache/bcel/classfile/Attribute;Ljava/lang/String;)V

    .line 234
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 237
    .end local v1    # "i":I
    :cond_0
    return-void

    .line 221
    .local v0, "file":Ljava/io/PrintWriter;
    :catchall_0
    move-exception v1

    .end local v0    # "file":Ljava/io/PrintWriter;
    .end local p1    # "attribute_html":Lorg/checkerframework/org/apache/bcel/util/AttributeHTML;
    :try_start_1
    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 232
    .restart local v0    # "file":Ljava/io/PrintWriter;
    .restart local p1    # "attribute_html":Lorg/checkerframework/org/apache/bcel/util/AttributeHTML;
    :catchall_1
    move-exception v2

    :try_start_2
    invoke-virtual {v0}, Ljava/io/PrintWriter;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    goto :goto_1

    :catchall_2
    move-exception v3

    invoke-virtual {v1, v3}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_1
    throw v2
.end method
