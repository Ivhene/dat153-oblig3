.class synthetic Lorg/checkerframework/common/basetype/BaseTypeVisitor$2;
.super Ljava/lang/Object;
.source "BaseTypeVisitor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/checkerframework/common/basetype/BaseTypeVisitor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$com$sun$source$tree$Tree$Kind:[I

.field static final synthetic $SwitchMap$com$sun$tools$javac$tree$JCTree$JCMemberReference$ReferenceKind:[I

.field static final synthetic $SwitchMap$javax$lang$model$type$TypeKind:[I

.field static final synthetic $SwitchMap$org$checkerframework$framework$util$Contract$Kind:[I


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .line 3283
    invoke-static {}, Lcom/sun/tools/javac/tree/JCTree$JCMemberReference$ReferenceKind;->values()[Lcom/sun/tools/javac/tree/JCTree$JCMemberReference$ReferenceKind;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lorg/checkerframework/common/basetype/BaseTypeVisitor$2;->$SwitchMap$com$sun$tools$javac$tree$JCTree$JCMemberReference$ReferenceKind:[I

    const/4 v1, 0x1

    :try_start_0
    sget-object v2, Lcom/sun/tools/javac/tree/JCTree$JCMemberReference$ReferenceKind;->UNBOUND:Lcom/sun/tools/javac/tree/JCTree$JCMemberReference$ReferenceKind;

    invoke-virtual {v2}, Lcom/sun/tools/javac/tree/JCTree$JCMemberReference$ReferenceKind;->ordinal()I

    move-result v2

    aput v1, v0, v2
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    :goto_0
    const/4 v0, 0x2

    :try_start_1
    sget-object v2, Lorg/checkerframework/common/basetype/BaseTypeVisitor$2;->$SwitchMap$com$sun$tools$javac$tree$JCTree$JCMemberReference$ReferenceKind:[I

    sget-object v3, Lcom/sun/tools/javac/tree/JCTree$JCMemberReference$ReferenceKind;->SUPER:Lcom/sun/tools/javac/tree/JCTree$JCMemberReference$ReferenceKind;

    invoke-virtual {v3}, Lcom/sun/tools/javac/tree/JCTree$JCMemberReference$ReferenceKind;->ordinal()I

    move-result v3

    aput v0, v2, v3
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception v2

    :goto_1
    const/4 v2, 0x3

    :try_start_2
    sget-object v3, Lorg/checkerframework/common/basetype/BaseTypeVisitor$2;->$SwitchMap$com$sun$tools$javac$tree$JCTree$JCMemberReference$ReferenceKind:[I

    sget-object v4, Lcom/sun/tools/javac/tree/JCTree$JCMemberReference$ReferenceKind;->BOUND:Lcom/sun/tools/javac/tree/JCTree$JCMemberReference$ReferenceKind;

    invoke-virtual {v4}, Lcom/sun/tools/javac/tree/JCTree$JCMemberReference$ReferenceKind;->ordinal()I

    move-result v4

    aput v2, v3, v4
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_2

    :catch_2
    move-exception v3

    :goto_2
    const/4 v3, 0x4

    :try_start_3
    sget-object v4, Lorg/checkerframework/common/basetype/BaseTypeVisitor$2;->$SwitchMap$com$sun$tools$javac$tree$JCTree$JCMemberReference$ReferenceKind:[I

    sget-object v5, Lcom/sun/tools/javac/tree/JCTree$JCMemberReference$ReferenceKind;->IMPLICIT_INNER:Lcom/sun/tools/javac/tree/JCTree$JCMemberReference$ReferenceKind;

    invoke-virtual {v5}, Lcom/sun/tools/javac/tree/JCTree$JCMemberReference$ReferenceKind;->ordinal()I

    move-result v5

    aput v3, v4, v5
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_3

    goto :goto_3

    :catch_3
    move-exception v4

    :goto_3
    const/4 v4, 0x5

    :try_start_4
    sget-object v5, Lorg/checkerframework/common/basetype/BaseTypeVisitor$2;->$SwitchMap$com$sun$tools$javac$tree$JCTree$JCMemberReference$ReferenceKind:[I

    sget-object v6, Lcom/sun/tools/javac/tree/JCTree$JCMemberReference$ReferenceKind;->TOPLEVEL:Lcom/sun/tools/javac/tree/JCTree$JCMemberReference$ReferenceKind;

    invoke-virtual {v6}, Lcom/sun/tools/javac/tree/JCTree$JCMemberReference$ReferenceKind;->ordinal()I

    move-result v6

    aput v4, v5, v6
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_4

    goto :goto_4

    :catch_4
    move-exception v5

    :goto_4
    const/4 v5, 0x6

    :try_start_5
    sget-object v6, Lorg/checkerframework/common/basetype/BaseTypeVisitor$2;->$SwitchMap$com$sun$tools$javac$tree$JCTree$JCMemberReference$ReferenceKind:[I

    sget-object v7, Lcom/sun/tools/javac/tree/JCTree$JCMemberReference$ReferenceKind;->STATIC:Lcom/sun/tools/javac/tree/JCTree$JCMemberReference$ReferenceKind;

    invoke-virtual {v7}, Lcom/sun/tools/javac/tree/JCTree$JCMemberReference$ReferenceKind;->ordinal()I

    move-result v7

    aput v5, v6, v7
    :try_end_5
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5 .. :try_end_5} :catch_5

    goto :goto_5

    :catch_5
    move-exception v6

    :goto_5
    const/4 v6, 0x7

    :try_start_6
    sget-object v7, Lorg/checkerframework/common/basetype/BaseTypeVisitor$2;->$SwitchMap$com$sun$tools$javac$tree$JCTree$JCMemberReference$ReferenceKind:[I

    sget-object v8, Lcom/sun/tools/javac/tree/JCTree$JCMemberReference$ReferenceKind;->ARRAY_CTOR:Lcom/sun/tools/javac/tree/JCTree$JCMemberReference$ReferenceKind;

    invoke-virtual {v8}, Lcom/sun/tools/javac/tree/JCTree$JCMemberReference$ReferenceKind;->ordinal()I

    move-result v8

    aput v6, v7, v8
    :try_end_6
    .catch Ljava/lang/NoSuchFieldError; {:try_start_6 .. :try_end_6} :catch_6

    goto :goto_6

    :catch_6
    move-exception v7

    .line 2126
    :goto_6
    invoke-static {}, Ljavax/lang/model/type/TypeKind;->values()[Ljavax/lang/model/type/TypeKind;

    move-result-object v7

    array-length v7, v7

    new-array v7, v7, [I

    sput-object v7, Lorg/checkerframework/common/basetype/BaseTypeVisitor$2;->$SwitchMap$javax$lang$model$type$TypeKind:[I

    :try_start_7
    sget-object v8, Ljavax/lang/model/type/TypeKind;->NULL:Ljavax/lang/model/type/TypeKind;

    invoke-virtual {v8}, Ljavax/lang/model/type/TypeKind;->ordinal()I

    move-result v8

    aput v1, v7, v8
    :try_end_7
    .catch Ljava/lang/NoSuchFieldError; {:try_start_7 .. :try_end_7} :catch_7

    goto :goto_7

    :catch_7
    move-exception v7

    :goto_7
    :try_start_8
    sget-object v7, Lorg/checkerframework/common/basetype/BaseTypeVisitor$2;->$SwitchMap$javax$lang$model$type$TypeKind:[I

    sget-object v8, Ljavax/lang/model/type/TypeKind;->DECLARED:Ljavax/lang/model/type/TypeKind;

    invoke-virtual {v8}, Ljavax/lang/model/type/TypeKind;->ordinal()I

    move-result v8

    aput v0, v7, v8
    :try_end_8
    .catch Ljava/lang/NoSuchFieldError; {:try_start_8 .. :try_end_8} :catch_8

    goto :goto_8

    :catch_8
    move-exception v7

    :goto_8
    :try_start_9
    sget-object v7, Lorg/checkerframework/common/basetype/BaseTypeVisitor$2;->$SwitchMap$javax$lang$model$type$TypeKind:[I

    sget-object v8, Ljavax/lang/model/type/TypeKind;->TYPEVAR:Ljavax/lang/model/type/TypeKind;

    invoke-virtual {v8}, Ljavax/lang/model/type/TypeKind;->ordinal()I

    move-result v8

    aput v2, v7, v8
    :try_end_9
    .catch Ljava/lang/NoSuchFieldError; {:try_start_9 .. :try_end_9} :catch_9

    goto :goto_9

    :catch_9
    move-exception v7

    :goto_9
    :try_start_a
    sget-object v7, Lorg/checkerframework/common/basetype/BaseTypeVisitor$2;->$SwitchMap$javax$lang$model$type$TypeKind:[I

    sget-object v8, Ljavax/lang/model/type/TypeKind;->WILDCARD:Ljavax/lang/model/type/TypeKind;

    invoke-virtual {v8}, Ljavax/lang/model/type/TypeKind;->ordinal()I

    move-result v8

    aput v3, v7, v8
    :try_end_a
    .catch Ljava/lang/NoSuchFieldError; {:try_start_a .. :try_end_a} :catch_a

    goto :goto_a

    :catch_a
    move-exception v7

    :goto_a
    :try_start_b
    sget-object v7, Lorg/checkerframework/common/basetype/BaseTypeVisitor$2;->$SwitchMap$javax$lang$model$type$TypeKind:[I

    sget-object v8, Ljavax/lang/model/type/TypeKind;->UNION:Ljavax/lang/model/type/TypeKind;

    invoke-virtual {v8}, Ljavax/lang/model/type/TypeKind;->ordinal()I

    move-result v8

    aput v4, v7, v8
    :try_end_b
    .catch Ljava/lang/NoSuchFieldError; {:try_start_b .. :try_end_b} :catch_b

    goto :goto_b

    :catch_b
    move-exception v7

    .line 1134
    :goto_b
    invoke-static {}, Lcom/sun/source/tree/Tree$Kind;->values()[Lcom/sun/source/tree/Tree$Kind;

    move-result-object v7

    array-length v7, v7

    new-array v7, v7, [I

    sput-object v7, Lorg/checkerframework/common/basetype/BaseTypeVisitor$2;->$SwitchMap$com$sun$source$tree$Tree$Kind:[I

    :try_start_c
    sget-object v8, Lcom/sun/source/tree/Tree$Kind;->IDENTIFIER:Lcom/sun/source/tree/Tree$Kind;

    invoke-virtual {v8}, Lcom/sun/source/tree/Tree$Kind;->ordinal()I

    move-result v8

    aput v1, v7, v8
    :try_end_c
    .catch Ljava/lang/NoSuchFieldError; {:try_start_c .. :try_end_c} :catch_c

    goto :goto_c

    :catch_c
    move-exception v7

    :goto_c
    :try_start_d
    sget-object v7, Lorg/checkerframework/common/basetype/BaseTypeVisitor$2;->$SwitchMap$com$sun$source$tree$Tree$Kind:[I

    sget-object v8, Lcom/sun/source/tree/Tree$Kind;->MEMBER_SELECT:Lcom/sun/source/tree/Tree$Kind;

    invoke-virtual {v8}, Lcom/sun/source/tree/Tree$Kind;->ordinal()I

    move-result v8

    aput v0, v7, v8
    :try_end_d
    .catch Ljava/lang/NoSuchFieldError; {:try_start_d .. :try_end_d} :catch_d

    goto :goto_d

    :catch_d
    move-exception v7

    :goto_d
    :try_start_e
    sget-object v7, Lorg/checkerframework/common/basetype/BaseTypeVisitor$2;->$SwitchMap$com$sun$source$tree$Tree$Kind:[I

    sget-object v8, Lcom/sun/source/tree/Tree$Kind;->METHOD_INVOCATION:Lcom/sun/source/tree/Tree$Kind;

    invoke-virtual {v8}, Lcom/sun/source/tree/Tree$Kind;->ordinal()I

    move-result v8

    aput v2, v7, v8
    :try_end_e
    .catch Ljava/lang/NoSuchFieldError; {:try_start_e .. :try_end_e} :catch_e

    goto :goto_e

    :catch_e
    move-exception v7

    :goto_e
    :try_start_f
    sget-object v7, Lorg/checkerframework/common/basetype/BaseTypeVisitor$2;->$SwitchMap$com$sun$source$tree$Tree$Kind:[I

    sget-object v8, Lcom/sun/source/tree/Tree$Kind;->NEW_CLASS:Lcom/sun/source/tree/Tree$Kind;

    invoke-virtual {v8}, Lcom/sun/source/tree/Tree$Kind;->ordinal()I

    move-result v8

    aput v3, v7, v8
    :try_end_f
    .catch Ljava/lang/NoSuchFieldError; {:try_start_f .. :try_end_f} :catch_f

    goto :goto_f

    :catch_f
    move-exception v3

    :goto_f
    :try_start_10
    sget-object v3, Lorg/checkerframework/common/basetype/BaseTypeVisitor$2;->$SwitchMap$com$sun$source$tree$Tree$Kind:[I

    sget-object v7, Lcom/sun/source/tree/Tree$Kind;->PRIMITIVE_TYPE:Lcom/sun/source/tree/Tree$Kind;

    invoke-virtual {v7}, Lcom/sun/source/tree/Tree$Kind;->ordinal()I

    move-result v7

    aput v4, v3, v7
    :try_end_10
    .catch Ljava/lang/NoSuchFieldError; {:try_start_10 .. :try_end_10} :catch_10

    goto :goto_10

    :catch_10
    move-exception v3

    :goto_10
    :try_start_11
    sget-object v3, Lorg/checkerframework/common/basetype/BaseTypeVisitor$2;->$SwitchMap$com$sun$source$tree$Tree$Kind:[I

    sget-object v4, Lcom/sun/source/tree/Tree$Kind;->PARAMETERIZED_TYPE:Lcom/sun/source/tree/Tree$Kind;

    invoke-virtual {v4}, Lcom/sun/source/tree/Tree$Kind;->ordinal()I

    move-result v4

    aput v5, v3, v4
    :try_end_11
    .catch Ljava/lang/NoSuchFieldError; {:try_start_11 .. :try_end_11} :catch_11

    goto :goto_11

    :catch_11
    move-exception v3

    :goto_11
    :try_start_12
    sget-object v3, Lorg/checkerframework/common/basetype/BaseTypeVisitor$2;->$SwitchMap$com$sun$source$tree$Tree$Kind:[I

    sget-object v4, Lcom/sun/source/tree/Tree$Kind;->TYPE_PARAMETER:Lcom/sun/source/tree/Tree$Kind;

    invoke-virtual {v4}, Lcom/sun/source/tree/Tree$Kind;->ordinal()I

    move-result v4

    aput v6, v3, v4
    :try_end_12
    .catch Ljava/lang/NoSuchFieldError; {:try_start_12 .. :try_end_12} :catch_12

    goto :goto_12

    :catch_12
    move-exception v3

    :goto_12
    :try_start_13
    sget-object v3, Lorg/checkerframework/common/basetype/BaseTypeVisitor$2;->$SwitchMap$com$sun$source$tree$Tree$Kind:[I

    sget-object v4, Lcom/sun/source/tree/Tree$Kind;->ARRAY_TYPE:Lcom/sun/source/tree/Tree$Kind;

    invoke-virtual {v4}, Lcom/sun/source/tree/Tree$Kind;->ordinal()I

    move-result v4

    const/16 v5, 0x8

    aput v5, v3, v4
    :try_end_13
    .catch Ljava/lang/NoSuchFieldError; {:try_start_13 .. :try_end_13} :catch_13

    goto :goto_13

    :catch_13
    move-exception v3

    :goto_13
    :try_start_14
    sget-object v3, Lorg/checkerframework/common/basetype/BaseTypeVisitor$2;->$SwitchMap$com$sun$source$tree$Tree$Kind:[I

    sget-object v4, Lcom/sun/source/tree/Tree$Kind;->UNBOUNDED_WILDCARD:Lcom/sun/source/tree/Tree$Kind;

    invoke-virtual {v4}, Lcom/sun/source/tree/Tree$Kind;->ordinal()I

    move-result v4

    const/16 v5, 0x9

    aput v5, v3, v4
    :try_end_14
    .catch Ljava/lang/NoSuchFieldError; {:try_start_14 .. :try_end_14} :catch_14

    goto :goto_14

    :catch_14
    move-exception v3

    :goto_14
    :try_start_15
    sget-object v3, Lorg/checkerframework/common/basetype/BaseTypeVisitor$2;->$SwitchMap$com$sun$source$tree$Tree$Kind:[I

    sget-object v4, Lcom/sun/source/tree/Tree$Kind;->EXTENDS_WILDCARD:Lcom/sun/source/tree/Tree$Kind;

    invoke-virtual {v4}, Lcom/sun/source/tree/Tree$Kind;->ordinal()I

    move-result v4

    const/16 v5, 0xa

    aput v5, v3, v4
    :try_end_15
    .catch Ljava/lang/NoSuchFieldError; {:try_start_15 .. :try_end_15} :catch_15

    goto :goto_15

    :catch_15
    move-exception v3

    :goto_15
    :try_start_16
    sget-object v3, Lorg/checkerframework/common/basetype/BaseTypeVisitor$2;->$SwitchMap$com$sun$source$tree$Tree$Kind:[I

    sget-object v4, Lcom/sun/source/tree/Tree$Kind;->SUPER_WILDCARD:Lcom/sun/source/tree/Tree$Kind;

    invoke-virtual {v4}, Lcom/sun/source/tree/Tree$Kind;->ordinal()I

    move-result v4

    const/16 v5, 0xb

    aput v5, v3, v4
    :try_end_16
    .catch Ljava/lang/NoSuchFieldError; {:try_start_16 .. :try_end_16} :catch_16

    goto :goto_16

    :catch_16
    move-exception v3

    :goto_16
    :try_start_17
    sget-object v3, Lorg/checkerframework/common/basetype/BaseTypeVisitor$2;->$SwitchMap$com$sun$source$tree$Tree$Kind:[I

    sget-object v4, Lcom/sun/source/tree/Tree$Kind;->ANNOTATED_TYPE:Lcom/sun/source/tree/Tree$Kind;

    invoke-virtual {v4}, Lcom/sun/source/tree/Tree$Kind;->ordinal()I

    move-result v4

    const/16 v5, 0xc

    aput v5, v3, v4
    :try_end_17
    .catch Ljava/lang/NoSuchFieldError; {:try_start_17 .. :try_end_17} :catch_17

    goto :goto_17

    :catch_17
    move-exception v3

    :goto_17
    :try_start_18
    sget-object v3, Lorg/checkerframework/common/basetype/BaseTypeVisitor$2;->$SwitchMap$com$sun$source$tree$Tree$Kind:[I

    sget-object v4, Lcom/sun/source/tree/Tree$Kind;->METHOD:Lcom/sun/source/tree/Tree$Kind;

    invoke-virtual {v4}, Lcom/sun/source/tree/Tree$Kind;->ordinal()I

    move-result v4

    const/16 v5, 0xd

    aput v5, v3, v4
    :try_end_18
    .catch Ljava/lang/NoSuchFieldError; {:try_start_18 .. :try_end_18} :catch_18

    goto :goto_18

    :catch_18
    move-exception v3

    .line 809
    :goto_18
    invoke-static {}, Lorg/checkerframework/framework/util/Contract$Kind;->values()[Lorg/checkerframework/framework/util/Contract$Kind;

    move-result-object v3

    array-length v3, v3

    new-array v3, v3, [I

    sput-object v3, Lorg/checkerframework/common/basetype/BaseTypeVisitor$2;->$SwitchMap$org$checkerframework$framework$util$Contract$Kind:[I

    :try_start_19
    sget-object v4, Lorg/checkerframework/framework/util/Contract$Kind;->POSTCONDITION:Lorg/checkerframework/framework/util/Contract$Kind;

    invoke-virtual {v4}, Lorg/checkerframework/framework/util/Contract$Kind;->ordinal()I

    move-result v4

    aput v1, v3, v4
    :try_end_19
    .catch Ljava/lang/NoSuchFieldError; {:try_start_19 .. :try_end_19} :catch_19

    goto :goto_19

    :catch_19
    move-exception v1

    :goto_19
    :try_start_1a
    sget-object v1, Lorg/checkerframework/common/basetype/BaseTypeVisitor$2;->$SwitchMap$org$checkerframework$framework$util$Contract$Kind:[I

    sget-object v3, Lorg/checkerframework/framework/util/Contract$Kind;->CONDITIONALPOSTCONDITION:Lorg/checkerframework/framework/util/Contract$Kind;

    invoke-virtual {v3}, Lorg/checkerframework/framework/util/Contract$Kind;->ordinal()I

    move-result v3

    aput v0, v1, v3
    :try_end_1a
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1a .. :try_end_1a} :catch_1a

    goto :goto_1a

    :catch_1a
    move-exception v0

    :goto_1a
    :try_start_1b
    sget-object v0, Lorg/checkerframework/common/basetype/BaseTypeVisitor$2;->$SwitchMap$org$checkerframework$framework$util$Contract$Kind:[I

    sget-object v1, Lorg/checkerframework/framework/util/Contract$Kind;->PRECONDITION:Lorg/checkerframework/framework/util/Contract$Kind;

    invoke-virtual {v1}, Lorg/checkerframework/framework/util/Contract$Kind;->ordinal()I

    move-result v1

    aput v2, v0, v1
    :try_end_1b
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1b .. :try_end_1b} :catch_1b

    goto :goto_1b

    :catch_1b
    move-exception v0

    :goto_1b
    return-void
.end method