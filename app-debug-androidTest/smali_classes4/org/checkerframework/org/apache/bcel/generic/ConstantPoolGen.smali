.class public Lorg/checkerframework/org/apache/bcel/generic/ConstantPoolGen;
.super Ljava/lang/Object;
.source "ConstantPoolGen.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/checkerframework/org/apache/bcel/generic/ConstantPoolGen$Index;
    }
.end annotation

.annotation runtime Lorg/checkerframework/checker/interning/qual/UsesObjectEquals;
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z = false

.field private static final DEFAULT_BUFFER_SIZE:I = 0x100

.field private static final FIELDREF_DELIM:Ljava/lang/String; = "&"

.field private static final IMETHODREF_DELIM:Ljava/lang/String; = "#"

.field private static final METHODREF_DELIM:Ljava/lang/String; = ":"

.field private static final NAT_DELIM:Ljava/lang/String; = "%"


# instance fields
.field private final class_table:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lorg/checkerframework/org/apache/bcel/generic/ConstantPoolGen$Index;",
            ">;"
        }
    .end annotation
.end field

.field protected constants:[Lorg/checkerframework/org/apache/bcel/classfile/Constant;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field private final cp_table:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lorg/checkerframework/org/apache/bcel/generic/ConstantPoolGen$Index;",
            ">;"
        }
    .end annotation
.end field

.field protected index:I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field private final n_a_t_table:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lorg/checkerframework/org/apache/bcel/generic/ConstantPoolGen$Index;",
            ">;"
        }
    .end annotation
.end field

.field protected size:I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field private final string_table:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lorg/checkerframework/org/apache/bcel/generic/ConstantPoolGen$Index;",
            ">;"
        }
    .end annotation
.end field

.field private final utf8_table:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lorg/checkerframework/org/apache/bcel/generic/ConstantPoolGen$Index;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .line 58
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 220
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 77
    const/4 v0, 0x1

    iput v0, p0, Lorg/checkerframework/org/apache/bcel/generic/ConstantPoolGen;->index:I

    .line 237
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/checkerframework/org/apache/bcel/generic/ConstantPoolGen;->string_table:Ljava/util/Map;

    .line 274
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/checkerframework/org/apache/bcel/generic/ConstantPoolGen;->class_table:Ljava/util/Map;

    .line 413
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/checkerframework/org/apache/bcel/generic/ConstantPoolGen;->utf8_table:Ljava/util/Map;

    .line 525
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/checkerframework/org/apache/bcel/generic/ConstantPoolGen;->n_a_t_table:Ljava/util/Map;

    .line 568
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/checkerframework/org/apache/bcel/generic/ConstantPoolGen;->cp_table:Ljava/util/Map;

    .line 221
    const/16 v0, 0x100

    iput v0, p0, Lorg/checkerframework/org/apache/bcel/generic/ConstantPoolGen;->size:I

    .line 222
    new-array v0, v0, [Lorg/checkerframework/org/apache/bcel/classfile/Constant;

    iput-object v0, p0, Lorg/checkerframework/org/apache/bcel/generic/ConstantPoolGen;->constants:[Lorg/checkerframework/org/apache/bcel/classfile/Constant;

    .line 223
    return-void
.end method

.method public constructor <init>(Lorg/checkerframework/org/apache/bcel/classfile/ConstantPool;)V
    .locals 1
    .param p1, "cp"    # Lorg/checkerframework/org/apache/bcel/classfile/ConstantPool;

    .line 213
    invoke-virtual {p1}, Lorg/checkerframework/org/apache/bcel/classfile/ConstantPool;->getConstantPool()[Lorg/checkerframework/org/apache/bcel/classfile/Constant;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/checkerframework/org/apache/bcel/generic/ConstantPoolGen;-><init>([Lorg/checkerframework/org/apache/bcel/classfile/Constant;)V

    .line 214
    return-void
.end method

.method public constructor <init>([Lorg/checkerframework/org/apache/bcel/classfile/Constant;)V
    .locals 14
    .param p1, "cs"    # [Lorg/checkerframework/org/apache/bcel/classfile/Constant;

    .line 101
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 77
    const/4 v0, 0x1

    iput v0, p0, Lorg/checkerframework/org/apache/bcel/generic/ConstantPoolGen;->index:I

    .line 237
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/checkerframework/org/apache/bcel/generic/ConstantPoolGen;->string_table:Ljava/util/Map;

    .line 274
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/checkerframework/org/apache/bcel/generic/ConstantPoolGen;->class_table:Ljava/util/Map;

    .line 413
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/checkerframework/org/apache/bcel/generic/ConstantPoolGen;->utf8_table:Ljava/util/Map;

    .line 525
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/checkerframework/org/apache/bcel/generic/ConstantPoolGen;->n_a_t_table:Ljava/util/Map;

    .line 568
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/checkerframework/org/apache/bcel/generic/ConstantPoolGen;->cp_table:Ljava/util/Map;

    .line 102
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x100

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 104
    .local v0, "sb":Ljava/lang/StringBuilder;
    array-length v2, p1

    add-int/lit8 v2, v2, 0x40

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    iput v1, p0, Lorg/checkerframework/org/apache/bcel/generic/ConstantPoolGen;->size:I

    .line 105
    new-array v1, v1, [Lorg/checkerframework/org/apache/bcel/classfile/Constant;

    iput-object v1, p0, Lorg/checkerframework/org/apache/bcel/generic/ConstantPoolGen;->constants:[Lorg/checkerframework/org/apache/bcel/classfile/Constant;

    .line 107
    array-length v2, p1

    const/4 v3, 0x0

    invoke-static {p1, v3, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 108
    array-length v1, p1

    if-lez v1, :cond_0

    .line 109
    array-length v1, p1

    iput v1, p0, Lorg/checkerframework/org/apache/bcel/generic/ConstantPoolGen;->index:I

    .line 113
    :cond_0
    const/4 v1, 0x1

    .local v1, "i":I
    :goto_0
    iget v2, p0, Lorg/checkerframework/org/apache/bcel/generic/ConstantPoolGen;->index:I

    if-ge v1, v2, :cond_15

    .line 114
    iget-object v2, p0, Lorg/checkerframework/org/apache/bcel/generic/ConstantPoolGen;->constants:[Lorg/checkerframework/org/apache/bcel/classfile/Constant;

    aget-object v4, v2, v1

    .line 115
    .local v4, "c":Lorg/checkerframework/org/apache/bcel/classfile/Constant;
    instance-of v5, v4, Lorg/checkerframework/org/apache/bcel/classfile/ConstantString;

    if-eqz v5, :cond_2

    .line 116
    move-object v5, v4

    check-cast v5, Lorg/checkerframework/org/apache/bcel/classfile/ConstantString;

    .line 117
    .local v5, "s":Lorg/checkerframework/org/apache/bcel/classfile/ConstantString;
    invoke-virtual {v5}, Lorg/checkerframework/org/apache/bcel/classfile/ConstantString;->getStringIndex()I

    move-result v6

    aget-object v2, v2, v6

    check-cast v2, Lorg/checkerframework/org/apache/bcel/classfile/ConstantUtf8;

    .line 118
    .local v2, "u8":Lorg/checkerframework/org/apache/bcel/classfile/ConstantUtf8;
    invoke-virtual {v2}, Lorg/checkerframework/org/apache/bcel/classfile/ConstantUtf8;->getBytes()Ljava/lang/String;

    move-result-object v6

    .line 119
    .local v6, "key":Ljava/lang/String;
    iget-object v7, p0, Lorg/checkerframework/org/apache/bcel/generic/ConstantPoolGen;->string_table:Ljava/util/Map;

    invoke-interface {v7, v6}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_1

    .line 120
    iget-object v7, p0, Lorg/checkerframework/org/apache/bcel/generic/ConstantPoolGen;->string_table:Ljava/util/Map;

    new-instance v8, Lorg/checkerframework/org/apache/bcel/generic/ConstantPoolGen$Index;

    invoke-direct {v8, v1}, Lorg/checkerframework/org/apache/bcel/generic/ConstantPoolGen$Index;-><init>(I)V

    invoke-interface {v7, v6, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 122
    .end local v2    # "u8":Lorg/checkerframework/org/apache/bcel/classfile/ConstantUtf8;
    .end local v5    # "s":Lorg/checkerframework/org/apache/bcel/classfile/ConstantString;
    .end local v6    # "key":Ljava/lang/String;
    :cond_1
    goto/16 :goto_4

    :cond_2
    instance-of v5, v4, Lorg/checkerframework/org/apache/bcel/classfile/ConstantClass;

    if-eqz v5, :cond_4

    .line 123
    move-object v5, v4

    check-cast v5, Lorg/checkerframework/org/apache/bcel/classfile/ConstantClass;

    .line 124
    .local v5, "s":Lorg/checkerframework/org/apache/bcel/classfile/ConstantClass;
    invoke-virtual {v5}, Lorg/checkerframework/org/apache/bcel/classfile/ConstantClass;->getNameIndex()I

    move-result v6

    aget-object v2, v2, v6

    check-cast v2, Lorg/checkerframework/org/apache/bcel/classfile/ConstantUtf8;

    .line 125
    .restart local v2    # "u8":Lorg/checkerframework/org/apache/bcel/classfile/ConstantUtf8;
    invoke-virtual {v2}, Lorg/checkerframework/org/apache/bcel/classfile/ConstantUtf8;->getBytes()Ljava/lang/String;

    move-result-object v6

    .line 126
    .restart local v6    # "key":Ljava/lang/String;
    iget-object v7, p0, Lorg/checkerframework/org/apache/bcel/generic/ConstantPoolGen;->class_table:Ljava/util/Map;

    invoke-interface {v7, v6}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_3

    .line 127
    iget-object v7, p0, Lorg/checkerframework/org/apache/bcel/generic/ConstantPoolGen;->class_table:Ljava/util/Map;

    new-instance v8, Lorg/checkerframework/org/apache/bcel/generic/ConstantPoolGen$Index;

    invoke-direct {v8, v1}, Lorg/checkerframework/org/apache/bcel/generic/ConstantPoolGen$Index;-><init>(I)V

    invoke-interface {v7, v6, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 129
    .end local v2    # "u8":Lorg/checkerframework/org/apache/bcel/classfile/ConstantUtf8;
    .end local v5    # "s":Lorg/checkerframework/org/apache/bcel/classfile/ConstantClass;
    .end local v6    # "key":Ljava/lang/String;
    :cond_3
    goto/16 :goto_4

    :cond_4
    instance-of v5, v4, Lorg/checkerframework/org/apache/bcel/classfile/ConstantNameAndType;

    if-eqz v5, :cond_6

    .line 130
    move-object v5, v4

    check-cast v5, Lorg/checkerframework/org/apache/bcel/classfile/ConstantNameAndType;

    .line 131
    .local v5, "n":Lorg/checkerframework/org/apache/bcel/classfile/ConstantNameAndType;
    invoke-virtual {v5}, Lorg/checkerframework/org/apache/bcel/classfile/ConstantNameAndType;->getNameIndex()I

    move-result v6

    aget-object v2, v2, v6

    check-cast v2, Lorg/checkerframework/org/apache/bcel/classfile/ConstantUtf8;

    .line 132
    .restart local v2    # "u8":Lorg/checkerframework/org/apache/bcel/classfile/ConstantUtf8;
    iget-object v6, p0, Lorg/checkerframework/org/apache/bcel/generic/ConstantPoolGen;->constants:[Lorg/checkerframework/org/apache/bcel/classfile/Constant;

    invoke-virtual {v5}, Lorg/checkerframework/org/apache/bcel/classfile/ConstantNameAndType;->getSignatureIndex()I

    move-result v7

    aget-object v6, v6, v7

    check-cast v6, Lorg/checkerframework/org/apache/bcel/classfile/ConstantUtf8;

    .line 134
    .local v6, "u8_2":Lorg/checkerframework/org/apache/bcel/classfile/ConstantUtf8;
    invoke-virtual {v2}, Lorg/checkerframework/org/apache/bcel/classfile/ConstantUtf8;->getBytes()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 135
    const-string v7, "%"

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 136
    invoke-virtual {v6}, Lorg/checkerframework/org/apache/bcel/classfile/ConstantUtf8;->getBytes()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 137
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 138
    .local v7, "key":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v8

    invoke-virtual {v0, v3, v8}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    .line 140
    iget-object v8, p0, Lorg/checkerframework/org/apache/bcel/generic/ConstantPoolGen;->n_a_t_table:Ljava/util/Map;

    invoke-interface {v8, v7}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_5

    .line 141
    iget-object v8, p0, Lorg/checkerframework/org/apache/bcel/generic/ConstantPoolGen;->n_a_t_table:Ljava/util/Map;

    new-instance v9, Lorg/checkerframework/org/apache/bcel/generic/ConstantPoolGen$Index;

    invoke-direct {v9, v1}, Lorg/checkerframework/org/apache/bcel/generic/ConstantPoolGen$Index;-><init>(I)V

    invoke-interface {v8, v7, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 143
    .end local v2    # "u8":Lorg/checkerframework/org/apache/bcel/classfile/ConstantUtf8;
    .end local v5    # "n":Lorg/checkerframework/org/apache/bcel/classfile/ConstantNameAndType;
    .end local v6    # "u8_2":Lorg/checkerframework/org/apache/bcel/classfile/ConstantUtf8;
    .end local v7    # "key":Ljava/lang/String;
    :cond_5
    goto/16 :goto_4

    :cond_6
    instance-of v5, v4, Lorg/checkerframework/org/apache/bcel/classfile/ConstantUtf8;

    if-eqz v5, :cond_8

    .line 144
    move-object v2, v4

    check-cast v2, Lorg/checkerframework/org/apache/bcel/classfile/ConstantUtf8;

    .line 145
    .local v2, "u":Lorg/checkerframework/org/apache/bcel/classfile/ConstantUtf8;
    invoke-virtual {v2}, Lorg/checkerframework/org/apache/bcel/classfile/ConstantUtf8;->getBytes()Ljava/lang/String;

    move-result-object v5

    .line 146
    .local v5, "key":Ljava/lang/String;
    iget-object v6, p0, Lorg/checkerframework/org/apache/bcel/generic/ConstantPoolGen;->utf8_table:Ljava/util/Map;

    invoke-interface {v6, v5}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_7

    .line 147
    iget-object v6, p0, Lorg/checkerframework/org/apache/bcel/generic/ConstantPoolGen;->utf8_table:Ljava/util/Map;

    new-instance v7, Lorg/checkerframework/org/apache/bcel/generic/ConstantPoolGen$Index;

    invoke-direct {v7, v1}, Lorg/checkerframework/org/apache/bcel/generic/ConstantPoolGen$Index;-><init>(I)V

    invoke-interface {v6, v5, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 149
    .end local v2    # "u":Lorg/checkerframework/org/apache/bcel/classfile/ConstantUtf8;
    .end local v5    # "key":Ljava/lang/String;
    :cond_7
    goto/16 :goto_4

    :cond_8
    instance-of v5, v4, Lorg/checkerframework/org/apache/bcel/classfile/ConstantCP;

    if-eqz v5, :cond_c

    .line 150
    move-object v5, v4

    check-cast v5, Lorg/checkerframework/org/apache/bcel/classfile/ConstantCP;

    .line 154
    .local v5, "m":Lorg/checkerframework/org/apache/bcel/classfile/ConstantCP;
    instance-of v6, v4, Lorg/checkerframework/org/apache/bcel/classfile/ConstantInvokeDynamic;

    if-eqz v6, :cond_9

    .line 155
    move-object v2, v5

    check-cast v2, Lorg/checkerframework/org/apache/bcel/classfile/ConstantInvokeDynamic;

    invoke-virtual {v2}, Lorg/checkerframework/org/apache/bcel/classfile/ConstantInvokeDynamic;->getBootstrapMethodAttrIndex()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    .local v2, "class_name":Ljava/lang/String;
    goto :goto_1

    .line 159
    .end local v2    # "class_name":Ljava/lang/String;
    :cond_9
    invoke-virtual {v5}, Lorg/checkerframework/org/apache/bcel/classfile/ConstantCP;->getClassIndex()I

    move-result v6

    aget-object v2, v2, v6

    check-cast v2, Lorg/checkerframework/org/apache/bcel/classfile/ConstantClass;

    .line 160
    .local v2, "clazz":Lorg/checkerframework/org/apache/bcel/classfile/ConstantClass;
    iget-object v6, p0, Lorg/checkerframework/org/apache/bcel/generic/ConstantPoolGen;->constants:[Lorg/checkerframework/org/apache/bcel/classfile/Constant;

    invoke-virtual {v2}, Lorg/checkerframework/org/apache/bcel/classfile/ConstantClass;->getNameIndex()I

    move-result v7

    aget-object v6, v6, v7

    check-cast v6, Lorg/checkerframework/org/apache/bcel/classfile/ConstantUtf8;

    .line 161
    .local v6, "u8":Lorg/checkerframework/org/apache/bcel/classfile/ConstantUtf8;
    invoke-virtual {v6}, Lorg/checkerframework/org/apache/bcel/classfile/ConstantUtf8;->getBytes()Ljava/lang/String;

    move-result-object v7

    const/16 v8, 0x2f

    const/16 v9, 0x2e

    invoke-virtual {v7, v8, v9}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v7

    move-object v2, v7

    .line 164
    .end local v6    # "u8":Lorg/checkerframework/org/apache/bcel/classfile/ConstantUtf8;
    .local v2, "class_name":Ljava/lang/String;
    :goto_1
    iget-object v6, p0, Lorg/checkerframework/org/apache/bcel/generic/ConstantPoolGen;->constants:[Lorg/checkerframework/org/apache/bcel/classfile/Constant;

    invoke-virtual {v5}, Lorg/checkerframework/org/apache/bcel/classfile/ConstantCP;->getNameAndTypeIndex()I

    move-result v7

    aget-object v6, v6, v7

    check-cast v6, Lorg/checkerframework/org/apache/bcel/classfile/ConstantNameAndType;

    .line 165
    .local v6, "n":Lorg/checkerframework/org/apache/bcel/classfile/ConstantNameAndType;
    iget-object v7, p0, Lorg/checkerframework/org/apache/bcel/generic/ConstantPoolGen;->constants:[Lorg/checkerframework/org/apache/bcel/classfile/Constant;

    invoke-virtual {v6}, Lorg/checkerframework/org/apache/bcel/classfile/ConstantNameAndType;->getNameIndex()I

    move-result v8

    aget-object v7, v7, v8

    check-cast v7, Lorg/checkerframework/org/apache/bcel/classfile/ConstantUtf8;

    .line 166
    .local v7, "u8":Lorg/checkerframework/org/apache/bcel/classfile/ConstantUtf8;
    invoke-virtual {v7}, Lorg/checkerframework/org/apache/bcel/classfile/ConstantUtf8;->getBytes()Ljava/lang/String;

    move-result-object v8

    .line 167
    .local v8, "method_name":Ljava/lang/String;
    iget-object v9, p0, Lorg/checkerframework/org/apache/bcel/generic/ConstantPoolGen;->constants:[Lorg/checkerframework/org/apache/bcel/classfile/Constant;

    invoke-virtual {v6}, Lorg/checkerframework/org/apache/bcel/classfile/ConstantNameAndType;->getSignatureIndex()I

    move-result v10

    aget-object v9, v9, v10

    move-object v7, v9

    check-cast v7, Lorg/checkerframework/org/apache/bcel/classfile/ConstantUtf8;

    .line 168
    invoke-virtual {v7}, Lorg/checkerframework/org/apache/bcel/classfile/ConstantUtf8;->getBytes()Ljava/lang/String;

    move-result-object v9

    .line 170
    .local v9, "signature":Ljava/lang/String;
    const-string v10, ":"

    .line 171
    .local v10, "delim":Ljava/lang/String;
    instance-of v11, v4, Lorg/checkerframework/org/apache/bcel/classfile/ConstantInterfaceMethodref;

    if-eqz v11, :cond_a

    .line 172
    const-string v10, "#"

    goto :goto_2

    .line 173
    :cond_a
    instance-of v11, v4, Lorg/checkerframework/org/apache/bcel/classfile/ConstantFieldref;

    if-eqz v11, :cond_b

    .line 174
    const-string v10, "&"

    .line 177
    :cond_b
    :goto_2
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 178
    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 179
    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 180
    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 181
    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 182
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    .line 183
    .local v11, "key":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v12

    invoke-virtual {v0, v3, v12}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    .line 185
    iget-object v12, p0, Lorg/checkerframework/org/apache/bcel/generic/ConstantPoolGen;->cp_table:Ljava/util/Map;

    invoke-interface {v12, v11}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_d

    .line 186
    iget-object v12, p0, Lorg/checkerframework/org/apache/bcel/generic/ConstantPoolGen;->cp_table:Ljava/util/Map;

    new-instance v13, Lorg/checkerframework/org/apache/bcel/generic/ConstantPoolGen$Index;

    invoke-direct {v13, v1}, Lorg/checkerframework/org/apache/bcel/generic/ConstantPoolGen$Index;-><init>(I)V

    invoke-interface {v12, v11, v13}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3

    .line 188
    .end local v2    # "class_name":Ljava/lang/String;
    .end local v5    # "m":Lorg/checkerframework/org/apache/bcel/classfile/ConstantCP;
    .end local v6    # "n":Lorg/checkerframework/org/apache/bcel/classfile/ConstantNameAndType;
    .end local v7    # "u8":Lorg/checkerframework/org/apache/bcel/classfile/ConstantUtf8;
    .end local v8    # "method_name":Ljava/lang/String;
    .end local v9    # "signature":Ljava/lang/String;
    .end local v10    # "delim":Ljava/lang/String;
    .end local v11    # "key":Ljava/lang/String;
    :cond_c
    if-nez v4, :cond_e

    :cond_d
    :goto_3
    goto :goto_4

    .line 190
    :cond_e
    instance-of v2, v4, Lorg/checkerframework/org/apache/bcel/classfile/ConstantInteger;

    if-eqz v2, :cond_f

    goto :goto_4

    .line 192
    :cond_f
    instance-of v2, v4, Lorg/checkerframework/org/apache/bcel/classfile/ConstantLong;

    if-eqz v2, :cond_10

    goto :goto_4

    .line 194
    :cond_10
    instance-of v2, v4, Lorg/checkerframework/org/apache/bcel/classfile/ConstantFloat;

    if-eqz v2, :cond_11

    goto :goto_4

    .line 196
    :cond_11
    instance-of v2, v4, Lorg/checkerframework/org/apache/bcel/classfile/ConstantDouble;

    if-eqz v2, :cond_12

    goto :goto_4

    .line 198
    :cond_12
    instance-of v2, v4, Lorg/checkerframework/org/apache/bcel/classfile/ConstantMethodType;

    if-eqz v2, :cond_13

    goto :goto_4

    .line 200
    :cond_13
    instance-of v2, v4, Lorg/checkerframework/org/apache/bcel/classfile/ConstantMethodHandle;

    if-eqz v2, :cond_14

    .line 113
    .end local v4    # "c":Lorg/checkerframework/org/apache/bcel/classfile/Constant;
    :goto_4
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0

    .line 203
    .restart local v4    # "c":Lorg/checkerframework/org/apache/bcel/classfile/Constant;
    :cond_14
    new-instance v2, Ljava/lang/AssertionError;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unexpected constant type: "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v2

    .line 206
    .end local v1    # "i":I
    .end local v4    # "c":Lorg/checkerframework/org/apache/bcel/classfile/Constant;
    :cond_15
    return-void
.end method

.method private addClass_(Ljava/lang/String;)I
    .locals 5
    .param p1, "clazz"    # Ljava/lang/String;

    .line 291
    invoke-virtual {p0, p1}, Lorg/checkerframework/org/apache/bcel/generic/ConstantPoolGen;->lookupClass(Ljava/lang/String;)I

    move-result v0

    move v1, v0

    .local v1, "ret":I
    const/4 v2, -0x1

    if-eq v0, v2, :cond_0

    .line 292
    return v1

    .line 294
    :cond_0
    invoke-virtual {p0}, Lorg/checkerframework/org/apache/bcel/generic/ConstantPoolGen;->adjustSize()V

    .line 295
    new-instance v0, Lorg/checkerframework/org/apache/bcel/classfile/ConstantClass;

    invoke-virtual {p0, p1}, Lorg/checkerframework/org/apache/bcel/generic/ConstantPoolGen;->addUtf8(Ljava/lang/String;)I

    move-result v2

    invoke-direct {v0, v2}, Lorg/checkerframework/org/apache/bcel/classfile/ConstantClass;-><init>(I)V

    .line 296
    .local v0, "c":Lorg/checkerframework/org/apache/bcel/classfile/ConstantClass;
    iget v1, p0, Lorg/checkerframework/org/apache/bcel/generic/ConstantPoolGen;->index:I

    .line 297
    iget-object v2, p0, Lorg/checkerframework/org/apache/bcel/generic/ConstantPoolGen;->constants:[Lorg/checkerframework/org/apache/bcel/classfile/Constant;

    iget v3, p0, Lorg/checkerframework/org/apache/bcel/generic/ConstantPoolGen;->index:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lorg/checkerframework/org/apache/bcel/generic/ConstantPoolGen;->index:I

    aput-object v0, v2, v3

    .line 298
    iget-object v2, p0, Lorg/checkerframework/org/apache/bcel/generic/ConstantPoolGen;->class_table:Ljava/util/Map;

    invoke-interface {v2, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 299
    iget-object v2, p0, Lorg/checkerframework/org/apache/bcel/generic/ConstantPoolGen;->class_table:Ljava/util/Map;

    new-instance v3, Lorg/checkerframework/org/apache/bcel/generic/ConstantPoolGen$Index;

    invoke-direct {v3, v1}, Lorg/checkerframework/org/apache/bcel/generic/ConstantPoolGen$Index;-><init>(I)V

    invoke-interface {v2, p1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 301
    :cond_1
    return v1
.end method


# virtual methods
.method public addArrayClass(Lorg/checkerframework/org/apache/bcel/generic/ArrayType;)I
    .locals 1
    .param p1, "type"    # Lorg/checkerframework/org/apache/bcel/generic/ArrayType;

    .line 335
    invoke-virtual {p1}, Lorg/checkerframework/org/apache/bcel/generic/ArrayType;->getSignature()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/checkerframework/org/apache/bcel/generic/ConstantPoolGen;->addClass_(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public addClass(Ljava/lang/String;)I
    .locals 2
    .param p1, "str"    # Ljava/lang/String;

    .line 312
    const/16 v0, 0x2e

    const/16 v1, 0x2f

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/checkerframework/org/apache/bcel/generic/ConstantPoolGen;->addClass_(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public addClass(Lorg/checkerframework/org/apache/bcel/generic/ObjectType;)I
    .locals 1
    .param p1, "type"    # Lorg/checkerframework/org/apache/bcel/generic/ObjectType;

    .line 323
    invoke-virtual {p1}, Lorg/checkerframework/org/apache/bcel/generic/ObjectType;->getClassName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/checkerframework/org/apache/bcel/generic/ConstantPoolGen;->addClass(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public addConstant(Lorg/checkerframework/org/apache/bcel/classfile/Constant;Lorg/checkerframework/org/apache/bcel/generic/ConstantPoolGen;)I
    .locals 11
    .param p1, "c"    # Lorg/checkerframework/org/apache/bcel/classfile/Constant;
    .param p2, "cp"    # Lorg/checkerframework/org/apache/bcel/generic/ConstantPoolGen;

    .line 787
    invoke-virtual {p2}, Lorg/checkerframework/org/apache/bcel/generic/ConstantPoolGen;->getConstantPool()Lorg/checkerframework/org/apache/bcel/classfile/ConstantPool;

    move-result-object v0

    invoke-virtual {v0}, Lorg/checkerframework/org/apache/bcel/classfile/ConstantPool;->getConstantPool()[Lorg/checkerframework/org/apache/bcel/classfile/Constant;

    move-result-object v0

    .line 788
    .local v0, "constants":[Lorg/checkerframework/org/apache/bcel/classfile/Constant;
    invoke-virtual {p1}, Lorg/checkerframework/org/apache/bcel/classfile/Constant;->getTag()B

    move-result v1

    const-string v2, "Unknown constant type "

    packed-switch v1, :pswitch_data_0

    .line 841
    :pswitch_0
    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 800
    :pswitch_1
    move-object v1, p1

    check-cast v1, Lorg/checkerframework/org/apache/bcel/classfile/ConstantNameAndType;

    .line 801
    .local v1, "n":Lorg/checkerframework/org/apache/bcel/classfile/ConstantNameAndType;
    invoke-virtual {v1}, Lorg/checkerframework/org/apache/bcel/classfile/ConstantNameAndType;->getNameIndex()I

    move-result v2

    aget-object v2, v0, v2

    check-cast v2, Lorg/checkerframework/org/apache/bcel/classfile/ConstantUtf8;

    .line 802
    .local v2, "u8":Lorg/checkerframework/org/apache/bcel/classfile/ConstantUtf8;
    invoke-virtual {v1}, Lorg/checkerframework/org/apache/bcel/classfile/ConstantNameAndType;->getSignatureIndex()I

    move-result v3

    aget-object v3, v0, v3

    check-cast v3, Lorg/checkerframework/org/apache/bcel/classfile/ConstantUtf8;

    .line 803
    .local v3, "u8_2":Lorg/checkerframework/org/apache/bcel/classfile/ConstantUtf8;
    invoke-virtual {v2}, Lorg/checkerframework/org/apache/bcel/classfile/ConstantUtf8;->getBytes()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3}, Lorg/checkerframework/org/apache/bcel/classfile/ConstantUtf8;->getBytes()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v4, v5}, Lorg/checkerframework/org/apache/bcel/generic/ConstantPoolGen;->addNameAndType(Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    return v4

    .line 818
    .end local v1    # "n":Lorg/checkerframework/org/apache/bcel/classfile/ConstantNameAndType;
    .end local v2    # "u8":Lorg/checkerframework/org/apache/bcel/classfile/ConstantUtf8;
    .end local v3    # "u8_2":Lorg/checkerframework/org/apache/bcel/classfile/ConstantUtf8;
    :pswitch_2
    move-object v1, p1

    check-cast v1, Lorg/checkerframework/org/apache/bcel/classfile/ConstantCP;

    .line 819
    .local v1, "m":Lorg/checkerframework/org/apache/bcel/classfile/ConstantCP;
    invoke-virtual {v1}, Lorg/checkerframework/org/apache/bcel/classfile/ConstantCP;->getClassIndex()I

    move-result v3

    aget-object v3, v0, v3

    check-cast v3, Lorg/checkerframework/org/apache/bcel/classfile/ConstantClass;

    .line 820
    .local v3, "clazz":Lorg/checkerframework/org/apache/bcel/classfile/ConstantClass;
    invoke-virtual {v1}, Lorg/checkerframework/org/apache/bcel/classfile/ConstantCP;->getNameAndTypeIndex()I

    move-result v4

    aget-object v4, v0, v4

    check-cast v4, Lorg/checkerframework/org/apache/bcel/classfile/ConstantNameAndType;

    .line 821
    .local v4, "n":Lorg/checkerframework/org/apache/bcel/classfile/ConstantNameAndType;
    invoke-virtual {v3}, Lorg/checkerframework/org/apache/bcel/classfile/ConstantClass;->getNameIndex()I

    move-result v5

    aget-object v5, v0, v5

    check-cast v5, Lorg/checkerframework/org/apache/bcel/classfile/ConstantUtf8;

    .line 823
    .local v5, "u8":Lorg/checkerframework/org/apache/bcel/classfile/ConstantUtf8;
    invoke-virtual {v5}, Lorg/checkerframework/org/apache/bcel/classfile/ConstantUtf8;->getBytes()Ljava/lang/String;

    move-result-object v6

    const/16 v7, 0x2f

    const/16 v8, 0x2e

    invoke-virtual {v6, v7, v8}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v6

    .line 824
    .local v6, "class_name":Ljava/lang/String;
    invoke-virtual {v4}, Lorg/checkerframework/org/apache/bcel/classfile/ConstantNameAndType;->getNameIndex()I

    move-result v7

    aget-object v7, v0, v7

    move-object v5, v7

    check-cast v5, Lorg/checkerframework/org/apache/bcel/classfile/ConstantUtf8;

    .line 825
    invoke-virtual {v5}, Lorg/checkerframework/org/apache/bcel/classfile/ConstantUtf8;->getBytes()Ljava/lang/String;

    move-result-object v7

    .line 826
    .local v7, "name":Ljava/lang/String;
    invoke-virtual {v4}, Lorg/checkerframework/org/apache/bcel/classfile/ConstantNameAndType;->getSignatureIndex()I

    move-result v8

    aget-object v8, v0, v8

    move-object v5, v8

    check-cast v5, Lorg/checkerframework/org/apache/bcel/classfile/ConstantUtf8;

    .line 828
    invoke-virtual {v5}, Lorg/checkerframework/org/apache/bcel/classfile/ConstantUtf8;->getBytes()Ljava/lang/String;

    move-result-object v8

    .line 829
    .local v8, "signature":Ljava/lang/String;
    invoke-virtual {p1}, Lorg/checkerframework/org/apache/bcel/classfile/Constant;->getTag()B

    move-result v9

    packed-switch v9, :pswitch_data_1

    .line 837
    new-instance v9, Ljava/lang/RuntimeException;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v9, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v9

    .line 831
    :pswitch_3
    invoke-virtual {p0, v6, v7, v8}, Lorg/checkerframework/org/apache/bcel/generic/ConstantPoolGen;->addInterfaceMethodref(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    return v2

    .line 833
    :pswitch_4
    invoke-virtual {p0, v6, v7, v8}, Lorg/checkerframework/org/apache/bcel/generic/ConstantPoolGen;->addMethodref(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    return v2

    .line 835
    :pswitch_5
    invoke-virtual {p0, v6, v7, v8}, Lorg/checkerframework/org/apache/bcel/generic/ConstantPoolGen;->addFieldref(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    return v2

    .line 790
    .end local v1    # "m":Lorg/checkerframework/org/apache/bcel/classfile/ConstantCP;
    .end local v3    # "clazz":Lorg/checkerframework/org/apache/bcel/classfile/ConstantClass;
    .end local v4    # "n":Lorg/checkerframework/org/apache/bcel/classfile/ConstantNameAndType;
    .end local v5    # "u8":Lorg/checkerframework/org/apache/bcel/classfile/ConstantUtf8;
    .end local v6    # "class_name":Ljava/lang/String;
    .end local v7    # "name":Ljava/lang/String;
    .end local v8    # "signature":Ljava/lang/String;
    :pswitch_6
    move-object v1, p1

    check-cast v1, Lorg/checkerframework/org/apache/bcel/classfile/ConstantString;

    .line 791
    .local v1, "s":Lorg/checkerframework/org/apache/bcel/classfile/ConstantString;
    invoke-virtual {v1}, Lorg/checkerframework/org/apache/bcel/classfile/ConstantString;->getStringIndex()I

    move-result v2

    aget-object v2, v0, v2

    check-cast v2, Lorg/checkerframework/org/apache/bcel/classfile/ConstantUtf8;

    .line 792
    .restart local v2    # "u8":Lorg/checkerframework/org/apache/bcel/classfile/ConstantUtf8;
    invoke-virtual {v2}, Lorg/checkerframework/org/apache/bcel/classfile/ConstantUtf8;->getBytes()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lorg/checkerframework/org/apache/bcel/generic/ConstantPoolGen;->addString(Ljava/lang/String;)I

    move-result v3

    return v3

    .line 795
    .end local v1    # "s":Lorg/checkerframework/org/apache/bcel/classfile/ConstantString;
    .end local v2    # "u8":Lorg/checkerframework/org/apache/bcel/classfile/ConstantUtf8;
    :pswitch_7
    move-object v1, p1

    check-cast v1, Lorg/checkerframework/org/apache/bcel/classfile/ConstantClass;

    .line 796
    .local v1, "s":Lorg/checkerframework/org/apache/bcel/classfile/ConstantClass;
    invoke-virtual {v1}, Lorg/checkerframework/org/apache/bcel/classfile/ConstantClass;->getNameIndex()I

    move-result v2

    aget-object v2, v0, v2

    check-cast v2, Lorg/checkerframework/org/apache/bcel/classfile/ConstantUtf8;

    .line 797
    .restart local v2    # "u8":Lorg/checkerframework/org/apache/bcel/classfile/ConstantUtf8;
    invoke-virtual {v2}, Lorg/checkerframework/org/apache/bcel/classfile/ConstantUtf8;->getBytes()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lorg/checkerframework/org/apache/bcel/generic/ConstantPoolGen;->addClass(Ljava/lang/String;)I

    move-result v3

    return v3

    .line 808
    .end local v1    # "s":Lorg/checkerframework/org/apache/bcel/classfile/ConstantClass;
    .end local v2    # "u8":Lorg/checkerframework/org/apache/bcel/classfile/ConstantUtf8;
    :pswitch_8
    move-object v1, p1

    check-cast v1, Lorg/checkerframework/org/apache/bcel/classfile/ConstantDouble;

    invoke-virtual {v1}, Lorg/checkerframework/org/apache/bcel/classfile/ConstantDouble;->getBytes()D

    move-result-wide v1

    invoke-virtual {p0, v1, v2}, Lorg/checkerframework/org/apache/bcel/generic/ConstantPoolGen;->addDouble(D)I

    move-result v1

    return v1

    .line 812
    :pswitch_9
    move-object v1, p1

    check-cast v1, Lorg/checkerframework/org/apache/bcel/classfile/ConstantLong;

    invoke-virtual {v1}, Lorg/checkerframework/org/apache/bcel/classfile/ConstantLong;->getBytes()J

    move-result-wide v1

    invoke-virtual {p0, v1, v2}, Lorg/checkerframework/org/apache/bcel/generic/ConstantPoolGen;->addLong(J)I

    move-result v1

    return v1

    .line 810
    :pswitch_a
    move-object v1, p1

    check-cast v1, Lorg/checkerframework/org/apache/bcel/classfile/ConstantFloat;

    invoke-virtual {v1}, Lorg/checkerframework/org/apache/bcel/classfile/ConstantFloat;->getBytes()F

    move-result v1

    invoke-virtual {p0, v1}, Lorg/checkerframework/org/apache/bcel/generic/ConstantPoolGen;->addFloat(F)I

    move-result v1

    return v1

    .line 814
    :pswitch_b
    move-object v1, p1

    check-cast v1, Lorg/checkerframework/org/apache/bcel/classfile/ConstantInteger;

    invoke-virtual {v1}, Lorg/checkerframework/org/apache/bcel/classfile/ConstantInteger;->getBytes()I

    move-result v1

    invoke-virtual {p0, v1}, Lorg/checkerframework/org/apache/bcel/generic/ConstantPoolGen;->addInteger(I)I

    move-result v1

    return v1

    .line 806
    :pswitch_c
    move-object v1, p1

    check-cast v1, Lorg/checkerframework/org/apache/bcel/classfile/ConstantUtf8;

    invoke-virtual {v1}, Lorg/checkerframework/org/apache/bcel/classfile/ConstantUtf8;->getBytes()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lorg/checkerframework/org/apache/bcel/generic/ConstantPoolGen;->addUtf8(Ljava/lang/String;)I

    move-result v1

    return v1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_c
        :pswitch_0
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_1
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x9
        :pswitch_5
        :pswitch_4
        :pswitch_3
    .end packed-switch
.end method

.method public addDouble(D)I
    .locals 4
    .param p1, "n"    # D

    .line 515
    invoke-virtual {p0, p1, p2}, Lorg/checkerframework/org/apache/bcel/generic/ConstantPoolGen;->lookupDouble(D)I

    move-result v0

    move v1, v0

    .local v1, "ret":I
    const/4 v2, -0x1

    if-eq v0, v2, :cond_0

    .line 516
    return v1

    .line 518
    :cond_0
    invoke-virtual {p0}, Lorg/checkerframework/org/apache/bcel/generic/ConstantPoolGen;->adjustSize()V

    .line 519
    iget v0, p0, Lorg/checkerframework/org/apache/bcel/generic/ConstantPoolGen;->index:I

    .line 520
    .end local v1    # "ret":I
    .local v0, "ret":I
    iget-object v1, p0, Lorg/checkerframework/org/apache/bcel/generic/ConstantPoolGen;->constants:[Lorg/checkerframework/org/apache/bcel/classfile/Constant;

    iget v2, p0, Lorg/checkerframework/org/apache/bcel/generic/ConstantPoolGen;->index:I

    new-instance v3, Lorg/checkerframework/org/apache/bcel/classfile/ConstantDouble;

    invoke-direct {v3, p1, p2}, Lorg/checkerframework/org/apache/bcel/classfile/ConstantDouble;-><init>(D)V

    aput-object v3, v1, v2

    .line 521
    iget v1, p0, Lorg/checkerframework/org/apache/bcel/generic/ConstantPoolGen;->index:I

    add-int/lit8 v1, v1, 0x2

    iput v1, p0, Lorg/checkerframework/org/apache/bcel/generic/ConstantPoolGen;->index:I

    .line 522
    return v0
.end method

.method public addFieldref(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
    .locals 6
    .param p1, "class_name"    # Ljava/lang/String;
    .param p2, "field_name"    # Ljava/lang/String;
    .param p3, "signature"    # Ljava/lang/String;

    .line 708
    invoke-virtual {p0, p1, p2, p3}, Lorg/checkerframework/org/apache/bcel/generic/ConstantPoolGen;->lookupFieldref(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    move v1, v0

    .local v1, "ret":I
    const/4 v2, -0x1

    if-eq v0, v2, :cond_0

    .line 709
    return v1

    .line 711
    :cond_0
    invoke-virtual {p0}, Lorg/checkerframework/org/apache/bcel/generic/ConstantPoolGen;->adjustSize()V

    .line 712
    invoke-virtual {p0, p1}, Lorg/checkerframework/org/apache/bcel/generic/ConstantPoolGen;->addClass(Ljava/lang/String;)I

    move-result v0

    .line 713
    .local v0, "class_index":I
    invoke-virtual {p0, p2, p3}, Lorg/checkerframework/org/apache/bcel/generic/ConstantPoolGen;->addNameAndType(Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    .line 714
    .local v2, "name_and_type_index":I
    iget v1, p0, Lorg/checkerframework/org/apache/bcel/generic/ConstantPoolGen;->index:I

    .line 715
    iget-object v3, p0, Lorg/checkerframework/org/apache/bcel/generic/ConstantPoolGen;->constants:[Lorg/checkerframework/org/apache/bcel/classfile/Constant;

    iget v4, p0, Lorg/checkerframework/org/apache/bcel/generic/ConstantPoolGen;->index:I

    add-int/lit8 v5, v4, 0x1

    iput v5, p0, Lorg/checkerframework/org/apache/bcel/generic/ConstantPoolGen;->index:I

    new-instance v5, Lorg/checkerframework/org/apache/bcel/classfile/ConstantFieldref;

    invoke-direct {v5, v0, v2}, Lorg/checkerframework/org/apache/bcel/classfile/ConstantFieldref;-><init>(II)V

    aput-object v5, v3, v4

    .line 716
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "&"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 717
    .local v3, "key":Ljava/lang/String;
    iget-object v4, p0, Lorg/checkerframework/org/apache/bcel/generic/ConstantPoolGen;->cp_table:Ljava/util/Map;

    invoke-interface {v4, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 718
    iget-object v4, p0, Lorg/checkerframework/org/apache/bcel/generic/ConstantPoolGen;->cp_table:Ljava/util/Map;

    new-instance v5, Lorg/checkerframework/org/apache/bcel/generic/ConstantPoolGen$Index;

    invoke-direct {v5, v1}, Lorg/checkerframework/org/apache/bcel/generic/ConstantPoolGen$Index;-><init>(I)V

    invoke-interface {v4, v3, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 720
    :cond_1
    return v1
.end method

.method public addFloat(F)I
    .locals 4
    .param p1, "n"    # F

    .line 404
    invoke-virtual {p0, p1}, Lorg/checkerframework/org/apache/bcel/generic/ConstantPoolGen;->lookupFloat(F)I

    move-result v0

    move v1, v0

    .local v1, "ret":I
    const/4 v2, -0x1

    if-eq v0, v2, :cond_0

    .line 405
    return v1

    .line 407
    :cond_0
    invoke-virtual {p0}, Lorg/checkerframework/org/apache/bcel/generic/ConstantPoolGen;->adjustSize()V

    .line 408
    iget v0, p0, Lorg/checkerframework/org/apache/bcel/generic/ConstantPoolGen;->index:I

    .line 409
    .end local v1    # "ret":I
    .local v0, "ret":I
    iget-object v1, p0, Lorg/checkerframework/org/apache/bcel/generic/ConstantPoolGen;->constants:[Lorg/checkerframework/org/apache/bcel/classfile/Constant;

    iget v2, p0, Lorg/checkerframework/org/apache/bcel/generic/ConstantPoolGen;->index:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lorg/checkerframework/org/apache/bcel/generic/ConstantPoolGen;->index:I

    new-instance v3, Lorg/checkerframework/org/apache/bcel/classfile/ConstantFloat;

    invoke-direct {v3, p1}, Lorg/checkerframework/org/apache/bcel/classfile/ConstantFloat;-><init>(F)V

    aput-object v3, v1, v2

    .line 410
    return v0
.end method

.method public addInteger(I)I
    .locals 4
    .param p1, "n"    # I

    .line 366
    invoke-virtual {p0, p1}, Lorg/checkerframework/org/apache/bcel/generic/ConstantPoolGen;->lookupInteger(I)I

    move-result v0

    move v1, v0

    .local v1, "ret":I
    const/4 v2, -0x1

    if-eq v0, v2, :cond_0

    .line 367
    return v1

    .line 369
    :cond_0
    invoke-virtual {p0}, Lorg/checkerframework/org/apache/bcel/generic/ConstantPoolGen;->adjustSize()V

    .line 370
    iget v0, p0, Lorg/checkerframework/org/apache/bcel/generic/ConstantPoolGen;->index:I

    .line 371
    .end local v1    # "ret":I
    .local v0, "ret":I
    iget-object v1, p0, Lorg/checkerframework/org/apache/bcel/generic/ConstantPoolGen;->constants:[Lorg/checkerframework/org/apache/bcel/classfile/Constant;

    iget v2, p0, Lorg/checkerframework/org/apache/bcel/generic/ConstantPoolGen;->index:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lorg/checkerframework/org/apache/bcel/generic/ConstantPoolGen;->index:I

    new-instance v3, Lorg/checkerframework/org/apache/bcel/classfile/ConstantInteger;

    invoke-direct {v3, p1}, Lorg/checkerframework/org/apache/bcel/classfile/ConstantInteger;-><init>(I)V

    aput-object v3, v1, v2

    .line 372
    return v0
.end method

.method public addInterfaceMethodref(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
    .locals 6
    .param p1, "class_name"    # Ljava/lang/String;
    .param p2, "method_name"    # Ljava/lang/String;
    .param p3, "signature"    # Ljava/lang/String;

    .line 659
    invoke-virtual {p0, p1, p2, p3}, Lorg/checkerframework/org/apache/bcel/generic/ConstantPoolGen;->lookupInterfaceMethodref(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    move v1, v0

    .local v1, "ret":I
    const/4 v2, -0x1

    if-eq v0, v2, :cond_0

    .line 660
    return v1

    .line 662
    :cond_0
    invoke-virtual {p0}, Lorg/checkerframework/org/apache/bcel/generic/ConstantPoolGen;->adjustSize()V

    .line 663
    invoke-virtual {p0, p1}, Lorg/checkerframework/org/apache/bcel/generic/ConstantPoolGen;->addClass(Ljava/lang/String;)I

    move-result v0

    .line 664
    .local v0, "class_index":I
    invoke-virtual {p0, p2, p3}, Lorg/checkerframework/org/apache/bcel/generic/ConstantPoolGen;->addNameAndType(Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    .line 665
    .local v2, "name_and_type_index":I
    iget v1, p0, Lorg/checkerframework/org/apache/bcel/generic/ConstantPoolGen;->index:I

    .line 666
    iget-object v3, p0, Lorg/checkerframework/org/apache/bcel/generic/ConstantPoolGen;->constants:[Lorg/checkerframework/org/apache/bcel/classfile/Constant;

    iget v4, p0, Lorg/checkerframework/org/apache/bcel/generic/ConstantPoolGen;->index:I

    add-int/lit8 v5, v4, 0x1

    iput v5, p0, Lorg/checkerframework/org/apache/bcel/generic/ConstantPoolGen;->index:I

    new-instance v5, Lorg/checkerframework/org/apache/bcel/classfile/ConstantInterfaceMethodref;

    invoke-direct {v5, v0, v2}, Lorg/checkerframework/org/apache/bcel/classfile/ConstantInterfaceMethodref;-><init>(II)V

    aput-object v5, v3, v4

    .line 667
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "#"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 668
    .local v3, "key":Ljava/lang/String;
    iget-object v4, p0, Lorg/checkerframework/org/apache/bcel/generic/ConstantPoolGen;->cp_table:Ljava/util/Map;

    invoke-interface {v4, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 669
    iget-object v4, p0, Lorg/checkerframework/org/apache/bcel/generic/ConstantPoolGen;->cp_table:Ljava/util/Map;

    new-instance v5, Lorg/checkerframework/org/apache/bcel/generic/ConstantPoolGen$Index;

    invoke-direct {v5, v1}, Lorg/checkerframework/org/apache/bcel/generic/ConstantPoolGen$Index;-><init>(I)V

    invoke-interface {v4, v3, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 671
    :cond_1
    return v1
.end method

.method public addInterfaceMethodref(Lorg/checkerframework/org/apache/bcel/generic/MethodGen;)I
    .locals 3
    .param p1, "method"    # Lorg/checkerframework/org/apache/bcel/generic/MethodGen;

    .line 676
    invoke-virtual {p1}, Lorg/checkerframework/org/apache/bcel/generic/MethodGen;->getClassName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lorg/checkerframework/org/apache/bcel/generic/MethodGen;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lorg/checkerframework/org/apache/bcel/generic/MethodGen;->getSignature()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v0, v1, v2}, Lorg/checkerframework/org/apache/bcel/generic/ConstantPoolGen;->addInterfaceMethodref(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public addLong(J)I
    .locals 4
    .param p1, "n"    # J

    .line 476
    invoke-virtual {p0, p1, p2}, Lorg/checkerframework/org/apache/bcel/generic/ConstantPoolGen;->lookupLong(J)I

    move-result v0

    move v1, v0

    .local v1, "ret":I
    const/4 v2, -0x1

    if-eq v0, v2, :cond_0

    .line 477
    return v1

    .line 479
    :cond_0
    invoke-virtual {p0}, Lorg/checkerframework/org/apache/bcel/generic/ConstantPoolGen;->adjustSize()V

    .line 480
    iget v0, p0, Lorg/checkerframework/org/apache/bcel/generic/ConstantPoolGen;->index:I

    .line 481
    .end local v1    # "ret":I
    .local v0, "ret":I
    iget-object v1, p0, Lorg/checkerframework/org/apache/bcel/generic/ConstantPoolGen;->constants:[Lorg/checkerframework/org/apache/bcel/classfile/Constant;

    iget v2, p0, Lorg/checkerframework/org/apache/bcel/generic/ConstantPoolGen;->index:I

    new-instance v3, Lorg/checkerframework/org/apache/bcel/classfile/ConstantLong;

    invoke-direct {v3, p1, p2}, Lorg/checkerframework/org/apache/bcel/classfile/ConstantLong;-><init>(J)V

    aput-object v3, v1, v2

    .line 482
    iget v1, p0, Lorg/checkerframework/org/apache/bcel/generic/ConstantPoolGen;->index:I

    add-int/lit8 v1, v1, 0x2

    iput v1, p0, Lorg/checkerframework/org/apache/bcel/generic/ConstantPoolGen;->index:I

    .line 483
    return v0
.end method

.method public addMethodref(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
    .locals 6
    .param p1, "class_name"    # Ljava/lang/String;
    .param p2, "method_name"    # Ljava/lang/String;
    .param p3, "signature"    # Ljava/lang/String;

    .line 604
    invoke-virtual {p0, p1, p2, p3}, Lorg/checkerframework/org/apache/bcel/generic/ConstantPoolGen;->lookupMethodref(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    move v1, v0

    .local v1, "ret":I
    const/4 v2, -0x1

    if-eq v0, v2, :cond_0

    .line 605
    return v1

    .line 607
    :cond_0
    invoke-virtual {p0}, Lorg/checkerframework/org/apache/bcel/generic/ConstantPoolGen;->adjustSize()V

    .line 608
    invoke-virtual {p0, p2, p3}, Lorg/checkerframework/org/apache/bcel/generic/ConstantPoolGen;->addNameAndType(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 609
    .local v0, "name_and_type_index":I
    invoke-virtual {p0, p1}, Lorg/checkerframework/org/apache/bcel/generic/ConstantPoolGen;->addClass(Ljava/lang/String;)I

    move-result v2

    .line 610
    .local v2, "class_index":I
    iget v1, p0, Lorg/checkerframework/org/apache/bcel/generic/ConstantPoolGen;->index:I

    .line 611
    iget-object v3, p0, Lorg/checkerframework/org/apache/bcel/generic/ConstantPoolGen;->constants:[Lorg/checkerframework/org/apache/bcel/classfile/Constant;

    iget v4, p0, Lorg/checkerframework/org/apache/bcel/generic/ConstantPoolGen;->index:I

    add-int/lit8 v5, v4, 0x1

    iput v5, p0, Lorg/checkerframework/org/apache/bcel/generic/ConstantPoolGen;->index:I

    new-instance v5, Lorg/checkerframework/org/apache/bcel/classfile/ConstantMethodref;

    invoke-direct {v5, v2, v0}, Lorg/checkerframework/org/apache/bcel/classfile/ConstantMethodref;-><init>(II)V

    aput-object v5, v3, v4

    .line 612
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ":"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 613
    .local v3, "key":Ljava/lang/String;
    iget-object v4, p0, Lorg/checkerframework/org/apache/bcel/generic/ConstantPoolGen;->cp_table:Ljava/util/Map;

    invoke-interface {v4, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 614
    iget-object v4, p0, Lorg/checkerframework/org/apache/bcel/generic/ConstantPoolGen;->cp_table:Ljava/util/Map;

    new-instance v5, Lorg/checkerframework/org/apache/bcel/generic/ConstantPoolGen$Index;

    invoke-direct {v5, v1}, Lorg/checkerframework/org/apache/bcel/generic/ConstantPoolGen$Index;-><init>(I)V

    invoke-interface {v4, v3, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 616
    :cond_1
    return v1
.end method

.method public addMethodref(Lorg/checkerframework/org/apache/bcel/generic/MethodGen;)I
    .locals 3
    .param p1, "method"    # Lorg/checkerframework/org/apache/bcel/generic/MethodGen;

    .line 621
    invoke-virtual {p1}, Lorg/checkerframework/org/apache/bcel/generic/MethodGen;->getClassName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lorg/checkerframework/org/apache/bcel/generic/MethodGen;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lorg/checkerframework/org/apache/bcel/generic/MethodGen;->getSignature()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v0, v1, v2}, Lorg/checkerframework/org/apache/bcel/generic/ConstantPoolGen;->addMethodref(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public addNameAndType(Ljava/lang/String;Ljava/lang/String;)I
    .locals 6
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "signature"    # Ljava/lang/String;

    .line 553
    invoke-virtual {p0, p1, p2}, Lorg/checkerframework/org/apache/bcel/generic/ConstantPoolGen;->lookupNameAndType(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    move v1, v0

    .local v1, "ret":I
    const/4 v2, -0x1

    if-eq v0, v2, :cond_0

    .line 554
    return v1

    .line 556
    :cond_0
    invoke-virtual {p0}, Lorg/checkerframework/org/apache/bcel/generic/ConstantPoolGen;->adjustSize()V

    .line 557
    invoke-virtual {p0, p1}, Lorg/checkerframework/org/apache/bcel/generic/ConstantPoolGen;->addUtf8(Ljava/lang/String;)I

    move-result v0

    .line 558
    .local v0, "name_index":I
    invoke-virtual {p0, p2}, Lorg/checkerframework/org/apache/bcel/generic/ConstantPoolGen;->addUtf8(Ljava/lang/String;)I

    move-result v2

    .line 559
    .local v2, "signature_index":I
    iget v1, p0, Lorg/checkerframework/org/apache/bcel/generic/ConstantPoolGen;->index:I

    .line 560
    iget-object v3, p0, Lorg/checkerframework/org/apache/bcel/generic/ConstantPoolGen;->constants:[Lorg/checkerframework/org/apache/bcel/classfile/Constant;

    iget v4, p0, Lorg/checkerframework/org/apache/bcel/generic/ConstantPoolGen;->index:I

    add-int/lit8 v5, v4, 0x1

    iput v5, p0, Lorg/checkerframework/org/apache/bcel/generic/ConstantPoolGen;->index:I

    new-instance v5, Lorg/checkerframework/org/apache/bcel/classfile/ConstantNameAndType;

    invoke-direct {v5, v0, v2}, Lorg/checkerframework/org/apache/bcel/classfile/ConstantNameAndType;-><init>(II)V

    aput-object v5, v3, v4

    .line 561
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "%"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 562
    .local v3, "key":Ljava/lang/String;
    iget-object v4, p0, Lorg/checkerframework/org/apache/bcel/generic/ConstantPoolGen;->n_a_t_table:Ljava/util/Map;

    invoke-interface {v4, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 563
    iget-object v4, p0, Lorg/checkerframework/org/apache/bcel/generic/ConstantPoolGen;->n_a_t_table:Ljava/util/Map;

    new-instance v5, Lorg/checkerframework/org/apache/bcel/generic/ConstantPoolGen$Index;

    invoke-direct {v5, v1}, Lorg/checkerframework/org/apache/bcel/generic/ConstantPoolGen$Index;-><init>(I)V

    invoke-interface {v4, v3, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 565
    :cond_1
    return v1
.end method

.method public addString(Ljava/lang/String;)I
    .locals 6
    .param p1, "str"    # Ljava/lang/String;

    .line 260
    invoke-virtual {p0, p1}, Lorg/checkerframework/org/apache/bcel/generic/ConstantPoolGen;->lookupString(Ljava/lang/String;)I

    move-result v0

    move v1, v0

    .local v1, "ret":I
    const/4 v2, -0x1

    if-eq v0, v2, :cond_0

    .line 261
    return v1

    .line 263
    :cond_0
    invoke-virtual {p0, p1}, Lorg/checkerframework/org/apache/bcel/generic/ConstantPoolGen;->addUtf8(Ljava/lang/String;)I

    move-result v0

    .line 264
    .local v0, "utf8":I
    invoke-virtual {p0}, Lorg/checkerframework/org/apache/bcel/generic/ConstantPoolGen;->adjustSize()V

    .line 265
    new-instance v2, Lorg/checkerframework/org/apache/bcel/classfile/ConstantString;

    invoke-direct {v2, v0}, Lorg/checkerframework/org/apache/bcel/classfile/ConstantString;-><init>(I)V

    .line 266
    .local v2, "s":Lorg/checkerframework/org/apache/bcel/classfile/ConstantString;
    iget v1, p0, Lorg/checkerframework/org/apache/bcel/generic/ConstantPoolGen;->index:I

    .line 267
    iget-object v3, p0, Lorg/checkerframework/org/apache/bcel/generic/ConstantPoolGen;->constants:[Lorg/checkerframework/org/apache/bcel/classfile/Constant;

    iget v4, p0, Lorg/checkerframework/org/apache/bcel/generic/ConstantPoolGen;->index:I

    add-int/lit8 v5, v4, 0x1

    iput v5, p0, Lorg/checkerframework/org/apache/bcel/generic/ConstantPoolGen;->index:I

    aput-object v2, v3, v4

    .line 268
    iget-object v3, p0, Lorg/checkerframework/org/apache/bcel/generic/ConstantPoolGen;->string_table:Ljava/util/Map;

    invoke-interface {v3, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 269
    iget-object v3, p0, Lorg/checkerframework/org/apache/bcel/generic/ConstantPoolGen;->string_table:Ljava/util/Map;

    new-instance v4, Lorg/checkerframework/org/apache/bcel/generic/ConstantPoolGen$Index;

    invoke-direct {v4, v1}, Lorg/checkerframework/org/apache/bcel/generic/ConstantPoolGen$Index;-><init>(I)V

    invoke-interface {v3, p1, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 271
    :cond_1
    return v1
.end method

.method public addUtf8(Ljava/lang/String;)I
    .locals 4
    .param p1, "n"    # Ljava/lang/String;

    .line 436
    invoke-virtual {p0, p1}, Lorg/checkerframework/org/apache/bcel/generic/ConstantPoolGen;->lookupUtf8(Ljava/lang/String;)I

    move-result v0

    move v1, v0

    .local v1, "ret":I
    const/4 v2, -0x1

    if-eq v0, v2, :cond_0

    .line 437
    return v1

    .line 439
    :cond_0
    invoke-virtual {p0}, Lorg/checkerframework/org/apache/bcel/generic/ConstantPoolGen;->adjustSize()V

    .line 440
    iget v0, p0, Lorg/checkerframework/org/apache/bcel/generic/ConstantPoolGen;->index:I

    .line 441
    .end local v1    # "ret":I
    .local v0, "ret":I
    iget-object v1, p0, Lorg/checkerframework/org/apache/bcel/generic/ConstantPoolGen;->constants:[Lorg/checkerframework/org/apache/bcel/classfile/Constant;

    iget v2, p0, Lorg/checkerframework/org/apache/bcel/generic/ConstantPoolGen;->index:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lorg/checkerframework/org/apache/bcel/generic/ConstantPoolGen;->index:I

    new-instance v3, Lorg/checkerframework/org/apache/bcel/classfile/ConstantUtf8;

    invoke-direct {v3, p1}, Lorg/checkerframework/org/apache/bcel/classfile/ConstantUtf8;-><init>(Ljava/lang/String;)V

    aput-object v3, v1, v2

    .line 442
    iget-object v1, p0, Lorg/checkerframework/org/apache/bcel/generic/ConstantPoolGen;->utf8_table:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 443
    iget-object v1, p0, Lorg/checkerframework/org/apache/bcel/generic/ConstantPoolGen;->utf8_table:Ljava/util/Map;

    new-instance v2, Lorg/checkerframework/org/apache/bcel/generic/ConstantPoolGen$Index;

    invoke-direct {v2, v0}, Lorg/checkerframework/org/apache/bcel/generic/ConstantPoolGen$Index;-><init>(I)V

    invoke-interface {v1, p1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 445
    :cond_1
    return v0
.end method

.method protected adjustSize()V
    .locals 4

    .line 229
    iget v0, p0, Lorg/checkerframework/org/apache/bcel/generic/ConstantPoolGen;->index:I

    add-int/lit8 v1, v0, 0x3

    iget v2, p0, Lorg/checkerframework/org/apache/bcel/generic/ConstantPoolGen;->size:I

    if-lt v1, v2, :cond_0

    .line 230
    iget-object v1, p0, Lorg/checkerframework/org/apache/bcel/generic/ConstantPoolGen;->constants:[Lorg/checkerframework/org/apache/bcel/classfile/Constant;

    .line 231
    .local v1, "cs":[Lorg/checkerframework/org/apache/bcel/classfile/Constant;
    mul-int/lit8 v2, v2, 0x2

    iput v2, p0, Lorg/checkerframework/org/apache/bcel/generic/ConstantPoolGen;->size:I

    .line 232
    new-array v2, v2, [Lorg/checkerframework/org/apache/bcel/classfile/Constant;

    iput-object v2, p0, Lorg/checkerframework/org/apache/bcel/generic/ConstantPoolGen;->constants:[Lorg/checkerframework/org/apache/bcel/classfile/Constant;

    .line 233
    const/4 v3, 0x0

    invoke-static {v1, v3, v2, v3, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 235
    .end local v1    # "cs":[Lorg/checkerframework/org/apache/bcel/classfile/Constant;
    :cond_0
    return-void
.end method

.method public getConstant(I)Lorg/checkerframework/org/apache/bcel/classfile/Constant;
    .locals 1
    .param p1, "i"    # I
    .annotation runtime Lorg/checkerframework/dataflow/qual/Pure;
    .end annotation

    .line 730
    iget-object v0, p0, Lorg/checkerframework/org/apache/bcel/generic/ConstantPoolGen;->constants:[Lorg/checkerframework/org/apache/bcel/classfile/Constant;

    aget-object v0, v0, p1

    return-object v0
.end method

.method public getConstantPool()Lorg/checkerframework/org/apache/bcel/classfile/ConstantPool;
    .locals 2

    .line 749
    new-instance v0, Lorg/checkerframework/org/apache/bcel/classfile/ConstantPool;

    iget-object v1, p0, Lorg/checkerframework/org/apache/bcel/generic/ConstantPoolGen;->constants:[Lorg/checkerframework/org/apache/bcel/classfile/Constant;

    invoke-direct {v0, v1}, Lorg/checkerframework/org/apache/bcel/classfile/ConstantPool;-><init>([Lorg/checkerframework/org/apache/bcel/classfile/Constant;)V

    return-object v0
.end method

.method public getFinalConstantPool()Lorg/checkerframework/org/apache/bcel/classfile/ConstantPool;
    .locals 4

    .line 765
    iget v0, p0, Lorg/checkerframework/org/apache/bcel/generic/ConstantPoolGen;->index:I

    new-array v1, v0, [Lorg/checkerframework/org/apache/bcel/classfile/Constant;

    .line 766
    .local v1, "cs":[Lorg/checkerframework/org/apache/bcel/classfile/Constant;
    iget-object v2, p0, Lorg/checkerframework/org/apache/bcel/generic/ConstantPoolGen;->constants:[Lorg/checkerframework/org/apache/bcel/classfile/Constant;

    const/4 v3, 0x0

    invoke-static {v2, v3, v1, v3, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 767
    new-instance v0, Lorg/checkerframework/org/apache/bcel/classfile/ConstantPool;

    invoke-direct {v0, v1}, Lorg/checkerframework/org/apache/bcel/classfile/ConstantPool;-><init>([Lorg/checkerframework/org/apache/bcel/classfile/Constant;)V

    return-object v0
.end method

.method public getSize()I
    .locals 1

    .line 757
    iget v0, p0, Lorg/checkerframework/org/apache/bcel/generic/ConstantPoolGen;->index:I

    return v0
.end method

.method public lookupClass(Ljava/lang/String;)I
    .locals 3
    .param p1, "str"    # Ljava/lang/String;

    .line 284
    iget-object v0, p0, Lorg/checkerframework/org/apache/bcel/generic/ConstantPoolGen;->class_table:Ljava/util/Map;

    const/16 v1, 0x2e

    const/16 v2, 0x2f

    invoke-virtual {p1, v1, v2}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/checkerframework/org/apache/bcel/generic/ConstantPoolGen$Index;

    .line 285
    .local v0, "index":Lorg/checkerframework/org/apache/bcel/generic/ConstantPoolGen$Index;
    if-eqz v0, :cond_0

    iget v1, v0, Lorg/checkerframework/org/apache/bcel/generic/ConstantPoolGen$Index;->index:I

    goto :goto_0

    :cond_0
    const/4 v1, -0x1

    :goto_0
    return v1
.end method

.method public lookupDouble(D)I
    .locals 6
    .param p1, "n"    # D

    .line 494
    invoke-static {p1, p2}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v0

    .line 495
    .local v0, "bits":J
    const/4 v2, 0x1

    .local v2, "i":I
    :goto_0
    iget v3, p0, Lorg/checkerframework/org/apache/bcel/generic/ConstantPoolGen;->index:I

    if-ge v2, v3, :cond_1

    .line 496
    iget-object v3, p0, Lorg/checkerframework/org/apache/bcel/generic/ConstantPoolGen;->constants:[Lorg/checkerframework/org/apache/bcel/classfile/Constant;

    aget-object v3, v3, v2

    instance-of v4, v3, Lorg/checkerframework/org/apache/bcel/classfile/ConstantDouble;

    if-eqz v4, :cond_0

    .line 497
    check-cast v3, Lorg/checkerframework/org/apache/bcel/classfile/ConstantDouble;

    .line 498
    .local v3, "c":Lorg/checkerframework/org/apache/bcel/classfile/ConstantDouble;
    invoke-virtual {v3}, Lorg/checkerframework/org/apache/bcel/classfile/ConstantDouble;->getBytes()D

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v4

    cmp-long v4, v4, v0

    if-nez v4, :cond_0

    .line 499
    return v2

    .line 495
    .end local v3    # "c":Lorg/checkerframework/org/apache/bcel/classfile/ConstantDouble;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 503
    .end local v2    # "i":I
    :cond_1
    const/4 v2, -0x1

    return v2
.end method

.method public lookupFieldref(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
    .locals 3
    .param p1, "class_name"    # Ljava/lang/String;
    .param p2, "field_name"    # Ljava/lang/String;
    .param p3, "signature"    # Ljava/lang/String;

    .line 689
    iget-object v0, p0, Lorg/checkerframework/org/apache/bcel/generic/ConstantPoolGen;->cp_table:Ljava/util/Map;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "&"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/checkerframework/org/apache/bcel/generic/ConstantPoolGen$Index;

    .line 691
    .local v0, "index":Lorg/checkerframework/org/apache/bcel/generic/ConstantPoolGen$Index;
    if-eqz v0, :cond_0

    iget v1, v0, Lorg/checkerframework/org/apache/bcel/generic/ConstantPoolGen$Index;->index:I

    goto :goto_0

    :cond_0
    const/4 v1, -0x1

    :goto_0
    return v1
.end method

.method public lookupFloat(F)I
    .locals 4
    .param p1, "n"    # F

    .line 383
    invoke-static {p1}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v0

    .line 384
    .local v0, "bits":I
    const/4 v1, 0x1

    .local v1, "i":I
    :goto_0
    iget v2, p0, Lorg/checkerframework/org/apache/bcel/generic/ConstantPoolGen;->index:I

    if-ge v1, v2, :cond_1

    .line 385
    iget-object v2, p0, Lorg/checkerframework/org/apache/bcel/generic/ConstantPoolGen;->constants:[Lorg/checkerframework/org/apache/bcel/classfile/Constant;

    aget-object v2, v2, v1

    instance-of v3, v2, Lorg/checkerframework/org/apache/bcel/classfile/ConstantFloat;

    if-eqz v3, :cond_0

    .line 386
    check-cast v2, Lorg/checkerframework/org/apache/bcel/classfile/ConstantFloat;

    .line 387
    .local v2, "c":Lorg/checkerframework/org/apache/bcel/classfile/ConstantFloat;
    invoke-virtual {v2}, Lorg/checkerframework/org/apache/bcel/classfile/ConstantFloat;->getBytes()F

    move-result v3

    invoke-static {v3}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v3

    if-ne v3, v0, :cond_0

    .line 388
    return v1

    .line 384
    .end local v2    # "c":Lorg/checkerframework/org/apache/bcel/classfile/ConstantFloat;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 392
    .end local v1    # "i":I
    :cond_1
    const/4 v1, -0x1

    return v1
.end method

.method public lookupInteger(I)I
    .locals 3
    .param p1, "n"    # I

    .line 346
    const/4 v0, 0x1

    .local v0, "i":I
    :goto_0
    iget v1, p0, Lorg/checkerframework/org/apache/bcel/generic/ConstantPoolGen;->index:I

    if-ge v0, v1, :cond_1

    .line 347
    iget-object v1, p0, Lorg/checkerframework/org/apache/bcel/generic/ConstantPoolGen;->constants:[Lorg/checkerframework/org/apache/bcel/classfile/Constant;

    aget-object v1, v1, v0

    instance-of v2, v1, Lorg/checkerframework/org/apache/bcel/classfile/ConstantInteger;

    if-eqz v2, :cond_0

    .line 348
    check-cast v1, Lorg/checkerframework/org/apache/bcel/classfile/ConstantInteger;

    .line 349
    .local v1, "c":Lorg/checkerframework/org/apache/bcel/classfile/ConstantInteger;
    invoke-virtual {v1}, Lorg/checkerframework/org/apache/bcel/classfile/ConstantInteger;->getBytes()I

    move-result v2

    if-ne v2, p1, :cond_0

    .line 350
    return v0

    .line 346
    .end local v1    # "c":Lorg/checkerframework/org/apache/bcel/classfile/ConstantInteger;
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 354
    .end local v0    # "i":I
    :cond_1
    const/4 v0, -0x1

    return v0
.end method

.method public lookupInterfaceMethodref(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
    .locals 3
    .param p1, "class_name"    # Ljava/lang/String;
    .param p2, "method_name"    # Ljava/lang/String;
    .param p3, "signature"    # Ljava/lang/String;

    .line 634
    iget-object v0, p0, Lorg/checkerframework/org/apache/bcel/generic/ConstantPoolGen;->cp_table:Ljava/util/Map;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "#"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/checkerframework/org/apache/bcel/generic/ConstantPoolGen$Index;

    .line 636
    .local v0, "index":Lorg/checkerframework/org/apache/bcel/generic/ConstantPoolGen$Index;
    if-eqz v0, :cond_0

    iget v1, v0, Lorg/checkerframework/org/apache/bcel/generic/ConstantPoolGen$Index;->index:I

    goto :goto_0

    :cond_0
    const/4 v1, -0x1

    :goto_0
    return v1
.end method

.method public lookupInterfaceMethodref(Lorg/checkerframework/org/apache/bcel/generic/MethodGen;)I
    .locals 3
    .param p1, "method"    # Lorg/checkerframework/org/apache/bcel/generic/MethodGen;

    .line 641
    invoke-virtual {p1}, Lorg/checkerframework/org/apache/bcel/generic/MethodGen;->getClassName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lorg/checkerframework/org/apache/bcel/generic/MethodGen;->getName()Ljava/lang/String;

    move-result-object v1

    .line 642
    invoke-virtual {p1}, Lorg/checkerframework/org/apache/bcel/generic/MethodGen;->getSignature()Ljava/lang/String;

    move-result-object v2

    .line 641
    invoke-virtual {p0, v0, v1, v2}, Lorg/checkerframework/org/apache/bcel/generic/ConstantPoolGen;->lookupInterfaceMethodref(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public lookupLong(J)I
    .locals 4
    .param p1, "n"    # J

    .line 456
    const/4 v0, 0x1

    .local v0, "i":I
    :goto_0
    iget v1, p0, Lorg/checkerframework/org/apache/bcel/generic/ConstantPoolGen;->index:I

    if-ge v0, v1, :cond_1

    .line 457
    iget-object v1, p0, Lorg/checkerframework/org/apache/bcel/generic/ConstantPoolGen;->constants:[Lorg/checkerframework/org/apache/bcel/classfile/Constant;

    aget-object v1, v1, v0

    instance-of v2, v1, Lorg/checkerframework/org/apache/bcel/classfile/ConstantLong;

    if-eqz v2, :cond_0

    .line 458
    check-cast v1, Lorg/checkerframework/org/apache/bcel/classfile/ConstantLong;

    .line 459
    .local v1, "c":Lorg/checkerframework/org/apache/bcel/classfile/ConstantLong;
    invoke-virtual {v1}, Lorg/checkerframework/org/apache/bcel/classfile/ConstantLong;->getBytes()J

    move-result-wide v2

    cmp-long v2, v2, p1

    if-nez v2, :cond_0

    .line 460
    return v0

    .line 456
    .end local v1    # "c":Lorg/checkerframework/org/apache/bcel/classfile/ConstantLong;
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 464
    .end local v0    # "i":I
    :cond_1
    const/4 v0, -0x1

    return v0
.end method

.method public lookupMethodref(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
    .locals 3
    .param p1, "class_name"    # Ljava/lang/String;
    .param p2, "method_name"    # Ljava/lang/String;
    .param p3, "signature"    # Ljava/lang/String;

    .line 580
    iget-object v0, p0, Lorg/checkerframework/org/apache/bcel/generic/ConstantPoolGen;->cp_table:Ljava/util/Map;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/checkerframework/org/apache/bcel/generic/ConstantPoolGen$Index;

    .line 582
    .local v0, "index":Lorg/checkerframework/org/apache/bcel/generic/ConstantPoolGen$Index;
    if-eqz v0, :cond_0

    iget v1, v0, Lorg/checkerframework/org/apache/bcel/generic/ConstantPoolGen$Index;->index:I

    goto :goto_0

    :cond_0
    const/4 v1, -0x1

    :goto_0
    return v1
.end method

.method public lookupMethodref(Lorg/checkerframework/org/apache/bcel/generic/MethodGen;)I
    .locals 3
    .param p1, "method"    # Lorg/checkerframework/org/apache/bcel/generic/MethodGen;

    .line 587
    invoke-virtual {p1}, Lorg/checkerframework/org/apache/bcel/generic/MethodGen;->getClassName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lorg/checkerframework/org/apache/bcel/generic/MethodGen;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lorg/checkerframework/org/apache/bcel/generic/MethodGen;->getSignature()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v0, v1, v2}, Lorg/checkerframework/org/apache/bcel/generic/ConstantPoolGen;->lookupMethodref(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public lookupNameAndType(Ljava/lang/String;Ljava/lang/String;)I
    .locals 3
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "signature"    # Ljava/lang/String;

    .line 536
    iget-object v0, p0, Lorg/checkerframework/org/apache/bcel/generic/ConstantPoolGen;->n_a_t_table:Ljava/util/Map;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "%"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/checkerframework/org/apache/bcel/generic/ConstantPoolGen$Index;

    .line 537
    .local v0, "_index":Lorg/checkerframework/org/apache/bcel/generic/ConstantPoolGen$Index;
    if-eqz v0, :cond_0

    iget v1, v0, Lorg/checkerframework/org/apache/bcel/generic/ConstantPoolGen$Index;->index:I

    goto :goto_0

    :cond_0
    const/4 v1, -0x1

    :goto_0
    return v1
.end method

.method public lookupString(Ljava/lang/String;)I
    .locals 2
    .param p1, "str"    # Ljava/lang/String;

    .line 247
    iget-object v0, p0, Lorg/checkerframework/org/apache/bcel/generic/ConstantPoolGen;->string_table:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/checkerframework/org/apache/bcel/generic/ConstantPoolGen$Index;

    .line 248
    .local v0, "index":Lorg/checkerframework/org/apache/bcel/generic/ConstantPoolGen$Index;
    if-eqz v0, :cond_0

    iget v1, v0, Lorg/checkerframework/org/apache/bcel/generic/ConstantPoolGen$Index;->index:I

    goto :goto_0

    :cond_0
    const/4 v1, -0x1

    :goto_0
    return v1
.end method

.method public lookupUtf8(Ljava/lang/String;)I
    .locals 2
    .param p1, "n"    # Ljava/lang/String;

    .line 423
    iget-object v0, p0, Lorg/checkerframework/org/apache/bcel/generic/ConstantPoolGen;->utf8_table:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/checkerframework/org/apache/bcel/generic/ConstantPoolGen$Index;

    .line 424
    .local v0, "index":Lorg/checkerframework/org/apache/bcel/generic/ConstantPoolGen$Index;
    if-eqz v0, :cond_0

    iget v1, v0, Lorg/checkerframework/org/apache/bcel/generic/ConstantPoolGen$Index;->index:I

    goto :goto_0

    :cond_0
    const/4 v1, -0x1

    :goto_0
    return v1
.end method

.method public setConstant(ILorg/checkerframework/org/apache/bcel/classfile/Constant;)V
    .locals 1
    .param p1, "i"    # I
    .param p2, "c"    # Lorg/checkerframework/org/apache/bcel/classfile/Constant;

    .line 741
    iget-object v0, p0, Lorg/checkerframework/org/apache/bcel/generic/ConstantPoolGen;->constants:[Lorg/checkerframework/org/apache/bcel/classfile/Constant;

    aput-object p2, v0, p1

    .line 742
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4
    .annotation runtime Lorg/checkerframework/dataflow/qual/SideEffectFree;
    .end annotation

    .line 776
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 777
    .local v0, "buf":Ljava/lang/StringBuilder;
    const/4 v1, 0x1

    .local v1, "i":I
    :goto_0
    iget v2, p0, Lorg/checkerframework/org/apache/bcel/generic/ConstantPoolGen;->index:I

    if-ge v1, v2, :cond_0

    .line 778
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lorg/checkerframework/org/apache/bcel/generic/ConstantPoolGen;->constants:[Lorg/checkerframework/org/apache/bcel/classfile/Constant;

    aget-object v3, v3, v1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 777
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 780
    .end local v1    # "i":I
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
