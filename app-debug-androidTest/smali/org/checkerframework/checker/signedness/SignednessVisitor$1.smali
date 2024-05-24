.class synthetic Lorg/checkerframework/checker/signedness/SignednessVisitor$1;
.super Ljava/lang/Object;
.source "SignednessVisitor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/checkerframework/checker/signedness/SignednessVisitor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$com$sun$source$tree$Tree$Kind:[I

.field static final synthetic $SwitchMap$javax$lang$model$type$TypeKind:[I


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .line 325
    invoke-static {}, Lcom/sun/source/tree/Tree$Kind;->values()[Lcom/sun/source/tree/Tree$Kind;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lorg/checkerframework/checker/signedness/SignednessVisitor$1;->$SwitchMap$com$sun$source$tree$Tree$Kind:[I

    const/4 v1, 0x1

    :try_start_0
    sget-object v2, Lcom/sun/source/tree/Tree$Kind;->DIVIDE:Lcom/sun/source/tree/Tree$Kind;

    invoke-virtual {v2}, Lcom/sun/source/tree/Tree$Kind;->ordinal()I

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
    sget-object v2, Lorg/checkerframework/checker/signedness/SignednessVisitor$1;->$SwitchMap$com$sun$source$tree$Tree$Kind:[I

    sget-object v3, Lcom/sun/source/tree/Tree$Kind;->REMAINDER:Lcom/sun/source/tree/Tree$Kind;

    invoke-virtual {v3}, Lcom/sun/source/tree/Tree$Kind;->ordinal()I

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
    sget-object v3, Lorg/checkerframework/checker/signedness/SignednessVisitor$1;->$SwitchMap$com$sun$source$tree$Tree$Kind:[I

    sget-object v4, Lcom/sun/source/tree/Tree$Kind;->RIGHT_SHIFT:Lcom/sun/source/tree/Tree$Kind;

    invoke-virtual {v4}, Lcom/sun/source/tree/Tree$Kind;->ordinal()I

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
    sget-object v4, Lorg/checkerframework/checker/signedness/SignednessVisitor$1;->$SwitchMap$com$sun$source$tree$Tree$Kind:[I

    sget-object v5, Lcom/sun/source/tree/Tree$Kind;->UNSIGNED_RIGHT_SHIFT:Lcom/sun/source/tree/Tree$Kind;

    invoke-virtual {v5}, Lcom/sun/source/tree/Tree$Kind;->ordinal()I

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
    sget-object v5, Lorg/checkerframework/checker/signedness/SignednessVisitor$1;->$SwitchMap$com$sun$source$tree$Tree$Kind:[I

    sget-object v6, Lcom/sun/source/tree/Tree$Kind;->LEFT_SHIFT:Lcom/sun/source/tree/Tree$Kind;

    invoke-virtual {v6}, Lcom/sun/source/tree/Tree$Kind;->ordinal()I

    move-result v6

    aput v4, v5, v6
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_4

    goto :goto_4

    :catch_4
    move-exception v5

    :goto_4
    :try_start_5
    sget-object v5, Lorg/checkerframework/checker/signedness/SignednessVisitor$1;->$SwitchMap$com$sun$source$tree$Tree$Kind:[I

    sget-object v6, Lcom/sun/source/tree/Tree$Kind;->GREATER_THAN:Lcom/sun/source/tree/Tree$Kind;

    invoke-virtual {v6}, Lcom/sun/source/tree/Tree$Kind;->ordinal()I

    move-result v6

    const/4 v7, 0x6

    aput v7, v5, v6
    :try_end_5
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5 .. :try_end_5} :catch_5

    goto :goto_5

    :catch_5
    move-exception v5

    :goto_5
    :try_start_6
    sget-object v5, Lorg/checkerframework/checker/signedness/SignednessVisitor$1;->$SwitchMap$com$sun$source$tree$Tree$Kind:[I

    sget-object v6, Lcom/sun/source/tree/Tree$Kind;->GREATER_THAN_EQUAL:Lcom/sun/source/tree/Tree$Kind;

    invoke-virtual {v6}, Lcom/sun/source/tree/Tree$Kind;->ordinal()I

    move-result v6

    const/4 v7, 0x7

    aput v7, v5, v6
    :try_end_6
    .catch Ljava/lang/NoSuchFieldError; {:try_start_6 .. :try_end_6} :catch_6

    goto :goto_6

    :catch_6
    move-exception v5

    :goto_6
    :try_start_7
    sget-object v5, Lorg/checkerframework/checker/signedness/SignednessVisitor$1;->$SwitchMap$com$sun$source$tree$Tree$Kind:[I

    sget-object v6, Lcom/sun/source/tree/Tree$Kind;->LESS_THAN:Lcom/sun/source/tree/Tree$Kind;

    invoke-virtual {v6}, Lcom/sun/source/tree/Tree$Kind;->ordinal()I

    move-result v6

    const/16 v7, 0x8

    aput v7, v5, v6
    :try_end_7
    .catch Ljava/lang/NoSuchFieldError; {:try_start_7 .. :try_end_7} :catch_7

    goto :goto_7

    :catch_7
    move-exception v5

    :goto_7
    :try_start_8
    sget-object v5, Lorg/checkerframework/checker/signedness/SignednessVisitor$1;->$SwitchMap$com$sun$source$tree$Tree$Kind:[I

    sget-object v6, Lcom/sun/source/tree/Tree$Kind;->LESS_THAN_EQUAL:Lcom/sun/source/tree/Tree$Kind;

    invoke-virtual {v6}, Lcom/sun/source/tree/Tree$Kind;->ordinal()I

    move-result v6

    const/16 v7, 0x9

    aput v7, v5, v6
    :try_end_8
    .catch Ljava/lang/NoSuchFieldError; {:try_start_8 .. :try_end_8} :catch_8

    goto :goto_8

    :catch_8
    move-exception v5

    :goto_8
    :try_start_9
    sget-object v5, Lorg/checkerframework/checker/signedness/SignednessVisitor$1;->$SwitchMap$com$sun$source$tree$Tree$Kind:[I

    sget-object v6, Lcom/sun/source/tree/Tree$Kind;->EQUAL_TO:Lcom/sun/source/tree/Tree$Kind;

    invoke-virtual {v6}, Lcom/sun/source/tree/Tree$Kind;->ordinal()I

    move-result v6

    const/16 v7, 0xa

    aput v7, v5, v6
    :try_end_9
    .catch Ljava/lang/NoSuchFieldError; {:try_start_9 .. :try_end_9} :catch_9

    goto :goto_9

    :catch_9
    move-exception v5

    :goto_9
    :try_start_a
    sget-object v5, Lorg/checkerframework/checker/signedness/SignednessVisitor$1;->$SwitchMap$com$sun$source$tree$Tree$Kind:[I

    sget-object v6, Lcom/sun/source/tree/Tree$Kind;->NOT_EQUAL_TO:Lcom/sun/source/tree/Tree$Kind;

    invoke-virtual {v6}, Lcom/sun/source/tree/Tree$Kind;->ordinal()I

    move-result v6

    const/16 v7, 0xb

    aput v7, v5, v6
    :try_end_a
    .catch Ljava/lang/NoSuchFieldError; {:try_start_a .. :try_end_a} :catch_a

    goto :goto_a

    :catch_a
    move-exception v5

    :goto_a
    :try_start_b
    sget-object v5, Lorg/checkerframework/checker/signedness/SignednessVisitor$1;->$SwitchMap$com$sun$source$tree$Tree$Kind:[I

    sget-object v6, Lcom/sun/source/tree/Tree$Kind;->DIVIDE_ASSIGNMENT:Lcom/sun/source/tree/Tree$Kind;

    invoke-virtual {v6}, Lcom/sun/source/tree/Tree$Kind;->ordinal()I

    move-result v6

    const/16 v7, 0xc

    aput v7, v5, v6
    :try_end_b
    .catch Ljava/lang/NoSuchFieldError; {:try_start_b .. :try_end_b} :catch_b

    goto :goto_b

    :catch_b
    move-exception v5

    :goto_b
    :try_start_c
    sget-object v5, Lorg/checkerframework/checker/signedness/SignednessVisitor$1;->$SwitchMap$com$sun$source$tree$Tree$Kind:[I

    sget-object v6, Lcom/sun/source/tree/Tree$Kind;->REMAINDER_ASSIGNMENT:Lcom/sun/source/tree/Tree$Kind;

    invoke-virtual {v6}, Lcom/sun/source/tree/Tree$Kind;->ordinal()I

    move-result v6

    const/16 v7, 0xd

    aput v7, v5, v6
    :try_end_c
    .catch Ljava/lang/NoSuchFieldError; {:try_start_c .. :try_end_c} :catch_c

    goto :goto_c

    :catch_c
    move-exception v5

    :goto_c
    :try_start_d
    sget-object v5, Lorg/checkerframework/checker/signedness/SignednessVisitor$1;->$SwitchMap$com$sun$source$tree$Tree$Kind:[I

    sget-object v6, Lcom/sun/source/tree/Tree$Kind;->RIGHT_SHIFT_ASSIGNMENT:Lcom/sun/source/tree/Tree$Kind;

    invoke-virtual {v6}, Lcom/sun/source/tree/Tree$Kind;->ordinal()I

    move-result v6

    const/16 v7, 0xe

    aput v7, v5, v6
    :try_end_d
    .catch Ljava/lang/NoSuchFieldError; {:try_start_d .. :try_end_d} :catch_d

    goto :goto_d

    :catch_d
    move-exception v5

    :goto_d
    :try_start_e
    sget-object v5, Lorg/checkerframework/checker/signedness/SignednessVisitor$1;->$SwitchMap$com$sun$source$tree$Tree$Kind:[I

    sget-object v6, Lcom/sun/source/tree/Tree$Kind;->UNSIGNED_RIGHT_SHIFT_ASSIGNMENT:Lcom/sun/source/tree/Tree$Kind;

    invoke-virtual {v6}, Lcom/sun/source/tree/Tree$Kind;->ordinal()I

    move-result v6

    const/16 v7, 0xf

    aput v7, v5, v6
    :try_end_e
    .catch Ljava/lang/NoSuchFieldError; {:try_start_e .. :try_end_e} :catch_e

    goto :goto_e

    :catch_e
    move-exception v5

    :goto_e
    :try_start_f
    sget-object v5, Lorg/checkerframework/checker/signedness/SignednessVisitor$1;->$SwitchMap$com$sun$source$tree$Tree$Kind:[I

    sget-object v6, Lcom/sun/source/tree/Tree$Kind;->LEFT_SHIFT_ASSIGNMENT:Lcom/sun/source/tree/Tree$Kind;

    invoke-virtual {v6}, Lcom/sun/source/tree/Tree$Kind;->ordinal()I

    move-result v6

    const/16 v7, 0x10

    aput v7, v5, v6
    :try_end_f
    .catch Ljava/lang/NoSuchFieldError; {:try_start_f .. :try_end_f} :catch_f

    goto :goto_f

    :catch_f
    move-exception v5

    .line 154
    :goto_f
    invoke-static {}, Ljavax/lang/model/type/TypeKind;->values()[Ljavax/lang/model/type/TypeKind;

    move-result-object v5

    array-length v5, v5

    new-array v5, v5, [I

    sput-object v5, Lorg/checkerframework/checker/signedness/SignednessVisitor$1;->$SwitchMap$javax$lang$model$type$TypeKind:[I

    :try_start_10
    sget-object v6, Ljavax/lang/model/type/TypeKind;->INT:Ljavax/lang/model/type/TypeKind;

    invoke-virtual {v6}, Ljavax/lang/model/type/TypeKind;->ordinal()I

    move-result v6

    aput v1, v5, v6
    :try_end_10
    .catch Ljava/lang/NoSuchFieldError; {:try_start_10 .. :try_end_10} :catch_10

    goto :goto_10

    :catch_10
    move-exception v1

    :goto_10
    :try_start_11
    sget-object v1, Lorg/checkerframework/checker/signedness/SignednessVisitor$1;->$SwitchMap$javax$lang$model$type$TypeKind:[I

    sget-object v5, Ljavax/lang/model/type/TypeKind;->LONG:Ljavax/lang/model/type/TypeKind;

    invoke-virtual {v5}, Ljavax/lang/model/type/TypeKind;->ordinal()I

    move-result v5

    aput v0, v1, v5
    :try_end_11
    .catch Ljava/lang/NoSuchFieldError; {:try_start_11 .. :try_end_11} :catch_11

    goto :goto_11

    :catch_11
    move-exception v0

    :goto_11
    :try_start_12
    sget-object v0, Lorg/checkerframework/checker/signedness/SignednessVisitor$1;->$SwitchMap$javax$lang$model$type$TypeKind:[I

    sget-object v1, Ljavax/lang/model/type/TypeKind;->BYTE:Ljavax/lang/model/type/TypeKind;

    invoke-virtual {v1}, Ljavax/lang/model/type/TypeKind;->ordinal()I

    move-result v1

    aput v2, v0, v1
    :try_end_12
    .catch Ljava/lang/NoSuchFieldError; {:try_start_12 .. :try_end_12} :catch_12

    goto :goto_12

    :catch_12
    move-exception v0

    :goto_12
    :try_start_13
    sget-object v0, Lorg/checkerframework/checker/signedness/SignednessVisitor$1;->$SwitchMap$javax$lang$model$type$TypeKind:[I

    sget-object v1, Ljavax/lang/model/type/TypeKind;->CHAR:Ljavax/lang/model/type/TypeKind;

    invoke-virtual {v1}, Ljavax/lang/model/type/TypeKind;->ordinal()I

    move-result v1

    aput v3, v0, v1
    :try_end_13
    .catch Ljava/lang/NoSuchFieldError; {:try_start_13 .. :try_end_13} :catch_13

    goto :goto_13

    :catch_13
    move-exception v0

    :goto_13
    :try_start_14
    sget-object v0, Lorg/checkerframework/checker/signedness/SignednessVisitor$1;->$SwitchMap$javax$lang$model$type$TypeKind:[I

    sget-object v1, Ljavax/lang/model/type/TypeKind;->SHORT:Ljavax/lang/model/type/TypeKind;

    invoke-virtual {v1}, Ljavax/lang/model/type/TypeKind;->ordinal()I

    move-result v1

    aput v4, v0, v1
    :try_end_14
    .catch Ljava/lang/NoSuchFieldError; {:try_start_14 .. :try_end_14} :catch_14

    goto :goto_14

    :catch_14
    move-exception v0

    :goto_14
    return-void
.end method
