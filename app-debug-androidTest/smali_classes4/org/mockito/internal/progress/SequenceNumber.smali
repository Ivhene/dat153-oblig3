.class public final Lorg/mockito/internal/progress/SequenceNumber;
.super Ljava/lang/Object;
.source "SequenceNumber.java"


# static fields
.field private static sequenceNumber:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 9
    const/4 v0, 0x1

    sput v0, Lorg/mockito/internal/progress/SequenceNumber;->sequenceNumber:I

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static declared-synchronized next()I
    .locals 3

    const-class v0, Lorg/mockito/internal/progress/SequenceNumber;

    monitor-enter v0

    .line 12
    :try_start_0
    sget v1, Lorg/mockito/internal/progress/SequenceNumber;->sequenceNumber:I

    add-int/lit8 v2, v1, 0x1

    sput v2, Lorg/mockito/internal/progress/SequenceNumber;->sequenceNumber:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return v1

    .line 12
    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method
