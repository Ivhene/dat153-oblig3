.class public Lorg/mockito/internal/junit/ExceptionFactory;
.super Ljava/lang/Object;
.source "ExceptionFactory.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/mockito/internal/junit/ExceptionFactory$ExceptionFactoryImpl;
    }
.end annotation


# static fields
.field private static final factory:Lorg/mockito/internal/junit/ExceptionFactory$ExceptionFactoryImpl;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 20
    const/4 v0, 0x0

    .line 23
    .local v0, "theFactory":Lorg/mockito/internal/junit/ExceptionFactory$ExceptionFactoryImpl;
    :try_start_0
    const-string v1, "org.opentest4j.AssertionFailedError"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    .line 24
    new-instance v1, Lorg/mockito/internal/junit/ExceptionFactory$$ExternalSyntheticLambda0;

    invoke-direct {v1}, Lorg/mockito/internal/junit/ExceptionFactory$$ExternalSyntheticLambda0;-><init>()V
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v1

    .line 31
    goto :goto_0

    .line 25
    :catch_0
    move-exception v1

    .line 27
    .local v1, "onlyIfOpenTestIsNotAvailable":Ljava/lang/ClassNotFoundException;
    :try_start_1
    const-string v2, "junit.framework.ComparisonFailure"

    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    .line 28
    new-instance v2, Lorg/mockito/internal/junit/ExceptionFactory$$ExternalSyntheticLambda1;

    invoke-direct {v2}, Lorg/mockito/internal/junit/ExceptionFactory$$ExternalSyntheticLambda1;-><init>()V
    :try_end_1
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    move-object v0, v2

    .line 30
    goto :goto_0

    .line 29
    :catch_1
    move-exception v2

    .line 32
    .end local v1    # "onlyIfOpenTestIsNotAvailable":Ljava/lang/ClassNotFoundException;
    :goto_0
    if-nez v0, :cond_0

    new-instance v1, Lorg/mockito/internal/junit/ExceptionFactory$$ExternalSyntheticLambda2;

    invoke-direct {v1}, Lorg/mockito/internal/junit/ExceptionFactory$$ExternalSyntheticLambda2;-><init>()V

    goto :goto_1

    :cond_0
    move-object v1, v0

    :goto_1
    sput-object v1, Lorg/mockito/internal/junit/ExceptionFactory;->factory:Lorg/mockito/internal/junit/ExceptionFactory$ExceptionFactoryImpl;

    .line 33
    .end local v0    # "theFactory":Lorg/mockito/internal/junit/ExceptionFactory$ExceptionFactoryImpl;
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static createArgumentsAreDifferentException(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/AssertionError;
    .locals 1
    .param p0, "message"    # Ljava/lang/String;
    .param p1, "wanted"    # Ljava/lang/String;
    .param p2, "actual"    # Ljava/lang/String;

    .line 46
    sget-object v0, Lorg/mockito/internal/junit/ExceptionFactory;->factory:Lorg/mockito/internal/junit/ExceptionFactory$ExceptionFactoryImpl;

    invoke-interface {v0, p0, p1, p2}, Lorg/mockito/internal/junit/ExceptionFactory$ExceptionFactoryImpl;->create(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/AssertionError;

    move-result-object v0

    return-object v0
.end method
