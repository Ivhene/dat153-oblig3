.class final enum Lorg/checkerframework/org/apache/commons/lang3/concurrent/AbstractCircuitBreaker$State$1;
.super Lorg/checkerframework/org/apache/commons/lang3/concurrent/AbstractCircuitBreaker$State;
.source "AbstractCircuitBreaker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/checkerframework/org/apache/commons/lang3/concurrent/AbstractCircuitBreaker$State;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4010
    name = null
.end annotation


# direct methods
.method constructor <init>(Ljava/lang/String;I)V
    .locals 1

    .line 142
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lorg/checkerframework/org/apache/commons/lang3/concurrent/AbstractCircuitBreaker$State;-><init>(Ljava/lang/String;ILorg/checkerframework/org/apache/commons/lang3/concurrent/AbstractCircuitBreaker$1;)V

    return-void
.end method


# virtual methods
.method public oppositeState()Lorg/checkerframework/org/apache/commons/lang3/concurrent/AbstractCircuitBreaker$State;
    .locals 1

    .line 148
    sget-object v0, Lorg/checkerframework/org/apache/commons/lang3/concurrent/AbstractCircuitBreaker$State$1;->OPEN:Lorg/checkerframework/org/apache/commons/lang3/concurrent/AbstractCircuitBreaker$State;

    return-object v0
.end method