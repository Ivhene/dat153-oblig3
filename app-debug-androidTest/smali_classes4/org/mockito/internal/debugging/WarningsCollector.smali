.class public Lorg/mockito/internal/debugging/WarningsCollector;
.super Ljava/lang/Object;
.source "WarningsCollector.java"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field private final createdMocks:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lorg/mockito/internal/debugging/WarningsCollector;->createdMocks:Ljava/util/List;

    .line 22
    return-void
.end method


# virtual methods
.method public getWarnings()Ljava/lang/String;
    .locals 5

    .line 25
    new-instance v0, Lorg/mockito/internal/invocation/UnusedStubsFinder;

    invoke-direct {v0}, Lorg/mockito/internal/invocation/UnusedStubsFinder;-><init>()V

    iget-object v1, p0, Lorg/mockito/internal/debugging/WarningsCollector;->createdMocks:Ljava/util/List;

    invoke-virtual {v0, v1}, Lorg/mockito/internal/invocation/UnusedStubsFinder;->find(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    .line 26
    .local v0, "unused":Ljava/util/List;, "Ljava/util/List<Lorg/mockito/invocation/Invocation;>;"
    iget-object v1, p0, Lorg/mockito/internal/debugging/WarningsCollector;->createdMocks:Ljava/util/List;

    invoke-static {v1}, Lorg/mockito/internal/invocation/finder/AllInvocationsFinder;->find(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object v1

    .line 27
    .local v1, "all":Ljava/util/List;, "Ljava/util/List<Lorg/mockito/invocation/Invocation;>;"
    invoke-static {v1}, Lorg/mockito/internal/invocation/InvocationMatcher;->createFrom(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    .line 29
    .local v2, "allInvocationMatchers":Ljava/util/List;, "Ljava/util/List<Lorg/mockito/internal/invocation/InvocationMatcher;>;"
    new-instance v3, Lorg/mockito/internal/debugging/WarningsPrinterImpl;

    const/4 v4, 0x0

    invoke-direct {v3, v0, v2, v4}, Lorg/mockito/internal/debugging/WarningsPrinterImpl;-><init>(Ljava/util/List;Ljava/util/List;Z)V

    invoke-virtual {v3}, Lorg/mockito/internal/debugging/WarningsPrinterImpl;->print()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method
