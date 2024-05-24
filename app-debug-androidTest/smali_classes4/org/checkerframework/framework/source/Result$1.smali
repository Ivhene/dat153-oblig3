.class synthetic Lorg/checkerframework/framework/source/Result$1;
.super Ljava/lang/Object;
.source "Result.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/checkerframework/framework/source/Result;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$org$checkerframework$framework$source$Result$Type:[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 143
    invoke-static {}, Lorg/checkerframework/framework/source/Result$Type;->values()[Lorg/checkerframework/framework/source/Result$Type;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lorg/checkerframework/framework/source/Result$1;->$SwitchMap$org$checkerframework$framework$source$Result$Type:[I

    :try_start_0
    sget-object v1, Lorg/checkerframework/framework/source/Result$Type;->FAILURE:Lorg/checkerframework/framework/source/Result$Type;

    invoke-virtual {v1}, Lorg/checkerframework/framework/source/Result$Type;->ordinal()I

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
    sget-object v0, Lorg/checkerframework/framework/source/Result$1;->$SwitchMap$org$checkerframework$framework$source$Result$Type:[I

    sget-object v1, Lorg/checkerframework/framework/source/Result$Type;->WARNING:Lorg/checkerframework/framework/source/Result$Type;

    invoke-virtual {v1}, Lorg/checkerframework/framework/source/Result$Type;->ordinal()I

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
    sget-object v0, Lorg/checkerframework/framework/source/Result$1;->$SwitchMap$org$checkerframework$framework$source$Result$Type:[I

    sget-object v1, Lorg/checkerframework/framework/source/Result$Type;->SUCCESS:Lorg/checkerframework/framework/source/Result$Type;

    invoke-virtual {v1}, Lorg/checkerframework/framework/source/Result$Type;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_2

    :catch_2
    move-exception v0

    :goto_2
    return-void
.end method
