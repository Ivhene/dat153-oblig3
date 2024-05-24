.class synthetic Lannotator/find/Insertion$1;
.super Ljava/lang/Object;
.source "Insertion.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lannotator/find/Insertion;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$com$sun$source$tree$Tree$Kind:[I

.field static final synthetic $SwitchMap$com$sun$tools$javac$code$TypeAnnotationPosition$TypePathEntryKind:[I

.field static final synthetic $SwitchMap$scenelib$type$Type$Kind:[I


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 506
    invoke-static {}, Lcom/sun/source/tree/Tree$Kind;->values()[Lcom/sun/source/tree/Tree$Kind;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lannotator/find/Insertion$1;->$SwitchMap$com$sun$source$tree$Tree$Kind:[I

    const/4 v1, 0x1

    :try_start_0
    sget-object v2, Lcom/sun/source/tree/Tree$Kind;->ARRAY_TYPE:Lcom/sun/source/tree/Tree$Kind;

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
    sget-object v2, Lannotator/find/Insertion$1;->$SwitchMap$com$sun$source$tree$Tree$Kind:[I

    sget-object v3, Lcom/sun/source/tree/Tree$Kind;->MEMBER_SELECT:Lcom/sun/source/tree/Tree$Kind;

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
    sget-object v3, Lannotator/find/Insertion$1;->$SwitchMap$com$sun$source$tree$Tree$Kind:[I

    sget-object v4, Lcom/sun/source/tree/Tree$Kind;->PARAMETERIZED_TYPE:Lcom/sun/source/tree/Tree$Kind;

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
    sget-object v4, Lannotator/find/Insertion$1;->$SwitchMap$com$sun$source$tree$Tree$Kind:[I

    sget-object v5, Lcom/sun/source/tree/Tree$Kind;->UNBOUNDED_WILDCARD:Lcom/sun/source/tree/Tree$Kind;

    invoke-virtual {v5}, Lcom/sun/source/tree/Tree$Kind;->ordinal()I

    move-result v5

    aput v3, v4, v5
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_3

    goto :goto_3

    :catch_3
    move-exception v4

    .line 431
    :goto_3
    invoke-static {}, Lcom/sun/tools/javac/code/TypeAnnotationPosition$TypePathEntryKind;->values()[Lcom/sun/tools/javac/code/TypeAnnotationPosition$TypePathEntryKind;

    move-result-object v4

    array-length v4, v4

    new-array v4, v4, [I

    sput-object v4, Lannotator/find/Insertion$1;->$SwitchMap$com$sun$tools$javac$code$TypeAnnotationPosition$TypePathEntryKind:[I

    :try_start_4
    sget-object v5, Lcom/sun/tools/javac/code/TypeAnnotationPosition$TypePathEntryKind;->ARRAY:Lcom/sun/tools/javac/code/TypeAnnotationPosition$TypePathEntryKind;

    invoke-virtual {v5}, Lcom/sun/tools/javac/code/TypeAnnotationPosition$TypePathEntryKind;->ordinal()I

    move-result v5

    aput v1, v4, v5
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_4

    goto :goto_4

    :catch_4
    move-exception v4

    :goto_4
    :try_start_5
    sget-object v4, Lannotator/find/Insertion$1;->$SwitchMap$com$sun$tools$javac$code$TypeAnnotationPosition$TypePathEntryKind:[I

    sget-object v5, Lcom/sun/tools/javac/code/TypeAnnotationPosition$TypePathEntryKind;->INNER_TYPE:Lcom/sun/tools/javac/code/TypeAnnotationPosition$TypePathEntryKind;

    invoke-virtual {v5}, Lcom/sun/tools/javac/code/TypeAnnotationPosition$TypePathEntryKind;->ordinal()I

    move-result v5

    aput v0, v4, v5
    :try_end_5
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5 .. :try_end_5} :catch_5

    goto :goto_5

    :catch_5
    move-exception v4

    :goto_5
    :try_start_6
    sget-object v4, Lannotator/find/Insertion$1;->$SwitchMap$com$sun$tools$javac$code$TypeAnnotationPosition$TypePathEntryKind:[I

    sget-object v5, Lcom/sun/tools/javac/code/TypeAnnotationPosition$TypePathEntryKind;->WILDCARD:Lcom/sun/tools/javac/code/TypeAnnotationPosition$TypePathEntryKind;

    invoke-virtual {v5}, Lcom/sun/tools/javac/code/TypeAnnotationPosition$TypePathEntryKind;->ordinal()I

    move-result v5

    aput v2, v4, v5
    :try_end_6
    .catch Ljava/lang/NoSuchFieldError; {:try_start_6 .. :try_end_6} :catch_6

    goto :goto_6

    :catch_6
    move-exception v4

    :goto_6
    :try_start_7
    sget-object v4, Lannotator/find/Insertion$1;->$SwitchMap$com$sun$tools$javac$code$TypeAnnotationPosition$TypePathEntryKind:[I

    sget-object v5, Lcom/sun/tools/javac/code/TypeAnnotationPosition$TypePathEntryKind;->TYPE_ARGUMENT:Lcom/sun/tools/javac/code/TypeAnnotationPosition$TypePathEntryKind;

    invoke-virtual {v5}, Lcom/sun/tools/javac/code/TypeAnnotationPosition$TypePathEntryKind;->ordinal()I

    move-result v5

    aput v3, v4, v5
    :try_end_7
    .catch Ljava/lang/NoSuchFieldError; {:try_start_7 .. :try_end_7} :catch_7

    goto :goto_7

    :catch_7
    move-exception v3

    .line 298
    :goto_7
    invoke-static {}, Lscenelib/type/Type$Kind;->values()[Lscenelib/type/Type$Kind;

    move-result-object v3

    array-length v3, v3

    new-array v3, v3, [I

    sput-object v3, Lannotator/find/Insertion$1;->$SwitchMap$scenelib$type$Type$Kind:[I

    :try_start_8
    sget-object v4, Lscenelib/type/Type$Kind;->DECLARED:Lscenelib/type/Type$Kind;

    invoke-virtual {v4}, Lscenelib/type/Type$Kind;->ordinal()I

    move-result v4

    aput v1, v3, v4
    :try_end_8
    .catch Ljava/lang/NoSuchFieldError; {:try_start_8 .. :try_end_8} :catch_8

    goto :goto_8

    :catch_8
    move-exception v1

    :goto_8
    :try_start_9
    sget-object v1, Lannotator/find/Insertion$1;->$SwitchMap$scenelib$type$Type$Kind:[I

    sget-object v3, Lscenelib/type/Type$Kind;->ARRAY:Lscenelib/type/Type$Kind;

    invoke-virtual {v3}, Lscenelib/type/Type$Kind;->ordinal()I

    move-result v3

    aput v0, v1, v3
    :try_end_9
    .catch Ljava/lang/NoSuchFieldError; {:try_start_9 .. :try_end_9} :catch_9

    goto :goto_9

    :catch_9
    move-exception v0

    :goto_9
    :try_start_a
    sget-object v0, Lannotator/find/Insertion$1;->$SwitchMap$scenelib$type$Type$Kind:[I

    sget-object v1, Lscenelib/type/Type$Kind;->BOUNDED:Lscenelib/type/Type$Kind;

    invoke-virtual {v1}, Lscenelib/type/Type$Kind;->ordinal()I

    move-result v1

    aput v2, v0, v1
    :try_end_a
    .catch Ljava/lang/NoSuchFieldError; {:try_start_a .. :try_end_a} :catch_a

    goto :goto_a

    :catch_a
    move-exception v0

    :goto_a
    return-void
.end method
