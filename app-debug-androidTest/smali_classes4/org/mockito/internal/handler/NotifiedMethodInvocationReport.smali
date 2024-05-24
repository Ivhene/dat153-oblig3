.class public Lorg/mockito/internal/handler/NotifiedMethodInvocationReport;
.super Ljava/lang/Object;
.source "NotifiedMethodInvocationReport.java"

# interfaces
.implements Lorg/mockito/listeners/MethodInvocationReport;


# instance fields
.field private final invocation:Lorg/mockito/invocation/Invocation;

.field private final returnedValue:Ljava/lang/Object;

.field private final throwable:Ljava/lang/Throwable;


# direct methods
.method public constructor <init>(Lorg/mockito/invocation/Invocation;Ljava/lang/Object;)V
    .locals 1
    .param p1, "invocation"    # Lorg/mockito/invocation/Invocation;
    .param p2, "returnedValue"    # Ljava/lang/Object;

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    iput-object p1, p0, Lorg/mockito/internal/handler/NotifiedMethodInvocationReport;->invocation:Lorg/mockito/invocation/Invocation;

    .line 30
    iput-object p2, p0, Lorg/mockito/internal/handler/NotifiedMethodInvocationReport;->returnedValue:Ljava/lang/Object;

    .line 31
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/mockito/internal/handler/NotifiedMethodInvocationReport;->throwable:Ljava/lang/Throwable;

    .line 32
    return-void
.end method

.method public constructor <init>(Lorg/mockito/invocation/Invocation;Ljava/lang/Throwable;)V
    .locals 1
    .param p1, "invocation"    # Lorg/mockito/invocation/Invocation;
    .param p2, "throwable"    # Ljava/lang/Throwable;

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    iput-object p1, p0, Lorg/mockito/internal/handler/NotifiedMethodInvocationReport;->invocation:Lorg/mockito/invocation/Invocation;

    .line 43
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/mockito/internal/handler/NotifiedMethodInvocationReport;->returnedValue:Ljava/lang/Object;

    .line 44
    iput-object p2, p0, Lorg/mockito/internal/handler/NotifiedMethodInvocationReport;->throwable:Ljava/lang/Throwable;

    .line 45
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "o"    # Ljava/lang/Object;

    .line 76
    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    .line 77
    return v0

    .line 79
    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_3

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_1

    .line 83
    :cond_1
    move-object v2, p1

    check-cast v2, Lorg/mockito/internal/handler/NotifiedMethodInvocationReport;

    .line 85
    .local v2, "that":Lorg/mockito/internal/handler/NotifiedMethodInvocationReport;
    iget-object v3, p0, Lorg/mockito/internal/handler/NotifiedMethodInvocationReport;->invocation:Lorg/mockito/invocation/Invocation;

    iget-object v4, v2, Lorg/mockito/internal/handler/NotifiedMethodInvocationReport;->invocation:Lorg/mockito/invocation/Invocation;

    invoke-static {v3, v4}, Lorg/mockito/internal/matchers/Equality;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lorg/mockito/internal/handler/NotifiedMethodInvocationReport;->returnedValue:Ljava/lang/Object;

    iget-object v4, v2, Lorg/mockito/internal/handler/NotifiedMethodInvocationReport;->returnedValue:Ljava/lang/Object;

    .line 86
    invoke-static {v3, v4}, Lorg/mockito/internal/matchers/Equality;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lorg/mockito/internal/handler/NotifiedMethodInvocationReport;->throwable:Ljava/lang/Throwable;

    iget-object v4, v2, Lorg/mockito/internal/handler/NotifiedMethodInvocationReport;->throwable:Ljava/lang/Throwable;

    .line 87
    invoke-static {v3, v4}, Lorg/mockito/internal/matchers/Equality;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    goto :goto_0

    :cond_2
    move v0, v1

    .line 85
    :goto_0
    return v0

    .line 80
    .end local v2    # "that":Lorg/mockito/internal/handler/NotifiedMethodInvocationReport;
    :cond_3
    :goto_1
    return v1
.end method

.method public getInvocation()Lorg/mockito/invocation/DescribedInvocation;
    .locals 1

    .line 49
    iget-object v0, p0, Lorg/mockito/internal/handler/NotifiedMethodInvocationReport;->invocation:Lorg/mockito/invocation/Invocation;

    return-object v0
.end method

.method public getLocationOfStubbing()Ljava/lang/String;
    .locals 1

    .line 69
    iget-object v0, p0, Lorg/mockito/internal/handler/NotifiedMethodInvocationReport;->invocation:Lorg/mockito/invocation/Invocation;

    invoke-interface {v0}, Lorg/mockito/invocation/Invocation;->stubInfo()Lorg/mockito/invocation/StubInfo;

    move-result-object v0

    if-nez v0, :cond_0

    .line 70
    const/4 v0, 0x0

    goto :goto_0

    .line 71
    :cond_0
    iget-object v0, p0, Lorg/mockito/internal/handler/NotifiedMethodInvocationReport;->invocation:Lorg/mockito/invocation/Invocation;

    invoke-interface {v0}, Lorg/mockito/invocation/Invocation;->stubInfo()Lorg/mockito/invocation/StubInfo;

    move-result-object v0

    invoke-interface {v0}, Lorg/mockito/invocation/StubInfo;->stubbedAt()Lorg/mockito/invocation/Location;

    move-result-object v0

    invoke-interface {v0}, Lorg/mockito/invocation/Location;->toString()Ljava/lang/String;

    move-result-object v0

    .line 69
    :goto_0
    return-object v0
.end method

.method public getReturnedValue()Ljava/lang/Object;
    .locals 1

    .line 54
    iget-object v0, p0, Lorg/mockito/internal/handler/NotifiedMethodInvocationReport;->returnedValue:Ljava/lang/Object;

    return-object v0
.end method

.method public getThrowable()Ljava/lang/Throwable;
    .locals 1

    .line 59
    iget-object v0, p0, Lorg/mockito/internal/handler/NotifiedMethodInvocationReport;->throwable:Ljava/lang/Throwable;

    return-object v0
.end method

.method public hashCode()I
    .locals 4

    .line 92
    iget-object v0, p0, Lorg/mockito/internal/handler/NotifiedMethodInvocationReport;->invocation:Lorg/mockito/invocation/Invocation;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    goto :goto_0

    :cond_0
    move v0, v1

    .line 93
    .local v0, "result":I
    :goto_0
    mul-int/lit8 v2, v0, 0x1f

    iget-object v3, p0, Lorg/mockito/internal/handler/NotifiedMethodInvocationReport;->returnedValue:Ljava/lang/Object;

    if-eqz v3, :cond_1

    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v3

    goto :goto_1

    :cond_1
    move v3, v1

    :goto_1
    add-int/2addr v2, v3

    .line 94
    .end local v0    # "result":I
    .local v2, "result":I
    mul-int/lit8 v0, v2, 0x1f

    iget-object v3, p0, Lorg/mockito/internal/handler/NotifiedMethodInvocationReport;->throwable:Ljava/lang/Throwable;

    if-eqz v3, :cond_2

    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v1

    :cond_2
    add-int/2addr v0, v1

    .line 95
    .end local v2    # "result":I
    .restart local v0    # "result":I
    return v0
.end method

.method public threwException()Z
    .locals 1

    .line 64
    iget-object v0, p0, Lorg/mockito/internal/handler/NotifiedMethodInvocationReport;->throwable:Ljava/lang/Throwable;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
