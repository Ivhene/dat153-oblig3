.class Lorg/mockito/BDDMockito$ThenImpl;
.super Ljava/lang/Object;
.source "BDDMockito.java"

# interfaces
.implements Lorg/mockito/BDDMockito$Then;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/mockito/BDDMockito;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ThenImpl"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lorg/mockito/BDDMockito$Then<",
        "TT;>;"
    }
.end annotation


# instance fields
.field private final mock:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 282
    .local p0, "this":Lorg/mockito/BDDMockito$ThenImpl;, "Lorg/mockito/BDDMockito$ThenImpl<TT;>;"
    .local p1, "mock":Ljava/lang/Object;, "TT;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 283
    iput-object p1, p0, Lorg/mockito/BDDMockito$ThenImpl;->mock:Ljava/lang/Object;

    .line 284
    return-void
.end method


# virtual methods
.method public should()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 291
    .local p0, "this":Lorg/mockito/BDDMockito$ThenImpl;, "Lorg/mockito/BDDMockito$ThenImpl<TT;>;"
    iget-object v0, p0, Lorg/mockito/BDDMockito$ThenImpl;->mock:Ljava/lang/Object;

    invoke-static {v0}, Lorg/mockito/Mockito;->verify(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public should(Lorg/mockito/InOrder;)Ljava/lang/Object;
    .locals 1
    .param p1, "inOrder"    # Lorg/mockito/InOrder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/mockito/InOrder;",
            ")TT;"
        }
    .end annotation

    .line 307
    .local p0, "this":Lorg/mockito/BDDMockito$ThenImpl;, "Lorg/mockito/BDDMockito$ThenImpl<TT;>;"
    iget-object v0, p0, Lorg/mockito/BDDMockito$ThenImpl;->mock:Ljava/lang/Object;

    invoke-interface {p1, v0}, Lorg/mockito/InOrder;->verify(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public should(Lorg/mockito/InOrder;Lorg/mockito/verification/VerificationMode;)Ljava/lang/Object;
    .locals 1
    .param p1, "inOrder"    # Lorg/mockito/InOrder;
    .param p2, "mode"    # Lorg/mockito/verification/VerificationMode;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/mockito/InOrder;",
            "Lorg/mockito/verification/VerificationMode;",
            ")TT;"
        }
    .end annotation

    .line 315
    .local p0, "this":Lorg/mockito/BDDMockito$ThenImpl;, "Lorg/mockito/BDDMockito$ThenImpl<TT;>;"
    iget-object v0, p0, Lorg/mockito/BDDMockito$ThenImpl;->mock:Ljava/lang/Object;

    invoke-interface {p1, v0, p2}, Lorg/mockito/InOrder;->verify(Ljava/lang/Object;Lorg/mockito/verification/VerificationMode;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public should(Lorg/mockito/verification/VerificationMode;)Ljava/lang/Object;
    .locals 1
    .param p1, "mode"    # Lorg/mockito/verification/VerificationMode;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/mockito/verification/VerificationMode;",
            ")TT;"
        }
    .end annotation

    .line 299
    .local p0, "this":Lorg/mockito/BDDMockito$ThenImpl;, "Lorg/mockito/BDDMockito$ThenImpl<TT;>;"
    iget-object v0, p0, Lorg/mockito/BDDMockito$ThenImpl;->mock:Ljava/lang/Object;

    invoke-static {v0, p1}, Lorg/mockito/Mockito;->verify(Ljava/lang/Object;Lorg/mockito/verification/VerificationMode;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public shouldHaveNoInteractions()V
    .locals 1

    .line 339
    .local p0, "this":Lorg/mockito/BDDMockito$ThenImpl;, "Lorg/mockito/BDDMockito$ThenImpl<TT;>;"
    iget-object v0, p0, Lorg/mockito/BDDMockito$ThenImpl;->mock:Ljava/lang/Object;

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lorg/mockito/Mockito;->verifyNoInteractions([Ljava/lang/Object;)V

    .line 340
    return-void
.end method

.method public shouldHaveNoMoreInteractions()V
    .locals 1

    .line 331
    .local p0, "this":Lorg/mockito/BDDMockito$ThenImpl;, "Lorg/mockito/BDDMockito$ThenImpl<TT;>;"
    iget-object v0, p0, Lorg/mockito/BDDMockito$ThenImpl;->mock:Ljava/lang/Object;

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lorg/mockito/Mockito;->verifyNoMoreInteractions([Ljava/lang/Object;)V

    .line 332
    return-void
.end method

.method public shouldHaveZeroInteractions()V
    .locals 1

    .line 323
    .local p0, "this":Lorg/mockito/BDDMockito$ThenImpl;, "Lorg/mockito/BDDMockito$ThenImpl<TT;>;"
    iget-object v0, p0, Lorg/mockito/BDDMockito$ThenImpl;->mock:Ljava/lang/Object;

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lorg/mockito/Mockito;->verifyZeroInteractions([Ljava/lang/Object;)V

    .line 324
    return-void
.end method
