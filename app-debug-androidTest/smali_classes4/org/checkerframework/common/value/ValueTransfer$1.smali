.class synthetic Lorg/checkerframework/common/value/ValueTransfer$1;
.super Ljava/lang/Object;
.source "ValueTransfer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/checkerframework/common/value/ValueTransfer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$org$checkerframework$common$value$ValueTransfer$ComparisonOperators:[I

.field static final synthetic $SwitchMap$org$checkerframework$common$value$ValueTransfer$ConditionalOperators:[I

.field static final synthetic $SwitchMap$org$checkerframework$common$value$ValueTransfer$NumericalBinaryOps:[I

.field static final synthetic $SwitchMap$org$checkerframework$common$value$ValueTransfer$NumericalUnaryOps:[I


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .line 1517
    invoke-static {}, Lorg/checkerframework/common/value/ValueTransfer$ConditionalOperators;->values()[Lorg/checkerframework/common/value/ValueTransfer$ConditionalOperators;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lorg/checkerframework/common/value/ValueTransfer$1;->$SwitchMap$org$checkerframework$common$value$ValueTransfer$ConditionalOperators:[I

    const/4 v1, 0x1

    :try_start_0
    sget-object v2, Lorg/checkerframework/common/value/ValueTransfer$ConditionalOperators;->NOT:Lorg/checkerframework/common/value/ValueTransfer$ConditionalOperators;

    invoke-virtual {v2}, Lorg/checkerframework/common/value/ValueTransfer$ConditionalOperators;->ordinal()I

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
    sget-object v2, Lorg/checkerframework/common/value/ValueTransfer$1;->$SwitchMap$org$checkerframework$common$value$ValueTransfer$ConditionalOperators:[I

    sget-object v3, Lorg/checkerframework/common/value/ValueTransfer$ConditionalOperators;->OR:Lorg/checkerframework/common/value/ValueTransfer$ConditionalOperators;

    invoke-virtual {v3}, Lorg/checkerframework/common/value/ValueTransfer$ConditionalOperators;->ordinal()I

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
    sget-object v3, Lorg/checkerframework/common/value/ValueTransfer$1;->$SwitchMap$org$checkerframework$common$value$ValueTransfer$ConditionalOperators:[I

    sget-object v4, Lorg/checkerframework/common/value/ValueTransfer$ConditionalOperators;->AND:Lorg/checkerframework/common/value/ValueTransfer$ConditionalOperators;

    invoke-virtual {v4}, Lorg/checkerframework/common/value/ValueTransfer$ConditionalOperators;->ordinal()I

    move-result v4

    aput v2, v3, v4
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_2

    :catch_2
    move-exception v3

    .line 1187
    :goto_2
    invoke-static {}, Lorg/checkerframework/common/value/ValueTransfer$ComparisonOperators;->values()[Lorg/checkerframework/common/value/ValueTransfer$ComparisonOperators;

    move-result-object v3

    array-length v3, v3

    new-array v3, v3, [I

    sput-object v3, Lorg/checkerframework/common/value/ValueTransfer$1;->$SwitchMap$org$checkerframework$common$value$ValueTransfer$ComparisonOperators:[I

    :try_start_3
    sget-object v4, Lorg/checkerframework/common/value/ValueTransfer$ComparisonOperators;->EQUAL:Lorg/checkerframework/common/value/ValueTransfer$ComparisonOperators;

    invoke-virtual {v4}, Lorg/checkerframework/common/value/ValueTransfer$ComparisonOperators;->ordinal()I

    move-result v4

    aput v1, v3, v4
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_3

    goto :goto_3

    :catch_3
    move-exception v3

    :goto_3
    :try_start_4
    sget-object v3, Lorg/checkerframework/common/value/ValueTransfer$1;->$SwitchMap$org$checkerframework$common$value$ValueTransfer$ComparisonOperators:[I

    sget-object v4, Lorg/checkerframework/common/value/ValueTransfer$ComparisonOperators;->GREATER_THAN:Lorg/checkerframework/common/value/ValueTransfer$ComparisonOperators;

    invoke-virtual {v4}, Lorg/checkerframework/common/value/ValueTransfer$ComparisonOperators;->ordinal()I

    move-result v4

    aput v0, v3, v4
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_4

    goto :goto_4

    :catch_4
    move-exception v3

    :goto_4
    :try_start_5
    sget-object v3, Lorg/checkerframework/common/value/ValueTransfer$1;->$SwitchMap$org$checkerframework$common$value$ValueTransfer$ComparisonOperators:[I

    sget-object v4, Lorg/checkerframework/common/value/ValueTransfer$ComparisonOperators;->GREATER_THAN_EQ:Lorg/checkerframework/common/value/ValueTransfer$ComparisonOperators;

    invoke-virtual {v4}, Lorg/checkerframework/common/value/ValueTransfer$ComparisonOperators;->ordinal()I

    move-result v4

    aput v2, v3, v4
    :try_end_5
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5 .. :try_end_5} :catch_5

    goto :goto_5

    :catch_5
    move-exception v3

    :goto_5
    const/4 v3, 0x4

    :try_start_6
    sget-object v4, Lorg/checkerframework/common/value/ValueTransfer$1;->$SwitchMap$org$checkerframework$common$value$ValueTransfer$ComparisonOperators:[I

    sget-object v5, Lorg/checkerframework/common/value/ValueTransfer$ComparisonOperators;->LESS_THAN:Lorg/checkerframework/common/value/ValueTransfer$ComparisonOperators;

    invoke-virtual {v5}, Lorg/checkerframework/common/value/ValueTransfer$ComparisonOperators;->ordinal()I

    move-result v5

    aput v3, v4, v5
    :try_end_6
    .catch Ljava/lang/NoSuchFieldError; {:try_start_6 .. :try_end_6} :catch_6

    goto :goto_6

    :catch_6
    move-exception v4

    :goto_6
    const/4 v4, 0x5

    :try_start_7
    sget-object v5, Lorg/checkerframework/common/value/ValueTransfer$1;->$SwitchMap$org$checkerframework$common$value$ValueTransfer$ComparisonOperators:[I

    sget-object v6, Lorg/checkerframework/common/value/ValueTransfer$ComparisonOperators;->LESS_THAN_EQ:Lorg/checkerframework/common/value/ValueTransfer$ComparisonOperators;

    invoke-virtual {v6}, Lorg/checkerframework/common/value/ValueTransfer$ComparisonOperators;->ordinal()I

    move-result v6

    aput v4, v5, v6
    :try_end_7
    .catch Ljava/lang/NoSuchFieldError; {:try_start_7 .. :try_end_7} :catch_7

    goto :goto_7

    :catch_7
    move-exception v5

    :goto_7
    const/4 v5, 0x6

    :try_start_8
    sget-object v6, Lorg/checkerframework/common/value/ValueTransfer$1;->$SwitchMap$org$checkerframework$common$value$ValueTransfer$ComparisonOperators:[I

    sget-object v7, Lorg/checkerframework/common/value/ValueTransfer$ComparisonOperators;->NOT_EQUAL:Lorg/checkerframework/common/value/ValueTransfer$ComparisonOperators;

    invoke-virtual {v7}, Lorg/checkerframework/common/value/ValueTransfer$ComparisonOperators;->ordinal()I

    move-result v7

    aput v5, v6, v7
    :try_end_8
    .catch Ljava/lang/NoSuchFieldError; {:try_start_8 .. :try_end_8} :catch_8

    goto :goto_8

    :catch_8
    move-exception v6

    .line 1052
    :goto_8
    invoke-static {}, Lorg/checkerframework/common/value/ValueTransfer$NumericalUnaryOps;->values()[Lorg/checkerframework/common/value/ValueTransfer$NumericalUnaryOps;

    move-result-object v6

    array-length v6, v6

    new-array v6, v6, [I

    sput-object v6, Lorg/checkerframework/common/value/ValueTransfer$1;->$SwitchMap$org$checkerframework$common$value$ValueTransfer$NumericalUnaryOps:[I

    :try_start_9
    sget-object v7, Lorg/checkerframework/common/value/ValueTransfer$NumericalUnaryOps;->PLUS:Lorg/checkerframework/common/value/ValueTransfer$NumericalUnaryOps;

    invoke-virtual {v7}, Lorg/checkerframework/common/value/ValueTransfer$NumericalUnaryOps;->ordinal()I

    move-result v7

    aput v1, v6, v7
    :try_end_9
    .catch Ljava/lang/NoSuchFieldError; {:try_start_9 .. :try_end_9} :catch_9

    goto :goto_9

    :catch_9
    move-exception v6

    :goto_9
    :try_start_a
    sget-object v6, Lorg/checkerframework/common/value/ValueTransfer$1;->$SwitchMap$org$checkerframework$common$value$ValueTransfer$NumericalUnaryOps:[I

    sget-object v7, Lorg/checkerframework/common/value/ValueTransfer$NumericalUnaryOps;->MINUS:Lorg/checkerframework/common/value/ValueTransfer$NumericalUnaryOps;

    invoke-virtual {v7}, Lorg/checkerframework/common/value/ValueTransfer$NumericalUnaryOps;->ordinal()I

    move-result v7

    aput v0, v6, v7
    :try_end_a
    .catch Ljava/lang/NoSuchFieldError; {:try_start_a .. :try_end_a} :catch_a

    goto :goto_a

    :catch_a
    move-exception v6

    :goto_a
    :try_start_b
    sget-object v6, Lorg/checkerframework/common/value/ValueTransfer$1;->$SwitchMap$org$checkerframework$common$value$ValueTransfer$NumericalUnaryOps:[I

    sget-object v7, Lorg/checkerframework/common/value/ValueTransfer$NumericalUnaryOps;->BITWISE_COMPLEMENT:Lorg/checkerframework/common/value/ValueTransfer$NumericalUnaryOps;

    invoke-virtual {v7}, Lorg/checkerframework/common/value/ValueTransfer$NumericalUnaryOps;->ordinal()I

    move-result v7

    aput v2, v6, v7
    :try_end_b
    .catch Ljava/lang/NoSuchFieldError; {:try_start_b .. :try_end_b} :catch_b

    goto :goto_b

    :catch_b
    move-exception v6

    .line 770
    :goto_b
    invoke-static {}, Lorg/checkerframework/common/value/ValueTransfer$NumericalBinaryOps;->values()[Lorg/checkerframework/common/value/ValueTransfer$NumericalBinaryOps;

    move-result-object v6

    array-length v6, v6

    new-array v6, v6, [I

    sput-object v6, Lorg/checkerframework/common/value/ValueTransfer$1;->$SwitchMap$org$checkerframework$common$value$ValueTransfer$NumericalBinaryOps:[I

    :try_start_c
    sget-object v7, Lorg/checkerframework/common/value/ValueTransfer$NumericalBinaryOps;->ADDITION:Lorg/checkerframework/common/value/ValueTransfer$NumericalBinaryOps;

    invoke-virtual {v7}, Lorg/checkerframework/common/value/ValueTransfer$NumericalBinaryOps;->ordinal()I

    move-result v7

    aput v1, v6, v7
    :try_end_c
    .catch Ljava/lang/NoSuchFieldError; {:try_start_c .. :try_end_c} :catch_c

    goto :goto_c

    :catch_c
    move-exception v1

    :goto_c
    :try_start_d
    sget-object v1, Lorg/checkerframework/common/value/ValueTransfer$1;->$SwitchMap$org$checkerframework$common$value$ValueTransfer$NumericalBinaryOps:[I

    sget-object v6, Lorg/checkerframework/common/value/ValueTransfer$NumericalBinaryOps;->SUBTRACTION:Lorg/checkerframework/common/value/ValueTransfer$NumericalBinaryOps;

    invoke-virtual {v6}, Lorg/checkerframework/common/value/ValueTransfer$NumericalBinaryOps;->ordinal()I

    move-result v6

    aput v0, v1, v6
    :try_end_d
    .catch Ljava/lang/NoSuchFieldError; {:try_start_d .. :try_end_d} :catch_d

    goto :goto_d

    :catch_d
    move-exception v0

    :goto_d
    :try_start_e
    sget-object v0, Lorg/checkerframework/common/value/ValueTransfer$1;->$SwitchMap$org$checkerframework$common$value$ValueTransfer$NumericalBinaryOps:[I

    sget-object v1, Lorg/checkerframework/common/value/ValueTransfer$NumericalBinaryOps;->MULTIPLICATION:Lorg/checkerframework/common/value/ValueTransfer$NumericalBinaryOps;

    invoke-virtual {v1}, Lorg/checkerframework/common/value/ValueTransfer$NumericalBinaryOps;->ordinal()I

    move-result v1

    aput v2, v0, v1
    :try_end_e
    .catch Ljava/lang/NoSuchFieldError; {:try_start_e .. :try_end_e} :catch_e

    goto :goto_e

    :catch_e
    move-exception v0

    :goto_e
    :try_start_f
    sget-object v0, Lorg/checkerframework/common/value/ValueTransfer$1;->$SwitchMap$org$checkerframework$common$value$ValueTransfer$NumericalBinaryOps:[I

    sget-object v1, Lorg/checkerframework/common/value/ValueTransfer$NumericalBinaryOps;->DIVISION:Lorg/checkerframework/common/value/ValueTransfer$NumericalBinaryOps;

    invoke-virtual {v1}, Lorg/checkerframework/common/value/ValueTransfer$NumericalBinaryOps;->ordinal()I

    move-result v1

    aput v3, v0, v1
    :try_end_f
    .catch Ljava/lang/NoSuchFieldError; {:try_start_f .. :try_end_f} :catch_f

    goto :goto_f

    :catch_f
    move-exception v0

    :goto_f
    :try_start_10
    sget-object v0, Lorg/checkerframework/common/value/ValueTransfer$1;->$SwitchMap$org$checkerframework$common$value$ValueTransfer$NumericalBinaryOps:[I

    sget-object v1, Lorg/checkerframework/common/value/ValueTransfer$NumericalBinaryOps;->REMAINDER:Lorg/checkerframework/common/value/ValueTransfer$NumericalBinaryOps;

    invoke-virtual {v1}, Lorg/checkerframework/common/value/ValueTransfer$NumericalBinaryOps;->ordinal()I

    move-result v1

    aput v4, v0, v1
    :try_end_10
    .catch Ljava/lang/NoSuchFieldError; {:try_start_10 .. :try_end_10} :catch_10

    goto :goto_10

    :catch_10
    move-exception v0

    :goto_10
    :try_start_11
    sget-object v0, Lorg/checkerframework/common/value/ValueTransfer$1;->$SwitchMap$org$checkerframework$common$value$ValueTransfer$NumericalBinaryOps:[I

    sget-object v1, Lorg/checkerframework/common/value/ValueTransfer$NumericalBinaryOps;->SHIFT_LEFT:Lorg/checkerframework/common/value/ValueTransfer$NumericalBinaryOps;

    invoke-virtual {v1}, Lorg/checkerframework/common/value/ValueTransfer$NumericalBinaryOps;->ordinal()I

    move-result v1

    aput v5, v0, v1
    :try_end_11
    .catch Ljava/lang/NoSuchFieldError; {:try_start_11 .. :try_end_11} :catch_11

    goto :goto_11

    :catch_11
    move-exception v0

    :goto_11
    :try_start_12
    sget-object v0, Lorg/checkerframework/common/value/ValueTransfer$1;->$SwitchMap$org$checkerframework$common$value$ValueTransfer$NumericalBinaryOps:[I

    sget-object v1, Lorg/checkerframework/common/value/ValueTransfer$NumericalBinaryOps;->SIGNED_SHIFT_RIGHT:Lorg/checkerframework/common/value/ValueTransfer$NumericalBinaryOps;

    invoke-virtual {v1}, Lorg/checkerframework/common/value/ValueTransfer$NumericalBinaryOps;->ordinal()I

    move-result v1

    const/4 v2, 0x7

    aput v2, v0, v1
    :try_end_12
    .catch Ljava/lang/NoSuchFieldError; {:try_start_12 .. :try_end_12} :catch_12

    goto :goto_12

    :catch_12
    move-exception v0

    :goto_12
    :try_start_13
    sget-object v0, Lorg/checkerframework/common/value/ValueTransfer$1;->$SwitchMap$org$checkerframework$common$value$ValueTransfer$NumericalBinaryOps:[I

    sget-object v1, Lorg/checkerframework/common/value/ValueTransfer$NumericalBinaryOps;->UNSIGNED_SHIFT_RIGHT:Lorg/checkerframework/common/value/ValueTransfer$NumericalBinaryOps;

    invoke-virtual {v1}, Lorg/checkerframework/common/value/ValueTransfer$NumericalBinaryOps;->ordinal()I

    move-result v1

    const/16 v2, 0x8

    aput v2, v0, v1
    :try_end_13
    .catch Ljava/lang/NoSuchFieldError; {:try_start_13 .. :try_end_13} :catch_13

    goto :goto_13

    :catch_13
    move-exception v0

    :goto_13
    :try_start_14
    sget-object v0, Lorg/checkerframework/common/value/ValueTransfer$1;->$SwitchMap$org$checkerframework$common$value$ValueTransfer$NumericalBinaryOps:[I

    sget-object v1, Lorg/checkerframework/common/value/ValueTransfer$NumericalBinaryOps;->BITWISE_AND:Lorg/checkerframework/common/value/ValueTransfer$NumericalBinaryOps;

    invoke-virtual {v1}, Lorg/checkerframework/common/value/ValueTransfer$NumericalBinaryOps;->ordinal()I

    move-result v1

    const/16 v2, 0x9

    aput v2, v0, v1
    :try_end_14
    .catch Ljava/lang/NoSuchFieldError; {:try_start_14 .. :try_end_14} :catch_14

    goto :goto_14

    :catch_14
    move-exception v0

    :goto_14
    :try_start_15
    sget-object v0, Lorg/checkerframework/common/value/ValueTransfer$1;->$SwitchMap$org$checkerframework$common$value$ValueTransfer$NumericalBinaryOps:[I

    sget-object v1, Lorg/checkerframework/common/value/ValueTransfer$NumericalBinaryOps;->BITWISE_OR:Lorg/checkerframework/common/value/ValueTransfer$NumericalBinaryOps;

    invoke-virtual {v1}, Lorg/checkerframework/common/value/ValueTransfer$NumericalBinaryOps;->ordinal()I

    move-result v1

    const/16 v2, 0xa

    aput v2, v0, v1
    :try_end_15
    .catch Ljava/lang/NoSuchFieldError; {:try_start_15 .. :try_end_15} :catch_15

    goto :goto_15

    :catch_15
    move-exception v0

    :goto_15
    :try_start_16
    sget-object v0, Lorg/checkerframework/common/value/ValueTransfer$1;->$SwitchMap$org$checkerframework$common$value$ValueTransfer$NumericalBinaryOps:[I

    sget-object v1, Lorg/checkerframework/common/value/ValueTransfer$NumericalBinaryOps;->BITWISE_XOR:Lorg/checkerframework/common/value/ValueTransfer$NumericalBinaryOps;

    invoke-virtual {v1}, Lorg/checkerframework/common/value/ValueTransfer$NumericalBinaryOps;->ordinal()I

    move-result v1

    const/16 v2, 0xb

    aput v2, v0, v1
    :try_end_16
    .catch Ljava/lang/NoSuchFieldError; {:try_start_16 .. :try_end_16} :catch_16

    goto :goto_16

    :catch_16
    move-exception v0

    :goto_16
    return-void
.end method
