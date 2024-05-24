.class synthetic Lannotator/find/Insertions$3;
.super Ljava/lang/Object;
.source "Insertions.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lannotator/find/Insertions;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$annotator$find$Insertion$Kind:[I

.field static final synthetic $SwitchMap$com$sun$source$tree$Tree$Kind:[I

.field static final synthetic $SwitchMap$com$sun$tools$javac$code$TypeAnnotationPosition$TypePathEntryKind:[I

.field static final synthetic $SwitchMap$javax$lang$model$type$TypeKind:[I

.field static final synthetic $SwitchMap$scenelib$type$Type$Kind:[I


# direct methods
.method static constructor <clinit>()V
    .locals 12

    .line 1289
    invoke-static {}, Ljavax/lang/model/type/TypeKind;->values()[Ljavax/lang/model/type/TypeKind;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lannotator/find/Insertions$3;->$SwitchMap$javax$lang$model$type$TypeKind:[I

    const/4 v1, 0x1

    :try_start_0
    sget-object v2, Ljavax/lang/model/type/TypeKind;->ARRAY:Ljavax/lang/model/type/TypeKind;

    invoke-virtual {v2}, Ljavax/lang/model/type/TypeKind;->ordinal()I

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
    sget-object v2, Lannotator/find/Insertions$3;->$SwitchMap$javax$lang$model$type$TypeKind:[I

    sget-object v3, Ljavax/lang/model/type/TypeKind;->DECLARED:Ljavax/lang/model/type/TypeKind;

    invoke-virtual {v3}, Ljavax/lang/model/type/TypeKind;->ordinal()I

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
    sget-object v3, Lannotator/find/Insertions$3;->$SwitchMap$javax$lang$model$type$TypeKind:[I

    sget-object v4, Ljavax/lang/model/type/TypeKind;->WILDCARD:Ljavax/lang/model/type/TypeKind;

    invoke-virtual {v4}, Ljavax/lang/model/type/TypeKind;->ordinal()I

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
    sget-object v4, Lannotator/find/Insertions$3;->$SwitchMap$javax$lang$model$type$TypeKind:[I

    sget-object v5, Ljavax/lang/model/type/TypeKind;->TYPEVAR:Ljavax/lang/model/type/TypeKind;

    invoke-virtual {v5}, Ljavax/lang/model/type/TypeKind;->ordinal()I

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
    sget-object v5, Lannotator/find/Insertions$3;->$SwitchMap$javax$lang$model$type$TypeKind:[I

    sget-object v6, Ljavax/lang/model/type/TypeKind;->INTERSECTION:Ljavax/lang/model/type/TypeKind;

    invoke-virtual {v6}, Ljavax/lang/model/type/TypeKind;->ordinal()I

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
    sget-object v6, Lannotator/find/Insertions$3;->$SwitchMap$javax$lang$model$type$TypeKind:[I

    sget-object v7, Ljavax/lang/model/type/TypeKind;->UNION:Ljavax/lang/model/type/TypeKind;

    invoke-virtual {v7}, Ljavax/lang/model/type/TypeKind;->ordinal()I

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
    sget-object v7, Lannotator/find/Insertions$3;->$SwitchMap$javax$lang$model$type$TypeKind:[I

    sget-object v8, Ljavax/lang/model/type/TypeKind;->BOOLEAN:Ljavax/lang/model/type/TypeKind;

    invoke-virtual {v8}, Ljavax/lang/model/type/TypeKind;->ordinal()I

    move-result v8

    aput v6, v7, v8
    :try_end_6
    .catch Ljava/lang/NoSuchFieldError; {:try_start_6 .. :try_end_6} :catch_6

    goto :goto_6

    :catch_6
    move-exception v7

    :goto_6
    const/16 v7, 0x8

    :try_start_7
    sget-object v8, Lannotator/find/Insertions$3;->$SwitchMap$javax$lang$model$type$TypeKind:[I

    sget-object v9, Ljavax/lang/model/type/TypeKind;->BYTE:Ljavax/lang/model/type/TypeKind;

    invoke-virtual {v9}, Ljavax/lang/model/type/TypeKind;->ordinal()I

    move-result v9

    aput v7, v8, v9
    :try_end_7
    .catch Ljava/lang/NoSuchFieldError; {:try_start_7 .. :try_end_7} :catch_7

    goto :goto_7

    :catch_7
    move-exception v8

    :goto_7
    const/16 v8, 0x9

    :try_start_8
    sget-object v9, Lannotator/find/Insertions$3;->$SwitchMap$javax$lang$model$type$TypeKind:[I

    sget-object v10, Ljavax/lang/model/type/TypeKind;->CHAR:Ljavax/lang/model/type/TypeKind;

    invoke-virtual {v10}, Ljavax/lang/model/type/TypeKind;->ordinal()I

    move-result v10

    aput v8, v9, v10
    :try_end_8
    .catch Ljava/lang/NoSuchFieldError; {:try_start_8 .. :try_end_8} :catch_8

    goto :goto_8

    :catch_8
    move-exception v9

    :goto_8
    :try_start_9
    sget-object v9, Lannotator/find/Insertions$3;->$SwitchMap$javax$lang$model$type$TypeKind:[I

    sget-object v10, Ljavax/lang/model/type/TypeKind;->DOUBLE:Ljavax/lang/model/type/TypeKind;

    invoke-virtual {v10}, Ljavax/lang/model/type/TypeKind;->ordinal()I

    move-result v10

    const/16 v11, 0xa

    aput v11, v9, v10
    :try_end_9
    .catch Ljava/lang/NoSuchFieldError; {:try_start_9 .. :try_end_9} :catch_9

    goto :goto_9

    :catch_9
    move-exception v9

    :goto_9
    :try_start_a
    sget-object v9, Lannotator/find/Insertions$3;->$SwitchMap$javax$lang$model$type$TypeKind:[I

    sget-object v10, Ljavax/lang/model/type/TypeKind;->LONG:Ljavax/lang/model/type/TypeKind;

    invoke-virtual {v10}, Ljavax/lang/model/type/TypeKind;->ordinal()I

    move-result v10

    const/16 v11, 0xb

    aput v11, v9, v10
    :try_end_a
    .catch Ljava/lang/NoSuchFieldError; {:try_start_a .. :try_end_a} :catch_a

    goto :goto_a

    :catch_a
    move-exception v9

    :goto_a
    :try_start_b
    sget-object v9, Lannotator/find/Insertions$3;->$SwitchMap$javax$lang$model$type$TypeKind:[I

    sget-object v10, Ljavax/lang/model/type/TypeKind;->SHORT:Ljavax/lang/model/type/TypeKind;

    invoke-virtual {v10}, Ljavax/lang/model/type/TypeKind;->ordinal()I

    move-result v10

    const/16 v11, 0xc

    aput v11, v9, v10
    :try_end_b
    .catch Ljava/lang/NoSuchFieldError; {:try_start_b .. :try_end_b} :catch_b

    goto :goto_b

    :catch_b
    move-exception v9

    :goto_b
    :try_start_c
    sget-object v9, Lannotator/find/Insertions$3;->$SwitchMap$javax$lang$model$type$TypeKind:[I

    sget-object v10, Ljavax/lang/model/type/TypeKind;->FLOAT:Ljavax/lang/model/type/TypeKind;

    invoke-virtual {v10}, Ljavax/lang/model/type/TypeKind;->ordinal()I

    move-result v10

    const/16 v11, 0xd

    aput v11, v9, v10
    :try_end_c
    .catch Ljava/lang/NoSuchFieldError; {:try_start_c .. :try_end_c} :catch_c

    goto :goto_c

    :catch_c
    move-exception v9

    :goto_c
    :try_start_d
    sget-object v9, Lannotator/find/Insertions$3;->$SwitchMap$javax$lang$model$type$TypeKind:[I

    sget-object v10, Ljavax/lang/model/type/TypeKind;->INT:Ljavax/lang/model/type/TypeKind;

    invoke-virtual {v10}, Ljavax/lang/model/type/TypeKind;->ordinal()I

    move-result v10

    const/16 v11, 0xe

    aput v11, v9, v10
    :try_end_d
    .catch Ljava/lang/NoSuchFieldError; {:try_start_d .. :try_end_d} :catch_d

    goto :goto_d

    :catch_d
    move-exception v9

    :goto_d
    :try_start_e
    sget-object v9, Lannotator/find/Insertions$3;->$SwitchMap$javax$lang$model$type$TypeKind:[I

    sget-object v10, Ljavax/lang/model/type/TypeKind;->ERROR:Ljavax/lang/model/type/TypeKind;

    invoke-virtual {v10}, Ljavax/lang/model/type/TypeKind;->ordinal()I

    move-result v10

    const/16 v11, 0xf

    aput v11, v9, v10
    :try_end_e
    .catch Ljava/lang/NoSuchFieldError; {:try_start_e .. :try_end_e} :catch_e

    goto :goto_e

    :catch_e
    move-exception v9

    .line 1039
    :goto_e
    invoke-static {}, Lscenelib/type/Type$Kind;->values()[Lscenelib/type/Type$Kind;

    move-result-object v9

    array-length v9, v9

    new-array v9, v9, [I

    sput-object v9, Lannotator/find/Insertions$3;->$SwitchMap$scenelib$type$Type$Kind:[I

    :try_start_f
    sget-object v10, Lscenelib/type/Type$Kind;->ARRAY:Lscenelib/type/Type$Kind;

    invoke-virtual {v10}, Lscenelib/type/Type$Kind;->ordinal()I

    move-result v10

    aput v1, v9, v10
    :try_end_f
    .catch Ljava/lang/NoSuchFieldError; {:try_start_f .. :try_end_f} :catch_f

    goto :goto_f

    :catch_f
    move-exception v9

    :goto_f
    :try_start_10
    sget-object v9, Lannotator/find/Insertions$3;->$SwitchMap$scenelib$type$Type$Kind:[I

    sget-object v10, Lscenelib/type/Type$Kind;->BOUNDED:Lscenelib/type/Type$Kind;

    invoke-virtual {v10}, Lscenelib/type/Type$Kind;->ordinal()I

    move-result v10

    aput v0, v9, v10
    :try_end_10
    .catch Ljava/lang/NoSuchFieldError; {:try_start_10 .. :try_end_10} :catch_10

    goto :goto_10

    :catch_10
    move-exception v9

    :goto_10
    :try_start_11
    sget-object v9, Lannotator/find/Insertions$3;->$SwitchMap$scenelib$type$Type$Kind:[I

    sget-object v10, Lscenelib/type/Type$Kind;->DECLARED:Lscenelib/type/Type$Kind;

    invoke-virtual {v10}, Lscenelib/type/Type$Kind;->ordinal()I

    move-result v10

    aput v2, v9, v10
    :try_end_11
    .catch Ljava/lang/NoSuchFieldError; {:try_start_11 .. :try_end_11} :catch_11

    goto :goto_11

    :catch_11
    move-exception v9

    .line 860
    :goto_11
    invoke-static {}, Lcom/sun/tools/javac/code/TypeAnnotationPosition$TypePathEntryKind;->values()[Lcom/sun/tools/javac/code/TypeAnnotationPosition$TypePathEntryKind;

    move-result-object v9

    array-length v9, v9

    new-array v9, v9, [I

    sput-object v9, Lannotator/find/Insertions$3;->$SwitchMap$com$sun$tools$javac$code$TypeAnnotationPosition$TypePathEntryKind:[I

    :try_start_12
    sget-object v10, Lcom/sun/tools/javac/code/TypeAnnotationPosition$TypePathEntryKind;->ARRAY:Lcom/sun/tools/javac/code/TypeAnnotationPosition$TypePathEntryKind;

    invoke-virtual {v10}, Lcom/sun/tools/javac/code/TypeAnnotationPosition$TypePathEntryKind;->ordinal()I

    move-result v10

    aput v1, v9, v10
    :try_end_12
    .catch Ljava/lang/NoSuchFieldError; {:try_start_12 .. :try_end_12} :catch_12

    goto :goto_12

    :catch_12
    move-exception v9

    :goto_12
    :try_start_13
    sget-object v9, Lannotator/find/Insertions$3;->$SwitchMap$com$sun$tools$javac$code$TypeAnnotationPosition$TypePathEntryKind:[I

    sget-object v10, Lcom/sun/tools/javac/code/TypeAnnotationPosition$TypePathEntryKind;->INNER_TYPE:Lcom/sun/tools/javac/code/TypeAnnotationPosition$TypePathEntryKind;

    invoke-virtual {v10}, Lcom/sun/tools/javac/code/TypeAnnotationPosition$TypePathEntryKind;->ordinal()I

    move-result v10

    aput v0, v9, v10
    :try_end_13
    .catch Ljava/lang/NoSuchFieldError; {:try_start_13 .. :try_end_13} :catch_13

    goto :goto_13

    :catch_13
    move-exception v9

    :goto_13
    :try_start_14
    sget-object v9, Lannotator/find/Insertions$3;->$SwitchMap$com$sun$tools$javac$code$TypeAnnotationPosition$TypePathEntryKind:[I

    sget-object v10, Lcom/sun/tools/javac/code/TypeAnnotationPosition$TypePathEntryKind;->TYPE_ARGUMENT:Lcom/sun/tools/javac/code/TypeAnnotationPosition$TypePathEntryKind;

    invoke-virtual {v10}, Lcom/sun/tools/javac/code/TypeAnnotationPosition$TypePathEntryKind;->ordinal()I

    move-result v10

    aput v2, v9, v10
    :try_end_14
    .catch Ljava/lang/NoSuchFieldError; {:try_start_14 .. :try_end_14} :catch_14

    goto :goto_14

    :catch_14
    move-exception v9

    :goto_14
    :try_start_15
    sget-object v9, Lannotator/find/Insertions$3;->$SwitchMap$com$sun$tools$javac$code$TypeAnnotationPosition$TypePathEntryKind:[I

    sget-object v10, Lcom/sun/tools/javac/code/TypeAnnotationPosition$TypePathEntryKind;->WILDCARD:Lcom/sun/tools/javac/code/TypeAnnotationPosition$TypePathEntryKind;

    invoke-virtual {v10}, Lcom/sun/tools/javac/code/TypeAnnotationPosition$TypePathEntryKind;->ordinal()I

    move-result v10

    aput v3, v9, v10
    :try_end_15
    .catch Ljava/lang/NoSuchFieldError; {:try_start_15 .. :try_end_15} :catch_15

    goto :goto_15

    :catch_15
    move-exception v9

    .line 572
    :goto_15
    invoke-static {}, Lannotator/find/Insertion$Kind;->values()[Lannotator/find/Insertion$Kind;

    move-result-object v9

    array-length v9, v9

    new-array v9, v9, [I

    sput-object v9, Lannotator/find/Insertions$3;->$SwitchMap$annotator$find$Insertion$Kind:[I

    :try_start_16
    sget-object v10, Lannotator/find/Insertion$Kind;->CONSTRUCTOR:Lannotator/find/Insertion$Kind;

    invoke-virtual {v10}, Lannotator/find/Insertion$Kind;->ordinal()I

    move-result v10

    aput v1, v9, v10
    :try_end_16
    .catch Ljava/lang/NoSuchFieldError; {:try_start_16 .. :try_end_16} :catch_16

    goto :goto_16

    :catch_16
    move-exception v9

    :goto_16
    :try_start_17
    sget-object v9, Lannotator/find/Insertions$3;->$SwitchMap$annotator$find$Insertion$Kind:[I

    sget-object v10, Lannotator/find/Insertion$Kind;->NEW:Lannotator/find/Insertion$Kind;

    invoke-virtual {v10}, Lannotator/find/Insertion$Kind;->ordinal()I

    move-result v10

    aput v0, v9, v10
    :try_end_17
    .catch Ljava/lang/NoSuchFieldError; {:try_start_17 .. :try_end_17} :catch_17

    goto :goto_17

    :catch_17
    move-exception v9

    :goto_17
    :try_start_18
    sget-object v9, Lannotator/find/Insertions$3;->$SwitchMap$annotator$find$Insertion$Kind:[I

    sget-object v10, Lannotator/find/Insertion$Kind;->RECEIVER:Lannotator/find/Insertion$Kind;

    invoke-virtual {v10}, Lannotator/find/Insertion$Kind;->ordinal()I

    move-result v10

    aput v2, v9, v10
    :try_end_18
    .catch Ljava/lang/NoSuchFieldError; {:try_start_18 .. :try_end_18} :catch_18

    goto :goto_18

    :catch_18
    move-exception v9

    :goto_18
    :try_start_19
    sget-object v9, Lannotator/find/Insertions$3;->$SwitchMap$annotator$find$Insertion$Kind:[I

    sget-object v10, Lannotator/find/Insertion$Kind;->CAST:Lannotator/find/Insertion$Kind;

    invoke-virtual {v10}, Lannotator/find/Insertion$Kind;->ordinal()I

    move-result v10

    aput v3, v9, v10
    :try_end_19
    .catch Ljava/lang/NoSuchFieldError; {:try_start_19 .. :try_end_19} :catch_19

    goto :goto_19

    :catch_19
    move-exception v9

    :goto_19
    :try_start_1a
    sget-object v9, Lannotator/find/Insertions$3;->$SwitchMap$annotator$find$Insertion$Kind:[I

    sget-object v10, Lannotator/find/Insertion$Kind;->ANNOTATION:Lannotator/find/Insertion$Kind;

    invoke-virtual {v10}, Lannotator/find/Insertion$Kind;->ordinal()I

    move-result v10

    aput v4, v9, v10
    :try_end_1a
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1a .. :try_end_1a} :catch_1a

    goto :goto_1a

    :catch_1a
    move-exception v9

    :goto_1a
    :try_start_1b
    sget-object v9, Lannotator/find/Insertions$3;->$SwitchMap$annotator$find$Insertion$Kind:[I

    sget-object v10, Lannotator/find/Insertion$Kind;->CLOSE_PARENTHESIS:Lannotator/find/Insertion$Kind;

    invoke-virtual {v10}, Lannotator/find/Insertion$Kind;->ordinal()I

    move-result v10

    aput v5, v9, v10
    :try_end_1b
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1b .. :try_end_1b} :catch_1b

    goto :goto_1b

    :catch_1b
    move-exception v9

    .line 515
    :goto_1b
    invoke-static {}, Lcom/sun/source/tree/Tree$Kind;->values()[Lcom/sun/source/tree/Tree$Kind;

    move-result-object v9

    array-length v9, v9

    new-array v9, v9, [I

    sput-object v9, Lannotator/find/Insertions$3;->$SwitchMap$com$sun$source$tree$Tree$Kind:[I

    :try_start_1c
    sget-object v10, Lcom/sun/source/tree/Tree$Kind;->NEW_ARRAY:Lcom/sun/source/tree/Tree$Kind;

    invoke-virtual {v10}, Lcom/sun/source/tree/Tree$Kind;->ordinal()I

    move-result v10

    aput v1, v9, v10
    :try_end_1c
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1c .. :try_end_1c} :catch_1c

    goto :goto_1c

    :catch_1c
    move-exception v1

    :goto_1c
    :try_start_1d
    sget-object v1, Lannotator/find/Insertions$3;->$SwitchMap$com$sun$source$tree$Tree$Kind:[I

    sget-object v9, Lcom/sun/source/tree/Tree$Kind;->ARRAY_TYPE:Lcom/sun/source/tree/Tree$Kind;

    invoke-virtual {v9}, Lcom/sun/source/tree/Tree$Kind;->ordinal()I

    move-result v9

    aput v0, v1, v9
    :try_end_1d
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1d .. :try_end_1d} :catch_1d

    goto :goto_1d

    :catch_1d
    move-exception v0

    :goto_1d
    :try_start_1e
    sget-object v0, Lannotator/find/Insertions$3;->$SwitchMap$com$sun$source$tree$Tree$Kind:[I

    sget-object v1, Lcom/sun/source/tree/Tree$Kind;->MEMBER_SELECT:Lcom/sun/source/tree/Tree$Kind;

    invoke-virtual {v1}, Lcom/sun/source/tree/Tree$Kind;->ordinal()I

    move-result v1

    aput v2, v0, v1
    :try_end_1e
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1e .. :try_end_1e} :catch_1e

    goto :goto_1e

    :catch_1e
    move-exception v0

    :goto_1e
    :try_start_1f
    sget-object v0, Lannotator/find/Insertions$3;->$SwitchMap$com$sun$source$tree$Tree$Kind:[I

    sget-object v1, Lcom/sun/source/tree/Tree$Kind;->PARAMETERIZED_TYPE:Lcom/sun/source/tree/Tree$Kind;

    invoke-virtual {v1}, Lcom/sun/source/tree/Tree$Kind;->ordinal()I

    move-result v1

    aput v3, v0, v1
    :try_end_1f
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1f .. :try_end_1f} :catch_1f

    goto :goto_1f

    :catch_1f
    move-exception v0

    :goto_1f
    :try_start_20
    sget-object v0, Lannotator/find/Insertions$3;->$SwitchMap$com$sun$source$tree$Tree$Kind:[I

    sget-object v1, Lcom/sun/source/tree/Tree$Kind;->UNBOUNDED_WILDCARD:Lcom/sun/source/tree/Tree$Kind;

    invoke-virtual {v1}, Lcom/sun/source/tree/Tree$Kind;->ordinal()I

    move-result v1

    aput v4, v0, v1
    :try_end_20
    .catch Ljava/lang/NoSuchFieldError; {:try_start_20 .. :try_end_20} :catch_20

    goto :goto_20

    :catch_20
    move-exception v0

    :goto_20
    :try_start_21
    sget-object v0, Lannotator/find/Insertions$3;->$SwitchMap$com$sun$source$tree$Tree$Kind:[I

    sget-object v1, Lcom/sun/source/tree/Tree$Kind;->ANNOTATED_TYPE:Lcom/sun/source/tree/Tree$Kind;

    invoke-virtual {v1}, Lcom/sun/source/tree/Tree$Kind;->ordinal()I

    move-result v1

    aput v5, v0, v1
    :try_end_21
    .catch Ljava/lang/NoSuchFieldError; {:try_start_21 .. :try_end_21} :catch_21

    goto :goto_21

    :catch_21
    move-exception v0

    :goto_21
    :try_start_22
    sget-object v0, Lannotator/find/Insertions$3;->$SwitchMap$com$sun$source$tree$Tree$Kind:[I

    sget-object v1, Lcom/sun/source/tree/Tree$Kind;->EXTENDS_WILDCARD:Lcom/sun/source/tree/Tree$Kind;

    invoke-virtual {v1}, Lcom/sun/source/tree/Tree$Kind;->ordinal()I

    move-result v1

    aput v6, v0, v1
    :try_end_22
    .catch Ljava/lang/NoSuchFieldError; {:try_start_22 .. :try_end_22} :catch_22

    goto :goto_22

    :catch_22
    move-exception v0

    :goto_22
    :try_start_23
    sget-object v0, Lannotator/find/Insertions$3;->$SwitchMap$com$sun$source$tree$Tree$Kind:[I

    sget-object v1, Lcom/sun/source/tree/Tree$Kind;->SUPER_WILDCARD:Lcom/sun/source/tree/Tree$Kind;

    invoke-virtual {v1}, Lcom/sun/source/tree/Tree$Kind;->ordinal()I

    move-result v1

    aput v7, v0, v1
    :try_end_23
    .catch Ljava/lang/NoSuchFieldError; {:try_start_23 .. :try_end_23} :catch_23

    goto :goto_23

    :catch_23
    move-exception v0

    :goto_23
    :try_start_24
    sget-object v0, Lannotator/find/Insertions$3;->$SwitchMap$com$sun$source$tree$Tree$Kind:[I

    sget-object v1, Lcom/sun/source/tree/Tree$Kind;->IDENTIFIER:Lcom/sun/source/tree/Tree$Kind;

    invoke-virtual {v1}, Lcom/sun/source/tree/Tree$Kind;->ordinal()I

    move-result v1

    aput v8, v0, v1
    :try_end_24
    .catch Ljava/lang/NoSuchFieldError; {:try_start_24 .. :try_end_24} :catch_24

    goto :goto_24

    :catch_24
    move-exception v0

    :goto_24
    return-void
.end method
