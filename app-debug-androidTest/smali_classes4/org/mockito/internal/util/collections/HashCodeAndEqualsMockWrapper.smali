.class public Lorg/mockito/internal/util/collections/HashCodeAndEqualsMockWrapper;
.super Ljava/lang/Object;
.source "HashCodeAndEqualsMockWrapper.java"


# instance fields
.field private final mockInstance:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Ljava/lang/Object;)V
    .locals 0
    .param p1, "mockInstance"    # Ljava/lang/Object;

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    iput-object p1, p0, Lorg/mockito/internal/util/collections/HashCodeAndEqualsMockWrapper;->mockInstance:Ljava/lang/Object;

    .line 33
    return-void
.end method

.method public static of(Ljava/lang/Object;)Lorg/mockito/internal/util/collections/HashCodeAndEqualsMockWrapper;
    .locals 1
    .param p0, "mock"    # Ljava/lang/Object;

    .line 59
    new-instance v0, Lorg/mockito/internal/util/collections/HashCodeAndEqualsMockWrapper;

    invoke-direct {v0, p0}, Lorg/mockito/internal/util/collections/HashCodeAndEqualsMockWrapper;-><init>(Ljava/lang/Object;)V

    return-object v0
.end method

.method private typeInstanceString()Ljava/lang/String;
    .locals 2

    .line 73
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lorg/mockito/internal/util/collections/HashCodeAndEqualsMockWrapper;->mockInstance:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/mockito/internal/util/collections/HashCodeAndEqualsMockWrapper;->mockInstance:Ljava/lang/Object;

    .line 75
    invoke-static {v1}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 73
    return-object v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "o"    # Ljava/lang/Object;

    .line 41
    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    .line 42
    return v0

    .line 44
    :cond_0
    instance-of v1, p1, Lorg/mockito/internal/util/collections/HashCodeAndEqualsMockWrapper;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    .line 45
    return v2

    .line 48
    :cond_1
    move-object v1, p1

    check-cast v1, Lorg/mockito/internal/util/collections/HashCodeAndEqualsMockWrapper;

    .line 50
    .local v1, "that":Lorg/mockito/internal/util/collections/HashCodeAndEqualsMockWrapper;
    iget-object v3, p0, Lorg/mockito/internal/util/collections/HashCodeAndEqualsMockWrapper;->mockInstance:Ljava/lang/Object;

    iget-object v4, v1, Lorg/mockito/internal/util/collections/HashCodeAndEqualsMockWrapper;->mockInstance:Ljava/lang/Object;

    if-ne v3, v4, :cond_2

    goto :goto_0

    :cond_2
    move v0, v2

    :goto_0
    return v0
.end method

.method public get()Ljava/lang/Object;
    .locals 1

    .line 36
    iget-object v0, p0, Lorg/mockito/internal/util/collections/HashCodeAndEqualsMockWrapper;->mockInstance:Ljava/lang/Object;

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    .line 55
    iget-object v0, p0, Lorg/mockito/internal/util/collections/HashCodeAndEqualsMockWrapper;->mockInstance:Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 64
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "HashCodeAndEqualsMockWrapper{mockInstance="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 66
    iget-object v1, p0, Lorg/mockito/internal/util/collections/HashCodeAndEqualsMockWrapper;->mockInstance:Ljava/lang/Object;

    invoke-static {v1}, Lorg/mockito/internal/util/MockUtil;->isMock(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 67
    iget-object v1, p0, Lorg/mockito/internal/util/collections/HashCodeAndEqualsMockWrapper;->mockInstance:Ljava/lang/Object;

    invoke-static {v1}, Lorg/mockito/internal/util/MockUtil;->getMockName(Ljava/lang/Object;)Lorg/mockito/mock/MockName;

    move-result-object v1

    goto :goto_0

    .line 68
    :cond_0
    invoke-direct {p0}, Lorg/mockito/internal/util/collections/HashCodeAndEqualsMockWrapper;->typeInstanceString()Ljava/lang/String;

    move-result-object v1

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 64
    return-object v0
.end method
