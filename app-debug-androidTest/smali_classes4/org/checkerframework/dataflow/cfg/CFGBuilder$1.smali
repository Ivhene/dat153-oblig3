.class synthetic Lorg/checkerframework/dataflow/cfg/CFGBuilder$1;
.super Ljava/lang/Object;
.source "CFGBuilder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/checkerframework/dataflow/cfg/CFGBuilder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$com$sun$source$tree$Tree$Kind:[I

.field static final synthetic $SwitchMap$javax$lang$model$element$ElementKind:[I

.field static final synthetic $SwitchMap$javax$lang$model$type$TypeKind:[I

.field static final synthetic $SwitchMap$org$checkerframework$dataflow$cfg$CFGBuilder$ExtendedNode$ExtendedNodeType:[I

.field static final synthetic $SwitchMap$org$checkerframework$dataflow$cfg$block$Block$BlockType:[I


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .line 3892
    invoke-static {}, Ljavax/lang/model/element/ElementKind;->values()[Ljavax/lang/model/element/ElementKind;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lorg/checkerframework/dataflow/cfg/CFGBuilder$1;->$SwitchMap$javax$lang$model$element$ElementKind:[I

    const/4 v1, 0x1

    :try_start_0
    sget-object v2, Ljavax/lang/model/element/ElementKind;->FIELD:Ljavax/lang/model/element/ElementKind;

    invoke-virtual {v2}, Ljavax/lang/model/element/ElementKind;->ordinal()I

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
    sget-object v2, Lorg/checkerframework/dataflow/cfg/CFGBuilder$1;->$SwitchMap$javax$lang$model$element$ElementKind:[I

    sget-object v3, Ljavax/lang/model/element/ElementKind;->EXCEPTION_PARAMETER:Ljavax/lang/model/element/ElementKind;

    invoke-virtual {v3}, Ljavax/lang/model/element/ElementKind;->ordinal()I

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
    sget-object v3, Lorg/checkerframework/dataflow/cfg/CFGBuilder$1;->$SwitchMap$javax$lang$model$element$ElementKind:[I

    sget-object v4, Ljavax/lang/model/element/ElementKind;->LOCAL_VARIABLE:Ljavax/lang/model/element/ElementKind;

    invoke-virtual {v4}, Ljavax/lang/model/element/ElementKind;->ordinal()I

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
    sget-object v4, Lorg/checkerframework/dataflow/cfg/CFGBuilder$1;->$SwitchMap$javax$lang$model$element$ElementKind:[I

    sget-object v5, Ljavax/lang/model/element/ElementKind;->RESOURCE_VARIABLE:Ljavax/lang/model/element/ElementKind;

    invoke-virtual {v5}, Ljavax/lang/model/element/ElementKind;->ordinal()I

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
    sget-object v5, Lorg/checkerframework/dataflow/cfg/CFGBuilder$1;->$SwitchMap$javax$lang$model$element$ElementKind:[I

    sget-object v6, Ljavax/lang/model/element/ElementKind;->PARAMETER:Ljavax/lang/model/element/ElementKind;

    invoke-virtual {v6}, Ljavax/lang/model/element/ElementKind;->ordinal()I

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
    sget-object v6, Lorg/checkerframework/dataflow/cfg/CFGBuilder$1;->$SwitchMap$javax$lang$model$element$ElementKind:[I

    sget-object v7, Ljavax/lang/model/element/ElementKind;->PACKAGE:Ljavax/lang/model/element/ElementKind;

    invoke-virtual {v7}, Ljavax/lang/model/element/ElementKind;->ordinal()I

    move-result v7

    aput v5, v6, v7
    :try_end_5
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5 .. :try_end_5} :catch_5

    goto :goto_5

    :catch_5
    move-exception v6

    .line 2742
    :goto_5
    invoke-static {}, Lcom/sun/source/tree/Tree$Kind;->values()[Lcom/sun/source/tree/Tree$Kind;

    move-result-object v6

    array-length v6, v6

    new-array v6, v6, [I

    sput-object v6, Lorg/checkerframework/dataflow/cfg/CFGBuilder$1;->$SwitchMap$com$sun$source$tree$Tree$Kind:[I

    :try_start_6
    sget-object v7, Lcom/sun/source/tree/Tree$Kind;->DIVIDE_ASSIGNMENT:Lcom/sun/source/tree/Tree$Kind;

    invoke-virtual {v7}, Lcom/sun/source/tree/Tree$Kind;->ordinal()I

    move-result v7

    aput v1, v6, v7
    :try_end_6
    .catch Ljava/lang/NoSuchFieldError; {:try_start_6 .. :try_end_6} :catch_6

    goto :goto_6

    :catch_6
    move-exception v6

    :goto_6
    :try_start_7
    sget-object v6, Lorg/checkerframework/dataflow/cfg/CFGBuilder$1;->$SwitchMap$com$sun$source$tree$Tree$Kind:[I

    sget-object v7, Lcom/sun/source/tree/Tree$Kind;->MULTIPLY_ASSIGNMENT:Lcom/sun/source/tree/Tree$Kind;

    invoke-virtual {v7}, Lcom/sun/source/tree/Tree$Kind;->ordinal()I

    move-result v7

    aput v0, v6, v7
    :try_end_7
    .catch Ljava/lang/NoSuchFieldError; {:try_start_7 .. :try_end_7} :catch_7

    goto :goto_7

    :catch_7
    move-exception v6

    :goto_7
    :try_start_8
    sget-object v6, Lorg/checkerframework/dataflow/cfg/CFGBuilder$1;->$SwitchMap$com$sun$source$tree$Tree$Kind:[I

    sget-object v7, Lcom/sun/source/tree/Tree$Kind;->REMAINDER_ASSIGNMENT:Lcom/sun/source/tree/Tree$Kind;

    invoke-virtual {v7}, Lcom/sun/source/tree/Tree$Kind;->ordinal()I

    move-result v7

    aput v2, v6, v7
    :try_end_8
    .catch Ljava/lang/NoSuchFieldError; {:try_start_8 .. :try_end_8} :catch_8

    goto :goto_8

    :catch_8
    move-exception v6

    :goto_8
    :try_start_9
    sget-object v6, Lorg/checkerframework/dataflow/cfg/CFGBuilder$1;->$SwitchMap$com$sun$source$tree$Tree$Kind:[I

    sget-object v7, Lcom/sun/source/tree/Tree$Kind;->MINUS_ASSIGNMENT:Lcom/sun/source/tree/Tree$Kind;

    invoke-virtual {v7}, Lcom/sun/source/tree/Tree$Kind;->ordinal()I

    move-result v7

    aput v3, v6, v7
    :try_end_9
    .catch Ljava/lang/NoSuchFieldError; {:try_start_9 .. :try_end_9} :catch_9

    goto :goto_9

    :catch_9
    move-exception v6

    :goto_9
    :try_start_a
    sget-object v6, Lorg/checkerframework/dataflow/cfg/CFGBuilder$1;->$SwitchMap$com$sun$source$tree$Tree$Kind:[I

    sget-object v7, Lcom/sun/source/tree/Tree$Kind;->PLUS_ASSIGNMENT:Lcom/sun/source/tree/Tree$Kind;

    invoke-virtual {v7}, Lcom/sun/source/tree/Tree$Kind;->ordinal()I

    move-result v7

    aput v4, v6, v7
    :try_end_a
    .catch Ljava/lang/NoSuchFieldError; {:try_start_a .. :try_end_a} :catch_a

    goto :goto_a

    :catch_a
    move-exception v4

    :goto_a
    :try_start_b
    sget-object v4, Lorg/checkerframework/dataflow/cfg/CFGBuilder$1;->$SwitchMap$com$sun$source$tree$Tree$Kind:[I

    sget-object v6, Lcom/sun/source/tree/Tree$Kind;->LEFT_SHIFT_ASSIGNMENT:Lcom/sun/source/tree/Tree$Kind;

    invoke-virtual {v6}, Lcom/sun/source/tree/Tree$Kind;->ordinal()I

    move-result v6

    aput v5, v4, v6
    :try_end_b
    .catch Ljava/lang/NoSuchFieldError; {:try_start_b .. :try_end_b} :catch_b

    goto :goto_b

    :catch_b
    move-exception v4

    :goto_b
    :try_start_c
    sget-object v4, Lorg/checkerframework/dataflow/cfg/CFGBuilder$1;->$SwitchMap$com$sun$source$tree$Tree$Kind:[I

    sget-object v5, Lcom/sun/source/tree/Tree$Kind;->RIGHT_SHIFT_ASSIGNMENT:Lcom/sun/source/tree/Tree$Kind;

    invoke-virtual {v5}, Lcom/sun/source/tree/Tree$Kind;->ordinal()I

    move-result v5

    const/4 v6, 0x7

    aput v6, v4, v5
    :try_end_c
    .catch Ljava/lang/NoSuchFieldError; {:try_start_c .. :try_end_c} :catch_c

    goto :goto_c

    :catch_c
    move-exception v4

    :goto_c
    :try_start_d
    sget-object v4, Lorg/checkerframework/dataflow/cfg/CFGBuilder$1;->$SwitchMap$com$sun$source$tree$Tree$Kind:[I

    sget-object v5, Lcom/sun/source/tree/Tree$Kind;->UNSIGNED_RIGHT_SHIFT_ASSIGNMENT:Lcom/sun/source/tree/Tree$Kind;

    invoke-virtual {v5}, Lcom/sun/source/tree/Tree$Kind;->ordinal()I

    move-result v5

    const/16 v6, 0x8

    aput v6, v4, v5
    :try_end_d
    .catch Ljava/lang/NoSuchFieldError; {:try_start_d .. :try_end_d} :catch_d

    goto :goto_d

    :catch_d
    move-exception v4

    :goto_d
    :try_start_e
    sget-object v4, Lorg/checkerframework/dataflow/cfg/CFGBuilder$1;->$SwitchMap$com$sun$source$tree$Tree$Kind:[I

    sget-object v5, Lcom/sun/source/tree/Tree$Kind;->AND_ASSIGNMENT:Lcom/sun/source/tree/Tree$Kind;

    invoke-virtual {v5}, Lcom/sun/source/tree/Tree$Kind;->ordinal()I

    move-result v5

    const/16 v6, 0x9

    aput v6, v4, v5
    :try_end_e
    .catch Ljava/lang/NoSuchFieldError; {:try_start_e .. :try_end_e} :catch_e

    goto :goto_e

    :catch_e
    move-exception v4

    :goto_e
    :try_start_f
    sget-object v4, Lorg/checkerframework/dataflow/cfg/CFGBuilder$1;->$SwitchMap$com$sun$source$tree$Tree$Kind:[I

    sget-object v5, Lcom/sun/source/tree/Tree$Kind;->OR_ASSIGNMENT:Lcom/sun/source/tree/Tree$Kind;

    invoke-virtual {v5}, Lcom/sun/source/tree/Tree$Kind;->ordinal()I

    move-result v5

    const/16 v6, 0xa

    aput v6, v4, v5
    :try_end_f
    .catch Ljava/lang/NoSuchFieldError; {:try_start_f .. :try_end_f} :catch_f

    goto :goto_f

    :catch_f
    move-exception v4

    :goto_f
    :try_start_10
    sget-object v4, Lorg/checkerframework/dataflow/cfg/CFGBuilder$1;->$SwitchMap$com$sun$source$tree$Tree$Kind:[I

    sget-object v5, Lcom/sun/source/tree/Tree$Kind;->XOR_ASSIGNMENT:Lcom/sun/source/tree/Tree$Kind;

    invoke-virtual {v5}, Lcom/sun/source/tree/Tree$Kind;->ordinal()I

    move-result v5

    const/16 v6, 0xb

    aput v6, v4, v5
    :try_end_10
    .catch Ljava/lang/NoSuchFieldError; {:try_start_10 .. :try_end_10} :catch_10

    goto :goto_10

    :catch_10
    move-exception v4

    :goto_10
    :try_start_11
    sget-object v4, Lorg/checkerframework/dataflow/cfg/CFGBuilder$1;->$SwitchMap$com$sun$source$tree$Tree$Kind:[I

    sget-object v5, Lcom/sun/source/tree/Tree$Kind;->DIVIDE:Lcom/sun/source/tree/Tree$Kind;

    invoke-virtual {v5}, Lcom/sun/source/tree/Tree$Kind;->ordinal()I

    move-result v5

    const/16 v6, 0xc

    aput v6, v4, v5
    :try_end_11
    .catch Ljava/lang/NoSuchFieldError; {:try_start_11 .. :try_end_11} :catch_11

    goto :goto_11

    :catch_11
    move-exception v4

    :goto_11
    :try_start_12
    sget-object v4, Lorg/checkerframework/dataflow/cfg/CFGBuilder$1;->$SwitchMap$com$sun$source$tree$Tree$Kind:[I

    sget-object v5, Lcom/sun/source/tree/Tree$Kind;->MULTIPLY:Lcom/sun/source/tree/Tree$Kind;

    invoke-virtual {v5}, Lcom/sun/source/tree/Tree$Kind;->ordinal()I

    move-result v5

    const/16 v6, 0xd

    aput v6, v4, v5
    :try_end_12
    .catch Ljava/lang/NoSuchFieldError; {:try_start_12 .. :try_end_12} :catch_12

    goto :goto_12

    :catch_12
    move-exception v4

    :goto_12
    :try_start_13
    sget-object v4, Lorg/checkerframework/dataflow/cfg/CFGBuilder$1;->$SwitchMap$com$sun$source$tree$Tree$Kind:[I

    sget-object v5, Lcom/sun/source/tree/Tree$Kind;->REMAINDER:Lcom/sun/source/tree/Tree$Kind;

    invoke-virtual {v5}, Lcom/sun/source/tree/Tree$Kind;->ordinal()I

    move-result v5

    const/16 v6, 0xe

    aput v6, v4, v5
    :try_end_13
    .catch Ljava/lang/NoSuchFieldError; {:try_start_13 .. :try_end_13} :catch_13

    goto :goto_13

    :catch_13
    move-exception v4

    :goto_13
    :try_start_14
    sget-object v4, Lorg/checkerframework/dataflow/cfg/CFGBuilder$1;->$SwitchMap$com$sun$source$tree$Tree$Kind:[I

    sget-object v5, Lcom/sun/source/tree/Tree$Kind;->MINUS:Lcom/sun/source/tree/Tree$Kind;

    invoke-virtual {v5}, Lcom/sun/source/tree/Tree$Kind;->ordinal()I

    move-result v5

    const/16 v6, 0xf

    aput v6, v4, v5
    :try_end_14
    .catch Ljava/lang/NoSuchFieldError; {:try_start_14 .. :try_end_14} :catch_14

    goto :goto_14

    :catch_14
    move-exception v4

    :goto_14
    :try_start_15
    sget-object v4, Lorg/checkerframework/dataflow/cfg/CFGBuilder$1;->$SwitchMap$com$sun$source$tree$Tree$Kind:[I

    sget-object v5, Lcom/sun/source/tree/Tree$Kind;->PLUS:Lcom/sun/source/tree/Tree$Kind;

    invoke-virtual {v5}, Lcom/sun/source/tree/Tree$Kind;->ordinal()I

    move-result v5

    const/16 v6, 0x10

    aput v6, v4, v5
    :try_end_15
    .catch Ljava/lang/NoSuchFieldError; {:try_start_15 .. :try_end_15} :catch_15

    goto :goto_15

    :catch_15
    move-exception v4

    :goto_15
    :try_start_16
    sget-object v4, Lorg/checkerframework/dataflow/cfg/CFGBuilder$1;->$SwitchMap$com$sun$source$tree$Tree$Kind:[I

    sget-object v5, Lcom/sun/source/tree/Tree$Kind;->LEFT_SHIFT:Lcom/sun/source/tree/Tree$Kind;

    invoke-virtual {v5}, Lcom/sun/source/tree/Tree$Kind;->ordinal()I

    move-result v5

    const/16 v6, 0x11

    aput v6, v4, v5
    :try_end_16
    .catch Ljava/lang/NoSuchFieldError; {:try_start_16 .. :try_end_16} :catch_16

    goto :goto_16

    :catch_16
    move-exception v4

    :goto_16
    :try_start_17
    sget-object v4, Lorg/checkerframework/dataflow/cfg/CFGBuilder$1;->$SwitchMap$com$sun$source$tree$Tree$Kind:[I

    sget-object v5, Lcom/sun/source/tree/Tree$Kind;->RIGHT_SHIFT:Lcom/sun/source/tree/Tree$Kind;

    invoke-virtual {v5}, Lcom/sun/source/tree/Tree$Kind;->ordinal()I

    move-result v5

    const/16 v6, 0x12

    aput v6, v4, v5
    :try_end_17
    .catch Ljava/lang/NoSuchFieldError; {:try_start_17 .. :try_end_17} :catch_17

    goto :goto_17

    :catch_17
    move-exception v4

    :goto_17
    :try_start_18
    sget-object v4, Lorg/checkerframework/dataflow/cfg/CFGBuilder$1;->$SwitchMap$com$sun$source$tree$Tree$Kind:[I

    sget-object v5, Lcom/sun/source/tree/Tree$Kind;->UNSIGNED_RIGHT_SHIFT:Lcom/sun/source/tree/Tree$Kind;

    invoke-virtual {v5}, Lcom/sun/source/tree/Tree$Kind;->ordinal()I

    move-result v5

    const/16 v6, 0x13

    aput v6, v4, v5
    :try_end_18
    .catch Ljava/lang/NoSuchFieldError; {:try_start_18 .. :try_end_18} :catch_18

    goto :goto_18

    :catch_18
    move-exception v4

    :goto_18
    :try_start_19
    sget-object v4, Lorg/checkerframework/dataflow/cfg/CFGBuilder$1;->$SwitchMap$com$sun$source$tree$Tree$Kind:[I

    sget-object v5, Lcom/sun/source/tree/Tree$Kind;->GREATER_THAN:Lcom/sun/source/tree/Tree$Kind;

    invoke-virtual {v5}, Lcom/sun/source/tree/Tree$Kind;->ordinal()I

    move-result v5

    const/16 v6, 0x14

    aput v6, v4, v5
    :try_end_19
    .catch Ljava/lang/NoSuchFieldError; {:try_start_19 .. :try_end_19} :catch_19

    goto :goto_19

    :catch_19
    move-exception v4

    :goto_19
    :try_start_1a
    sget-object v4, Lorg/checkerframework/dataflow/cfg/CFGBuilder$1;->$SwitchMap$com$sun$source$tree$Tree$Kind:[I

    sget-object v5, Lcom/sun/source/tree/Tree$Kind;->GREATER_THAN_EQUAL:Lcom/sun/source/tree/Tree$Kind;

    invoke-virtual {v5}, Lcom/sun/source/tree/Tree$Kind;->ordinal()I

    move-result v5

    const/16 v6, 0x15

    aput v6, v4, v5
    :try_end_1a
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1a .. :try_end_1a} :catch_1a

    goto :goto_1a

    :catch_1a
    move-exception v4

    :goto_1a
    :try_start_1b
    sget-object v4, Lorg/checkerframework/dataflow/cfg/CFGBuilder$1;->$SwitchMap$com$sun$source$tree$Tree$Kind:[I

    sget-object v5, Lcom/sun/source/tree/Tree$Kind;->LESS_THAN:Lcom/sun/source/tree/Tree$Kind;

    invoke-virtual {v5}, Lcom/sun/source/tree/Tree$Kind;->ordinal()I

    move-result v5

    const/16 v6, 0x16

    aput v6, v4, v5
    :try_end_1b
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1b .. :try_end_1b} :catch_1b

    goto :goto_1b

    :catch_1b
    move-exception v4

    :goto_1b
    :try_start_1c
    sget-object v4, Lorg/checkerframework/dataflow/cfg/CFGBuilder$1;->$SwitchMap$com$sun$source$tree$Tree$Kind:[I

    sget-object v5, Lcom/sun/source/tree/Tree$Kind;->LESS_THAN_EQUAL:Lcom/sun/source/tree/Tree$Kind;

    invoke-virtual {v5}, Lcom/sun/source/tree/Tree$Kind;->ordinal()I

    move-result v5

    const/16 v6, 0x17

    aput v6, v4, v5
    :try_end_1c
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1c .. :try_end_1c} :catch_1c

    goto :goto_1c

    :catch_1c
    move-exception v4

    :goto_1c
    :try_start_1d
    sget-object v4, Lorg/checkerframework/dataflow/cfg/CFGBuilder$1;->$SwitchMap$com$sun$source$tree$Tree$Kind:[I

    sget-object v5, Lcom/sun/source/tree/Tree$Kind;->EQUAL_TO:Lcom/sun/source/tree/Tree$Kind;

    invoke-virtual {v5}, Lcom/sun/source/tree/Tree$Kind;->ordinal()I

    move-result v5

    const/16 v6, 0x18

    aput v6, v4, v5
    :try_end_1d
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1d .. :try_end_1d} :catch_1d

    goto :goto_1d

    :catch_1d
    move-exception v4

    :goto_1d
    :try_start_1e
    sget-object v4, Lorg/checkerframework/dataflow/cfg/CFGBuilder$1;->$SwitchMap$com$sun$source$tree$Tree$Kind:[I

    sget-object v5, Lcom/sun/source/tree/Tree$Kind;->NOT_EQUAL_TO:Lcom/sun/source/tree/Tree$Kind;

    invoke-virtual {v5}, Lcom/sun/source/tree/Tree$Kind;->ordinal()I

    move-result v5

    const/16 v6, 0x19

    aput v6, v4, v5
    :try_end_1e
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1e .. :try_end_1e} :catch_1e

    goto :goto_1e

    :catch_1e
    move-exception v4

    :goto_1e
    :try_start_1f
    sget-object v4, Lorg/checkerframework/dataflow/cfg/CFGBuilder$1;->$SwitchMap$com$sun$source$tree$Tree$Kind:[I

    sget-object v5, Lcom/sun/source/tree/Tree$Kind;->AND:Lcom/sun/source/tree/Tree$Kind;

    invoke-virtual {v5}, Lcom/sun/source/tree/Tree$Kind;->ordinal()I

    move-result v5

    const/16 v6, 0x1a

    aput v6, v4, v5
    :try_end_1f
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1f .. :try_end_1f} :catch_1f

    goto :goto_1f

    :catch_1f
    move-exception v4

    :goto_1f
    :try_start_20
    sget-object v4, Lorg/checkerframework/dataflow/cfg/CFGBuilder$1;->$SwitchMap$com$sun$source$tree$Tree$Kind:[I

    sget-object v5, Lcom/sun/source/tree/Tree$Kind;->OR:Lcom/sun/source/tree/Tree$Kind;

    invoke-virtual {v5}, Lcom/sun/source/tree/Tree$Kind;->ordinal()I

    move-result v5

    const/16 v6, 0x1b

    aput v6, v4, v5
    :try_end_20
    .catch Ljava/lang/NoSuchFieldError; {:try_start_20 .. :try_end_20} :catch_20

    goto :goto_20

    :catch_20
    move-exception v4

    :goto_20
    :try_start_21
    sget-object v4, Lorg/checkerframework/dataflow/cfg/CFGBuilder$1;->$SwitchMap$com$sun$source$tree$Tree$Kind:[I

    sget-object v5, Lcom/sun/source/tree/Tree$Kind;->XOR:Lcom/sun/source/tree/Tree$Kind;

    invoke-virtual {v5}, Lcom/sun/source/tree/Tree$Kind;->ordinal()I

    move-result v5

    const/16 v6, 0x1c

    aput v6, v4, v5
    :try_end_21
    .catch Ljava/lang/NoSuchFieldError; {:try_start_21 .. :try_end_21} :catch_21

    goto :goto_21

    :catch_21
    move-exception v4

    :goto_21
    :try_start_22
    sget-object v4, Lorg/checkerframework/dataflow/cfg/CFGBuilder$1;->$SwitchMap$com$sun$source$tree$Tree$Kind:[I

    sget-object v5, Lcom/sun/source/tree/Tree$Kind;->CONDITIONAL_AND:Lcom/sun/source/tree/Tree$Kind;

    invoke-virtual {v5}, Lcom/sun/source/tree/Tree$Kind;->ordinal()I

    move-result v5

    const/16 v6, 0x1d

    aput v6, v4, v5
    :try_end_22
    .catch Ljava/lang/NoSuchFieldError; {:try_start_22 .. :try_end_22} :catch_22

    goto :goto_22

    :catch_22
    move-exception v4

    :goto_22
    :try_start_23
    sget-object v4, Lorg/checkerframework/dataflow/cfg/CFGBuilder$1;->$SwitchMap$com$sun$source$tree$Tree$Kind:[I

    sget-object v5, Lcom/sun/source/tree/Tree$Kind;->CONDITIONAL_OR:Lcom/sun/source/tree/Tree$Kind;

    invoke-virtual {v5}, Lcom/sun/source/tree/Tree$Kind;->ordinal()I

    move-result v5

    const/16 v6, 0x1e

    aput v6, v4, v5
    :try_end_23
    .catch Ljava/lang/NoSuchFieldError; {:try_start_23 .. :try_end_23} :catch_23

    goto :goto_23

    :catch_23
    move-exception v4

    :goto_23
    :try_start_24
    sget-object v4, Lorg/checkerframework/dataflow/cfg/CFGBuilder$1;->$SwitchMap$com$sun$source$tree$Tree$Kind:[I

    sget-object v5, Lcom/sun/source/tree/Tree$Kind;->BOOLEAN_LITERAL:Lcom/sun/source/tree/Tree$Kind;

    invoke-virtual {v5}, Lcom/sun/source/tree/Tree$Kind;->ordinal()I

    move-result v5

    const/16 v6, 0x1f

    aput v6, v4, v5
    :try_end_24
    .catch Ljava/lang/NoSuchFieldError; {:try_start_24 .. :try_end_24} :catch_24

    goto :goto_24

    :catch_24
    move-exception v4

    :goto_24
    :try_start_25
    sget-object v4, Lorg/checkerframework/dataflow/cfg/CFGBuilder$1;->$SwitchMap$com$sun$source$tree$Tree$Kind:[I

    sget-object v5, Lcom/sun/source/tree/Tree$Kind;->CHAR_LITERAL:Lcom/sun/source/tree/Tree$Kind;

    invoke-virtual {v5}, Lcom/sun/source/tree/Tree$Kind;->ordinal()I

    move-result v5

    const/16 v6, 0x20

    aput v6, v4, v5
    :try_end_25
    .catch Ljava/lang/NoSuchFieldError; {:try_start_25 .. :try_end_25} :catch_25

    goto :goto_25

    :catch_25
    move-exception v4

    :goto_25
    :try_start_26
    sget-object v4, Lorg/checkerframework/dataflow/cfg/CFGBuilder$1;->$SwitchMap$com$sun$source$tree$Tree$Kind:[I

    sget-object v5, Lcom/sun/source/tree/Tree$Kind;->DOUBLE_LITERAL:Lcom/sun/source/tree/Tree$Kind;

    invoke-virtual {v5}, Lcom/sun/source/tree/Tree$Kind;->ordinal()I

    move-result v5

    const/16 v6, 0x21

    aput v6, v4, v5
    :try_end_26
    .catch Ljava/lang/NoSuchFieldError; {:try_start_26 .. :try_end_26} :catch_26

    goto :goto_26

    :catch_26
    move-exception v4

    :goto_26
    :try_start_27
    sget-object v4, Lorg/checkerframework/dataflow/cfg/CFGBuilder$1;->$SwitchMap$com$sun$source$tree$Tree$Kind:[I

    sget-object v5, Lcom/sun/source/tree/Tree$Kind;->FLOAT_LITERAL:Lcom/sun/source/tree/Tree$Kind;

    invoke-virtual {v5}, Lcom/sun/source/tree/Tree$Kind;->ordinal()I

    move-result v5

    const/16 v6, 0x22

    aput v6, v4, v5
    :try_end_27
    .catch Ljava/lang/NoSuchFieldError; {:try_start_27 .. :try_end_27} :catch_27

    goto :goto_27

    :catch_27
    move-exception v4

    :goto_27
    :try_start_28
    sget-object v4, Lorg/checkerframework/dataflow/cfg/CFGBuilder$1;->$SwitchMap$com$sun$source$tree$Tree$Kind:[I

    sget-object v5, Lcom/sun/source/tree/Tree$Kind;->INT_LITERAL:Lcom/sun/source/tree/Tree$Kind;

    invoke-virtual {v5}, Lcom/sun/source/tree/Tree$Kind;->ordinal()I

    move-result v5

    const/16 v6, 0x23

    aput v6, v4, v5
    :try_end_28
    .catch Ljava/lang/NoSuchFieldError; {:try_start_28 .. :try_end_28} :catch_28

    goto :goto_28

    :catch_28
    move-exception v4

    :goto_28
    :try_start_29
    sget-object v4, Lorg/checkerframework/dataflow/cfg/CFGBuilder$1;->$SwitchMap$com$sun$source$tree$Tree$Kind:[I

    sget-object v5, Lcom/sun/source/tree/Tree$Kind;->LONG_LITERAL:Lcom/sun/source/tree/Tree$Kind;

    invoke-virtual {v5}, Lcom/sun/source/tree/Tree$Kind;->ordinal()I

    move-result v5

    const/16 v6, 0x24

    aput v6, v4, v5
    :try_end_29
    .catch Ljava/lang/NoSuchFieldError; {:try_start_29 .. :try_end_29} :catch_29

    goto :goto_29

    :catch_29
    move-exception v4

    :goto_29
    :try_start_2a
    sget-object v4, Lorg/checkerframework/dataflow/cfg/CFGBuilder$1;->$SwitchMap$com$sun$source$tree$Tree$Kind:[I

    sget-object v5, Lcom/sun/source/tree/Tree$Kind;->NULL_LITERAL:Lcom/sun/source/tree/Tree$Kind;

    invoke-virtual {v5}, Lcom/sun/source/tree/Tree$Kind;->ordinal()I

    move-result v5

    const/16 v6, 0x25

    aput v6, v4, v5
    :try_end_2a
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2a .. :try_end_2a} :catch_2a

    goto :goto_2a

    :catch_2a
    move-exception v4

    :goto_2a
    :try_start_2b
    sget-object v4, Lorg/checkerframework/dataflow/cfg/CFGBuilder$1;->$SwitchMap$com$sun$source$tree$Tree$Kind:[I

    sget-object v5, Lcom/sun/source/tree/Tree$Kind;->STRING_LITERAL:Lcom/sun/source/tree/Tree$Kind;

    invoke-virtual {v5}, Lcom/sun/source/tree/Tree$Kind;->ordinal()I

    move-result v5

    const/16 v6, 0x26

    aput v6, v4, v5
    :try_end_2b
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2b .. :try_end_2b} :catch_2b

    goto :goto_2b

    :catch_2b
    move-exception v4

    :goto_2b
    :try_start_2c
    sget-object v4, Lorg/checkerframework/dataflow/cfg/CFGBuilder$1;->$SwitchMap$com$sun$source$tree$Tree$Kind:[I

    sget-object v5, Lcom/sun/source/tree/Tree$Kind;->BITWISE_COMPLEMENT:Lcom/sun/source/tree/Tree$Kind;

    invoke-virtual {v5}, Lcom/sun/source/tree/Tree$Kind;->ordinal()I

    move-result v5

    const/16 v6, 0x27

    aput v6, v4, v5
    :try_end_2c
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2c .. :try_end_2c} :catch_2c

    goto :goto_2c

    :catch_2c
    move-exception v4

    :goto_2c
    :try_start_2d
    sget-object v4, Lorg/checkerframework/dataflow/cfg/CFGBuilder$1;->$SwitchMap$com$sun$source$tree$Tree$Kind:[I

    sget-object v5, Lcom/sun/source/tree/Tree$Kind;->UNARY_MINUS:Lcom/sun/source/tree/Tree$Kind;

    invoke-virtual {v5}, Lcom/sun/source/tree/Tree$Kind;->ordinal()I

    move-result v5

    const/16 v6, 0x28

    aput v6, v4, v5
    :try_end_2d
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2d .. :try_end_2d} :catch_2d

    goto :goto_2d

    :catch_2d
    move-exception v4

    :goto_2d
    :try_start_2e
    sget-object v4, Lorg/checkerframework/dataflow/cfg/CFGBuilder$1;->$SwitchMap$com$sun$source$tree$Tree$Kind:[I

    sget-object v5, Lcom/sun/source/tree/Tree$Kind;->UNARY_PLUS:Lcom/sun/source/tree/Tree$Kind;

    invoke-virtual {v5}, Lcom/sun/source/tree/Tree$Kind;->ordinal()I

    move-result v5

    const/16 v6, 0x29

    aput v6, v4, v5
    :try_end_2e
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2e .. :try_end_2e} :catch_2e

    goto :goto_2e

    :catch_2e
    move-exception v4

    :goto_2e
    :try_start_2f
    sget-object v4, Lorg/checkerframework/dataflow/cfg/CFGBuilder$1;->$SwitchMap$com$sun$source$tree$Tree$Kind:[I

    sget-object v5, Lcom/sun/source/tree/Tree$Kind;->LOGICAL_COMPLEMENT:Lcom/sun/source/tree/Tree$Kind;

    invoke-virtual {v5}, Lcom/sun/source/tree/Tree$Kind;->ordinal()I

    move-result v5

    const/16 v6, 0x2a

    aput v6, v4, v5
    :try_end_2f
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2f .. :try_end_2f} :catch_2f

    goto :goto_2f

    :catch_2f
    move-exception v4

    :goto_2f
    :try_start_30
    sget-object v4, Lorg/checkerframework/dataflow/cfg/CFGBuilder$1;->$SwitchMap$com$sun$source$tree$Tree$Kind:[I

    sget-object v5, Lcom/sun/source/tree/Tree$Kind;->POSTFIX_DECREMENT:Lcom/sun/source/tree/Tree$Kind;

    invoke-virtual {v5}, Lcom/sun/source/tree/Tree$Kind;->ordinal()I

    move-result v5

    const/16 v6, 0x2b

    aput v6, v4, v5
    :try_end_30
    .catch Ljava/lang/NoSuchFieldError; {:try_start_30 .. :try_end_30} :catch_30

    goto :goto_30

    :catch_30
    move-exception v4

    :goto_30
    :try_start_31
    sget-object v4, Lorg/checkerframework/dataflow/cfg/CFGBuilder$1;->$SwitchMap$com$sun$source$tree$Tree$Kind:[I

    sget-object v5, Lcom/sun/source/tree/Tree$Kind;->POSTFIX_INCREMENT:Lcom/sun/source/tree/Tree$Kind;

    invoke-virtual {v5}, Lcom/sun/source/tree/Tree$Kind;->ordinal()I

    move-result v5

    const/16 v6, 0x2c

    aput v6, v4, v5
    :try_end_31
    .catch Ljava/lang/NoSuchFieldError; {:try_start_31 .. :try_end_31} :catch_31

    goto :goto_31

    :catch_31
    move-exception v4

    :goto_31
    :try_start_32
    sget-object v4, Lorg/checkerframework/dataflow/cfg/CFGBuilder$1;->$SwitchMap$com$sun$source$tree$Tree$Kind:[I

    sget-object v5, Lcom/sun/source/tree/Tree$Kind;->PREFIX_DECREMENT:Lcom/sun/source/tree/Tree$Kind;

    invoke-virtual {v5}, Lcom/sun/source/tree/Tree$Kind;->ordinal()I

    move-result v5

    const/16 v6, 0x2d

    aput v6, v4, v5
    :try_end_32
    .catch Ljava/lang/NoSuchFieldError; {:try_start_32 .. :try_end_32} :catch_32

    goto :goto_32

    :catch_32
    move-exception v4

    :goto_32
    :try_start_33
    sget-object v4, Lorg/checkerframework/dataflow/cfg/CFGBuilder$1;->$SwitchMap$com$sun$source$tree$Tree$Kind:[I

    sget-object v5, Lcom/sun/source/tree/Tree$Kind;->PREFIX_INCREMENT:Lcom/sun/source/tree/Tree$Kind;

    invoke-virtual {v5}, Lcom/sun/source/tree/Tree$Kind;->ordinal()I

    move-result v5

    const/16 v6, 0x2e

    aput v6, v4, v5
    :try_end_33
    .catch Ljava/lang/NoSuchFieldError; {:try_start_33 .. :try_end_33} :catch_33

    goto :goto_33

    :catch_33
    move-exception v4

    :goto_33
    :try_start_34
    sget-object v4, Lorg/checkerframework/dataflow/cfg/CFGBuilder$1;->$SwitchMap$com$sun$source$tree$Tree$Kind:[I

    sget-object v5, Lcom/sun/source/tree/Tree$Kind;->OTHER:Lcom/sun/source/tree/Tree$Kind;

    invoke-virtual {v5}, Lcom/sun/source/tree/Tree$Kind;->ordinal()I

    move-result v5

    const/16 v6, 0x2f

    aput v6, v4, v5
    :try_end_34
    .catch Ljava/lang/NoSuchFieldError; {:try_start_34 .. :try_end_34} :catch_34

    goto :goto_34

    :catch_34
    move-exception v4

    .line 2018
    :goto_34
    invoke-static {}, Ljavax/lang/model/type/TypeKind;->values()[Ljavax/lang/model/type/TypeKind;

    move-result-object v4

    array-length v4, v4

    new-array v4, v4, [I

    sput-object v4, Lorg/checkerframework/dataflow/cfg/CFGBuilder$1;->$SwitchMap$javax$lang$model$type$TypeKind:[I

    :try_start_35
    sget-object v5, Ljavax/lang/model/type/TypeKind;->BYTE:Ljavax/lang/model/type/TypeKind;

    invoke-virtual {v5}, Ljavax/lang/model/type/TypeKind;->ordinal()I

    move-result v5

    aput v1, v4, v5
    :try_end_35
    .catch Ljava/lang/NoSuchFieldError; {:try_start_35 .. :try_end_35} :catch_35

    goto :goto_35

    :catch_35
    move-exception v4

    :goto_35
    :try_start_36
    sget-object v4, Lorg/checkerframework/dataflow/cfg/CFGBuilder$1;->$SwitchMap$javax$lang$model$type$TypeKind:[I

    sget-object v5, Ljavax/lang/model/type/TypeKind;->CHAR:Ljavax/lang/model/type/TypeKind;

    invoke-virtual {v5}, Ljavax/lang/model/type/TypeKind;->ordinal()I

    move-result v5

    aput v0, v4, v5
    :try_end_36
    .catch Ljava/lang/NoSuchFieldError; {:try_start_36 .. :try_end_36} :catch_36

    goto :goto_36

    :catch_36
    move-exception v4

    :goto_36
    :try_start_37
    sget-object v4, Lorg/checkerframework/dataflow/cfg/CFGBuilder$1;->$SwitchMap$javax$lang$model$type$TypeKind:[I

    sget-object v5, Ljavax/lang/model/type/TypeKind;->SHORT:Ljavax/lang/model/type/TypeKind;

    invoke-virtual {v5}, Ljavax/lang/model/type/TypeKind;->ordinal()I

    move-result v5

    aput v2, v4, v5
    :try_end_37
    .catch Ljava/lang/NoSuchFieldError; {:try_start_37 .. :try_end_37} :catch_37

    goto :goto_37

    :catch_37
    move-exception v4

    .line 1164
    :goto_37
    invoke-static {}, Lorg/checkerframework/dataflow/cfg/CFGBuilder$ExtendedNode$ExtendedNodeType;->values()[Lorg/checkerframework/dataflow/cfg/CFGBuilder$ExtendedNode$ExtendedNodeType;

    move-result-object v4

    array-length v4, v4

    new-array v4, v4, [I

    sput-object v4, Lorg/checkerframework/dataflow/cfg/CFGBuilder$1;->$SwitchMap$org$checkerframework$dataflow$cfg$CFGBuilder$ExtendedNode$ExtendedNodeType:[I

    :try_start_38
    sget-object v5, Lorg/checkerframework/dataflow/cfg/CFGBuilder$ExtendedNode$ExtendedNodeType;->NODE:Lorg/checkerframework/dataflow/cfg/CFGBuilder$ExtendedNode$ExtendedNodeType;

    invoke-virtual {v5}, Lorg/checkerframework/dataflow/cfg/CFGBuilder$ExtendedNode$ExtendedNodeType;->ordinal()I

    move-result v5

    aput v1, v4, v5
    :try_end_38
    .catch Ljava/lang/NoSuchFieldError; {:try_start_38 .. :try_end_38} :catch_38

    goto :goto_38

    :catch_38
    move-exception v4

    :goto_38
    :try_start_39
    sget-object v4, Lorg/checkerframework/dataflow/cfg/CFGBuilder$1;->$SwitchMap$org$checkerframework$dataflow$cfg$CFGBuilder$ExtendedNode$ExtendedNodeType:[I

    sget-object v5, Lorg/checkerframework/dataflow/cfg/CFGBuilder$ExtendedNode$ExtendedNodeType;->CONDITIONAL_JUMP:Lorg/checkerframework/dataflow/cfg/CFGBuilder$ExtendedNode$ExtendedNodeType;

    invoke-virtual {v5}, Lorg/checkerframework/dataflow/cfg/CFGBuilder$ExtendedNode$ExtendedNodeType;->ordinal()I

    move-result v5

    aput v0, v4, v5
    :try_end_39
    .catch Ljava/lang/NoSuchFieldError; {:try_start_39 .. :try_end_39} :catch_39

    goto :goto_39

    :catch_39
    move-exception v4

    :goto_39
    :try_start_3a
    sget-object v4, Lorg/checkerframework/dataflow/cfg/CFGBuilder$1;->$SwitchMap$org$checkerframework$dataflow$cfg$CFGBuilder$ExtendedNode$ExtendedNodeType:[I

    sget-object v5, Lorg/checkerframework/dataflow/cfg/CFGBuilder$ExtendedNode$ExtendedNodeType;->UNCONDITIONAL_JUMP:Lorg/checkerframework/dataflow/cfg/CFGBuilder$ExtendedNode$ExtendedNodeType;

    invoke-virtual {v5}, Lorg/checkerframework/dataflow/cfg/CFGBuilder$ExtendedNode$ExtendedNodeType;->ordinal()I

    move-result v5

    aput v2, v4, v5
    :try_end_3a
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3a .. :try_end_3a} :catch_3a

    goto :goto_3a

    :catch_3a
    move-exception v4

    :goto_3a
    :try_start_3b
    sget-object v4, Lorg/checkerframework/dataflow/cfg/CFGBuilder$1;->$SwitchMap$org$checkerframework$dataflow$cfg$CFGBuilder$ExtendedNode$ExtendedNodeType:[I

    sget-object v5, Lorg/checkerframework/dataflow/cfg/CFGBuilder$ExtendedNode$ExtendedNodeType;->EXCEPTION_NODE:Lorg/checkerframework/dataflow/cfg/CFGBuilder$ExtendedNode$ExtendedNodeType;

    invoke-virtual {v5}, Lorg/checkerframework/dataflow/cfg/CFGBuilder$ExtendedNode$ExtendedNodeType;->ordinal()I

    move-result v5

    aput v3, v4, v5
    :try_end_3b
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3b .. :try_end_3b} :catch_3b

    goto :goto_3b

    :catch_3b
    move-exception v4

    .line 966
    :goto_3b
    invoke-static {}, Lorg/checkerframework/dataflow/cfg/block/Block$BlockType;->values()[Lorg/checkerframework/dataflow/cfg/block/Block$BlockType;

    move-result-object v4

    array-length v4, v4

    new-array v4, v4, [I

    sput-object v4, Lorg/checkerframework/dataflow/cfg/CFGBuilder$1;->$SwitchMap$org$checkerframework$dataflow$cfg$block$Block$BlockType:[I

    :try_start_3c
    sget-object v5, Lorg/checkerframework/dataflow/cfg/block/Block$BlockType;->SPECIAL_BLOCK:Lorg/checkerframework/dataflow/cfg/block/Block$BlockType;

    invoke-virtual {v5}, Lorg/checkerframework/dataflow/cfg/block/Block$BlockType;->ordinal()I

    move-result v5

    aput v1, v4, v5
    :try_end_3c
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3c .. :try_end_3c} :catch_3c

    goto :goto_3c

    :catch_3c
    move-exception v1

    :goto_3c
    :try_start_3d
    sget-object v1, Lorg/checkerframework/dataflow/cfg/CFGBuilder$1;->$SwitchMap$org$checkerframework$dataflow$cfg$block$Block$BlockType:[I

    sget-object v4, Lorg/checkerframework/dataflow/cfg/block/Block$BlockType;->CONDITIONAL_BLOCK:Lorg/checkerframework/dataflow/cfg/block/Block$BlockType;

    invoke-virtual {v4}, Lorg/checkerframework/dataflow/cfg/block/Block$BlockType;->ordinal()I

    move-result v4

    aput v0, v1, v4
    :try_end_3d
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3d .. :try_end_3d} :catch_3d

    goto :goto_3d

    :catch_3d
    move-exception v0

    :goto_3d
    :try_start_3e
    sget-object v0, Lorg/checkerframework/dataflow/cfg/CFGBuilder$1;->$SwitchMap$org$checkerframework$dataflow$cfg$block$Block$BlockType:[I

    sget-object v1, Lorg/checkerframework/dataflow/cfg/block/Block$BlockType;->EXCEPTION_BLOCK:Lorg/checkerframework/dataflow/cfg/block/Block$BlockType;

    invoke-virtual {v1}, Lorg/checkerframework/dataflow/cfg/block/Block$BlockType;->ordinal()I

    move-result v1

    aput v2, v0, v1
    :try_end_3e
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3e .. :try_end_3e} :catch_3e

    goto :goto_3e

    :catch_3e
    move-exception v0

    :goto_3e
    :try_start_3f
    sget-object v0, Lorg/checkerframework/dataflow/cfg/CFGBuilder$1;->$SwitchMap$org$checkerframework$dataflow$cfg$block$Block$BlockType:[I

    sget-object v1, Lorg/checkerframework/dataflow/cfg/block/Block$BlockType;->REGULAR_BLOCK:Lorg/checkerframework/dataflow/cfg/block/Block$BlockType;

    invoke-virtual {v1}, Lorg/checkerframework/dataflow/cfg/block/Block$BlockType;->ordinal()I

    move-result v1

    aput v3, v0, v1
    :try_end_3f
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3f .. :try_end_3f} :catch_3f

    goto :goto_3f

    :catch_3f
    move-exception v0

    :goto_3f
    return-void
.end method
