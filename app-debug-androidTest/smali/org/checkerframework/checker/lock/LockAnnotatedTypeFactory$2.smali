.class synthetic Lorg/checkerframework/checker/lock/LockAnnotatedTypeFactory$2;
.super Ljava/lang/Object;
.source "LockAnnotatedTypeFactory.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/checkerframework/checker/lock/LockAnnotatedTypeFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$org$checkerframework$checker$lock$LockAnnotatedTypeFactory$SideEffectAnnotation:[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 450
    invoke-static {}, Lorg/checkerframework/checker/lock/LockAnnotatedTypeFactory$SideEffectAnnotation;->values()[Lorg/checkerframework/checker/lock/LockAnnotatedTypeFactory$SideEffectAnnotation;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lorg/checkerframework/checker/lock/LockAnnotatedTypeFactory$2;->$SwitchMap$org$checkerframework$checker$lock$LockAnnotatedTypeFactory$SideEffectAnnotation:[I

    :try_start_0
    sget-object v1, Lorg/checkerframework/checker/lock/LockAnnotatedTypeFactory$SideEffectAnnotation;->MAYRELEASELOCKS:Lorg/checkerframework/checker/lock/LockAnnotatedTypeFactory$SideEffectAnnotation;

    invoke-virtual {v1}, Lorg/checkerframework/checker/lock/LockAnnotatedTypeFactory$SideEffectAnnotation;->ordinal()I

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
    sget-object v0, Lorg/checkerframework/checker/lock/LockAnnotatedTypeFactory$2;->$SwitchMap$org$checkerframework$checker$lock$LockAnnotatedTypeFactory$SideEffectAnnotation:[I

    sget-object v1, Lorg/checkerframework/checker/lock/LockAnnotatedTypeFactory$SideEffectAnnotation;->RELEASESNOLOCKS:Lorg/checkerframework/checker/lock/LockAnnotatedTypeFactory$SideEffectAnnotation;

    invoke-virtual {v1}, Lorg/checkerframework/checker/lock/LockAnnotatedTypeFactory$SideEffectAnnotation;->ordinal()I

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
    sget-object v0, Lorg/checkerframework/checker/lock/LockAnnotatedTypeFactory$2;->$SwitchMap$org$checkerframework$checker$lock$LockAnnotatedTypeFactory$SideEffectAnnotation:[I

    sget-object v1, Lorg/checkerframework/checker/lock/LockAnnotatedTypeFactory$SideEffectAnnotation;->LOCKINGFREE:Lorg/checkerframework/checker/lock/LockAnnotatedTypeFactory$SideEffectAnnotation;

    invoke-virtual {v1}, Lorg/checkerframework/checker/lock/LockAnnotatedTypeFactory$SideEffectAnnotation;->ordinal()I

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
    sget-object v0, Lorg/checkerframework/checker/lock/LockAnnotatedTypeFactory$2;->$SwitchMap$org$checkerframework$checker$lock$LockAnnotatedTypeFactory$SideEffectAnnotation:[I

    sget-object v1, Lorg/checkerframework/checker/lock/LockAnnotatedTypeFactory$SideEffectAnnotation;->SIDEEFFECTFREE:Lorg/checkerframework/checker/lock/LockAnnotatedTypeFactory$SideEffectAnnotation;

    invoke-virtual {v1}, Lorg/checkerframework/checker/lock/LockAnnotatedTypeFactory$SideEffectAnnotation;->ordinal()I

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
    sget-object v0, Lorg/checkerframework/checker/lock/LockAnnotatedTypeFactory$2;->$SwitchMap$org$checkerframework$checker$lock$LockAnnotatedTypeFactory$SideEffectAnnotation:[I

    sget-object v1, Lorg/checkerframework/checker/lock/LockAnnotatedTypeFactory$SideEffectAnnotation;->PURE:Lorg/checkerframework/checker/lock/LockAnnotatedTypeFactory$SideEffectAnnotation;

    invoke-virtual {v1}, Lorg/checkerframework/checker/lock/LockAnnotatedTypeFactory$SideEffectAnnotation;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_4

    goto :goto_4

    :catch_4
    move-exception v0

    :goto_4
    return-void
.end method
