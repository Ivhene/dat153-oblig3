.class public Lorg/mockito/internal/debugging/WarningsPrinterImpl;
.super Ljava/lang/Object;
.source "WarningsPrinterImpl.java"


# instance fields
.field private final finder:Lorg/mockito/internal/debugging/WarningsFinder;

.field private final warnAboutUnstubbed:Z


# direct methods
.method public constructor <init>(Ljava/util/List;Ljava/util/List;Z)V
    .locals 1
    .param p3, "warnAboutUnstubbed"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lorg/mockito/invocation/Invocation;",
            ">;",
            "Ljava/util/List<",
            "Lorg/mockito/internal/invocation/InvocationMatcher;",
            ">;Z)V"
        }
    .end annotation

    .line 21
    .local p1, "unusedStubs":Ljava/util/List;, "Ljava/util/List<Lorg/mockito/invocation/Invocation;>;"
    .local p2, "allInvocations":Ljava/util/List;, "Ljava/util/List<Lorg/mockito/internal/invocation/InvocationMatcher;>;"
    new-instance v0, Lorg/mockito/internal/debugging/WarningsFinder;

    invoke-direct {v0, p1, p2}, Lorg/mockito/internal/debugging/WarningsFinder;-><init>(Ljava/util/List;Ljava/util/List;)V

    invoke-direct {p0, p3, v0}, Lorg/mockito/internal/debugging/WarningsPrinterImpl;-><init>(ZLorg/mockito/internal/debugging/WarningsFinder;)V

    .line 22
    return-void
.end method

.method constructor <init>(ZLorg/mockito/internal/debugging/WarningsFinder;)V
    .locals 0
    .param p1, "warnAboutUnstubbed"    # Z
    .param p2, "finder"    # Lorg/mockito/internal/debugging/WarningsFinder;

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    iput-boolean p1, p0, Lorg/mockito/internal/debugging/WarningsPrinterImpl;->warnAboutUnstubbed:Z

    .line 26
    iput-object p2, p0, Lorg/mockito/internal/debugging/WarningsPrinterImpl;->finder:Lorg/mockito/internal/debugging/WarningsFinder;

    .line 27
    return-void
.end method


# virtual methods
.method public print()Ljava/lang/String;
    .locals 2

    .line 30
    new-instance v0, Lorg/mockito/internal/debugging/LoggingListener;

    iget-boolean v1, p0, Lorg/mockito/internal/debugging/WarningsPrinterImpl;->warnAboutUnstubbed:Z

    invoke-direct {v0, v1}, Lorg/mockito/internal/debugging/LoggingListener;-><init>(Z)V

    .line 31
    .local v0, "listener":Lorg/mockito/internal/debugging/LoggingListener;
    iget-object v1, p0, Lorg/mockito/internal/debugging/WarningsPrinterImpl;->finder:Lorg/mockito/internal/debugging/WarningsFinder;

    invoke-virtual {v1, v0}, Lorg/mockito/internal/debugging/WarningsFinder;->find(Lorg/mockito/internal/debugging/FindingsListener;)V

    .line 32
    invoke-virtual {v0}, Lorg/mockito/internal/debugging/LoggingListener;->getStubbingInfo()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
