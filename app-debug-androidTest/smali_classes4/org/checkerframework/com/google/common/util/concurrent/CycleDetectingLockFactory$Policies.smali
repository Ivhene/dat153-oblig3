.class public abstract enum Lorg/checkerframework/com/google/common/util/concurrent/CycleDetectingLockFactory$Policies;
.super Ljava/lang/Enum;
.source "CycleDetectingLockFactory.java"

# interfaces
.implements Lorg/checkerframework/com/google/common/util/concurrent/CycleDetectingLockFactory$Policy;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/checkerframework/com/google/common/util/concurrent/CycleDetectingLockFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4409
    name = "Policies"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/checkerframework/com/google/common/util/concurrent/CycleDetectingLockFactory$Policies;",
        ">;",
        "Lorg/checkerframework/com/google/common/util/concurrent/CycleDetectingLockFactory$Policy;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/checkerframework/com/google/common/util/concurrent/CycleDetectingLockFactory$Policies;

.field public static final enum DISABLED:Lorg/checkerframework/com/google/common/util/concurrent/CycleDetectingLockFactory$Policies;

.field public static final enum THROW:Lorg/checkerframework/com/google/common/util/concurrent/CycleDetectingLockFactory$Policies;

.field public static final enum WARN:Lorg/checkerframework/com/google/common/util/concurrent/CycleDetectingLockFactory$Policies;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 201
    new-instance v0, Lorg/checkerframework/com/google/common/util/concurrent/CycleDetectingLockFactory$Policies$1;

    const-string v1, "THROW"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lorg/checkerframework/com/google/common/util/concurrent/CycleDetectingLockFactory$Policies$1;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/checkerframework/com/google/common/util/concurrent/CycleDetectingLockFactory$Policies;->THROW:Lorg/checkerframework/com/google/common/util/concurrent/CycleDetectingLockFactory$Policies;

    .line 213
    new-instance v1, Lorg/checkerframework/com/google/common/util/concurrent/CycleDetectingLockFactory$Policies$2;

    const-string v3, "WARN"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lorg/checkerframework/com/google/common/util/concurrent/CycleDetectingLockFactory$Policies$2;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lorg/checkerframework/com/google/common/util/concurrent/CycleDetectingLockFactory$Policies;->WARN:Lorg/checkerframework/com/google/common/util/concurrent/CycleDetectingLockFactory$Policies;

    .line 228
    new-instance v3, Lorg/checkerframework/com/google/common/util/concurrent/CycleDetectingLockFactory$Policies$3;

    const-string v5, "DISABLED"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lorg/checkerframework/com/google/common/util/concurrent/CycleDetectingLockFactory$Policies$3;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lorg/checkerframework/com/google/common/util/concurrent/CycleDetectingLockFactory$Policies;->DISABLED:Lorg/checkerframework/com/google/common/util/concurrent/CycleDetectingLockFactory$Policies;

    .line 194
    const/4 v5, 0x3

    new-array v5, v5, [Lorg/checkerframework/com/google/common/util/concurrent/CycleDetectingLockFactory$Policies;

    aput-object v0, v5, v2

    aput-object v1, v5, v4

    aput-object v3, v5, v6

    sput-object v5, Lorg/checkerframework/com/google/common/util/concurrent/CycleDetectingLockFactory$Policies;->$VALUES:[Lorg/checkerframework/com/google/common/util/concurrent/CycleDetectingLockFactory$Policies;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 195
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;ILorg/checkerframework/com/google/common/util/concurrent/CycleDetectingLockFactory$1;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/String;
    .param p2, "x1"    # I
    .param p3, "x2"    # Lorg/checkerframework/com/google/common/util/concurrent/CycleDetectingLockFactory$1;

    .line 195
    invoke-direct {p0, p1, p2}, Lorg/checkerframework/com/google/common/util/concurrent/CycleDetectingLockFactory$Policies;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/checkerframework/com/google/common/util/concurrent/CycleDetectingLockFactory$Policies;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 194
    const-class v0, Lorg/checkerframework/com/google/common/util/concurrent/CycleDetectingLockFactory$Policies;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lorg/checkerframework/com/google/common/util/concurrent/CycleDetectingLockFactory$Policies;

    return-object v0
.end method

.method public static values()[Lorg/checkerframework/com/google/common/util/concurrent/CycleDetectingLockFactory$Policies;
    .locals 1

    .line 194
    sget-object v0, Lorg/checkerframework/com/google/common/util/concurrent/CycleDetectingLockFactory$Policies;->$VALUES:[Lorg/checkerframework/com/google/common/util/concurrent/CycleDetectingLockFactory$Policies;

    invoke-virtual {v0}, [Lorg/checkerframework/com/google/common/util/concurrent/CycleDetectingLockFactory$Policies;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/checkerframework/com/google/common/util/concurrent/CycleDetectingLockFactory$Policies;

    return-object v0
.end method