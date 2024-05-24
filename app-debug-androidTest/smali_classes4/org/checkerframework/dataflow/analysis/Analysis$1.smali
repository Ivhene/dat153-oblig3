.class synthetic Lorg/checkerframework/dataflow/analysis/Analysis$1;
.super Ljava/lang/Object;
.source "Analysis.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/checkerframework/dataflow/analysis/Analysis;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$org$checkerframework$dataflow$analysis$Store$FlowRule:[I

.field static final synthetic $SwitchMap$org$checkerframework$dataflow$analysis$Store$Kind:[I

.field static final synthetic $SwitchMap$org$checkerframework$dataflow$cfg$block$Block$BlockType:[I


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 646
    invoke-static {}, Lorg/checkerframework/dataflow/analysis/Store$Kind;->values()[Lorg/checkerframework/dataflow/analysis/Store$Kind;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lorg/checkerframework/dataflow/analysis/Analysis$1;->$SwitchMap$org$checkerframework$dataflow$analysis$Store$Kind:[I

    const/4 v1, 0x1

    :try_start_0
    sget-object v2, Lorg/checkerframework/dataflow/analysis/Store$Kind;->THEN:Lorg/checkerframework/dataflow/analysis/Store$Kind;

    invoke-virtual {v2}, Lorg/checkerframework/dataflow/analysis/Store$Kind;->ordinal()I

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
    sget-object v2, Lorg/checkerframework/dataflow/analysis/Analysis$1;->$SwitchMap$org$checkerframework$dataflow$analysis$Store$Kind:[I

    sget-object v3, Lorg/checkerframework/dataflow/analysis/Store$Kind;->ELSE:Lorg/checkerframework/dataflow/analysis/Store$Kind;

    invoke-virtual {v3}, Lorg/checkerframework/dataflow/analysis/Store$Kind;->ordinal()I

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
    sget-object v3, Lorg/checkerframework/dataflow/analysis/Analysis$1;->$SwitchMap$org$checkerframework$dataflow$analysis$Store$Kind:[I

    sget-object v4, Lorg/checkerframework/dataflow/analysis/Store$Kind;->BOTH:Lorg/checkerframework/dataflow/analysis/Store$Kind;

    invoke-virtual {v4}, Lorg/checkerframework/dataflow/analysis/Store$Kind;->ordinal()I

    move-result v4

    aput v2, v3, v4
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_2

    :catch_2
    move-exception v3

    .line 451
    :goto_2
    invoke-static {}, Lorg/checkerframework/dataflow/analysis/Store$FlowRule;->values()[Lorg/checkerframework/dataflow/analysis/Store$FlowRule;

    move-result-object v3

    array-length v3, v3

    new-array v3, v3, [I

    sput-object v3, Lorg/checkerframework/dataflow/analysis/Analysis$1;->$SwitchMap$org$checkerframework$dataflow$analysis$Store$FlowRule:[I

    :try_start_3
    sget-object v4, Lorg/checkerframework/dataflow/analysis/Store$FlowRule;->EACH_TO_EACH:Lorg/checkerframework/dataflow/analysis/Store$FlowRule;

    invoke-virtual {v4}, Lorg/checkerframework/dataflow/analysis/Store$FlowRule;->ordinal()I

    move-result v4

    aput v1, v3, v4
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_3

    goto :goto_3

    :catch_3
    move-exception v3

    :goto_3
    :try_start_4
    sget-object v3, Lorg/checkerframework/dataflow/analysis/Analysis$1;->$SwitchMap$org$checkerframework$dataflow$analysis$Store$FlowRule:[I

    sget-object v4, Lorg/checkerframework/dataflow/analysis/Store$FlowRule;->THEN_TO_BOTH:Lorg/checkerframework/dataflow/analysis/Store$FlowRule;

    invoke-virtual {v4}, Lorg/checkerframework/dataflow/analysis/Store$FlowRule;->ordinal()I

    move-result v4

    aput v0, v3, v4
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_4

    goto :goto_4

    :catch_4
    move-exception v3

    :goto_4
    :try_start_5
    sget-object v3, Lorg/checkerframework/dataflow/analysis/Analysis$1;->$SwitchMap$org$checkerframework$dataflow$analysis$Store$FlowRule:[I

    sget-object v4, Lorg/checkerframework/dataflow/analysis/Store$FlowRule;->ELSE_TO_BOTH:Lorg/checkerframework/dataflow/analysis/Store$FlowRule;

    invoke-virtual {v4}, Lorg/checkerframework/dataflow/analysis/Store$FlowRule;->ordinal()I

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
    sget-object v4, Lorg/checkerframework/dataflow/analysis/Analysis$1;->$SwitchMap$org$checkerframework$dataflow$analysis$Store$FlowRule:[I

    sget-object v5, Lorg/checkerframework/dataflow/analysis/Store$FlowRule;->THEN_TO_THEN:Lorg/checkerframework/dataflow/analysis/Store$FlowRule;

    invoke-virtual {v5}, Lorg/checkerframework/dataflow/analysis/Store$FlowRule;->ordinal()I

    move-result v5

    aput v3, v4, v5
    :try_end_6
    .catch Ljava/lang/NoSuchFieldError; {:try_start_6 .. :try_end_6} :catch_6

    goto :goto_6

    :catch_6
    move-exception v4

    :goto_6
    :try_start_7
    sget-object v4, Lorg/checkerframework/dataflow/analysis/Analysis$1;->$SwitchMap$org$checkerframework$dataflow$analysis$Store$FlowRule:[I

    sget-object v5, Lorg/checkerframework/dataflow/analysis/Store$FlowRule;->ELSE_TO_ELSE:Lorg/checkerframework/dataflow/analysis/Store$FlowRule;

    invoke-virtual {v5}, Lorg/checkerframework/dataflow/analysis/Store$FlowRule;->ordinal()I

    move-result v5

    const/4 v6, 0x5

    aput v6, v4, v5
    :try_end_7
    .catch Ljava/lang/NoSuchFieldError; {:try_start_7 .. :try_end_7} :catch_7

    goto :goto_7

    :catch_7
    move-exception v4

    .line 323
    :goto_7
    invoke-static {}, Lorg/checkerframework/dataflow/cfg/block/Block$BlockType;->values()[Lorg/checkerframework/dataflow/cfg/block/Block$BlockType;

    move-result-object v4

    array-length v4, v4

    new-array v4, v4, [I

    sput-object v4, Lorg/checkerframework/dataflow/analysis/Analysis$1;->$SwitchMap$org$checkerframework$dataflow$cfg$block$Block$BlockType:[I

    :try_start_8
    sget-object v5, Lorg/checkerframework/dataflow/cfg/block/Block$BlockType;->REGULAR_BLOCK:Lorg/checkerframework/dataflow/cfg/block/Block$BlockType;

    invoke-virtual {v5}, Lorg/checkerframework/dataflow/cfg/block/Block$BlockType;->ordinal()I

    move-result v5

    aput v1, v4, v5
    :try_end_8
    .catch Ljava/lang/NoSuchFieldError; {:try_start_8 .. :try_end_8} :catch_8

    goto :goto_8

    :catch_8
    move-exception v1

    :goto_8
    :try_start_9
    sget-object v1, Lorg/checkerframework/dataflow/analysis/Analysis$1;->$SwitchMap$org$checkerframework$dataflow$cfg$block$Block$BlockType:[I

    sget-object v4, Lorg/checkerframework/dataflow/cfg/block/Block$BlockType;->EXCEPTION_BLOCK:Lorg/checkerframework/dataflow/cfg/block/Block$BlockType;

    invoke-virtual {v4}, Lorg/checkerframework/dataflow/cfg/block/Block$BlockType;->ordinal()I

    move-result v4

    aput v0, v1, v4
    :try_end_9
    .catch Ljava/lang/NoSuchFieldError; {:try_start_9 .. :try_end_9} :catch_9

    goto :goto_9

    :catch_9
    move-exception v0

    :goto_9
    :try_start_a
    sget-object v0, Lorg/checkerframework/dataflow/analysis/Analysis$1;->$SwitchMap$org$checkerframework$dataflow$cfg$block$Block$BlockType:[I

    sget-object v1, Lorg/checkerframework/dataflow/cfg/block/Block$BlockType;->CONDITIONAL_BLOCK:Lorg/checkerframework/dataflow/cfg/block/Block$BlockType;

    invoke-virtual {v1}, Lorg/checkerframework/dataflow/cfg/block/Block$BlockType;->ordinal()I

    move-result v1

    aput v2, v0, v1
    :try_end_a
    .catch Ljava/lang/NoSuchFieldError; {:try_start_a .. :try_end_a} :catch_a

    goto :goto_a

    :catch_a
    move-exception v0

    :goto_a
    :try_start_b
    sget-object v0, Lorg/checkerframework/dataflow/analysis/Analysis$1;->$SwitchMap$org$checkerframework$dataflow$cfg$block$Block$BlockType:[I

    sget-object v1, Lorg/checkerframework/dataflow/cfg/block/Block$BlockType;->SPECIAL_BLOCK:Lorg/checkerframework/dataflow/cfg/block/Block$BlockType;

    invoke-virtual {v1}, Lorg/checkerframework/dataflow/cfg/block/Block$BlockType;->ordinal()I

    move-result v1

    aput v3, v0, v1
    :try_end_b
    .catch Ljava/lang/NoSuchFieldError; {:try_start_b .. :try_end_b} :catch_b

    goto :goto_b

    :catch_b
    move-exception v0

    :goto_b
    return-void
.end method
