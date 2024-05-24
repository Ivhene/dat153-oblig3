.class public Lorg/checkerframework/org/apache/bcel/classfile/JavaClass;
.super Lorg/checkerframework/org/apache/bcel/classfile/AccessFlags;
.source "JavaClass.java"

# interfaces
.implements Ljava/lang/Cloneable;
.implements Lorg/checkerframework/org/apache/bcel/classfile/Node;
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/checkerframework/org/apache/bcel/classfile/AccessFlags;",
        "Ljava/lang/Cloneable;",
        "Lorg/checkerframework/org/apache/bcel/classfile/Node;",
        "Ljava/lang/Comparable<",
        "Lorg/checkerframework/org/apache/bcel/classfile/JavaClass;",
        ">;"
    }
.end annotation


# static fields
.field public static final FILE:B = 0x2t

.field public static final HEAP:B = 0x1t

.field public static final ZIP:B = 0x3t

.field private static bcelComparator:Lorg/checkerframework/org/apache/bcel/util/BCELComparator;

.field private static final debug:Z


# instance fields
.field private annotations:[Lorg/checkerframework/org/apache/bcel/classfile/AnnotationEntry;

.field private attributes:[Lorg/checkerframework/org/apache/bcel/classfile/Attribute;

.field private class_name:Ljava/lang/String;

.field private class_name_index:I

.field private computedNestedTypeStatus:Z

.field private constant_pool:Lorg/checkerframework/org/apache/bcel/classfile/ConstantPool;

.field private fields:[Lorg/checkerframework/org/apache/bcel/classfile/Field;

.field private file_name:Ljava/lang/String;

.field private interface_names:[Ljava/lang/String;

.field private interfaces:[I

.field private isAnonymous:Z

.field private isNested:Z

.field private major:I

.field private methods:[Lorg/checkerframework/org/apache/bcel/classfile/Method;

.field private minor:I

.field private package_name:Ljava/lang/String;

.field private transient repository:Lorg/checkerframework/org/apache/bcel/util/Repository;

.field private source:B

.field private source_file_name:Ljava/lang/String;

.field private superclass_name:Ljava/lang/String;

.field private superclass_name_index:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 78
    const-string v0, "JavaClass.debug"

    invoke-static {v0}, Ljava/lang/Boolean;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lorg/checkerframework/org/apache/bcel/classfile/JavaClass;->debug:Z

    .line 80
    new-instance v0, Lorg/checkerframework/org/apache/bcel/classfile/JavaClass$1;

    invoke-direct {v0}, Lorg/checkerframework/org/apache/bcel/classfile/JavaClass$1;-><init>()V

    sput-object v0, Lorg/checkerframework/org/apache/bcel/classfile/JavaClass;->bcelComparator:Lorg/checkerframework/org/apache/bcel/util/BCELComparator;

    return-void
.end method

.method public constructor <init>(IILjava/lang/String;IIILorg/checkerframework/org/apache/bcel/classfile/ConstantPool;[I[Lorg/checkerframework/org/apache/bcel/classfile/Field;[Lorg/checkerframework/org/apache/bcel/classfile/Method;[Lorg/checkerframework/org/apache/bcel/classfile/Attribute;)V
    .locals 13
    .param p1, "class_name_index"    # I
    .param p2, "superclass_name_index"    # I
    .param p3, "file_name"    # Ljava/lang/String;
    .param p4, "major"    # I
    .param p5, "minor"    # I
    .param p6, "access_flags"    # I
    .param p7, "constant_pool"    # Lorg/checkerframework/org/apache/bcel/classfile/ConstantPool;
    .param p8, "interfaces"    # [I
    .param p9, "fields"    # [Lorg/checkerframework/org/apache/bcel/classfile/Field;
    .param p10, "methods"    # [Lorg/checkerframework/org/apache/bcel/classfile/Method;
    .param p11, "attributes"    # [Lorg/checkerframework/org/apache/bcel/classfile/Attribute;

    .line 203
    const/4 v12, 0x1

    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object/from16 v3, p3

    move/from16 v4, p4

    move/from16 v5, p5

    move/from16 v6, p6

    move-object/from16 v7, p7

    move-object/from16 v8, p8

    move-object/from16 v9, p9

    move-object/from16 v10, p10

    move-object/from16 v11, p11

    invoke-direct/range {v0 .. v12}, Lorg/checkerframework/org/apache/bcel/classfile/JavaClass;-><init>(IILjava/lang/String;IIILorg/checkerframework/org/apache/bcel/classfile/ConstantPool;[I[Lorg/checkerframework/org/apache/bcel/classfile/Field;[Lorg/checkerframework/org/apache/bcel/classfile/Method;[Lorg/checkerframework/org/apache/bcel/classfile/Attribute;B)V

    .line 205
    return-void
.end method

.method public constructor <init>(IILjava/lang/String;IIILorg/checkerframework/org/apache/bcel/classfile/ConstantPool;[I[Lorg/checkerframework/org/apache/bcel/classfile/Field;[Lorg/checkerframework/org/apache/bcel/classfile/Method;[Lorg/checkerframework/org/apache/bcel/classfile/Attribute;B)V
    .locals 17
    .param p1, "class_name_index"    # I
    .param p2, "superclass_name_index"    # I
    .param p3, "file_name"    # Ljava/lang/String;
    .param p4, "major"    # I
    .param p5, "minor"    # I
    .param p6, "access_flags"    # I
    .param p7, "constant_pool"    # Lorg/checkerframework/org/apache/bcel/classfile/ConstantPool;
    .param p8, "interfaces"    # [I
    .param p9, "fields"    # [Lorg/checkerframework/org/apache/bcel/classfile/Field;
    .param p10, "methods"    # [Lorg/checkerframework/org/apache/bcel/classfile/Method;
    .param p11, "attributes"    # [Lorg/checkerframework/org/apache/bcel/classfile/Attribute;
    .param p12, "source"    # B

    .line 126
    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    move-object/from16 v3, p7

    move/from16 v4, p6

    invoke-direct {v0, v4}, Lorg/checkerframework/org/apache/bcel/classfile/AccessFlags;-><init>(I)V

    .line 57
    const-string v5, "<Unknown>"

    iput-object v5, v0, Lorg/checkerframework/org/apache/bcel/classfile/JavaClass;->source_file_name:Ljava/lang/String;

    .line 71
    const/4 v5, 0x1

    iput-byte v5, v0, Lorg/checkerframework/org/apache/bcel/classfile/JavaClass;->source:B

    .line 72
    const/4 v5, 0x0

    iput-boolean v5, v0, Lorg/checkerframework/org/apache/bcel/classfile/JavaClass;->isAnonymous:Z

    .line 73
    iput-boolean v5, v0, Lorg/checkerframework/org/apache/bcel/classfile/JavaClass;->isNested:Z

    .line 74
    iput-boolean v5, v0, Lorg/checkerframework/org/apache/bcel/classfile/JavaClass;->computedNestedTypeStatus:Z

    .line 101
    nop

    .line 102
    invoke-static {}, Lorg/checkerframework/org/apache/bcel/util/SyntheticRepository;->getInstance()Lorg/checkerframework/org/apache/bcel/util/SyntheticRepository;

    move-result-object v6

    iput-object v6, v0, Lorg/checkerframework/org/apache/bcel/classfile/JavaClass;->repository:Lorg/checkerframework/org/apache/bcel/util/Repository;

    .line 127
    if-nez p8, :cond_0

    .line 128
    new-array v6, v5, [I

    .end local p8    # "interfaces":[I
    .local v6, "interfaces":[I
    goto :goto_0

    .line 127
    .end local v6    # "interfaces":[I
    .restart local p8    # "interfaces":[I
    :cond_0
    move-object/from16 v6, p8

    .line 130
    .end local p8    # "interfaces":[I
    .restart local v6    # "interfaces":[I
    :goto_0
    if-nez p11, :cond_1

    .line 131
    new-array v7, v5, [Lorg/checkerframework/org/apache/bcel/classfile/Attribute;

    .end local p11    # "attributes":[Lorg/checkerframework/org/apache/bcel/classfile/Attribute;
    .local v7, "attributes":[Lorg/checkerframework/org/apache/bcel/classfile/Attribute;
    goto :goto_1

    .line 130
    .end local v7    # "attributes":[Lorg/checkerframework/org/apache/bcel/classfile/Attribute;
    .restart local p11    # "attributes":[Lorg/checkerframework/org/apache/bcel/classfile/Attribute;
    :cond_1
    move-object/from16 v7, p11

    .line 133
    .end local p11    # "attributes":[Lorg/checkerframework/org/apache/bcel/classfile/Attribute;
    .restart local v7    # "attributes":[Lorg/checkerframework/org/apache/bcel/classfile/Attribute;
    :goto_1
    if-nez p9, :cond_2

    .line 134
    new-array v8, v5, [Lorg/checkerframework/org/apache/bcel/classfile/Field;

    .end local p9    # "fields":[Lorg/checkerframework/org/apache/bcel/classfile/Field;
    .local v8, "fields":[Lorg/checkerframework/org/apache/bcel/classfile/Field;
    goto :goto_2

    .line 133
    .end local v8    # "fields":[Lorg/checkerframework/org/apache/bcel/classfile/Field;
    .restart local p9    # "fields":[Lorg/checkerframework/org/apache/bcel/classfile/Field;
    :cond_2
    move-object/from16 v8, p9

    .line 136
    .end local p9    # "fields":[Lorg/checkerframework/org/apache/bcel/classfile/Field;
    .restart local v8    # "fields":[Lorg/checkerframework/org/apache/bcel/classfile/Field;
    :goto_2
    if-nez p10, :cond_3

    .line 137
    new-array v9, v5, [Lorg/checkerframework/org/apache/bcel/classfile/Method;

    .end local p10    # "methods":[Lorg/checkerframework/org/apache/bcel/classfile/Method;
    .local v9, "methods":[Lorg/checkerframework/org/apache/bcel/classfile/Method;
    goto :goto_3

    .line 136
    .end local v9    # "methods":[Lorg/checkerframework/org/apache/bcel/classfile/Method;
    .restart local p10    # "methods":[Lorg/checkerframework/org/apache/bcel/classfile/Method;
    :cond_3
    move-object/from16 v9, p10

    .line 139
    .end local p10    # "methods":[Lorg/checkerframework/org/apache/bcel/classfile/Method;
    .restart local v9    # "methods":[Lorg/checkerframework/org/apache/bcel/classfile/Method;
    :goto_3
    iput v1, v0, Lorg/checkerframework/org/apache/bcel/classfile/JavaClass;->class_name_index:I

    .line 140
    iput v2, v0, Lorg/checkerframework/org/apache/bcel/classfile/JavaClass;->superclass_name_index:I

    .line 141
    move-object/from16 v10, p3

    iput-object v10, v0, Lorg/checkerframework/org/apache/bcel/classfile/JavaClass;->file_name:Ljava/lang/String;

    .line 142
    move/from16 v11, p4

    iput v11, v0, Lorg/checkerframework/org/apache/bcel/classfile/JavaClass;->major:I

    .line 143
    move/from16 v12, p5

    iput v12, v0, Lorg/checkerframework/org/apache/bcel/classfile/JavaClass;->minor:I

    .line 144
    iput-object v3, v0, Lorg/checkerframework/org/apache/bcel/classfile/JavaClass;->constant_pool:Lorg/checkerframework/org/apache/bcel/classfile/ConstantPool;

    .line 145
    iput-object v6, v0, Lorg/checkerframework/org/apache/bcel/classfile/JavaClass;->interfaces:[I

    .line 146
    iput-object v8, v0, Lorg/checkerframework/org/apache/bcel/classfile/JavaClass;->fields:[Lorg/checkerframework/org/apache/bcel/classfile/Field;

    .line 147
    iput-object v9, v0, Lorg/checkerframework/org/apache/bcel/classfile/JavaClass;->methods:[Lorg/checkerframework/org/apache/bcel/classfile/Method;

    .line 148
    iput-object v7, v0, Lorg/checkerframework/org/apache/bcel/classfile/JavaClass;->attributes:[Lorg/checkerframework/org/apache/bcel/classfile/Attribute;

    .line 149
    move/from16 v13, p12

    iput-byte v13, v0, Lorg/checkerframework/org/apache/bcel/classfile/JavaClass;->source:B

    .line 151
    array-length v14, v7

    move v15, v5

    :goto_4
    if-ge v15, v14, :cond_5

    aget-object v5, v7, v15

    .line 152
    .local v5, "attribute":Lorg/checkerframework/org/apache/bcel/classfile/Attribute;
    instance-of v4, v5, Lorg/checkerframework/org/apache/bcel/classfile/SourceFile;

    if-eqz v4, :cond_4

    .line 153
    move-object v4, v5

    check-cast v4, Lorg/checkerframework/org/apache/bcel/classfile/SourceFile;

    invoke-virtual {v4}, Lorg/checkerframework/org/apache/bcel/classfile/SourceFile;->getSourceFileName()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v0, Lorg/checkerframework/org/apache/bcel/classfile/JavaClass;->source_file_name:Ljava/lang/String;

    .line 154
    goto :goto_5

    .line 151
    .end local v5    # "attribute":Lorg/checkerframework/org/apache/bcel/classfile/Attribute;
    :cond_4
    add-int/lit8 v15, v15, 0x1

    move/from16 v4, p6

    const/4 v5, 0x0

    goto :goto_4

    .line 161
    :cond_5
    :goto_5
    const/4 v4, 0x7

    invoke-virtual {v3, v1, v4}, Lorg/checkerframework/org/apache/bcel/classfile/ConstantPool;->getConstantString(IB)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v0, Lorg/checkerframework/org/apache/bcel/classfile/JavaClass;->class_name:Ljava/lang/String;

    .line 162
    const/4 v14, 0x0

    invoke-static {v5, v14}, Lorg/checkerframework/org/apache/bcel/classfile/Utility;->compactClassName(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v0, Lorg/checkerframework/org/apache/bcel/classfile/JavaClass;->class_name:Ljava/lang/String;

    .line 163
    const/16 v14, 0x2e

    invoke-virtual {v5, v14}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v5

    .line 164
    .local v5, "index":I
    if-gez v5, :cond_6

    .line 165
    const-string v14, ""

    iput-object v14, v0, Lorg/checkerframework/org/apache/bcel/classfile/JavaClass;->package_name:Ljava/lang/String;

    const/4 v15, 0x0

    goto :goto_6

    .line 167
    :cond_6
    iget-object v14, v0, Lorg/checkerframework/org/apache/bcel/classfile/JavaClass;->class_name:Ljava/lang/String;

    const/4 v15, 0x0

    invoke-virtual {v14, v15, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v14

    iput-object v14, v0, Lorg/checkerframework/org/apache/bcel/classfile/JavaClass;->package_name:Ljava/lang/String;

    .line 169
    :goto_6
    if-lez v2, :cond_7

    .line 171
    invoke-virtual {v3, v2, v4}, Lorg/checkerframework/org/apache/bcel/classfile/ConstantPool;->getConstantString(IB)Ljava/lang/String;

    move-result-object v14

    iput-object v14, v0, Lorg/checkerframework/org/apache/bcel/classfile/JavaClass;->superclass_name:Ljava/lang/String;

    .line 173
    invoke-static {v14, v15}, Lorg/checkerframework/org/apache/bcel/classfile/Utility;->compactClassName(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v14

    iput-object v14, v0, Lorg/checkerframework/org/apache/bcel/classfile/JavaClass;->superclass_name:Ljava/lang/String;

    goto :goto_7

    .line 175
    :cond_7
    const-string v14, "java.lang.Object"

    iput-object v14, v0, Lorg/checkerframework/org/apache/bcel/classfile/JavaClass;->superclass_name:Ljava/lang/String;

    .line 177
    :goto_7
    array-length v14, v6

    new-array v14, v14, [Ljava/lang/String;

    iput-object v14, v0, Lorg/checkerframework/org/apache/bcel/classfile/JavaClass;->interface_names:[Ljava/lang/String;

    .line 178
    const/4 v14, 0x0

    .local v14, "i":I
    :goto_8
    array-length v15, v6

    if-ge v14, v15, :cond_8

    .line 179
    aget v15, v6, v14

    invoke-virtual {v3, v15, v4}, Lorg/checkerframework/org/apache/bcel/classfile/ConstantPool;->getConstantString(IB)Ljava/lang/String;

    move-result-object v15

    .line 180
    .local v15, "str":Ljava/lang/String;
    iget-object v4, v0, Lorg/checkerframework/org/apache/bcel/classfile/JavaClass;->interface_names:[Ljava/lang/String;

    const/4 v0, 0x0

    invoke-static {v15, v0}, Lorg/checkerframework/org/apache/bcel/classfile/Utility;->compactClassName(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v16

    aput-object v16, v4, v14

    .line 178
    .end local v15    # "str":Ljava/lang/String;
    add-int/lit8 v14, v14, 0x1

    const/4 v4, 0x7

    move-object/from16 v0, p0

    goto :goto_8

    .line 182
    .end local v14    # "i":I
    :cond_8
    return-void
.end method

.method static Debug(Ljava/lang/String;)V
    .locals 1
    .param p0, "str"    # Ljava/lang/String;

    .line 224
    sget-boolean v0, Lorg/checkerframework/org/apache/bcel/classfile/JavaClass;->debug:Z

    if-eqz v0, :cond_0

    .line 225
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v0, p0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 227
    :cond_0
    return-void
.end method

.method private computeNestedTypeStatus()V
    .locals 14

    .line 720
    iget-boolean v0, p0, Lorg/checkerframework/org/apache/bcel/classfile/JavaClass;->computedNestedTypeStatus:Z

    if-eqz v0, :cond_0

    .line 721
    return-void

    .line 723
    :cond_0
    iget-object v0, p0, Lorg/checkerframework/org/apache/bcel/classfile/JavaClass;->attributes:[Lorg/checkerframework/org/apache/bcel/classfile/Attribute;

    array-length v1, v0

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    const/4 v4, 0x1

    if-ge v3, v1, :cond_4

    aget-object v5, v0, v3

    .line 724
    .local v5, "attribute":Lorg/checkerframework/org/apache/bcel/classfile/Attribute;
    instance-of v6, v5, Lorg/checkerframework/org/apache/bcel/classfile/InnerClasses;

    if-eqz v6, :cond_3

    .line 725
    move-object v6, v5

    check-cast v6, Lorg/checkerframework/org/apache/bcel/classfile/InnerClasses;

    invoke-virtual {v6}, Lorg/checkerframework/org/apache/bcel/classfile/InnerClasses;->getInnerClasses()[Lorg/checkerframework/org/apache/bcel/classfile/InnerClass;

    move-result-object v6

    .line 726
    .local v6, "innerClasses":[Lorg/checkerframework/org/apache/bcel/classfile/InnerClass;
    array-length v7, v6

    move v8, v2

    :goto_1
    if-ge v8, v7, :cond_3

    aget-object v9, v6, v8

    .line 727
    .local v9, "innerClasse":Lorg/checkerframework/org/apache/bcel/classfile/InnerClass;
    const/4 v10, 0x0

    .line 728
    .local v10, "innerClassAttributeRefersToMe":Z
    iget-object v11, p0, Lorg/checkerframework/org/apache/bcel/classfile/JavaClass;->constant_pool:Lorg/checkerframework/org/apache/bcel/classfile/ConstantPool;

    invoke-virtual {v9}, Lorg/checkerframework/org/apache/bcel/classfile/InnerClass;->getInnerClassIndex()I

    move-result v12

    const/4 v13, 0x7

    invoke-virtual {v11, v12, v13}, Lorg/checkerframework/org/apache/bcel/classfile/ConstantPool;->getConstantString(IB)Ljava/lang/String;

    move-result-object v11

    .line 730
    .local v11, "inner_class_name":Ljava/lang/String;
    invoke-static {v11}, Lorg/checkerframework/org/apache/bcel/classfile/Utility;->compactClassName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 731
    invoke-virtual {p0}, Lorg/checkerframework/org/apache/bcel/classfile/JavaClass;->getClassName()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_1

    .line 732
    const/4 v10, 0x1

    .line 734
    :cond_1
    if-eqz v10, :cond_2

    .line 735
    iput-boolean v4, p0, Lorg/checkerframework/org/apache/bcel/classfile/JavaClass;->isNested:Z

    .line 736
    invoke-virtual {v9}, Lorg/checkerframework/org/apache/bcel/classfile/InnerClass;->getInnerNameIndex()I

    move-result v12

    if-nez v12, :cond_2

    .line 737
    iput-boolean v4, p0, Lorg/checkerframework/org/apache/bcel/classfile/JavaClass;->isAnonymous:Z

    .line 726
    .end local v9    # "innerClasse":Lorg/checkerframework/org/apache/bcel/classfile/InnerClass;
    .end local v10    # "innerClassAttributeRefersToMe":Z
    .end local v11    # "inner_class_name":Ljava/lang/String;
    :cond_2
    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    .line 723
    .end local v5    # "attribute":Lorg/checkerframework/org/apache/bcel/classfile/Attribute;
    .end local v6    # "innerClasses":[Lorg/checkerframework/org/apache/bcel/classfile/InnerClass;
    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 743
    :cond_4
    iput-boolean v4, p0, Lorg/checkerframework/org/apache/bcel/classfile/JavaClass;->computedNestedTypeStatus:Z

    .line 744
    return-void
.end method

.method public static getComparator()Lorg/checkerframework/org/apache/bcel/util/BCELComparator;
    .locals 1

    .line 889
    sget-object v0, Lorg/checkerframework/org/apache/bcel/classfile/JavaClass;->bcelComparator:Lorg/checkerframework/org/apache/bcel/util/BCELComparator;

    return-object v0
.end method

.method private static indent(Ljava/lang/Object;)Ljava/lang/String;
    .locals 5
    .param p0, "obj"    # Ljava/lang/Object;

    .line 655
    new-instance v0, Ljava/util/StringTokenizer;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "\n"

    invoke-direct {v0, v1, v2}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 656
    .local v0, "tok":Ljava/util/StringTokenizer;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 657
    .local v1, "buf":Ljava/lang/StringBuilder;
    :goto_0
    invoke-virtual {v0}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 658
    const-string v3, "\t"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 660
    :cond_0
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public static setComparator(Lorg/checkerframework/org/apache/bcel/util/BCELComparator;)V
    .locals 0
    .param p0, "comparator"    # Lorg/checkerframework/org/apache/bcel/util/BCELComparator;

    .line 897
    sput-object p0, Lorg/checkerframework/org/apache/bcel/classfile/JavaClass;->bcelComparator:Lorg/checkerframework/org/apache/bcel/util/BCELComparator;

    .line 898
    return-void
.end method


# virtual methods
.method public accept(Lorg/checkerframework/org/apache/bcel/classfile/Visitor;)V
    .locals 0
    .param p1, "v"    # Lorg/checkerframework/org/apache/bcel/classfile/Visitor;

    .line 217
    invoke-interface {p1, p0}, Lorg/checkerframework/org/apache/bcel/classfile/Visitor;->visitJavaClass(Lorg/checkerframework/org/apache/bcel/classfile/JavaClass;)V

    .line 218
    return-void
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 0
    .annotation runtime Lorg/checkerframework/dataflow/qual/Pure;
    .end annotation

    .line 53
    check-cast p1, Lorg/checkerframework/org/apache/bcel/classfile/JavaClass;

    invoke-virtual {p0, p1}, Lorg/checkerframework/org/apache/bcel/classfile/JavaClass;->compareTo(Lorg/checkerframework/org/apache/bcel/classfile/JavaClass;)I

    move-result p1

    return p1
.end method

.method public compareTo(Lorg/checkerframework/org/apache/bcel/classfile/JavaClass;)I
    .locals 2
    .param p1, "obj"    # Lorg/checkerframework/org/apache/bcel/classfile/JavaClass;
    .annotation runtime Lorg/checkerframework/dataflow/qual/Pure;
    .end annotation

    .line 921
    invoke-virtual {p0}, Lorg/checkerframework/org/apache/bcel/classfile/JavaClass;->getClassName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lorg/checkerframework/org/apache/bcel/classfile/JavaClass;->getClassName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public copy()Lorg/checkerframework/org/apache/bcel/classfile/JavaClass;
    .locals 5

    .line 669
    const/4 v0, 0x0

    .line 671
    .local v0, "c":Lorg/checkerframework/org/apache/bcel/classfile/JavaClass;
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/checkerframework/org/apache/bcel/classfile/JavaClass;

    move-object v0, v1

    .line 672
    iget-object v1, p0, Lorg/checkerframework/org/apache/bcel/classfile/JavaClass;->constant_pool:Lorg/checkerframework/org/apache/bcel/classfile/ConstantPool;

    invoke-virtual {v1}, Lorg/checkerframework/org/apache/bcel/classfile/ConstantPool;->copy()Lorg/checkerframework/org/apache/bcel/classfile/ConstantPool;

    move-result-object v1

    iput-object v1, v0, Lorg/checkerframework/org/apache/bcel/classfile/JavaClass;->constant_pool:Lorg/checkerframework/org/apache/bcel/classfile/ConstantPool;

    .line 673
    iget-object v1, p0, Lorg/checkerframework/org/apache/bcel/classfile/JavaClass;->interfaces:[I

    invoke-virtual {v1}, [I->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [I

    iput-object v1, v0, Lorg/checkerframework/org/apache/bcel/classfile/JavaClass;->interfaces:[I

    .line 674
    iget-object v1, p0, Lorg/checkerframework/org/apache/bcel/classfile/JavaClass;->interface_names:[Ljava/lang/String;

    invoke-virtual {v1}, [Ljava/lang/String;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/String;

    iput-object v1, v0, Lorg/checkerframework/org/apache/bcel/classfile/JavaClass;->interface_names:[Ljava/lang/String;

    .line 675
    iget-object v1, p0, Lorg/checkerframework/org/apache/bcel/classfile/JavaClass;->fields:[Lorg/checkerframework/org/apache/bcel/classfile/Field;

    array-length v1, v1

    new-array v1, v1, [Lorg/checkerframework/org/apache/bcel/classfile/Field;

    iput-object v1, v0, Lorg/checkerframework/org/apache/bcel/classfile/JavaClass;->fields:[Lorg/checkerframework/org/apache/bcel/classfile/Field;

    .line 676
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Lorg/checkerframework/org/apache/bcel/classfile/JavaClass;->fields:[Lorg/checkerframework/org/apache/bcel/classfile/Field;

    array-length v3, v2

    if-ge v1, v3, :cond_0

    .line 677
    iget-object v3, v0, Lorg/checkerframework/org/apache/bcel/classfile/JavaClass;->fields:[Lorg/checkerframework/org/apache/bcel/classfile/Field;

    aget-object v2, v2, v1

    iget-object v4, v0, Lorg/checkerframework/org/apache/bcel/classfile/JavaClass;->constant_pool:Lorg/checkerframework/org/apache/bcel/classfile/ConstantPool;

    invoke-virtual {v2, v4}, Lorg/checkerframework/org/apache/bcel/classfile/Field;->copy(Lorg/checkerframework/org/apache/bcel/classfile/ConstantPool;)Lorg/checkerframework/org/apache/bcel/classfile/Field;

    move-result-object v2

    aput-object v2, v3, v1

    .line 676
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 679
    .end local v1    # "i":I
    :cond_0
    iget-object v1, p0, Lorg/checkerframework/org/apache/bcel/classfile/JavaClass;->methods:[Lorg/checkerframework/org/apache/bcel/classfile/Method;

    array-length v1, v1

    new-array v1, v1, [Lorg/checkerframework/org/apache/bcel/classfile/Method;

    iput-object v1, v0, Lorg/checkerframework/org/apache/bcel/classfile/JavaClass;->methods:[Lorg/checkerframework/org/apache/bcel/classfile/Method;

    .line 680
    const/4 v1, 0x0

    .restart local v1    # "i":I
    :goto_1
    iget-object v2, p0, Lorg/checkerframework/org/apache/bcel/classfile/JavaClass;->methods:[Lorg/checkerframework/org/apache/bcel/classfile/Method;

    array-length v3, v2

    if-ge v1, v3, :cond_1

    .line 681
    iget-object v3, v0, Lorg/checkerframework/org/apache/bcel/classfile/JavaClass;->methods:[Lorg/checkerframework/org/apache/bcel/classfile/Method;

    aget-object v2, v2, v1

    iget-object v4, v0, Lorg/checkerframework/org/apache/bcel/classfile/JavaClass;->constant_pool:Lorg/checkerframework/org/apache/bcel/classfile/ConstantPool;

    invoke-virtual {v2, v4}, Lorg/checkerframework/org/apache/bcel/classfile/Method;->copy(Lorg/checkerframework/org/apache/bcel/classfile/ConstantPool;)Lorg/checkerframework/org/apache/bcel/classfile/Method;

    move-result-object v2

    aput-object v2, v3, v1

    .line 680
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 683
    .end local v1    # "i":I
    :cond_1
    iget-object v1, p0, Lorg/checkerframework/org/apache/bcel/classfile/JavaClass;->attributes:[Lorg/checkerframework/org/apache/bcel/classfile/Attribute;

    array-length v1, v1

    new-array v1, v1, [Lorg/checkerframework/org/apache/bcel/classfile/Attribute;

    iput-object v1, v0, Lorg/checkerframework/org/apache/bcel/classfile/JavaClass;->attributes:[Lorg/checkerframework/org/apache/bcel/classfile/Attribute;

    .line 684
    const/4 v1, 0x0

    .restart local v1    # "i":I
    :goto_2
    iget-object v2, p0, Lorg/checkerframework/org/apache/bcel/classfile/JavaClass;->attributes:[Lorg/checkerframework/org/apache/bcel/classfile/Attribute;

    array-length v3, v2

    if-ge v1, v3, :cond_2

    .line 685
    iget-object v3, v0, Lorg/checkerframework/org/apache/bcel/classfile/JavaClass;->attributes:[Lorg/checkerframework/org/apache/bcel/classfile/Attribute;

    aget-object v2, v2, v1

    iget-object v4, v0, Lorg/checkerframework/org/apache/bcel/classfile/JavaClass;->constant_pool:Lorg/checkerframework/org/apache/bcel/classfile/ConstantPool;

    invoke-virtual {v2, v4}, Lorg/checkerframework/org/apache/bcel/classfile/Attribute;->copy(Lorg/checkerframework/org/apache/bcel/classfile/ConstantPool;)Lorg/checkerframework/org/apache/bcel/classfile/Attribute;

    move-result-object v2

    aput-object v2, v3, v1
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 684
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 689
    .end local v1    # "i":I
    :cond_2
    goto :goto_3

    .line 687
    :catch_0
    move-exception v1

    .line 690
    :goto_3
    return-object v0
.end method

.method public dump(Ljava/io/DataOutputStream;)V
    .locals 5
    .param p1, "file"    # Ljava/io/DataOutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 303
    const v0, -0x35014542    # -8346975.0f

    invoke-virtual {p1, v0}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 304
    iget v0, p0, Lorg/checkerframework/org/apache/bcel/classfile/JavaClass;->minor:I

    invoke-virtual {p1, v0}, Ljava/io/DataOutputStream;->writeShort(I)V

    .line 305
    iget v0, p0, Lorg/checkerframework/org/apache/bcel/classfile/JavaClass;->major:I

    invoke-virtual {p1, v0}, Ljava/io/DataOutputStream;->writeShort(I)V

    .line 306
    iget-object v0, p0, Lorg/checkerframework/org/apache/bcel/classfile/JavaClass;->constant_pool:Lorg/checkerframework/org/apache/bcel/classfile/ConstantPool;

    invoke-virtual {v0, p1}, Lorg/checkerframework/org/apache/bcel/classfile/ConstantPool;->dump(Ljava/io/DataOutputStream;)V

    .line 307
    invoke-super {p0}, Lorg/checkerframework/org/apache/bcel/classfile/AccessFlags;->getAccessFlags()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/io/DataOutputStream;->writeShort(I)V

    .line 308
    iget v0, p0, Lorg/checkerframework/org/apache/bcel/classfile/JavaClass;->class_name_index:I

    invoke-virtual {p1, v0}, Ljava/io/DataOutputStream;->writeShort(I)V

    .line 309
    iget v0, p0, Lorg/checkerframework/org/apache/bcel/classfile/JavaClass;->superclass_name_index:I

    invoke-virtual {p1, v0}, Ljava/io/DataOutputStream;->writeShort(I)V

    .line 310
    iget-object v0, p0, Lorg/checkerframework/org/apache/bcel/classfile/JavaClass;->interfaces:[I

    array-length v0, v0

    invoke-virtual {p1, v0}, Ljava/io/DataOutputStream;->writeShort(I)V

    .line 311
    iget-object v0, p0, Lorg/checkerframework/org/apache/bcel/classfile/JavaClass;->interfaces:[I

    array-length v1, v0

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_0

    aget v4, v0, v3

    .line 312
    .local v4, "interface1":I
    invoke-virtual {p1, v4}, Ljava/io/DataOutputStream;->writeShort(I)V

    .line 311
    .end local v4    # "interface1":I
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 314
    :cond_0
    iget-object v0, p0, Lorg/checkerframework/org/apache/bcel/classfile/JavaClass;->fields:[Lorg/checkerframework/org/apache/bcel/classfile/Field;

    array-length v0, v0

    invoke-virtual {p1, v0}, Ljava/io/DataOutputStream;->writeShort(I)V

    .line 315
    iget-object v0, p0, Lorg/checkerframework/org/apache/bcel/classfile/JavaClass;->fields:[Lorg/checkerframework/org/apache/bcel/classfile/Field;

    array-length v1, v0

    move v3, v2

    :goto_1
    if-ge v3, v1, :cond_1

    aget-object v4, v0, v3

    .line 316
    .local v4, "field":Lorg/checkerframework/org/apache/bcel/classfile/Field;
    invoke-virtual {v4, p1}, Lorg/checkerframework/org/apache/bcel/classfile/Field;->dump(Ljava/io/DataOutputStream;)V

    .line 315
    .end local v4    # "field":Lorg/checkerframework/org/apache/bcel/classfile/Field;
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 318
    :cond_1
    iget-object v0, p0, Lorg/checkerframework/org/apache/bcel/classfile/JavaClass;->methods:[Lorg/checkerframework/org/apache/bcel/classfile/Method;

    array-length v0, v0

    invoke-virtual {p1, v0}, Ljava/io/DataOutputStream;->writeShort(I)V

    .line 319
    iget-object v0, p0, Lorg/checkerframework/org/apache/bcel/classfile/JavaClass;->methods:[Lorg/checkerframework/org/apache/bcel/classfile/Method;

    array-length v1, v0

    move v3, v2

    :goto_2
    if-ge v3, v1, :cond_2

    aget-object v4, v0, v3

    .line 320
    .local v4, "method":Lorg/checkerframework/org/apache/bcel/classfile/Method;
    invoke-virtual {v4, p1}, Lorg/checkerframework/org/apache/bcel/classfile/Method;->dump(Ljava/io/DataOutputStream;)V

    .line 319
    .end local v4    # "method":Lorg/checkerframework/org/apache/bcel/classfile/Method;
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 322
    :cond_2
    iget-object v0, p0, Lorg/checkerframework/org/apache/bcel/classfile/JavaClass;->attributes:[Lorg/checkerframework/org/apache/bcel/classfile/Attribute;

    if-eqz v0, :cond_3

    .line 323
    array-length v0, v0

    invoke-virtual {p1, v0}, Ljava/io/DataOutputStream;->writeShort(I)V

    .line 324
    iget-object v0, p0, Lorg/checkerframework/org/apache/bcel/classfile/JavaClass;->attributes:[Lorg/checkerframework/org/apache/bcel/classfile/Attribute;

    array-length v1, v0

    :goto_3
    if-ge v2, v1, :cond_4

    aget-object v3, v0, v2

    .line 325
    .local v3, "attribute":Lorg/checkerframework/org/apache/bcel/classfile/Attribute;
    invoke-virtual {v3, p1}, Lorg/checkerframework/org/apache/bcel/classfile/Attribute;->dump(Ljava/io/DataOutputStream;)V

    .line 324
    .end local v3    # "attribute":Lorg/checkerframework/org/apache/bcel/classfile/Attribute;
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 328
    :cond_3
    invoke-virtual {p1, v2}, Ljava/io/DataOutputStream;->writeShort(I)V

    .line 330
    :cond_4
    invoke-virtual {p1}, Ljava/io/DataOutputStream;->flush()V

    .line 331
    return-void
.end method

.method public dump(Ljava/io/File;)V
    .locals 5
    .param p1, "file"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 237
    invoke-virtual {p1}, Ljava/io/File;->getParent()Ljava/lang/String;

    move-result-object v0

    .line 238
    .local v0, "parent":Ljava/lang/String;
    if-eqz v0, :cond_1

    .line 239
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 240
    .local v1, "dir":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    move-result v2

    if-nez v2, :cond_1

    .line 241
    invoke-virtual {v1}, Ljava/io/File;->isDirectory()Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0

    .line 242
    :cond_0
    new-instance v2, Ljava/io/IOException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Could not create the directory "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 246
    .end local v1    # "dir":Ljava/io/File;
    :cond_1
    :goto_0
    new-instance v1, Ljava/io/DataOutputStream;

    new-instance v2, Ljava/io/FileOutputStream;

    invoke-direct {v2, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v1, v2}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 247
    .local v1, "dos":Ljava/io/DataOutputStream;
    :try_start_0
    invoke-virtual {p0, v1}, Lorg/checkerframework/org/apache/bcel/classfile/JavaClass;->dump(Ljava/io/DataOutputStream;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 248
    invoke-virtual {v1}, Ljava/io/DataOutputStream;->close()V

    .line 249
    .end local v1    # "dos":Ljava/io/DataOutputStream;
    return-void

    .line 246
    .restart local v1    # "dos":Ljava/io/DataOutputStream;
    :catchall_0
    move-exception v2

    .end local v0    # "parent":Ljava/lang/String;
    .end local v1    # "dos":Ljava/io/DataOutputStream;
    .end local p1    # "file":Ljava/io/File;
    :try_start_1
    throw v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 248
    .restart local v0    # "parent":Ljava/lang/String;
    .restart local v1    # "dos":Ljava/io/DataOutputStream;
    .restart local p1    # "file":Ljava/io/File;
    :catchall_1
    move-exception v3

    :try_start_2
    invoke-virtual {v1}, Ljava/io/DataOutputStream;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    goto :goto_1

    :catchall_2
    move-exception v4

    invoke-virtual {v2, v4}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_1
    throw v3
.end method

.method public dump(Ljava/io/OutputStream;)V
    .locals 1
    .param p1, "file"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 292
    new-instance v0, Ljava/io/DataOutputStream;

    invoke-direct {v0, p1}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    invoke-virtual {p0, v0}, Lorg/checkerframework/org/apache/bcel/classfile/JavaClass;->dump(Ljava/io/DataOutputStream;)V

    .line 293
    return-void
.end method

.method public dump(Ljava/lang/String;)V
    .locals 1
    .param p1, "_file_name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 259
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lorg/checkerframework/org/apache/bcel/classfile/JavaClass;->dump(Ljava/io/File;)V

    .line 260
    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "obj"    # Ljava/lang/Object;
    .annotation runtime Lorg/checkerframework/dataflow/qual/Pure;
    .end annotation

    .line 910
    sget-object v0, Lorg/checkerframework/org/apache/bcel/classfile/JavaClass;->bcelComparator:Lorg/checkerframework/org/apache/bcel/util/BCELComparator;

    invoke-interface {v0, p0, p1}, Lorg/checkerframework/org/apache/bcel/util/BCELComparator;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public getAllInterfaces()[Lorg/checkerframework/org/apache/bcel/classfile/JavaClass;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .line 863
    new-instance v0, Lorg/checkerframework/org/apache/bcel/util/ClassQueue;

    invoke-direct {v0}, Lorg/checkerframework/org/apache/bcel/util/ClassQueue;-><init>()V

    .line 864
    .local v0, "queue":Lorg/checkerframework/org/apache/bcel/util/ClassQueue;
    new-instance v1, Ljava/util/TreeSet;

    invoke-direct {v1}, Ljava/util/TreeSet;-><init>()V

    .line 865
    .local v1, "allInterfaces":Ljava/util/Set;, "Ljava/util/Set<Lorg/checkerframework/org/apache/bcel/classfile/JavaClass;>;"
    invoke-virtual {v0, p0}, Lorg/checkerframework/org/apache/bcel/util/ClassQueue;->enqueue(Lorg/checkerframework/org/apache/bcel/classfile/JavaClass;)V

    .line 866
    :goto_0
    invoke-virtual {v0}, Lorg/checkerframework/org/apache/bcel/util/ClassQueue;->empty()Z

    move-result v2

    if-nez v2, :cond_3

    .line 867
    invoke-virtual {v0}, Lorg/checkerframework/org/apache/bcel/util/ClassQueue;->dequeue()Lorg/checkerframework/org/apache/bcel/classfile/JavaClass;

    move-result-object v2

    .line 868
    .local v2, "clazz":Lorg/checkerframework/org/apache/bcel/classfile/JavaClass;
    invoke-virtual {v2}, Lorg/checkerframework/org/apache/bcel/classfile/JavaClass;->getSuperClass()Lorg/checkerframework/org/apache/bcel/classfile/JavaClass;

    move-result-object v3

    .line 869
    .local v3, "souper":Lorg/checkerframework/org/apache/bcel/classfile/JavaClass;
    invoke-virtual {v2}, Lorg/checkerframework/org/apache/bcel/classfile/JavaClass;->getInterfaces()[Lorg/checkerframework/org/apache/bcel/classfile/JavaClass;

    move-result-object v4

    .line 870
    .local v4, "_interfaces":[Lorg/checkerframework/org/apache/bcel/classfile/JavaClass;
    invoke-virtual {v2}, Lorg/checkerframework/org/apache/bcel/classfile/JavaClass;->isInterface()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 871
    invoke-interface {v1, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 873
    :cond_0
    if-eqz v3, :cond_1

    .line 874
    invoke-virtual {v0, v3}, Lorg/checkerframework/org/apache/bcel/util/ClassQueue;->enqueue(Lorg/checkerframework/org/apache/bcel/classfile/JavaClass;)V

    .line 877
    :cond_1
    :goto_1
    array-length v5, v4

    const/4 v6, 0x0

    :goto_2
    if-ge v6, v5, :cond_2

    aget-object v7, v4, v6

    .line 878
    .local v7, "_interface":Lorg/checkerframework/org/apache/bcel/classfile/JavaClass;
    invoke-virtual {v0, v7}, Lorg/checkerframework/org/apache/bcel/util/ClassQueue;->enqueue(Lorg/checkerframework/org/apache/bcel/classfile/JavaClass;)V

    .line 877
    .end local v7    # "_interface":Lorg/checkerframework/org/apache/bcel/classfile/JavaClass;
    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    .line 880
    .end local v2    # "clazz":Lorg/checkerframework/org/apache/bcel/classfile/JavaClass;
    .end local v3    # "souper":Lorg/checkerframework/org/apache/bcel/classfile/JavaClass;
    .end local v4    # "_interfaces":[Lorg/checkerframework/org/apache/bcel/classfile/JavaClass;
    :cond_2
    goto :goto_0

    .line 881
    :cond_3
    invoke-interface {v1}, Ljava/util/Set;->size()I

    move-result v2

    new-array v2, v2, [Lorg/checkerframework/org/apache/bcel/classfile/JavaClass;

    invoke-interface {v1, v2}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Lorg/checkerframework/org/apache/bcel/classfile/JavaClass;

    return-object v2
.end method

.method public getAnnotationEntries()[Lorg/checkerframework/org/apache/bcel/classfile/AnnotationEntry;
    .locals 1

    .line 346
    iget-object v0, p0, Lorg/checkerframework/org/apache/bcel/classfile/JavaClass;->annotations:[Lorg/checkerframework/org/apache/bcel/classfile/AnnotationEntry;

    if-nez v0, :cond_0

    .line 347
    invoke-virtual {p0}, Lorg/checkerframework/org/apache/bcel/classfile/JavaClass;->getAttributes()[Lorg/checkerframework/org/apache/bcel/classfile/Attribute;

    move-result-object v0

    invoke-static {v0}, Lorg/checkerframework/org/apache/bcel/classfile/AnnotationEntry;->createAnnotationEntries([Lorg/checkerframework/org/apache/bcel/classfile/Attribute;)[Lorg/checkerframework/org/apache/bcel/classfile/AnnotationEntry;

    move-result-object v0

    iput-object v0, p0, Lorg/checkerframework/org/apache/bcel/classfile/JavaClass;->annotations:[Lorg/checkerframework/org/apache/bcel/classfile/AnnotationEntry;

    .line 350
    :cond_0
    iget-object v0, p0, Lorg/checkerframework/org/apache/bcel/classfile/JavaClass;->annotations:[Lorg/checkerframework/org/apache/bcel/classfile/AnnotationEntry;

    return-object v0
.end method

.method public getAttributes()[Lorg/checkerframework/org/apache/bcel/classfile/Attribute;
    .locals 1

    .line 338
    iget-object v0, p0, Lorg/checkerframework/org/apache/bcel/classfile/JavaClass;->attributes:[Lorg/checkerframework/org/apache/bcel/classfile/Attribute;

    return-object v0
.end method

.method public getBytes()[B
    .locals 4
    .annotation runtime Lorg/checkerframework/dataflow/qual/Pure;
    .end annotation

    .line 268
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 269
    .local v0, "s":Ljava/io/ByteArrayOutputStream;
    new-instance v1, Ljava/io/DataOutputStream;

    invoke-direct {v1, v0}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 271
    .local v1, "ds":Ljava/io/DataOutputStream;
    :try_start_0
    invoke-virtual {p0, v1}, Lorg/checkerframework/org/apache/bcel/classfile/JavaClass;->dump(Ljava/io/DataOutputStream;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 276
    :try_start_1
    invoke-virtual {v1}, Ljava/io/DataOutputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 279
    :goto_0
    goto :goto_1

    .line 277
    :catch_0
    move-exception v2

    .line 278
    .local v2, "e2":Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    .line 280
    .end local v2    # "e2":Ljava/io/IOException;
    goto :goto_1

    .line 275
    :catchall_0
    move-exception v2

    goto :goto_2

    .line 272
    :catch_1
    move-exception v2

    .line 273
    .local v2, "e":Ljava/io/IOException;
    :try_start_2
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 276
    .end local v2    # "e":Ljava/io/IOException;
    :try_start_3
    invoke-virtual {v1}, Ljava/io/DataOutputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_0

    .line 281
    :goto_1
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v2

    return-object v2

    .line 276
    :goto_2
    :try_start_4
    invoke-virtual {v1}, Ljava/io/DataOutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    .line 279
    goto :goto_3

    .line 277
    :catch_2
    move-exception v3

    .line 278
    .local v3, "e2":Ljava/io/IOException;
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    .line 280
    .end local v3    # "e2":Ljava/io/IOException;
    :goto_3
    throw v2
.end method

.method public getClassName()Ljava/lang/String;
    .locals 1

    .line 357
    iget-object v0, p0, Lorg/checkerframework/org/apache/bcel/classfile/JavaClass;->class_name:Ljava/lang/String;

    return-object v0
.end method

.method public getClassNameIndex()I
    .locals 1

    .line 373
    iget v0, p0, Lorg/checkerframework/org/apache/bcel/classfile/JavaClass;->class_name_index:I

    return v0
.end method

.method public getConstantPool()Lorg/checkerframework/org/apache/bcel/classfile/ConstantPool;
    .locals 1

    .line 381
    iget-object v0, p0, Lorg/checkerframework/org/apache/bcel/classfile/JavaClass;->constant_pool:Lorg/checkerframework/org/apache/bcel/classfile/ConstantPool;

    return-object v0
.end method

.method public getFields()[Lorg/checkerframework/org/apache/bcel/classfile/Field;
    .locals 1

    .line 391
    iget-object v0, p0, Lorg/checkerframework/org/apache/bcel/classfile/JavaClass;->fields:[Lorg/checkerframework/org/apache/bcel/classfile/Field;

    return-object v0
.end method

.method public getFileName()Ljava/lang/String;
    .locals 1

    .line 399
    iget-object v0, p0, Lorg/checkerframework/org/apache/bcel/classfile/JavaClass;->file_name:Ljava/lang/String;

    return-object v0
.end method

.method public getInterfaceIndices()[I
    .locals 1

    .line 415
    iget-object v0, p0, Lorg/checkerframework/org/apache/bcel/classfile/JavaClass;->interfaces:[I

    return-object v0
.end method

.method public getInterfaceNames()[Ljava/lang/String;
    .locals 1

    .line 407
    iget-object v0, p0, Lorg/checkerframework/org/apache/bcel/classfile/JavaClass;->interface_names:[Ljava/lang/String;

    return-object v0
.end method

.method public getInterfaces()[Lorg/checkerframework/org/apache/bcel/classfile/JavaClass;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .line 850
    invoke-virtual {p0}, Lorg/checkerframework/org/apache/bcel/classfile/JavaClass;->getInterfaceNames()[Ljava/lang/String;

    move-result-object v0

    .line 851
    .local v0, "_interfaces":[Ljava/lang/String;
    array-length v1, v0

    new-array v1, v1, [Lorg/checkerframework/org/apache/bcel/classfile/JavaClass;

    .line 852
    .local v1, "classes":[Lorg/checkerframework/org/apache/bcel/classfile/JavaClass;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    array-length v3, v0

    if-ge v2, v3, :cond_0

    .line 853
    iget-object v3, p0, Lorg/checkerframework/org/apache/bcel/classfile/JavaClass;->repository:Lorg/checkerframework/org/apache/bcel/util/Repository;

    aget-object v4, v0, v2

    invoke-interface {v3, v4}, Lorg/checkerframework/org/apache/bcel/util/Repository;->loadClass(Ljava/lang/String;)Lorg/checkerframework/org/apache/bcel/classfile/JavaClass;

    move-result-object v3

    aput-object v3, v1, v2

    .line 852
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 855
    .end local v2    # "i":I
    :cond_0
    return-object v1
.end method

.method public getMajor()I
    .locals 1

    .line 423
    iget v0, p0, Lorg/checkerframework/org/apache/bcel/classfile/JavaClass;->major:I

    return v0
.end method

.method public getMethod(Ljava/lang/reflect/Method;)Lorg/checkerframework/org/apache/bcel/classfile/Method;
    .locals 6
    .param p1, "m"    # Ljava/lang/reflect/Method;

    .line 440
    iget-object v0, p0, Lorg/checkerframework/org/apache/bcel/classfile/JavaClass;->methods:[Lorg/checkerframework/org/apache/bcel/classfile/Method;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    .line 441
    .local v3, "method":Lorg/checkerframework/org/apache/bcel/classfile/Method;
    invoke-virtual {p1}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3}, Lorg/checkerframework/org/apache/bcel/classfile/Method;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual {p1}, Ljava/lang/reflect/Method;->getModifiers()I

    move-result v4

    invoke-virtual {v3}, Lorg/checkerframework/org/apache/bcel/classfile/Method;->getModifiers()I

    move-result v5

    if-ne v4, v5, :cond_0

    .line 442
    invoke-static {p1}, Lorg/checkerframework/org/apache/bcel/generic/Type;->getSignature(Ljava/lang/reflect/Method;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3}, Lorg/checkerframework/org/apache/bcel/classfile/Method;->getSignature()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 443
    return-object v3

    .line 440
    .end local v3    # "method":Lorg/checkerframework/org/apache/bcel/classfile/Method;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 446
    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method public getMethods()[Lorg/checkerframework/org/apache/bcel/classfile/Method;
    .locals 1

    .line 431
    iget-object v0, p0, Lorg/checkerframework/org/apache/bcel/classfile/JavaClass;->methods:[Lorg/checkerframework/org/apache/bcel/classfile/Method;

    return-object v0
.end method

.method public getMinor()I
    .locals 1

    .line 454
    iget v0, p0, Lorg/checkerframework/org/apache/bcel/classfile/JavaClass;->minor:I

    return v0
.end method

.method public getPackageName()Ljava/lang/String;
    .locals 1

    .line 365
    iget-object v0, p0, Lorg/checkerframework/org/apache/bcel/classfile/JavaClass;->package_name:Ljava/lang/String;

    return-object v0
.end method

.method public getRepository()Lorg/checkerframework/org/apache/bcel/util/Repository;
    .locals 1

    .line 760
    iget-object v0, p0, Lorg/checkerframework/org/apache/bcel/classfile/JavaClass;->repository:Lorg/checkerframework/org/apache/bcel/util/Repository;

    return-object v0
.end method

.method public final getSource()B
    .locals 1

    .line 750
    iget-byte v0, p0, Lorg/checkerframework/org/apache/bcel/classfile/JavaClass;->source:B

    return v0
.end method

.method public getSourceFileName()Ljava/lang/String;
    .locals 1

    .line 462
    iget-object v0, p0, Lorg/checkerframework/org/apache/bcel/classfile/JavaClass;->source_file_name:Ljava/lang/String;

    return-object v0
.end method

.method public getSuperClass()Lorg/checkerframework/org/apache/bcel/classfile/JavaClass;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .line 824
    const-string v0, "java.lang.Object"

    invoke-virtual {p0}, Lorg/checkerframework/org/apache/bcel/classfile/JavaClass;->getClassName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 825
    const/4 v0, 0x0

    return-object v0

    .line 827
    :cond_0
    iget-object v0, p0, Lorg/checkerframework/org/apache/bcel/classfile/JavaClass;->repository:Lorg/checkerframework/org/apache/bcel/util/Repository;

    invoke-virtual {p0}, Lorg/checkerframework/org/apache/bcel/classfile/JavaClass;->getSuperclassName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/checkerframework/org/apache/bcel/util/Repository;->loadClass(Ljava/lang/String;)Lorg/checkerframework/org/apache/bcel/classfile/JavaClass;

    move-result-object v0

    return-object v0
.end method

.method public getSuperClasses()[Lorg/checkerframework/org/apache/bcel/classfile/JavaClass;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .line 837
    move-object v0, p0

    .line 838
    .local v0, "clazz":Lorg/checkerframework/org/apache/bcel/classfile/JavaClass;
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 839
    .local v1, "allSuperClasses":Ljava/util/List;, "Ljava/util/List<Lorg/checkerframework/org/apache/bcel/classfile/JavaClass;>;"
    :goto_0
    invoke-virtual {v0}, Lorg/checkerframework/org/apache/bcel/classfile/JavaClass;->getSuperClass()Lorg/checkerframework/org/apache/bcel/classfile/JavaClass;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 840
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 842
    :cond_0
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    new-array v2, v2, [Lorg/checkerframework/org/apache/bcel/classfile/JavaClass;

    invoke-interface {v1, v2}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Lorg/checkerframework/org/apache/bcel/classfile/JavaClass;

    return-object v2
.end method

.method public getSuperclassName()Ljava/lang/String;
    .locals 1

    .line 474
    iget-object v0, p0, Lorg/checkerframework/org/apache/bcel/classfile/JavaClass;->superclass_name:Ljava/lang/String;

    return-object v0
.end method

.method public getSuperclassNameIndex()I
    .locals 1

    .line 482
    iget v0, p0, Lorg/checkerframework/org/apache/bcel/classfile/JavaClass;->superclass_name_index:I

    return v0
.end method

.method public hashCode()I
    .locals 1
    .annotation runtime Lorg/checkerframework/dataflow/qual/Pure;
    .end annotation

    .line 933
    sget-object v0, Lorg/checkerframework/org/apache/bcel/classfile/JavaClass;->bcelComparator:Lorg/checkerframework/org/apache/bcel/util/BCELComparator;

    invoke-interface {v0, p0}, Lorg/checkerframework/org/apache/bcel/util/BCELComparator;->hashCode(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public implementationOf(Lorg/checkerframework/org/apache/bcel/classfile/JavaClass;)Z
    .locals 7
    .param p1, "inter"    # Lorg/checkerframework/org/apache/bcel/classfile/JavaClass;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .line 802
    invoke-virtual {p1}, Lorg/checkerframework/org/apache/bcel/classfile/JavaClass;->isInterface()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 805
    invoke-virtual {p0, p1}, Lorg/checkerframework/org/apache/bcel/classfile/JavaClass;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 806
    return v1

    .line 808
    :cond_0
    invoke-virtual {p0}, Lorg/checkerframework/org/apache/bcel/classfile/JavaClass;->getAllInterfaces()[Lorg/checkerframework/org/apache/bcel/classfile/JavaClass;

    move-result-object v0

    .line 809
    .local v0, "super_interfaces":[Lorg/checkerframework/org/apache/bcel/classfile/JavaClass;
    array-length v2, v0

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    if-ge v4, v2, :cond_2

    aget-object v5, v0, v4

    .line 810
    .local v5, "super_interface":Lorg/checkerframework/org/apache/bcel/classfile/JavaClass;
    invoke-virtual {v5, p1}, Lorg/checkerframework/org/apache/bcel/classfile/JavaClass;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 811
    return v1

    .line 809
    .end local v5    # "super_interface":Lorg/checkerframework/org/apache/bcel/classfile/JavaClass;
    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 814
    :cond_2
    return v3

    .line 803
    .end local v0    # "super_interfaces":[Lorg/checkerframework/org/apache/bcel/classfile/JavaClass;
    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lorg/checkerframework/org/apache/bcel/classfile/JavaClass;->getClassName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " is no interface"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final instanceOf(Lorg/checkerframework/org/apache/bcel/classfile/JavaClass;)Z
    .locals 7
    .param p1, "super_class"    # Lorg/checkerframework/org/apache/bcel/classfile/JavaClass;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .line 780
    invoke-virtual {p0, p1}, Lorg/checkerframework/org/apache/bcel/classfile/JavaClass;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 781
    return v1

    .line 783
    :cond_0
    invoke-virtual {p0}, Lorg/checkerframework/org/apache/bcel/classfile/JavaClass;->getSuperClasses()[Lorg/checkerframework/org/apache/bcel/classfile/JavaClass;

    move-result-object v0

    .line 784
    .local v0, "super_classes":[Lorg/checkerframework/org/apache/bcel/classfile/JavaClass;
    array-length v2, v0

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    if-ge v4, v2, :cond_2

    aget-object v5, v0, v4

    .line 785
    .local v5, "super_classe":Lorg/checkerframework/org/apache/bcel/classfile/JavaClass;
    invoke-virtual {v5, p1}, Lorg/checkerframework/org/apache/bcel/classfile/JavaClass;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 786
    return v1

    .line 784
    .end local v5    # "super_classe":Lorg/checkerframework/org/apache/bcel/classfile/JavaClass;
    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 789
    :cond_2
    invoke-virtual {p1}, Lorg/checkerframework/org/apache/bcel/classfile/JavaClass;->isInterface()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 790
    invoke-virtual {p0, p1}, Lorg/checkerframework/org/apache/bcel/classfile/JavaClass;->implementationOf(Lorg/checkerframework/org/apache/bcel/classfile/JavaClass;)Z

    move-result v1

    return v1

    .line 792
    :cond_3
    return v3
.end method

.method public final isAnonymous()Z
    .locals 1

    .line 707
    invoke-direct {p0}, Lorg/checkerframework/org/apache/bcel/classfile/JavaClass;->computeNestedTypeStatus()V

    .line 708
    iget-boolean v0, p0, Lorg/checkerframework/org/apache/bcel/classfile/JavaClass;->isAnonymous:Z

    return v0
.end method

.method public final isClass()Z
    .locals 1

    .line 700
    invoke-super {p0}, Lorg/checkerframework/org/apache/bcel/classfile/AccessFlags;->getAccessFlags()I

    move-result v0

    and-int/lit16 v0, v0, 0x200

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final isNested()Z
    .locals 1

    .line 715
    invoke-direct {p0}, Lorg/checkerframework/org/apache/bcel/classfile/JavaClass;->computeNestedTypeStatus()V

    .line 716
    iget-boolean v0, p0, Lorg/checkerframework/org/apache/bcel/classfile/JavaClass;->isNested:Z

    return v0
.end method

.method public final isSuper()Z
    .locals 1

    .line 695
    invoke-super {p0}, Lorg/checkerframework/org/apache/bcel/classfile/AccessFlags;->getAccessFlags()I

    move-result v0

    and-int/lit8 v0, v0, 0x20

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public setAttributes([Lorg/checkerframework/org/apache/bcel/classfile/Attribute;)V
    .locals 0
    .param p1, "attributes"    # [Lorg/checkerframework/org/apache/bcel/classfile/Attribute;

    .line 489
    iput-object p1, p0, Lorg/checkerframework/org/apache/bcel/classfile/JavaClass;->attributes:[Lorg/checkerframework/org/apache/bcel/classfile/Attribute;

    .line 490
    return-void
.end method

.method public setClassName(Ljava/lang/String;)V
    .locals 0
    .param p1, "class_name"    # Ljava/lang/String;

    .line 497
    iput-object p1, p0, Lorg/checkerframework/org/apache/bcel/classfile/JavaClass;->class_name:Ljava/lang/String;

    .line 498
    return-void
.end method

.method public setClassNameIndex(I)V
    .locals 0
    .param p1, "class_name_index"    # I

    .line 505
    iput p1, p0, Lorg/checkerframework/org/apache/bcel/classfile/JavaClass;->class_name_index:I

    .line 506
    return-void
.end method

.method public setConstantPool(Lorg/checkerframework/org/apache/bcel/classfile/ConstantPool;)V
    .locals 0
    .param p1, "constant_pool"    # Lorg/checkerframework/org/apache/bcel/classfile/ConstantPool;

    .line 513
    iput-object p1, p0, Lorg/checkerframework/org/apache/bcel/classfile/JavaClass;->constant_pool:Lorg/checkerframework/org/apache/bcel/classfile/ConstantPool;

    .line 514
    return-void
.end method

.method public setFields([Lorg/checkerframework/org/apache/bcel/classfile/Field;)V
    .locals 0
    .param p1, "fields"    # [Lorg/checkerframework/org/apache/bcel/classfile/Field;

    .line 521
    iput-object p1, p0, Lorg/checkerframework/org/apache/bcel/classfile/JavaClass;->fields:[Lorg/checkerframework/org/apache/bcel/classfile/Field;

    .line 522
    return-void
.end method

.method public setFileName(Ljava/lang/String;)V
    .locals 0
    .param p1, "file_name"    # Ljava/lang/String;

    .line 529
    iput-object p1, p0, Lorg/checkerframework/org/apache/bcel/classfile/JavaClass;->file_name:Ljava/lang/String;

    .line 530
    return-void
.end method

.method public setInterfaceNames([Ljava/lang/String;)V
    .locals 0
    .param p1, "interface_names"    # [Ljava/lang/String;

    .line 537
    iput-object p1, p0, Lorg/checkerframework/org/apache/bcel/classfile/JavaClass;->interface_names:[Ljava/lang/String;

    .line 538
    return-void
.end method

.method public setInterfaces([I)V
    .locals 0
    .param p1, "interfaces"    # [I

    .line 545
    iput-object p1, p0, Lorg/checkerframework/org/apache/bcel/classfile/JavaClass;->interfaces:[I

    .line 546
    return-void
.end method

.method public setMajor(I)V
    .locals 0
    .param p1, "major"    # I

    .line 553
    iput p1, p0, Lorg/checkerframework/org/apache/bcel/classfile/JavaClass;->major:I

    .line 554
    return-void
.end method

.method public setMethods([Lorg/checkerframework/org/apache/bcel/classfile/Method;)V
    .locals 0
    .param p1, "methods"    # [Lorg/checkerframework/org/apache/bcel/classfile/Method;

    .line 561
    iput-object p1, p0, Lorg/checkerframework/org/apache/bcel/classfile/JavaClass;->methods:[Lorg/checkerframework/org/apache/bcel/classfile/Method;

    .line 562
    return-void
.end method

.method public setMinor(I)V
    .locals 0
    .param p1, "minor"    # I

    .line 569
    iput p1, p0, Lorg/checkerframework/org/apache/bcel/classfile/JavaClass;->minor:I

    .line 570
    return-void
.end method

.method public setRepository(Lorg/checkerframework/org/apache/bcel/util/Repository;)V
    .locals 0
    .param p1, "repository"    # Lorg/checkerframework/org/apache/bcel/util/Repository;

    .line 769
    iput-object p1, p0, Lorg/checkerframework/org/apache/bcel/classfile/JavaClass;->repository:Lorg/checkerframework/org/apache/bcel/util/Repository;

    .line 770
    return-void
.end method

.method public setSourceFileName(Ljava/lang/String;)V
    .locals 0
    .param p1, "source_file_name"    # Ljava/lang/String;

    .line 577
    iput-object p1, p0, Lorg/checkerframework/org/apache/bcel/classfile/JavaClass;->source_file_name:Ljava/lang/String;

    .line 578
    return-void
.end method

.method public setSuperclassName(Ljava/lang/String;)V
    .locals 0
    .param p1, "superclass_name"    # Ljava/lang/String;

    .line 585
    iput-object p1, p0, Lorg/checkerframework/org/apache/bcel/classfile/JavaClass;->superclass_name:Ljava/lang/String;

    .line 586
    return-void
.end method

.method public setSuperclassNameIndex(I)V
    .locals 0
    .param p1, "superclass_name_index"    # I

    .line 593
    iput p1, p0, Lorg/checkerframework/org/apache/bcel/classfile/JavaClass;->superclass_name_index:I

    .line 594
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 13
    .annotation runtime Lorg/checkerframework/dataflow/qual/SideEffectFree;
    .end annotation

    .line 602
    invoke-super {p0}, Lorg/checkerframework/org/apache/bcel/classfile/AccessFlags;->getAccessFlags()I

    move-result v0

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lorg/checkerframework/org/apache/bcel/classfile/Utility;->accessToString(IZ)Ljava/lang/String;

    move-result-object v0

    .line 603
    .local v0, "access":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    const-string v2, " "

    if-eqz v1, :cond_0

    const-string v1, ""

    goto :goto_0

    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_0
    move-object v0, v1

    .line 604
    new-instance v1, Ljava/lang/StringBuilder;

    const/16 v3, 0x80

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 605
    .local v1, "buf":Ljava/lang/StringBuilder;
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-super {p0}, Lorg/checkerframework/org/apache/bcel/classfile/AccessFlags;->getAccessFlags()I

    move-result v4

    invoke-static {v4}, Lorg/checkerframework/org/apache/bcel/classfile/Utility;->classOrInterface(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lorg/checkerframework/org/apache/bcel/classfile/JavaClass;->class_name:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 606
    const-string v3, " extends "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lorg/checkerframework/org/apache/bcel/classfile/JavaClass;->superclass_name:Ljava/lang/String;

    .line 607
    const/4 v4, 0x0

    invoke-static {v3, v4}, Lorg/checkerframework/org/apache/bcel/classfile/Utility;->compactClassName(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v3

    .line 606
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 607
    const/16 v3, 0xa

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 608
    iget-object v2, p0, Lorg/checkerframework/org/apache/bcel/classfile/JavaClass;->interfaces:[I

    array-length v2, v2

    .line 609
    .local v2, "size":I
    if-lez v2, :cond_3

    .line 610
    const-string v5, "implements\t\t"

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 611
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_1
    if-ge v5, v2, :cond_2

    .line 612
    iget-object v6, p0, Lorg/checkerframework/org/apache/bcel/classfile/JavaClass;->interface_names:[Ljava/lang/String;

    aget-object v6, v6, v5

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 613
    add-int/lit8 v6, v2, -0x1

    if-ge v5, v6, :cond_1

    .line 614
    const-string v6, ", "

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 611
    :cond_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 617
    .end local v5    # "i":I
    :cond_2
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 619
    :cond_3
    const-string v5, "filename\t\t"

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lorg/checkerframework/org/apache/bcel/classfile/JavaClass;->file_name:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 620
    const-string v5, "compiled from\t\t"

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lorg/checkerframework/org/apache/bcel/classfile/JavaClass;->source_file_name:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 621
    const-string v5, "compiler version\t"

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lorg/checkerframework/org/apache/bcel/classfile/JavaClass;->major:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lorg/checkerframework/org/apache/bcel/classfile/JavaClass;->minor:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 622
    const-string v5, "access flags\t\t"

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-super {p0}, Lorg/checkerframework/org/apache/bcel/classfile/AccessFlags;->getAccessFlags()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 623
    const-string v5, "constant pool\t\t"

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lorg/checkerframework/org/apache/bcel/classfile/JavaClass;->constant_pool:Lorg/checkerframework/org/apache/bcel/classfile/ConstantPool;

    invoke-virtual {v6}, Lorg/checkerframework/org/apache/bcel/classfile/ConstantPool;->getLength()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " entries\n"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 624
    const-string v5, "ACC_SUPER flag\t\t"

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p0}, Lorg/checkerframework/org/apache/bcel/classfile/JavaClass;->isSuper()Z

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\n"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 625
    iget-object v5, p0, Lorg/checkerframework/org/apache/bcel/classfile/JavaClass;->attributes:[Lorg/checkerframework/org/apache/bcel/classfile/Attribute;

    array-length v5, v5

    if-lez v5, :cond_4

    .line 626
    const-string v5, "\nAttribute(s):\n"

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 627
    iget-object v5, p0, Lorg/checkerframework/org/apache/bcel/classfile/JavaClass;->attributes:[Lorg/checkerframework/org/apache/bcel/classfile/Attribute;

    array-length v7, v5

    move v8, v4

    :goto_2
    if-ge v8, v7, :cond_4

    aget-object v9, v5, v8

    .line 628
    .local v9, "attribute":Lorg/checkerframework/org/apache/bcel/classfile/Attribute;
    invoke-static {v9}, Lorg/checkerframework/org/apache/bcel/classfile/JavaClass;->indent(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 627
    .end local v9    # "attribute":Lorg/checkerframework/org/apache/bcel/classfile/Attribute;
    add-int/lit8 v8, v8, 0x1

    goto :goto_2

    .line 631
    :cond_4
    invoke-virtual {p0}, Lorg/checkerframework/org/apache/bcel/classfile/JavaClass;->getAnnotationEntries()[Lorg/checkerframework/org/apache/bcel/classfile/AnnotationEntry;

    move-result-object v5

    .line 632
    .local v5, "annotations":[Lorg/checkerframework/org/apache/bcel/classfile/AnnotationEntry;
    if-eqz v5, :cond_5

    array-length v7, v5

    if-lez v7, :cond_5

    .line 633
    const-string v7, "\nAnnotation(s):\n"

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 634
    array-length v7, v5

    move v8, v4

    :goto_3
    if-ge v8, v7, :cond_5

    aget-object v9, v5, v8

    .line 635
    .local v9, "annotation":Lorg/checkerframework/org/apache/bcel/classfile/AnnotationEntry;
    invoke-static {v9}, Lorg/checkerframework/org/apache/bcel/classfile/JavaClass;->indent(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 634
    .end local v9    # "annotation":Lorg/checkerframework/org/apache/bcel/classfile/AnnotationEntry;
    add-int/lit8 v8, v8, 0x1

    goto :goto_3

    .line 638
    :cond_5
    iget-object v7, p0, Lorg/checkerframework/org/apache/bcel/classfile/JavaClass;->fields:[Lorg/checkerframework/org/apache/bcel/classfile/Field;

    array-length v7, v7

    const-string v8, "\t"

    if-lez v7, :cond_6

    .line 639
    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v9, p0, Lorg/checkerframework/org/apache/bcel/classfile/JavaClass;->fields:[Lorg/checkerframework/org/apache/bcel/classfile/Field;

    array-length v9, v9

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v9, " fields:\n"

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 640
    iget-object v7, p0, Lorg/checkerframework/org/apache/bcel/classfile/JavaClass;->fields:[Lorg/checkerframework/org/apache/bcel/classfile/Field;

    array-length v9, v7

    move v10, v4

    :goto_4
    if-ge v10, v9, :cond_6

    aget-object v11, v7, v10

    .line 641
    .local v11, "field":Lorg/checkerframework/org/apache/bcel/classfile/Field;
    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 640
    .end local v11    # "field":Lorg/checkerframework/org/apache/bcel/classfile/Field;
    add-int/lit8 v10, v10, 0x1

    goto :goto_4

    .line 644
    :cond_6
    iget-object v7, p0, Lorg/checkerframework/org/apache/bcel/classfile/JavaClass;->methods:[Lorg/checkerframework/org/apache/bcel/classfile/Method;

    array-length v7, v7

    if-lez v7, :cond_7

    .line 645
    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lorg/checkerframework/org/apache/bcel/classfile/JavaClass;->methods:[Lorg/checkerframework/org/apache/bcel/classfile/Method;

    array-length v7, v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " methods:\n"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 646
    iget-object v6, p0, Lorg/checkerframework/org/apache/bcel/classfile/JavaClass;->methods:[Lorg/checkerframework/org/apache/bcel/classfile/Method;

    array-length v7, v6

    :goto_5
    if-ge v4, v7, :cond_7

    aget-object v9, v6, v4

    .line 647
    .local v9, "method":Lorg/checkerframework/org/apache/bcel/classfile/Method;
    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 646
    .end local v9    # "method":Lorg/checkerframework/org/apache/bcel/classfile/Method;
    add-int/lit8 v4, v4, 0x1

    goto :goto_5

    .line 650
    :cond_7
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method
