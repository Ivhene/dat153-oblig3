.class Lorg/mockito/BDDMockito$BDDStubberImpl;
.super Ljava/lang/Object;
.source "BDDMockito.java"

# interfaces
.implements Lorg/mockito/BDDMockito$BDDStubber;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/mockito/BDDMockito;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "BDDStubberImpl"
.end annotation


# instance fields
.field private final mockitoStubber:Lorg/mockito/stubbing/Stubber;


# direct methods
.method public constructor <init>(Lorg/mockito/stubbing/Stubber;)V
    .locals 0
    .param p1, "mockitoStubber"    # Lorg/mockito/stubbing/Stubber;

    .line 428
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 429
    iput-object p1, p0, Lorg/mockito/BDDMockito$BDDStubberImpl;->mockitoStubber:Lorg/mockito/stubbing/Stubber;

    .line 430
    return-void
.end method


# virtual methods
.method public given(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;)TT;"
        }
    .end annotation

    .line 433
    .local p1, "mock":Ljava/lang/Object;, "TT;"
    iget-object v0, p0, Lorg/mockito/BDDMockito$BDDStubberImpl;->mockitoStubber:Lorg/mockito/stubbing/Stubber;

    invoke-interface {v0, p1}, Lorg/mockito/stubbing/Stubber;->when(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public will(Lorg/mockito/stubbing/Answer;)Lorg/mockito/BDDMockito$BDDStubber;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/mockito/stubbing/Answer<",
            "*>;)",
            "Lorg/mockito/BDDMockito$BDDStubber;"
        }
    .end annotation

    .line 441
    .local p1, "answer":Lorg/mockito/stubbing/Answer;, "Lorg/mockito/stubbing/Answer<*>;"
    new-instance v0, Lorg/mockito/BDDMockito$BDDStubberImpl;

    iget-object v1, p0, Lorg/mockito/BDDMockito$BDDStubberImpl;->mockitoStubber:Lorg/mockito/stubbing/Stubber;

    invoke-interface {v1, p1}, Lorg/mockito/stubbing/Stubber;->doAnswer(Lorg/mockito/stubbing/Answer;)Lorg/mockito/stubbing/Stubber;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/mockito/BDDMockito$BDDStubberImpl;-><init>(Lorg/mockito/stubbing/Stubber;)V

    return-object v0
.end method

.method public willAnswer(Lorg/mockito/stubbing/Answer;)Lorg/mockito/BDDMockito$BDDStubber;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/mockito/stubbing/Answer<",
            "*>;)",
            "Lorg/mockito/BDDMockito$BDDStubber;"
        }
    .end annotation

    .line 437
    .local p1, "answer":Lorg/mockito/stubbing/Answer;, "Lorg/mockito/stubbing/Answer<*>;"
    new-instance v0, Lorg/mockito/BDDMockito$BDDStubberImpl;

    iget-object v1, p0, Lorg/mockito/BDDMockito$BDDStubberImpl;->mockitoStubber:Lorg/mockito/stubbing/Stubber;

    invoke-interface {v1, p1}, Lorg/mockito/stubbing/Stubber;->doAnswer(Lorg/mockito/stubbing/Answer;)Lorg/mockito/stubbing/Stubber;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/mockito/BDDMockito$BDDStubberImpl;-><init>(Lorg/mockito/stubbing/Stubber;)V

    return-object v0
.end method

.method public willCallRealMethod()Lorg/mockito/BDDMockito$BDDStubber;
    .locals 2

    .line 480
    new-instance v0, Lorg/mockito/BDDMockito$BDDStubberImpl;

    iget-object v1, p0, Lorg/mockito/BDDMockito$BDDStubberImpl;->mockitoStubber:Lorg/mockito/stubbing/Stubber;

    invoke-interface {v1}, Lorg/mockito/stubbing/Stubber;->doCallRealMethod()Lorg/mockito/stubbing/Stubber;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/mockito/BDDMockito$BDDStubberImpl;-><init>(Lorg/mockito/stubbing/Stubber;)V

    return-object v0
.end method

.method public willDoNothing()Lorg/mockito/BDDMockito$BDDStubber;
    .locals 2

    .line 453
    new-instance v0, Lorg/mockito/BDDMockito$BDDStubberImpl;

    iget-object v1, p0, Lorg/mockito/BDDMockito$BDDStubberImpl;->mockitoStubber:Lorg/mockito/stubbing/Stubber;

    invoke-interface {v1}, Lorg/mockito/stubbing/Stubber;->doNothing()Lorg/mockito/stubbing/Stubber;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/mockito/BDDMockito$BDDStubberImpl;-><init>(Lorg/mockito/stubbing/Stubber;)V

    return-object v0
.end method

.method public willNothing()Lorg/mockito/BDDMockito$BDDStubber;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 449
    invoke-virtual {p0}, Lorg/mockito/BDDMockito$BDDStubberImpl;->willDoNothing()Lorg/mockito/BDDMockito$BDDStubber;

    move-result-object v0

    return-object v0
.end method

.method public willReturn(Ljava/lang/Object;)Lorg/mockito/BDDMockito$BDDStubber;
    .locals 2
    .param p1, "toBeReturned"    # Ljava/lang/Object;

    .line 457
    new-instance v0, Lorg/mockito/BDDMockito$BDDStubberImpl;

    iget-object v1, p0, Lorg/mockito/BDDMockito$BDDStubberImpl;->mockitoStubber:Lorg/mockito/stubbing/Stubber;

    invoke-interface {v1, p1}, Lorg/mockito/stubbing/Stubber;->doReturn(Ljava/lang/Object;)Lorg/mockito/stubbing/Stubber;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/mockito/BDDMockito$BDDStubberImpl;-><init>(Lorg/mockito/stubbing/Stubber;)V

    return-object v0
.end method

.method public varargs willReturn(Ljava/lang/Object;[Ljava/lang/Object;)Lorg/mockito/BDDMockito$BDDStubber;
    .locals 2
    .param p1, "toBeReturned"    # Ljava/lang/Object;
    .param p2, "nextToBeReturned"    # [Ljava/lang/Object;

    .line 461
    new-instance v0, Lorg/mockito/BDDMockito$BDDStubberImpl;

    iget-object v1, p0, Lorg/mockito/BDDMockito$BDDStubberImpl;->mockitoStubber:Lorg/mockito/stubbing/Stubber;

    .line 462
    invoke-interface {v1, p1}, Lorg/mockito/stubbing/Stubber;->doReturn(Ljava/lang/Object;)Lorg/mockito/stubbing/Stubber;

    move-result-object v1

    invoke-interface {v1, p2}, Lorg/mockito/stubbing/Stubber;->doReturn(Ljava/lang/Object;)Lorg/mockito/stubbing/Stubber;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/mockito/BDDMockito$BDDStubberImpl;-><init>(Lorg/mockito/stubbing/Stubber;)V

    .line 461
    return-object v0
.end method

.method public willThrow(Ljava/lang/Class;)Lorg/mockito/BDDMockito$BDDStubber;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "+",
            "Ljava/lang/Throwable;",
            ">;)",
            "Lorg/mockito/BDDMockito$BDDStubber;"
        }
    .end annotation

    .line 470
    .local p1, "toBeThrown":Ljava/lang/Class;, "Ljava/lang/Class<+Ljava/lang/Throwable;>;"
    new-instance v0, Lorg/mockito/BDDMockito$BDDStubberImpl;

    iget-object v1, p0, Lorg/mockito/BDDMockito$BDDStubberImpl;->mockitoStubber:Lorg/mockito/stubbing/Stubber;

    invoke-interface {v1, p1}, Lorg/mockito/stubbing/Stubber;->doThrow(Ljava/lang/Class;)Lorg/mockito/stubbing/Stubber;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/mockito/BDDMockito$BDDStubberImpl;-><init>(Lorg/mockito/stubbing/Stubber;)V

    return-object v0
.end method

.method public varargs willThrow(Ljava/lang/Class;[Ljava/lang/Class;)Lorg/mockito/BDDMockito$BDDStubber;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "+",
            "Ljava/lang/Throwable;",
            ">;[",
            "Ljava/lang/Class<",
            "+",
            "Ljava/lang/Throwable;",
            ">;)",
            "Lorg/mockito/BDDMockito$BDDStubber;"
        }
    .end annotation

    .line 476
    .local p1, "toBeThrown":Ljava/lang/Class;, "Ljava/lang/Class<+Ljava/lang/Throwable;>;"
    .local p2, "nextToBeThrown":[Ljava/lang/Class;, "[Ljava/lang/Class<+Ljava/lang/Throwable;>;"
    new-instance v0, Lorg/mockito/BDDMockito$BDDStubberImpl;

    iget-object v1, p0, Lorg/mockito/BDDMockito$BDDStubberImpl;->mockitoStubber:Lorg/mockito/stubbing/Stubber;

    invoke-interface {v1, p1, p2}, Lorg/mockito/stubbing/Stubber;->doThrow(Ljava/lang/Class;[Ljava/lang/Class;)Lorg/mockito/stubbing/Stubber;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/mockito/BDDMockito$BDDStubberImpl;-><init>(Lorg/mockito/stubbing/Stubber;)V

    return-object v0
.end method

.method public varargs willThrow([Ljava/lang/Throwable;)Lorg/mockito/BDDMockito$BDDStubber;
    .locals 2
    .param p1, "toBeThrown"    # [Ljava/lang/Throwable;

    .line 466
    new-instance v0, Lorg/mockito/BDDMockito$BDDStubberImpl;

    iget-object v1, p0, Lorg/mockito/BDDMockito$BDDStubberImpl;->mockitoStubber:Lorg/mockito/stubbing/Stubber;

    invoke-interface {v1, p1}, Lorg/mockito/stubbing/Stubber;->doThrow([Ljava/lang/Throwable;)Lorg/mockito/stubbing/Stubber;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/mockito/BDDMockito$BDDStubberImpl;-><init>(Lorg/mockito/stubbing/Stubber;)V

    return-object v0
.end method
