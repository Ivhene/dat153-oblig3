.class synthetic Lscenelib/annotations/io/JavapParser$1;
.super Ljava/lang/Object;
.source "JavapParser.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lscenelib/annotations/io/JavapParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$com$sun$tools$javac$code$TargetType:[I

.field static final synthetic $SwitchMap$scenelib$annotations$io$JavapParser$TargetMode:[I


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 178
    invoke-static {}, Lscenelib/annotations/io/JavapParser$TargetMode;->values()[Lscenelib/annotations/io/JavapParser$TargetMode;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lscenelib/annotations/io/JavapParser$1;->$SwitchMap$scenelib$annotations$io$JavapParser$TargetMode:[I

    const/4 v1, 0x1

    :try_start_0
    sget-object v2, Lscenelib/annotations/io/JavapParser$TargetMode;->ORIGINAL:Lscenelib/annotations/io/JavapParser$TargetMode;

    invoke-virtual {v2}, Lscenelib/annotations/io/JavapParser$TargetMode;->ordinal()I

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
    sget-object v2, Lscenelib/annotations/io/JavapParser$1;->$SwitchMap$scenelib$annotations$io$JavapParser$TargetMode:[I

    sget-object v3, Lscenelib/annotations/io/JavapParser$TargetMode;->PARAMETER:Lscenelib/annotations/io/JavapParser$TargetMode;

    invoke-virtual {v3}, Lscenelib/annotations/io/JavapParser$TargetMode;->ordinal()I

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
    sget-object v3, Lscenelib/annotations/io/JavapParser$1;->$SwitchMap$scenelib$annotations$io$JavapParser$TargetMode:[I

    sget-object v4, Lscenelib/annotations/io/JavapParser$TargetMode;->EXTENDED:Lscenelib/annotations/io/JavapParser$TargetMode;

    invoke-virtual {v4}, Lscenelib/annotations/io/JavapParser$TargetMode;->ordinal()I

    move-result v4

    aput v2, v3, v4
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_2

    :catch_2
    move-exception v3

    .line 205
    :goto_2
    invoke-static {}, Lcom/sun/tools/javac/code/TargetType;->values()[Lcom/sun/tools/javac/code/TargetType;

    move-result-object v3

    array-length v3, v3

    new-array v3, v3, [I

    sput-object v3, Lscenelib/annotations/io/JavapParser$1;->$SwitchMap$com$sun$tools$javac$code$TargetType:[I

    :try_start_3
    sget-object v4, Lcom/sun/tools/javac/code/TargetType;->FIELD:Lcom/sun/tools/javac/code/TargetType;

    invoke-virtual {v4}, Lcom/sun/tools/javac/code/TargetType;->ordinal()I

    move-result v4

    aput v1, v3, v4
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_3

    goto :goto_3

    :catch_3
    move-exception v1

    :goto_3
    :try_start_4
    sget-object v1, Lscenelib/annotations/io/JavapParser$1;->$SwitchMap$com$sun$tools$javac$code$TargetType:[I

    sget-object v3, Lcom/sun/tools/javac/code/TargetType;->METHOD_RETURN:Lcom/sun/tools/javac/code/TargetType;

    invoke-virtual {v3}, Lcom/sun/tools/javac/code/TargetType;->ordinal()I

    move-result v3

    aput v0, v1, v3
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_4

    goto :goto_4

    :catch_4
    move-exception v0

    :goto_4
    :try_start_5
    sget-object v0, Lscenelib/annotations/io/JavapParser$1;->$SwitchMap$com$sun$tools$javac$code$TargetType:[I

    sget-object v1, Lcom/sun/tools/javac/code/TargetType;->METHOD_RECEIVER:Lcom/sun/tools/javac/code/TargetType;

    invoke-virtual {v1}, Lcom/sun/tools/javac/code/TargetType;->ordinal()I

    move-result v1

    aput v2, v0, v1
    :try_end_5
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5 .. :try_end_5} :catch_5

    goto :goto_5

    :catch_5
    move-exception v0

    :goto_5
    :try_start_6
    sget-object v0, Lscenelib/annotations/io/JavapParser$1;->$SwitchMap$com$sun$tools$javac$code$TargetType:[I

    sget-object v1, Lcom/sun/tools/javac/code/TargetType;->METHOD_FORMAL_PARAMETER:Lcom/sun/tools/javac/code/TargetType;

    invoke-virtual {v1}, Lcom/sun/tools/javac/code/TargetType;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_6
    .catch Ljava/lang/NoSuchFieldError; {:try_start_6 .. :try_end_6} :catch_6

    goto :goto_6

    :catch_6
    move-exception v0

    :goto_6
    :try_start_7
    sget-object v0, Lscenelib/annotations/io/JavapParser$1;->$SwitchMap$com$sun$tools$javac$code$TargetType:[I

    sget-object v1, Lcom/sun/tools/javac/code/TargetType;->LOCAL_VARIABLE:Lcom/sun/tools/javac/code/TargetType;

    invoke-virtual {v1}, Lcom/sun/tools/javac/code/TargetType;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_7
    .catch Ljava/lang/NoSuchFieldError; {:try_start_7 .. :try_end_7} :catch_7

    goto :goto_7

    :catch_7
    move-exception v0

    :goto_7
    :try_start_8
    sget-object v0, Lscenelib/annotations/io/JavapParser$1;->$SwitchMap$com$sun$tools$javac$code$TargetType:[I

    sget-object v1, Lcom/sun/tools/javac/code/TargetType;->RESOURCE_VARIABLE:Lcom/sun/tools/javac/code/TargetType;

    invoke-virtual {v1}, Lcom/sun/tools/javac/code/TargetType;->ordinal()I

    move-result v1

    const/4 v2, 0x6

    aput v2, v0, v1
    :try_end_8
    .catch Ljava/lang/NoSuchFieldError; {:try_start_8 .. :try_end_8} :catch_8

    goto :goto_8

    :catch_8
    move-exception v0

    :goto_8
    :try_start_9
    sget-object v0, Lscenelib/annotations/io/JavapParser$1;->$SwitchMap$com$sun$tools$javac$code$TargetType:[I

    sget-object v1, Lcom/sun/tools/javac/code/TargetType;->CAST:Lcom/sun/tools/javac/code/TargetType;

    invoke-virtual {v1}, Lcom/sun/tools/javac/code/TargetType;->ordinal()I

    move-result v1

    const/4 v2, 0x7

    aput v2, v0, v1
    :try_end_9
    .catch Ljava/lang/NoSuchFieldError; {:try_start_9 .. :try_end_9} :catch_9

    goto :goto_9

    :catch_9
    move-exception v0

    :goto_9
    :try_start_a
    sget-object v0, Lscenelib/annotations/io/JavapParser$1;->$SwitchMap$com$sun$tools$javac$code$TargetType:[I

    sget-object v1, Lcom/sun/tools/javac/code/TargetType;->INSTANCEOF:Lcom/sun/tools/javac/code/TargetType;

    invoke-virtual {v1}, Lcom/sun/tools/javac/code/TargetType;->ordinal()I

    move-result v1

    const/16 v2, 0x8

    aput v2, v0, v1
    :try_end_a
    .catch Ljava/lang/NoSuchFieldError; {:try_start_a .. :try_end_a} :catch_a

    goto :goto_a

    :catch_a
    move-exception v0

    :goto_a
    :try_start_b
    sget-object v0, Lscenelib/annotations/io/JavapParser$1;->$SwitchMap$com$sun$tools$javac$code$TargetType:[I

    sget-object v1, Lcom/sun/tools/javac/code/TargetType;->NEW:Lcom/sun/tools/javac/code/TargetType;

    invoke-virtual {v1}, Lcom/sun/tools/javac/code/TargetType;->ordinal()I

    move-result v1

    const/16 v2, 0x9

    aput v2, v0, v1
    :try_end_b
    .catch Ljava/lang/NoSuchFieldError; {:try_start_b .. :try_end_b} :catch_b

    goto :goto_b

    :catch_b
    move-exception v0

    :goto_b
    return-void
.end method
