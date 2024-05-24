.class synthetic Lorg/checkerframework/checker/nullness/KeyForPropagator$1;
.super Ljava/lang/Object;
.source "KeyForPropagator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/checkerframework/checker/nullness/KeyForPropagator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$org$checkerframework$checker$nullness$KeyForPropagator$PropagationDirection:[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 124
    invoke-static {}, Lorg/checkerframework/checker/nullness/KeyForPropagator$PropagationDirection;->values()[Lorg/checkerframework/checker/nullness/KeyForPropagator$PropagationDirection;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lorg/checkerframework/checker/nullness/KeyForPropagator$1;->$SwitchMap$org$checkerframework$checker$nullness$KeyForPropagator$PropagationDirection:[I

    :try_start_0
    sget-object v1, Lorg/checkerframework/checker/nullness/KeyForPropagator$PropagationDirection;->TO_SUBTYPE:Lorg/checkerframework/checker/nullness/KeyForPropagator$PropagationDirection;

    invoke-virtual {v1}, Lorg/checkerframework/checker/nullness/KeyForPropagator$PropagationDirection;->ordinal()I

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
    sget-object v0, Lorg/checkerframework/checker/nullness/KeyForPropagator$1;->$SwitchMap$org$checkerframework$checker$nullness$KeyForPropagator$PropagationDirection:[I

    sget-object v1, Lorg/checkerframework/checker/nullness/KeyForPropagator$PropagationDirection;->TO_SUPERTYPE:Lorg/checkerframework/checker/nullness/KeyForPropagator$PropagationDirection;

    invoke-virtual {v1}, Lorg/checkerframework/checker/nullness/KeyForPropagator$PropagationDirection;->ordinal()I

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
    sget-object v0, Lorg/checkerframework/checker/nullness/KeyForPropagator$1;->$SwitchMap$org$checkerframework$checker$nullness$KeyForPropagator$PropagationDirection:[I

    sget-object v1, Lorg/checkerframework/checker/nullness/KeyForPropagator$PropagationDirection;->BOTH:Lorg/checkerframework/checker/nullness/KeyForPropagator$PropagationDirection;

    invoke-virtual {v1}, Lorg/checkerframework/checker/nullness/KeyForPropagator$PropagationDirection;->ordinal()I

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
