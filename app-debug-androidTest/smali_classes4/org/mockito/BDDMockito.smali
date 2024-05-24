.class public Lorg/mockito/BDDMockito;
.super Lorg/mockito/Mockito;
.source "BDDMockito.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/mockito/BDDMockito$BDDStubberImpl;,
        Lorg/mockito/BDDMockito$BDDStubber;,
        Lorg/mockito/BDDMockito$ThenImpl;,
        Lorg/mockito/BDDMockito$Then;,
        Lorg/mockito/BDDMockito$BDDOngoingStubbingImpl;,
        Lorg/mockito/BDDMockito$BDDMyOngoingStubbing;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 81
    invoke-direct {p0}, Lorg/mockito/Mockito;-><init>()V

    return-void
.end method

.method public static given(Ljava/lang/Object;)Lorg/mockito/BDDMockito$BDDMyOngoingStubbing;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;)",
            "Lorg/mockito/BDDMockito$BDDMyOngoingStubbing<",
            "TT;>;"
        }
    .end annotation

    .line 203
    .local p0, "methodCall":Ljava/lang/Object;, "TT;"
    new-instance v0, Lorg/mockito/BDDMockito$BDDOngoingStubbingImpl;

    invoke-static {p0}, Lorg/mockito/Mockito;->when(Ljava/lang/Object;)Lorg/mockito/stubbing/OngoingStubbing;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/mockito/BDDMockito$BDDOngoingStubbingImpl;-><init>(Lorg/mockito/stubbing/OngoingStubbing;)V

    return-object v0
.end method

.method public static then(Ljava/lang/Object;)Lorg/mockito/BDDMockito$Then;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;)",
            "Lorg/mockito/BDDMockito$Then<",
            "TT;>;"
        }
    .end annotation

    .line 221
    .local p0, "mock":Ljava/lang/Object;, "TT;"
    new-instance v0, Lorg/mockito/BDDMockito$ThenImpl;

    invoke-direct {v0, p0}, Lorg/mockito/BDDMockito$ThenImpl;-><init>(Ljava/lang/Object;)V

    return-object v0
.end method

.method public static will(Lorg/mockito/stubbing/Answer;)Lorg/mockito/BDDMockito$BDDStubber;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/mockito/stubbing/Answer<",
            "*>;)",
            "Lorg/mockito/BDDMockito$BDDStubber;"
        }
    .end annotation

    .line 522
    .local p0, "answer":Lorg/mockito/stubbing/Answer;, "Lorg/mockito/stubbing/Answer<*>;"
    new-instance v0, Lorg/mockito/BDDMockito$BDDStubberImpl;

    invoke-static {p0}, Lorg/mockito/Mockito;->doAnswer(Lorg/mockito/stubbing/Answer;)Lorg/mockito/stubbing/Stubber;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/mockito/BDDMockito$BDDStubberImpl;-><init>(Lorg/mockito/stubbing/Stubber;)V

    return-object v0
.end method

.method public static willAnswer(Lorg/mockito/stubbing/Answer;)Lorg/mockito/BDDMockito$BDDStubber;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/mockito/stubbing/Answer<",
            "*>;)",
            "Lorg/mockito/BDDMockito$BDDStubber;"
        }
    .end annotation

    .line 514
    .local p0, "answer":Lorg/mockito/stubbing/Answer;, "Lorg/mockito/stubbing/Answer<*>;"
    new-instance v0, Lorg/mockito/BDDMockito$BDDStubberImpl;

    invoke-static {p0}, Lorg/mockito/Mockito;->doAnswer(Lorg/mockito/stubbing/Answer;)Lorg/mockito/stubbing/Stubber;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/mockito/BDDMockito$BDDStubberImpl;-><init>(Lorg/mockito/stubbing/Stubber;)V

    return-object v0
.end method

.method public static willCallRealMethod()Lorg/mockito/BDDMockito$BDDStubber;
    .locals 2

    .line 555
    new-instance v0, Lorg/mockito/BDDMockito$BDDStubberImpl;

    invoke-static {}, Lorg/mockito/Mockito;->doCallRealMethod()Lorg/mockito/stubbing/Stubber;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/mockito/BDDMockito$BDDStubberImpl;-><init>(Lorg/mockito/stubbing/Stubber;)V

    return-object v0
.end method

.method public static willDoNothing()Lorg/mockito/BDDMockito$BDDStubber;
    .locals 2

    .line 530
    new-instance v0, Lorg/mockito/BDDMockito$BDDStubberImpl;

    invoke-static {}, Lorg/mockito/Mockito;->doNothing()Lorg/mockito/stubbing/Stubber;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/mockito/BDDMockito$BDDStubberImpl;-><init>(Lorg/mockito/stubbing/Stubber;)V

    return-object v0
.end method

.method public static willReturn(Ljava/lang/Object;)Lorg/mockito/BDDMockito$BDDStubber;
    .locals 2
    .param p0, "toBeReturned"    # Ljava/lang/Object;

    .line 538
    new-instance v0, Lorg/mockito/BDDMockito$BDDStubberImpl;

    invoke-static {p0}, Lorg/mockito/Mockito;->doReturn(Ljava/lang/Object;)Lorg/mockito/stubbing/Stubber;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/mockito/BDDMockito$BDDStubberImpl;-><init>(Lorg/mockito/stubbing/Stubber;)V

    return-object v0
.end method

.method public static varargs willReturn(Ljava/lang/Object;[Ljava/lang/Object;)Lorg/mockito/BDDMockito$BDDStubber;
    .locals 2
    .param p0, "toBeReturned"    # Ljava/lang/Object;
    .param p1, "toBeReturnedNext"    # [Ljava/lang/Object;

    .line 547
    new-instance v0, Lorg/mockito/BDDMockito$BDDStubberImpl;

    invoke-static {p0, p1}, Lorg/mockito/Mockito;->doReturn(Ljava/lang/Object;[Ljava/lang/Object;)Lorg/mockito/stubbing/Stubber;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/mockito/BDDMockito$BDDStubberImpl;-><init>(Lorg/mockito/stubbing/Stubber;)V

    return-object v0
.end method

.method public static willThrow(Ljava/lang/Class;)Lorg/mockito/BDDMockito$BDDStubber;
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

    .line 497
    .local p0, "toBeThrown":Ljava/lang/Class;, "Ljava/lang/Class<+Ljava/lang/Throwable;>;"
    new-instance v0, Lorg/mockito/BDDMockito$BDDStubberImpl;

    invoke-static {p0}, Lorg/mockito/Mockito;->doThrow(Ljava/lang/Class;)Lorg/mockito/stubbing/Stubber;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/mockito/BDDMockito$BDDStubberImpl;-><init>(Lorg/mockito/stubbing/Stubber;)V

    return-object v0
.end method

.method public static varargs willThrow(Ljava/lang/Class;[Ljava/lang/Class;)Lorg/mockito/BDDMockito$BDDStubber;
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

    .line 506
    .local p0, "toBeThrown":Ljava/lang/Class;, "Ljava/lang/Class<+Ljava/lang/Throwable;>;"
    .local p1, "throwableTypes":[Ljava/lang/Class;, "[Ljava/lang/Class<+Ljava/lang/Throwable;>;"
    new-instance v0, Lorg/mockito/BDDMockito$BDDStubberImpl;

    invoke-static {p0, p1}, Lorg/mockito/Mockito;->doThrow(Ljava/lang/Class;[Ljava/lang/Class;)Lorg/mockito/stubbing/Stubber;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/mockito/BDDMockito$BDDStubberImpl;-><init>(Lorg/mockito/stubbing/Stubber;)V

    return-object v0
.end method

.method public static varargs willThrow([Ljava/lang/Throwable;)Lorg/mockito/BDDMockito$BDDStubber;
    .locals 2
    .param p0, "toBeThrown"    # [Ljava/lang/Throwable;

    .line 489
    new-instance v0, Lorg/mockito/BDDMockito$BDDStubberImpl;

    invoke-static {p0}, Lorg/mockito/Mockito;->doThrow([Ljava/lang/Throwable;)Lorg/mockito/stubbing/Stubber;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/mockito/BDDMockito$BDDStubberImpl;-><init>(Lorg/mockito/stubbing/Stubber;)V

    return-object v0
.end method
