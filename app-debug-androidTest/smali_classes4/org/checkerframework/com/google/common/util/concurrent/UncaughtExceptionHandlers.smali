.class public final Lorg/checkerframework/com/google/common/util/concurrent/UncaughtExceptionHandlers;
.super Ljava/lang/Object;
.source "UncaughtExceptionHandlers.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/checkerframework/com/google/common/util/concurrent/UncaughtExceptionHandlers$Exiter;
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static systemExit()Ljava/lang/Thread$UncaughtExceptionHandler;
    .locals 2

    .line 52
    new-instance v0, Lorg/checkerframework/com/google/common/util/concurrent/UncaughtExceptionHandlers$Exiter;

    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/checkerframework/com/google/common/util/concurrent/UncaughtExceptionHandlers$Exiter;-><init>(Ljava/lang/Runtime;)V

    return-object v0
.end method
