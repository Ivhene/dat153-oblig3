.class synthetic Lorg/checkerframework/javacutil/AnnotationUtils$1;
.super Ljava/lang/Object;
.source "AnnotationUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/checkerframework/javacutil/AnnotationUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$java$lang$annotation$ElementType:[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 504
    invoke-static {}, Ljava/lang/annotation/ElementType;->values()[Ljava/lang/annotation/ElementType;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lorg/checkerframework/javacutil/AnnotationUtils$1;->$SwitchMap$java$lang$annotation$ElementType:[I

    :try_start_0
    sget-object v1, Ljava/lang/annotation/ElementType;->TYPE:Ljava/lang/annotation/ElementType;

    invoke-virtual {v1}, Ljava/lang/annotation/ElementType;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    :goto_0
    :try_start_1
    sget-object v0, Lorg/checkerframework/javacutil/AnnotationUtils$1;->$SwitchMap$java$lang$annotation$ElementType:[I

    sget-object v1, Ljava/lang/annotation/ElementType;->FIELD:Ljava/lang/annotation/ElementType;

    invoke-virtual {v1}, Ljava/lang/annotation/ElementType;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception v0

    :goto_1
    :try_start_2
    sget-object v0, Lorg/checkerframework/javacutil/AnnotationUtils$1;->$SwitchMap$java$lang$annotation$ElementType:[I

    sget-object v1, Ljava/lang/annotation/ElementType;->METHOD:Ljava/lang/annotation/ElementType;

    invoke-virtual {v1}, Ljava/lang/annotation/ElementType;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_2

    :catch_2
    move-exception v0

    :goto_2
    :try_start_3
    sget-object v0, Lorg/checkerframework/javacutil/AnnotationUtils$1;->$SwitchMap$java$lang$annotation$ElementType:[I

    sget-object v1, Ljava/lang/annotation/ElementType;->PARAMETER:Ljava/lang/annotation/ElementType;

    invoke-virtual {v1}, Ljava/lang/annotation/ElementType;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_3

    goto :goto_3

    :catch_3
    move-exception v0

    :goto_3
    :try_start_4
    sget-object v0, Lorg/checkerframework/javacutil/AnnotationUtils$1;->$SwitchMap$java$lang$annotation$ElementType:[I

    sget-object v1, Ljava/lang/annotation/ElementType;->CONSTRUCTOR:Ljava/lang/annotation/ElementType;

    invoke-virtual {v1}, Ljava/lang/annotation/ElementType;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_4

    goto :goto_4

    :catch_4
    move-exception v0

    :goto_4
    :try_start_5
    sget-object v0, Lorg/checkerframework/javacutil/AnnotationUtils$1;->$SwitchMap$java$lang$annotation$ElementType:[I

    sget-object v1, Ljava/lang/annotation/ElementType;->LOCAL_VARIABLE:Ljava/lang/annotation/ElementType;

    invoke-virtual {v1}, Ljava/lang/annotation/ElementType;->ordinal()I

    move-result v1

    const/4 v2, 0x6

    aput v2, v0, v1
    :try_end_5
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5 .. :try_end_5} :catch_5

    goto :goto_5

    :catch_5
    move-exception v0

    :goto_5
    :try_start_6
    sget-object v0, Lorg/checkerframework/javacutil/AnnotationUtils$1;->$SwitchMap$java$lang$annotation$ElementType:[I

    sget-object v1, Ljava/lang/annotation/ElementType;->ANNOTATION_TYPE:Ljava/lang/annotation/ElementType;

    invoke-virtual {v1}, Ljava/lang/annotation/ElementType;->ordinal()I

    move-result v1

    const/4 v2, 0x7

    aput v2, v0, v1
    :try_end_6
    .catch Ljava/lang/NoSuchFieldError; {:try_start_6 .. :try_end_6} :catch_6

    goto :goto_6

    :catch_6
    move-exception v0

    :goto_6
    :try_start_7
    sget-object v0, Lorg/checkerframework/javacutil/AnnotationUtils$1;->$SwitchMap$java$lang$annotation$ElementType:[I

    sget-object v1, Ljava/lang/annotation/ElementType;->PACKAGE:Ljava/lang/annotation/ElementType;

    invoke-virtual {v1}, Ljava/lang/annotation/ElementType;->ordinal()I

    move-result v1

    const/16 v2, 0x8

    aput v2, v0, v1
    :try_end_7
    .catch Ljava/lang/NoSuchFieldError; {:try_start_7 .. :try_end_7} :catch_7

    goto :goto_7

    :catch_7
    move-exception v0

    :goto_7
    :try_start_8
    sget-object v0, Lorg/checkerframework/javacutil/AnnotationUtils$1;->$SwitchMap$java$lang$annotation$ElementType:[I

    sget-object v1, Ljava/lang/annotation/ElementType;->TYPE_PARAMETER:Ljava/lang/annotation/ElementType;

    invoke-virtual {v1}, Ljava/lang/annotation/ElementType;->ordinal()I

    move-result v1

    const/16 v2, 0x9

    aput v2, v0, v1
    :try_end_8
    .catch Ljava/lang/NoSuchFieldError; {:try_start_8 .. :try_end_8} :catch_8

    goto :goto_8

    :catch_8
    move-exception v0

    :goto_8
    :try_start_9
    sget-object v0, Lorg/checkerframework/javacutil/AnnotationUtils$1;->$SwitchMap$java$lang$annotation$ElementType:[I

    sget-object v1, Ljava/lang/annotation/ElementType;->TYPE_USE:Ljava/lang/annotation/ElementType;

    invoke-virtual {v1}, Ljava/lang/annotation/ElementType;->ordinal()I

    move-result v1

    const/16 v2, 0xa

    aput v2, v0, v1
    :try_end_9
    .catch Ljava/lang/NoSuchFieldError; {:try_start_9 .. :try_end_9} :catch_9

    goto :goto_9

    :catch_9
    move-exception v0

    :goto_9
    return-void
.end method