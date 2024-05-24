.class final enum Lorg/checkerframework/com/google/common/util/concurrent/SequentialExecutor$WorkerRunningState;
.super Ljava/lang/Enum;
.source "SequentialExecutor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/checkerframework/com/google/common/util/concurrent/SequentialExecutor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "WorkerRunningState"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/checkerframework/com/google/common/util/concurrent/SequentialExecutor$WorkerRunningState;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/checkerframework/com/google/common/util/concurrent/SequentialExecutor$WorkerRunningState;

.field public static final enum IDLE:Lorg/checkerframework/com/google/common/util/concurrent/SequentialExecutor$WorkerRunningState;

.field public static final enum QUEUED:Lorg/checkerframework/com/google/common/util/concurrent/SequentialExecutor$WorkerRunningState;

.field public static final enum QUEUING:Lorg/checkerframework/com/google/common/util/concurrent/SequentialExecutor$WorkerRunningState;

.field public static final enum RUNNING:Lorg/checkerframework/com/google/common/util/concurrent/SequentialExecutor$WorkerRunningState;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 54
    new-instance v0, Lorg/checkerframework/com/google/common/util/concurrent/SequentialExecutor$WorkerRunningState;

    const-string v1, "IDLE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lorg/checkerframework/com/google/common/util/concurrent/SequentialExecutor$WorkerRunningState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/checkerframework/com/google/common/util/concurrent/SequentialExecutor$WorkerRunningState;->IDLE:Lorg/checkerframework/com/google/common/util/concurrent/SequentialExecutor$WorkerRunningState;

    .line 56
    new-instance v1, Lorg/checkerframework/com/google/common/util/concurrent/SequentialExecutor$WorkerRunningState;

    const-string v2, "QUEUING"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Lorg/checkerframework/com/google/common/util/concurrent/SequentialExecutor$WorkerRunningState;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lorg/checkerframework/com/google/common/util/concurrent/SequentialExecutor$WorkerRunningState;->QUEUING:Lorg/checkerframework/com/google/common/util/concurrent/SequentialExecutor$WorkerRunningState;

    .line 58
    new-instance v2, Lorg/checkerframework/com/google/common/util/concurrent/SequentialExecutor$WorkerRunningState;

    const-string v3, "QUEUED"

    const/4 v4, 0x2

    invoke-direct {v2, v3, v4}, Lorg/checkerframework/com/google/common/util/concurrent/SequentialExecutor$WorkerRunningState;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lorg/checkerframework/com/google/common/util/concurrent/SequentialExecutor$WorkerRunningState;->QUEUED:Lorg/checkerframework/com/google/common/util/concurrent/SequentialExecutor$WorkerRunningState;

    .line 59
    new-instance v3, Lorg/checkerframework/com/google/common/util/concurrent/SequentialExecutor$WorkerRunningState;

    const-string v4, "RUNNING"

    const/4 v5, 0x3

    invoke-direct {v3, v4, v5}, Lorg/checkerframework/com/google/common/util/concurrent/SequentialExecutor$WorkerRunningState;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lorg/checkerframework/com/google/common/util/concurrent/SequentialExecutor$WorkerRunningState;->RUNNING:Lorg/checkerframework/com/google/common/util/concurrent/SequentialExecutor$WorkerRunningState;

    .line 52
    filled-new-array {v0, v1, v2, v3}, [Lorg/checkerframework/com/google/common/util/concurrent/SequentialExecutor$WorkerRunningState;

    move-result-object v0

    sput-object v0, Lorg/checkerframework/com/google/common/util/concurrent/SequentialExecutor$WorkerRunningState;->$VALUES:[Lorg/checkerframework/com/google/common/util/concurrent/SequentialExecutor$WorkerRunningState;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 52
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/checkerframework/com/google/common/util/concurrent/SequentialExecutor$WorkerRunningState;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 52
    const-class v0, Lorg/checkerframework/com/google/common/util/concurrent/SequentialExecutor$WorkerRunningState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lorg/checkerframework/com/google/common/util/concurrent/SequentialExecutor$WorkerRunningState;

    return-object v0
.end method

.method public static values()[Lorg/checkerframework/com/google/common/util/concurrent/SequentialExecutor$WorkerRunningState;
    .locals 1

    .line 52
    sget-object v0, Lorg/checkerframework/com/google/common/util/concurrent/SequentialExecutor$WorkerRunningState;->$VALUES:[Lorg/checkerframework/com/google/common/util/concurrent/SequentialExecutor$WorkerRunningState;

    invoke-virtual {v0}, [Lorg/checkerframework/com/google/common/util/concurrent/SequentialExecutor$WorkerRunningState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/checkerframework/com/google/common/util/concurrent/SequentialExecutor$WorkerRunningState;

    return-object v0
.end method
