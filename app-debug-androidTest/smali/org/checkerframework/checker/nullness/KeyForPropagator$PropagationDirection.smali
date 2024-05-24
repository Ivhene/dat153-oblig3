.class public final enum Lorg/checkerframework/checker/nullness/KeyForPropagator$PropagationDirection;
.super Ljava/lang/Enum;
.source "KeyForPropagator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/checkerframework/checker/nullness/KeyForPropagator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "PropagationDirection"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/checkerframework/checker/nullness/KeyForPropagator$PropagationDirection;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/checkerframework/checker/nullness/KeyForPropagator$PropagationDirection;

.field public static final enum BOTH:Lorg/checkerframework/checker/nullness/KeyForPropagator$PropagationDirection;

.field public static final enum TO_SUBTYPE:Lorg/checkerframework/checker/nullness/KeyForPropagator$PropagationDirection;

.field public static final enum TO_SUPERTYPE:Lorg/checkerframework/checker/nullness/KeyForPropagator$PropagationDirection;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 33
    new-instance v0, Lorg/checkerframework/checker/nullness/KeyForPropagator$PropagationDirection;

    const-string v1, "TO_SUBTYPE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lorg/checkerframework/checker/nullness/KeyForPropagator$PropagationDirection;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/checkerframework/checker/nullness/KeyForPropagator$PropagationDirection;->TO_SUBTYPE:Lorg/checkerframework/checker/nullness/KeyForPropagator$PropagationDirection;

    .line 36
    new-instance v1, Lorg/checkerframework/checker/nullness/KeyForPropagator$PropagationDirection;

    const-string v2, "TO_SUPERTYPE"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Lorg/checkerframework/checker/nullness/KeyForPropagator$PropagationDirection;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lorg/checkerframework/checker/nullness/KeyForPropagator$PropagationDirection;->TO_SUPERTYPE:Lorg/checkerframework/checker/nullness/KeyForPropagator$PropagationDirection;

    .line 41
    new-instance v2, Lorg/checkerframework/checker/nullness/KeyForPropagator$PropagationDirection;

    const-string v3, "BOTH"

    const/4 v4, 0x2

    invoke-direct {v2, v3, v4}, Lorg/checkerframework/checker/nullness/KeyForPropagator$PropagationDirection;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lorg/checkerframework/checker/nullness/KeyForPropagator$PropagationDirection;->BOTH:Lorg/checkerframework/checker/nullness/KeyForPropagator$PropagationDirection;

    .line 31
    filled-new-array {v0, v1, v2}, [Lorg/checkerframework/checker/nullness/KeyForPropagator$PropagationDirection;

    move-result-object v0

    sput-object v0, Lorg/checkerframework/checker/nullness/KeyForPropagator$PropagationDirection;->$VALUES:[Lorg/checkerframework/checker/nullness/KeyForPropagator$PropagationDirection;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 31
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/checkerframework/checker/nullness/KeyForPropagator$PropagationDirection;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 31
    const-class v0, Lorg/checkerframework/checker/nullness/KeyForPropagator$PropagationDirection;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lorg/checkerframework/checker/nullness/KeyForPropagator$PropagationDirection;

    return-object v0
.end method

.method public static values()[Lorg/checkerframework/checker/nullness/KeyForPropagator$PropagationDirection;
    .locals 1

    .line 31
    sget-object v0, Lorg/checkerframework/checker/nullness/KeyForPropagator$PropagationDirection;->$VALUES:[Lorg/checkerframework/checker/nullness/KeyForPropagator$PropagationDirection;

    invoke-virtual {v0}, [Lorg/checkerframework/checker/nullness/KeyForPropagator$PropagationDirection;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/checkerframework/checker/nullness/KeyForPropagator$PropagationDirection;

    return-object v0
.end method
