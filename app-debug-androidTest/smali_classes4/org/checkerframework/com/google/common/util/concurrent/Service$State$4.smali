.class final enum Lorg/checkerframework/com/google/common/util/concurrent/Service$State$4;
.super Lorg/checkerframework/com/google/common/util/concurrent/Service$State;
.source "Service.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/checkerframework/com/google/common/util/concurrent/Service$State;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4008
    name = null
.end annotation


# direct methods
.method constructor <init>(Ljava/lang/String;I)V
    .locals 1

    .line 234
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lorg/checkerframework/com/google/common/util/concurrent/Service$State;-><init>(Ljava/lang/String;ILorg/checkerframework/com/google/common/util/concurrent/Service$1;)V

    return-void
.end method


# virtual methods
.method isTerminal()Z
    .locals 1

    .line 237
    const/4 v0, 0x0

    return v0
.end method
