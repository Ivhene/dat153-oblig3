.class public abstract enum Lorg/checkerframework/org/apache/commons/lang3/concurrent/AbstractCircuitBreaker$State;
.super Ljava/lang/Enum;
.source "AbstractCircuitBreaker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/checkerframework/org/apache/commons/lang3/concurrent/AbstractCircuitBreaker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x440c
    name = "State"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/checkerframework/org/apache/commons/lang3/concurrent/AbstractCircuitBreaker$State;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/checkerframework/org/apache/commons/lang3/concurrent/AbstractCircuitBreaker$State;

.field public static final enum CLOSED:Lorg/checkerframework/org/apache/commons/lang3/concurrent/AbstractCircuitBreaker$State;

.field public static final enum OPEN:Lorg/checkerframework/org/apache/commons/lang3/concurrent/AbstractCircuitBreaker$State;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 142
    new-instance v0, Lorg/checkerframework/org/apache/commons/lang3/concurrent/AbstractCircuitBreaker$State$1;

    const-string v1, "CLOSED"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lorg/checkerframework/org/apache/commons/lang3/concurrent/AbstractCircuitBreaker$State$1;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/checkerframework/org/apache/commons/lang3/concurrent/AbstractCircuitBreaker$State;->CLOSED:Lorg/checkerframework/org/apache/commons/lang3/concurrent/AbstractCircuitBreaker$State;

    .line 152
    new-instance v1, Lorg/checkerframework/org/apache/commons/lang3/concurrent/AbstractCircuitBreaker$State$2;

    const-string v3, "OPEN"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lorg/checkerframework/org/apache/commons/lang3/concurrent/AbstractCircuitBreaker$State$2;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lorg/checkerframework/org/apache/commons/lang3/concurrent/AbstractCircuitBreaker$State;->OPEN:Lorg/checkerframework/org/apache/commons/lang3/concurrent/AbstractCircuitBreaker$State;

    .line 141
    const/4 v3, 0x2

    new-array v3, v3, [Lorg/checkerframework/org/apache/commons/lang3/concurrent/AbstractCircuitBreaker$State;

    aput-object v0, v3, v2

    aput-object v1, v3, v4

    sput-object v3, Lorg/checkerframework/org/apache/commons/lang3/concurrent/AbstractCircuitBreaker$State;->$VALUES:[Lorg/checkerframework/org/apache/commons/lang3/concurrent/AbstractCircuitBreaker$State;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 141
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;ILorg/checkerframework/org/apache/commons/lang3/concurrent/AbstractCircuitBreaker$1;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/String;
    .param p2, "x1"    # I
    .param p3, "x2"    # Lorg/checkerframework/org/apache/commons/lang3/concurrent/AbstractCircuitBreaker$1;

    .line 141
    invoke-direct {p0, p1, p2}, Lorg/checkerframework/org/apache/commons/lang3/concurrent/AbstractCircuitBreaker$State;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/checkerframework/org/apache/commons/lang3/concurrent/AbstractCircuitBreaker$State;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 141
    const-class v0, Lorg/checkerframework/org/apache/commons/lang3/concurrent/AbstractCircuitBreaker$State;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lorg/checkerframework/org/apache/commons/lang3/concurrent/AbstractCircuitBreaker$State;

    return-object v0
.end method

.method public static values()[Lorg/checkerframework/org/apache/commons/lang3/concurrent/AbstractCircuitBreaker$State;
    .locals 1

    .line 141
    sget-object v0, Lorg/checkerframework/org/apache/commons/lang3/concurrent/AbstractCircuitBreaker$State;->$VALUES:[Lorg/checkerframework/org/apache/commons/lang3/concurrent/AbstractCircuitBreaker$State;

    invoke-virtual {v0}, [Lorg/checkerframework/org/apache/commons/lang3/concurrent/AbstractCircuitBreaker$State;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/checkerframework/org/apache/commons/lang3/concurrent/AbstractCircuitBreaker$State;

    return-object v0
.end method


# virtual methods
.method public abstract oppositeState()Lorg/checkerframework/org/apache/commons/lang3/concurrent/AbstractCircuitBreaker$State;
.end method
