.class public abstract enum Lorg/checkerframework/com/google/common/util/concurrent/Service$State;
.super Ljava/lang/Enum;
.source "Service.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/checkerframework/com/google/common/util/concurrent/Service;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4409
    name = "State"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/checkerframework/com/google/common/util/concurrent/Service$State;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/checkerframework/com/google/common/util/concurrent/Service$State;

.field public static final enum FAILED:Lorg/checkerframework/com/google/common/util/concurrent/Service$State;

.field public static final enum NEW:Lorg/checkerframework/com/google/common/util/concurrent/Service$State;

.field public static final enum RUNNING:Lorg/checkerframework/com/google/common/util/concurrent/Service$State;

.field public static final enum STARTING:Lorg/checkerframework/com/google/common/util/concurrent/Service$State;

.field public static final enum STOPPING:Lorg/checkerframework/com/google/common/util/concurrent/Service$State;

.field public static final enum TERMINATED:Lorg/checkerframework/com/google/common/util/concurrent/Service$State;


# direct methods
.method static constructor <clinit>()V
    .locals 13

    .line 210
    new-instance v0, Lorg/checkerframework/com/google/common/util/concurrent/Service$State$1;

    const-string v1, "NEW"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lorg/checkerframework/com/google/common/util/concurrent/Service$State$1;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/checkerframework/com/google/common/util/concurrent/Service$State;->NEW:Lorg/checkerframework/com/google/common/util/concurrent/Service$State;

    .line 218
    new-instance v1, Lorg/checkerframework/com/google/common/util/concurrent/Service$State$2;

    const-string v3, "STARTING"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lorg/checkerframework/com/google/common/util/concurrent/Service$State$2;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lorg/checkerframework/com/google/common/util/concurrent/Service$State;->STARTING:Lorg/checkerframework/com/google/common/util/concurrent/Service$State;

    .line 226
    new-instance v3, Lorg/checkerframework/com/google/common/util/concurrent/Service$State$3;

    const-string v5, "RUNNING"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lorg/checkerframework/com/google/common/util/concurrent/Service$State$3;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lorg/checkerframework/com/google/common/util/concurrent/Service$State;->RUNNING:Lorg/checkerframework/com/google/common/util/concurrent/Service$State;

    .line 234
    new-instance v5, Lorg/checkerframework/com/google/common/util/concurrent/Service$State$4;

    const-string v7, "STOPPING"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Lorg/checkerframework/com/google/common/util/concurrent/Service$State$4;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lorg/checkerframework/com/google/common/util/concurrent/Service$State;->STOPPING:Lorg/checkerframework/com/google/common/util/concurrent/Service$State;

    .line 245
    new-instance v7, Lorg/checkerframework/com/google/common/util/concurrent/Service$State$5;

    const-string v9, "TERMINATED"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10}, Lorg/checkerframework/com/google/common/util/concurrent/Service$State$5;-><init>(Ljava/lang/String;I)V

    sput-object v7, Lorg/checkerframework/com/google/common/util/concurrent/Service$State;->TERMINATED:Lorg/checkerframework/com/google/common/util/concurrent/Service$State;

    .line 256
    new-instance v9, Lorg/checkerframework/com/google/common/util/concurrent/Service$State$6;

    const-string v11, "FAILED"

    const/4 v12, 0x5

    invoke-direct {v9, v11, v12}, Lorg/checkerframework/com/google/common/util/concurrent/Service$State$6;-><init>(Ljava/lang/String;I)V

    sput-object v9, Lorg/checkerframework/com/google/common/util/concurrent/Service$State;->FAILED:Lorg/checkerframework/com/google/common/util/concurrent/Service$State;

    .line 207
    const/4 v11, 0x6

    new-array v11, v11, [Lorg/checkerframework/com/google/common/util/concurrent/Service$State;

    aput-object v0, v11, v2

    aput-object v1, v11, v4

    aput-object v3, v11, v6

    aput-object v5, v11, v8

    aput-object v7, v11, v10

    aput-object v9, v11, v12

    sput-object v11, Lorg/checkerframework/com/google/common/util/concurrent/Service$State;->$VALUES:[Lorg/checkerframework/com/google/common/util/concurrent/Service$State;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 208
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;ILorg/checkerframework/com/google/common/util/concurrent/Service$1;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/String;
    .param p2, "x1"    # I
    .param p3, "x2"    # Lorg/checkerframework/com/google/common/util/concurrent/Service$1;

    .line 208
    invoke-direct {p0, p1, p2}, Lorg/checkerframework/com/google/common/util/concurrent/Service$State;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/checkerframework/com/google/common/util/concurrent/Service$State;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 207
    const-class v0, Lorg/checkerframework/com/google/common/util/concurrent/Service$State;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lorg/checkerframework/com/google/common/util/concurrent/Service$State;

    return-object v0
.end method

.method public static values()[Lorg/checkerframework/com/google/common/util/concurrent/Service$State;
    .locals 1

    .line 207
    sget-object v0, Lorg/checkerframework/com/google/common/util/concurrent/Service$State;->$VALUES:[Lorg/checkerframework/com/google/common/util/concurrent/Service$State;

    invoke-virtual {v0}, [Lorg/checkerframework/com/google/common/util/concurrent/Service$State;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/checkerframework/com/google/common/util/concurrent/Service$State;

    return-object v0
.end method


# virtual methods
.method abstract isTerminal()Z
.end method
