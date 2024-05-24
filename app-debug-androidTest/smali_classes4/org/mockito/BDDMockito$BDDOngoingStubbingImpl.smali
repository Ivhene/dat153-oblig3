.class Lorg/mockito/BDDMockito$BDDOngoingStubbingImpl;
.super Ljava/lang/Object;
.source "BDDMockito.java"

# interfaces
.implements Lorg/mockito/BDDMockito$BDDMyOngoingStubbing;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/mockito/BDDMockito;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "BDDOngoingStubbingImpl"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lorg/mockito/BDDMockito$BDDMyOngoingStubbing<",
        "TT;>;"
    }
.end annotation


# instance fields
.field private final mockitoOngoingStubbing:Lorg/mockito/stubbing/OngoingStubbing;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/mockito/stubbing/OngoingStubbing<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lorg/mockito/stubbing/OngoingStubbing;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/mockito/stubbing/OngoingStubbing<",
            "TT;>;)V"
        }
    .end annotation

    .line 154
    .local p0, "this":Lorg/mockito/BDDMockito$BDDOngoingStubbingImpl;, "Lorg/mockito/BDDMockito$BDDOngoingStubbingImpl<TT;>;"
    .local p1, "ongoingStubbing":Lorg/mockito/stubbing/OngoingStubbing;, "Lorg/mockito/stubbing/OngoingStubbing<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 155
    iput-object p1, p0, Lorg/mockito/BDDMockito$BDDOngoingStubbingImpl;->mockitoOngoingStubbing:Lorg/mockito/stubbing/OngoingStubbing;

    .line 156
    return-void
.end method


# virtual methods
.method public getMock()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<M:",
            "Ljava/lang/Object;",
            ">()TM;"
        }
    .end annotation

    .line 194
    .local p0, "this":Lorg/mockito/BDDMockito$BDDOngoingStubbingImpl;, "Lorg/mockito/BDDMockito$BDDOngoingStubbingImpl<TT;>;"
    iget-object v0, p0, Lorg/mockito/BDDMockito$BDDOngoingStubbingImpl;->mockitoOngoingStubbing:Lorg/mockito/stubbing/OngoingStubbing;

    invoke-interface {v0}, Lorg/mockito/stubbing/OngoingStubbing;->getMock()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public will(Lorg/mockito/stubbing/Answer;)Lorg/mockito/BDDMockito$BDDMyOngoingStubbing;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/mockito/stubbing/Answer<",
            "*>;)",
            "Lorg/mockito/BDDMockito$BDDMyOngoingStubbing<",
            "TT;>;"
        }
    .end annotation

    .line 163
    .local p0, "this":Lorg/mockito/BDDMockito$BDDOngoingStubbingImpl;, "Lorg/mockito/BDDMockito$BDDOngoingStubbingImpl<TT;>;"
    .local p1, "answer":Lorg/mockito/stubbing/Answer;, "Lorg/mockito/stubbing/Answer<*>;"
    new-instance v0, Lorg/mockito/BDDMockito$BDDOngoingStubbingImpl;

    iget-object v1, p0, Lorg/mockito/BDDMockito$BDDOngoingStubbingImpl;->mockitoOngoingStubbing:Lorg/mockito/stubbing/OngoingStubbing;

    invoke-interface {v1, p1}, Lorg/mockito/stubbing/OngoingStubbing;->then(Lorg/mockito/stubbing/Answer;)Lorg/mockito/stubbing/OngoingStubbing;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/mockito/BDDMockito$BDDOngoingStubbingImpl;-><init>(Lorg/mockito/stubbing/OngoingStubbing;)V

    return-object v0
.end method

.method public willAnswer(Lorg/mockito/stubbing/Answer;)Lorg/mockito/BDDMockito$BDDMyOngoingStubbing;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/mockito/stubbing/Answer<",
            "*>;)",
            "Lorg/mockito/BDDMockito$BDDMyOngoingStubbing<",
            "TT;>;"
        }
    .end annotation

    .line 159
    .local p0, "this":Lorg/mockito/BDDMockito$BDDOngoingStubbingImpl;, "Lorg/mockito/BDDMockito$BDDOngoingStubbingImpl<TT;>;"
    .local p1, "answer":Lorg/mockito/stubbing/Answer;, "Lorg/mockito/stubbing/Answer<*>;"
    new-instance v0, Lorg/mockito/BDDMockito$BDDOngoingStubbingImpl;

    iget-object v1, p0, Lorg/mockito/BDDMockito$BDDOngoingStubbingImpl;->mockitoOngoingStubbing:Lorg/mockito/stubbing/OngoingStubbing;

    invoke-interface {v1, p1}, Lorg/mockito/stubbing/OngoingStubbing;->thenAnswer(Lorg/mockito/stubbing/Answer;)Lorg/mockito/stubbing/OngoingStubbing;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/mockito/BDDMockito$BDDOngoingStubbingImpl;-><init>(Lorg/mockito/stubbing/OngoingStubbing;)V

    return-object v0
.end method

.method public willCallRealMethod()Lorg/mockito/BDDMockito$BDDMyOngoingStubbing;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/mockito/BDDMockito$BDDMyOngoingStubbing<",
            "TT;>;"
        }
    .end annotation

    .line 190
    .local p0, "this":Lorg/mockito/BDDMockito$BDDOngoingStubbingImpl;, "Lorg/mockito/BDDMockito$BDDOngoingStubbingImpl<TT;>;"
    new-instance v0, Lorg/mockito/BDDMockito$BDDOngoingStubbingImpl;

    iget-object v1, p0, Lorg/mockito/BDDMockito$BDDOngoingStubbingImpl;->mockitoOngoingStubbing:Lorg/mockito/stubbing/OngoingStubbing;

    invoke-interface {v1}, Lorg/mockito/stubbing/OngoingStubbing;->thenCallRealMethod()Lorg/mockito/stubbing/OngoingStubbing;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/mockito/BDDMockito$BDDOngoingStubbingImpl;-><init>(Lorg/mockito/stubbing/OngoingStubbing;)V

    return-object v0
.end method

.method public willReturn(Ljava/lang/Object;)Lorg/mockito/BDDMockito$BDDMyOngoingStubbing;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)",
            "Lorg/mockito/BDDMockito$BDDMyOngoingStubbing<",
            "TT;>;"
        }
    .end annotation

    .line 167
    .local p0, "this":Lorg/mockito/BDDMockito$BDDOngoingStubbingImpl;, "Lorg/mockito/BDDMockito$BDDOngoingStubbingImpl<TT;>;"
    .local p1, "value":Ljava/lang/Object;, "TT;"
    new-instance v0, Lorg/mockito/BDDMockito$BDDOngoingStubbingImpl;

    iget-object v1, p0, Lorg/mockito/BDDMockito$BDDOngoingStubbingImpl;->mockitoOngoingStubbing:Lorg/mockito/stubbing/OngoingStubbing;

    invoke-interface {v1, p1}, Lorg/mockito/stubbing/OngoingStubbing;->thenReturn(Ljava/lang/Object;)Lorg/mockito/stubbing/OngoingStubbing;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/mockito/BDDMockito$BDDOngoingStubbingImpl;-><init>(Lorg/mockito/stubbing/OngoingStubbing;)V

    return-object v0
.end method

.method public varargs willReturn(Ljava/lang/Object;[Ljava/lang/Object;)Lorg/mockito/BDDMockito$BDDMyOngoingStubbing;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;[TT;)",
            "Lorg/mockito/BDDMockito$BDDMyOngoingStubbing<",
            "TT;>;"
        }
    .end annotation

    .line 171
    .local p0, "this":Lorg/mockito/BDDMockito$BDDOngoingStubbingImpl;, "Lorg/mockito/BDDMockito$BDDOngoingStubbingImpl<TT;>;"
    .local p1, "value":Ljava/lang/Object;, "TT;"
    .local p2, "values":[Ljava/lang/Object;, "[TT;"
    new-instance v0, Lorg/mockito/BDDMockito$BDDOngoingStubbingImpl;

    iget-object v1, p0, Lorg/mockito/BDDMockito$BDDOngoingStubbingImpl;->mockitoOngoingStubbing:Lorg/mockito/stubbing/OngoingStubbing;

    invoke-interface {v1, p1, p2}, Lorg/mockito/stubbing/OngoingStubbing;->thenReturn(Ljava/lang/Object;[Ljava/lang/Object;)Lorg/mockito/stubbing/OngoingStubbing;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/mockito/BDDMockito$BDDOngoingStubbingImpl;-><init>(Lorg/mockito/stubbing/OngoingStubbing;)V

    return-object v0
.end method

.method public willThrow(Ljava/lang/Class;)Lorg/mockito/BDDMockito$BDDMyOngoingStubbing;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "+",
            "Ljava/lang/Throwable;",
            ">;)",
            "Lorg/mockito/BDDMockito$BDDMyOngoingStubbing<",
            "TT;>;"
        }
    .end annotation

    .line 179
    .local p0, "this":Lorg/mockito/BDDMockito$BDDOngoingStubbingImpl;, "Lorg/mockito/BDDMockito$BDDOngoingStubbingImpl<TT;>;"
    .local p1, "throwableType":Ljava/lang/Class;, "Ljava/lang/Class<+Ljava/lang/Throwable;>;"
    new-instance v0, Lorg/mockito/BDDMockito$BDDOngoingStubbingImpl;

    iget-object v1, p0, Lorg/mockito/BDDMockito$BDDOngoingStubbingImpl;->mockitoOngoingStubbing:Lorg/mockito/stubbing/OngoingStubbing;

    invoke-interface {v1, p1}, Lorg/mockito/stubbing/OngoingStubbing;->thenThrow(Ljava/lang/Class;)Lorg/mockito/stubbing/OngoingStubbing;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/mockito/BDDMockito$BDDOngoingStubbingImpl;-><init>(Lorg/mockito/stubbing/OngoingStubbing;)V

    return-object v0
.end method

.method public varargs willThrow(Ljava/lang/Class;[Ljava/lang/Class;)Lorg/mockito/BDDMockito$BDDMyOngoingStubbing;
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
            "Lorg/mockito/BDDMockito$BDDMyOngoingStubbing<",
            "TT;>;"
        }
    .end annotation

    .line 185
    .local p0, "this":Lorg/mockito/BDDMockito$BDDOngoingStubbingImpl;, "Lorg/mockito/BDDMockito$BDDOngoingStubbingImpl<TT;>;"
    .local p1, "throwableType":Ljava/lang/Class;, "Ljava/lang/Class<+Ljava/lang/Throwable;>;"
    .local p2, "throwableTypes":[Ljava/lang/Class;, "[Ljava/lang/Class<+Ljava/lang/Throwable;>;"
    new-instance v0, Lorg/mockito/BDDMockito$BDDOngoingStubbingImpl;

    iget-object v1, p0, Lorg/mockito/BDDMockito$BDDOngoingStubbingImpl;->mockitoOngoingStubbing:Lorg/mockito/stubbing/OngoingStubbing;

    .line 186
    invoke-interface {v1, p1, p2}, Lorg/mockito/stubbing/OngoingStubbing;->thenThrow(Ljava/lang/Class;[Ljava/lang/Class;)Lorg/mockito/stubbing/OngoingStubbing;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/mockito/BDDMockito$BDDOngoingStubbingImpl;-><init>(Lorg/mockito/stubbing/OngoingStubbing;)V

    .line 185
    return-object v0
.end method

.method public varargs willThrow([Ljava/lang/Throwable;)Lorg/mockito/BDDMockito$BDDMyOngoingStubbing;
    .locals 2
    .param p1, "throwables"    # [Ljava/lang/Throwable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/Throwable;",
            ")",
            "Lorg/mockito/BDDMockito$BDDMyOngoingStubbing<",
            "TT;>;"
        }
    .end annotation

    .line 175
    .local p0, "this":Lorg/mockito/BDDMockito$BDDOngoingStubbingImpl;, "Lorg/mockito/BDDMockito$BDDOngoingStubbingImpl<TT;>;"
    new-instance v0, Lorg/mockito/BDDMockito$BDDOngoingStubbingImpl;

    iget-object v1, p0, Lorg/mockito/BDDMockito$BDDOngoingStubbingImpl;->mockitoOngoingStubbing:Lorg/mockito/stubbing/OngoingStubbing;

    invoke-interface {v1, p1}, Lorg/mockito/stubbing/OngoingStubbing;->thenThrow([Ljava/lang/Throwable;)Lorg/mockito/stubbing/OngoingStubbing;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/mockito/BDDMockito$BDDOngoingStubbingImpl;-><init>(Lorg/mockito/stubbing/OngoingStubbing;)V

    return-object v0
.end method
